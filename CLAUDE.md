# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

AssetPilot — an Employee Device Management app. One Flutter codebase, two independent variants:

- **Mobile (iOS/Android)** — Employee + Manager roles: login, my devices, requests, handovers, profile, approvals.
- **Web + Desktop** — IT Admin: dashboard, request management, inventory, assignment, support, shipping/returns, extensions, QR management, settings.

Full scaffold rationale lives in `SCAFFOLD.md` — read it for the "why" behind decisions below.

## Commands

There is no `lib/main.dart`. Always run with `-t` pointing at a variant entry point:

```
flutter run -t lib/main_mobile.dart              # Employee/Manager, iOS/Android
flutter run -t lib/main_admin.dart -d chrome      # IT Admin, web
flutter run -t lib/main_admin.dart -d macos       # IT Admin, desktop
```

Code generation (run after adding/editing any `@freezed` model, Retrofit service, or ARB file):

```
flutter gen-l10n
dart run build_runner build --delete-conflicting-outputs
```

Lint: `flutter analyze` (rules: `analysis_options.yaml`, extends `flutter_lints`; generated files excluded).

No test suite exists yet.

## Architecture

### Variant split

`lib/app.dart` builds `AssetPilotApp(variant: AppVariant.mobile|admin)`, which picks the GoRouter — and therefore the entire navigation tree — for that variant. `lib/modules/mobile/` and `lib/modules/admin/` are hard-isolated: a mobile screen must never import an admin screen or vice versa. Only `models/`, `repositories/`, `utilities/`, `values/`, `widgets/` are shared across variants. Verify isolation anytime with:

```
grep -rn "import 'dart:io'" lib/
grep -rn "modules/mobile" lib/modules/admin
grep -rn "modules/admin" lib/modules/mobile
grep -rn "^import.*statuses.dart" lib/widgets
```
All four must return nothing.

### Shared widget library (`lib/widgets/`)

Flat, role-based folders (`buttons/`, `inputs/`, `indicators/`, `cards/`, `feedback/`, `data_table/`, `surfaces/`, `nav/`) — no atomic-design tiers, no domain grouping. Import the barrel via `widgets/widgets.dart`. Rules:

- **Domain-blind by construction**: widgets never import `values/enumeration/statuses.dart` or any repository/DM type. Status colors are expressed via `AppSemantic` (`widgets/widget_enums.dart`); each *module* (not `lib/widgets/`) writes a small `X.semantic`/`X.label` extension mapping its own domain enum (e.g. `RequestStatus`) onto `AppSemantic`.
- **Sizing**: leaf/content widgets (`AppButton`, `AppAvatar`, `IconBox`, `StatusPill`) take explicit size enums — their size is a design choice, not a viewport fact. Only containers that arrange multiple children (`StatTileRow`, `AppDataTable`'s column-fit logic) consult `Responsive`.
- **Nav chrome is not unified**: `AppBottomNav` (mobile) and `AppSideNav` (admin) are structurally different widgets sharing only the `NavItem` data model (`widgets/nav/nav_item.dart`).
- **Toasts**: call `AppToast.success/error/info/warning(context, message)` everywhere — never `ScaffoldMessenger` directly. The underlying presenter (`SnackBarToastPresenter` for mobile, `OverlayToastPresenter` for admin) is registered once in `main_mobile.dart`/`main_admin.dart` via `AppToast.configure(...)`.
- **Tables**: use `AppDataTable<T>` for every tabular admin screen. Pass `pagination: null` for a static list (no footer); pass a `TablePagination` for the paginated footer. Cell content is always supplied by the caller via `TableColumn.cellBuilder` — the table itself has zero domain knowledge.

Never import `dart:io` directly anywhere in `lib/` (breaks web builds) — use `PlatformHelper.isMobilePlatform` / `isDesktopOrWeb` (`lib/utilities/helpers/platform_helper.dart`, built on `kIsWeb` + `defaultTargetPlatform`). A genuine native-only API belongs behind a conditional-import stub pair (`export 'stub.dart' if (dart.library.html) 'web.dart'`), not a bare `dart:io` import.

Admin desktop/web layout adapts by width via `Responsive.of(context)` (`lib/utilities/helpers/responsive.dart`), not by platform checks, so the same shell works on web and desktop.

### State management — Cubit only

- `flutter_bloc` + `equatable`. State classes: `@immutable`, extend `Equatable`, implement `copyWith`, list all fields in `props`.
- Async data is always `NetworkState<T>` (`lib/utilities/network/network_state.dart`): `Idle` / `Loading` / `Success(data)` / `Error(message)`. Render with a `switch` expression.
- Cubits call `safeEmit()` (`lib/utilities/network/safe_emit.dart`) — never raw `emit()`.
- API/repo errors flow through `errorManager.handle()` (`lib/utilities/api_utilities/error_manager.dart`), normalizing any error into an `AppException`.
- No `get_it`. DI is per-route via `.withProvider()` (`lib/utilities/navigation/app_routes.dart`), e.g. `const LoginScreen().withProvider((_) => LoginCubit())`. This is a deliberate choice, not an oversight.

### Models — Freezed

- API request/response models live under `lib/repositories/remote_repository/[module]/models/`, suffixed `_req_dm.dart` / `_res_dm.dart` with classes `...ReqDm` / `...ResDm`. Never put API models in `lib/models/`.
- Common/navigation (non-API) models go in `lib/models/` as `_dm.dart` / `_nav_dm.dart`.
- Request models: `@freezed` class + `@JsonSerializable(includeIfNull: false)` on the factory. Response models: `@freezed` only, no `includeIfNull`.
- Response models represent only the `data` field content of the `APIResponse<T>` envelope — never the envelope itself.
- Regenerate after any change: `dart run build_runner build --delete-conflicting-outputs`.

### Networking — Retrofit + Dio (currently mocked)

- All endpoints are declared in one place: `lib/repositories/remote_repository/api_repository/api_service.dart` (Retrofit interface). Every module repo extends the base `Repository` class in `api_repository.dart`.
- `ApiResultCallAdapter` (`lib/utilities/api_utilities/my_call_adapter.dart`) converts Retrofit calls into `ApiResult<T>` (`ApiSuccess` / `ApiFailure`); endpoints are typed as `Future<ApiResult<ResDm>>`.
- `AuthRepository` (`lib/repositories/remote_repository/auth/auth_repository.dart`) currently returns **mocked** data — there is no live backend. The real Retrofit call is commented out inline. When a backend exists, swap the mock body for the real call; Cubit/UI layers don't change.
- Base URL comes from `Env.current.baseUrl` (`lib/env/env.dart`), keyed by `Flavor` (`dev`/`uat`/`prod`). Flavors are not wired yet — `Env.current` always resolves to `dev`. `lib/values/flavors/flavor_config.dart` is a placeholder for when flavored `main_*` entries are introduced.
- `Env` sources `BASE_URL` at **compile time** via `envied` (not a runtime-loaded `.env`): `_Env` in `env.dart` is `@Envied`-annotated and generates an obfuscated `lib/env/env.g.dart` from the gitignored `.env` file. Copy `.env.example` to `.env` locally, then run `dart run build_runner build --delete-conflicting-outputs` to regenerate `env.g.dart` after editing `.env`. There is no `Env.load()` call in `main_mobile.dart`/`main_admin.dart` — the value is baked in at build time.

### Routing — GoRouter

- Route enum + paths in `lib/utilities/navigation/app_routes.dart` (`Routes.login.path`, etc.), plus the `.withProvider()` extension.
- Per-variant router builders: `lib/utilities/navigation/mobile_routes.dart` and `admin_routes.dart`.
- 404 fallback: `lib/views/invalid_route/invalid_route_screen.dart`.

### Theme, localization, assets

- Theme extracted from the design mockup: `lib/values/app_theme/app_colors.dart`, `app_text_styles.dart`, `app_theme.dart`. Light theme only — `AppTheme.dark` is a stub aliasing light.
- Fonts (Poppins headings, DM Sans body) are declared **commented-out** in `pubspec.yaml` because the `.ttf` files don't exist yet (an uncommented `fonts:` block pointing at missing files fails the build). When adding font files: drop them in `assets/fonts/`, uncomment the `fonts:` block, run `flutter pub get`. Until then `AppTextStyles` falls back to the platform default font.
- Localization: ARB source at `lib/l10n/app_en.arb`; generated output at `lib/generated/l10n/` (gitignored — regenerate with `flutter gen-l10n`). Access via `context.l10n` (`lib/utilities/extensions/context_extensions.dart`). No hardcoded UI strings — add new keys to the ARB file.
- Icons: `flutter_svg` + `assets/icons/`, referenced via generated `Assets.*` (`flutter_gen`, output into `lib/generated/`). No SVG files exist yet.
- Never use hardcoded string in code — always `context.l10n.*` or `Assets.*`.

## What's deliberately not done yet

- No real backend — everything routed through mocks.
- No flavor (dev/uat/prod) build config for Android/iOS/web — `Env` is flavor-shaped but only `dev` is active.
- No dark theme (stub only).
- No font files or SVG icon assets.
- Only one placeholder screen per variant exists (Login + mobile shell; Dashboard + admin shell). Remaining mockup screens (E01–E15, M01–M04 mobile/manager; A01–A14 admin) are unbuilt.
- No `get_it` — DI is `BlocProvider` + `.withProvider()` per route, by explicit choice.
- No test suite.
