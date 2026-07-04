---
name: design
description: This skill should be used when the user asks to implement a screen, build a UI component, match a Figma/mockup design, or create any Flutter UI for AssetPilot. Activates on phrases like "implement this screen", "build the UI for", "match the design", "create this widget", or when attaching a design image/HTML export.
---

# Design Implementation Skill (AssetPilot)

Before writing UI code, follow these steps. This project uses **Cubit**
(flutter_bloc) + **GoRouter**, not MobX/pt_*/NavigationPaths — do not assume
patterns from other Flutter projects.

## Step 1 — Read the design system

- `lib/values/app_theme/app_colors.dart` — raw color tokens (`AppColors.*`)
- `lib/values/app_theme/app_text_styles.dart` — text style constants
  (`AppTextStyles.*`), also wired into `ThemeData.textTheme` — prefer
  `context.textTheme.*` (via `context_extensions.dart`) in widgets over the
  raw constant, so future theme/dark-mode changes propagate.
- `lib/values/app_theme/app_theme.dart` — `ThemeData` (light only; `dark` is
  a stub aliasing light)
- `lib/values/constants/app_constants.dart` — spacing/sizing
  (`AppConstants.*`: `screenPadding`, `cardRadius`, `adminNavWidth`,
  `defaultAnimationDuration`). Add new constants here rather than hardcoding.
- `lib/utilities/extensions/context_extensions.dart` — `context.theme`,
  `context.textTheme`, `context.colors`, `context.l10n`, `context.screenSize`
- No shared widget library exists yet (no `lib/widgets/`, no `pt_*`
  components). If a component will be reused (e.g. a card used on 2+
  screens), build it as its own file under the owning module's
  `widgets/` subfolder (create one if absent) — do not wait for a
  central library that doesn't exist.

## Step 2 — Produce a plan and ask before coding

List every decision below. For anything uncertain, ask — do not guess:

| Decision | What to use |
|---|---|
| Colors | Exact `AppColors.*` token (or `context.colors.*` for M3 roles) |
| Text styles | Exact `context.textTheme.*` role (backed by `AppTextStyles.*`) |
| Spacing / sizing | `AppConstants.*`, or add a new named constant there |
| Navigation | Exact `Routes.xxx.path` from `app_routes.dart` (add the enum entry + route if new), via `context.go(...)` / `context.push(...)` |
| Strings | `context.l10n.xxx` key from `lib/l10n/app_en.arb` — never hardcoded |
| Reusable widgets | New file under the module's `widgets/` folder if used 2+ places; otherwise inline in the screen |
| Widget structure | Inline (preferred for one-off) vs new file (only if reused) |
| State | Which Cubit owns this state — new cubit under `<module>/cubit/`, states via `NetworkState<T>` for async data |
| Module placement | Confirm mobile vs admin — never cross-import between `modules/mobile/` and `modules/admin/` |

**Do not edit any file until the user has approved this plan.**

## Step 3 — Implement with these hard rules

- **Colors**: only `AppColors.*` or `context.colors.*` (ColorScheme roles).
  Never raw `Color(0x...)` or bare `Colors.*` in screens/widgets.
- **Text styles**: only `context.textTheme.*` (falls back to
  `AppTextStyles.*` constants if a one-off style not in `TextTheme` is
  truly needed). Never inline `TextStyle(fontSize: ..., fontWeight: ...)`.
- **Spacing**: `AppConstants.*` or `Gap(...)` with a named constant. No
  magic numbers for padding/radius/sizing.
- **Navigation**: GoRouter only — `context.go(Routes.x.path)` /
  `context.push(...)`. Add new destinations to the `Routes` enum in
  `app_routes.dart` plus the relevant `mobile_routes.dart` /
  `admin_routes.dart`. Never `MaterialPageRoute` / `Navigator.push` directly.
- **Strings**: all user-facing text via `context.l10n.xxx`. Add new keys to
  `lib/l10n/app_en.arb` (with a `@key` description block) and run
  `flutter gen-l10n`. Never hardcoded string literals in widgets.
- **State**: Cubit only, per `CLAUDE.md` — `@immutable` state extending
  `Equatable`, `copyWith`, all fields in `props`. Async data as
  `NetworkState<T>` (Idle/Loading/Success/Error), rendered with a `switch`.
  Cubits call `safeEmit()`, never raw `emit()`. Provide per-route via
  `.withProvider()` — no `get_it`.
- **Models**: if the screen needs new API data, request/response models go
  under `lib/repositories/remote_repository/[module]/models/` as
  `@freezed` `..._req_dm.dart` / `..._res_dm.dart`. Regenerate with
  `dart run build_runner build --delete-conflicting-outputs`.
- **Platform**: never import `dart:io`; use `PlatformHelper`
  (`lib/utilities/helpers/platform_helper.dart`). Admin layouts adapt by
  `Responsive.of(context)`, not platform checks.
- **Module isolation**: mobile screens never import from
  `modules/admin/` and vice versa.
- **Widget classes**: one widget per file when extracted, snake_case
  filename matching the class. No functions returning widgets for anything
  non-trivial/reused.
- **No CustomPainter, no custom gradients** unless the design genuinely
  can't be expressed with existing tokens (the mockup does use a
  `gradientStart`→`gradientEnd` brand gradient on buttons/headers — use
  `AppColors.gradientStart`/`gradientEnd` via `LinearGradient` for that
  specific case, not ad hoc colors).
- **Lines ≤ 80 chars**, trailing commas, single quotes, `const` wherever
  possible.

## Step 4 — Self-audit before declaring done

For each rule in Step 3, write `PASS` or `FAIL` with the file:line
reference. Fix all `FAIL`s.

Then run:
```
flutter analyze
```

Fix every `error` and `warning` before reporting complete (generated files
are excluded per `analysis_options.yaml`).
