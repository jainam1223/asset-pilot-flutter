---
name: api-gap-check
description: Use when the user wants to compare the live Swagger/OpenAPI spec (via the swagger-explorer MCP) against this Flutter codebase's API integration — to find endpoints with no repository method, request/response models that don't match the spec, or new modules/services that need to be created. Activates on phrases like "check API against swagger", "what's missing vs the backend", "diff the API", "match implementation with swagger", "what models/services do I need to add".
---

# API Gap Check (AssetPilot)

Compares the backend's real OpenAPI spec against what's already wired up in
`lib/repositories/remote_repository/` and reports concrete gaps — endpoint by
endpoint. This is a **diagnosis** skill: it tells you what to build. To
actually generate the code for one endpoint, use `/api-integration-swagger`
(flutter-simform plugin) afterward.

Keep this straightforward — one pass, one report. Don't build extra tooling,
don't restructure the codebase, don't touch code in this skill.

## Step 1 — Pull the spec

Use the `swagger-explorer` MCP server (configured in `.mcp.json`). If its
tools aren't loaded yet, run `ToolSearch` with a query like `"swagger openapi
endpoint"` — MCP tools attach lazily. If the server shows as disconnected,
tell the user and stop; don't try to fix MCP wiring as part of this skill.

Get the full endpoint list (path, method, tags, request/response schema for
each). If the MCP tool only returns one endpoint at a time, fetch the raw
spec directly instead — it's faster for a full-codebase diff:

```bash
curl -s -H "ngrok-skip-browser-warning: true" "$SWAGGER_URL" | python3 -m json.tool
```

(`$SWAGGER_URL` is whatever `OPENAPI_SPEC_PATH` is set to in `.mcp.json`.)

## Step 2 — Inventory what's already implemented

```bash
# every endpoint currently declared
grep -n "@GET\|@POST\|@PUT\|@PATCH\|@DELETE" lib/repositories/remote_repository/api_repository/api_service.dart

# every module repository that exists
find lib/repositories/remote_repository -maxdepth 1 -type d

# every req/res model that exists
find lib/repositories/remote_repository -name "*_req_dm.dart" -o -name "*_res_dm.dart"
```

## Step 3 — Diff, endpoint by endpoint

For every path+method in the spec, classify it as one of:

- **Covered** — a matching `@GET`/`@POST`/etc. already exists in
  `api_service.dart` and its request/response models' fields match the
  spec's schema.
- **Model mismatch** — the endpoint exists, but the Dart model is missing
  fields the spec has, has extra fields the spec doesn't, or has a wrong
  type/nullability (compare against the OpenAPI-to-Dart table below).
- **Missing endpoint** — the spec has it, `api_service.dart` doesn't.
- **Missing module** — a whole tag/resource group in the spec has no
  corresponding folder under `lib/repositories/remote_repository/`.

Don't guess at field types — check them:

| OpenAPI            | Dart          |
|---------------------|---------------|
| `string`             | `String`     |
| `string` + `nullable`| `String?`    |
| `integer`            | `int`        |
| `number`             | `double`     |
| `boolean`            | `bool`       |
| `string` + `date-time`| `DateTime`  |
| `array`              | `List<T>`    |
| `object` / `$ref`    | a `...Dm` class |

Remember project conventions while classifying (see `CLAUDE.md`):
- Request models: `*_req_dm.dart`, class `...ReqDm`, `@JsonSerializable(includeIfNull: false)`.
- Response models: `*_res_dm.dart`, class `...ResDm`, represent only the `data` field of the envelope — never the envelope itself.
- One module folder per resource under `remote_repository/`, e.g. `auth/`, `inventory/`.

## Step 4 — Report

Output a single markdown table, grouped by module/tag, nothing else:

| Endpoint | Status | Gap |
|---|---|---|
| `GET /api/v1/admin/items` | Model mismatch | spec adds `warranty_expiry: string(date)`, missing from `ItemResDm` |
| `POST /api/v1/admin/users` | Missing endpoint | no method in `api_service.dart`; needs `admin_users` module + repo |
| `GET /api/v1/admin/shipping/outbound` | Missing module | no `shipping/` folder exists at all |

End with a short "Suggested build order" list (2-5 items, most-blocking
first) — not a full implementation plan. Hand off actual code generation to
`/api-integration-swagger` per endpoint.

## Gotchas

- The backend may be down (DB/Redis unreachable) even when the spec endpoint
  (`/openapi.json`) responds fine — spec availability isn't a signal that
  the endpoint works. Don't flag runtime errors as spec gaps.
- `api_service.dart` groups ALL endpoints in one file — grep the whole file,
  don't assume one file per module.
- A missing model file doesn't always mean a missing endpoint — check
  `api_service.dart` first; sometimes the return type is inline instead of
  reusing a model class.
