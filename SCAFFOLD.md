# AssetPilot — Scaffold Notes

Employee Device Management app. Two variants share one Flutter codebase:

- **Mobile (iOS/Android)** — Employee + Manager roles (login, my devices, requests, handovers, profile, approvals).
- **Web + Desktop** — IT Admin (dashboard, request mgmt, inventory, assignment, support, shipping/returns, extensions, QR mgmt, settings).

This file documents the scaffold decisions so future work (and `claude init` / CLAUDE.md generation) doesn't have to re-derive them.

## Entry points — always pass `-t`

There is **no `lib/main.dart`**. Two variant entries instead:

```
flutter run -t lib/main_mobile.dart              # Employee/Manager, iOS/Android
flutter run -t lib/main_admin.dart -d chrome      # IT Admin, web
flutter run -t lib/main_admin.dart -d macos       # IT Admin, desktop
```

`lib/app.dart` builds `AssetPilotApp(variant: AppVariant.mobile|admin)`, which picks the GoRouter (and therefore the entire navigation tree) for that variant. Mobile and admin never share a router or import each other's `modules/` subtree.

## Platform isolation rules

- `lib/modules/mobile/` and `lib/modules/admin/` are isolated — a mobile screen must never import an admin screen or vice versa. Only `models/`, `repositories/`, `utilities/`, `values/` are shared.
- Never import `dart:io` directly anywhere in `lib/` (breaks web builds). Use `lib/utilities/helpers/platform_helper.dart` (`PlatformHelper.isMobilePlatform` / `isDesktopOrWeb`, built on `kIsWeb` + `defaultTargetPlatform`). If a genuine native-only API is needed later, put it behind a conditional-import stub pair (`export 'stub.dart' if (dart.library.html) 'web.dart'`), not a bare `dart:io` import.
- Admin desktop/web layout adapts by width via `lib/utilities/helpers/responsive.dart` (`Responsive.of(context)`), not by platform checks — keeps the same shell working on both web and desktop.
- Verify isolation anytime with:
  ```
  grep -rn "import 'dart:io'" lib/
  grep -rn "modules/mobile" lib/modules/admin
  grep -rn "modules/admin" lib/modules/mobile
  ```
  All three should return nothing.

## State management — Cubit

- `flutter_bloc` + `equatable`. State classes: `@immutable`, extend `Equatable`, `copyWith`, all props in `props`.
- Async data is always `NetworkState<T>` (`lib/utilities/network/network_state.dart`): `Idle` / `Loading` / `Success(data)` / `Error(message)`. Render with a `switch` expression.
- Cubits use `safeEmit()` (`lib/utilities/network/safe_emit.dart`) — **never** raw `emit()`.
- API/repo errors go through `errorManager.handle()` (`lib/utilities/api_utilities/error_manager.dart`), which normalizes any error into an `AppException`.
- DI: **no `get_it`.** Cubits are provided per-route via `.withProvider()` (`lib/utilities/navigation/app_routes.dart`), e.g. `const LoginScreen().withProvider((_) => LoginCubit())`.

## Models — Freezed

- API request/response models live under `lib/repositories/remote_repository/[module]/models/` — suffix `_req_dm.dart` / `_res_dm.dart`, classes `...ReqDm` / `...ResDm`. **Never** put API models in `lib/models/`.
- Common/navigation models (plain, non-API) go in `lib/models/` as `_dm.dart` / `_nav_dm.dart`.
- Request models: `@freezed` class + `@JsonSerializable(includeIfNull: false)` on the factory. Response models: `@freezed` only (no `includeIfNull`).
- Response models should model **only the `data` field content** of the `APIResponse<T>` envelope, never the envelope itself.
- After adding/editing any model: `dart run build_runner build --delete-conflicting-outputs`.

## Networking — Retrofit + Dio (currently mocked)

- Centralized `lib/repositories/remote_repository/api_repository/api_service.dart` (Retrofit, all endpoints declared here) + base `Repository` class (`api_repository.dart`) that every module repo extends.
- `ApiResultCallAdapter` (`lib/utilities/api_utilities/my_call_adapter.dart`) converts Retrofit calls into `ApiResult<T>` (`ApiSuccess` / `ApiFailure`), so endpoints are declared as `Future<ApiResult<ResDm>>`.
- **`AuthRepository` (`lib/repositories/remote_repository/auth/auth_repository.dart`) currently returns MOCKED data** — there is no live backend yet. The real Retrofit call is commented out inline (`apiService.login(...)`). When a backend exists, swap the mock body for the real call; the Cubit/UI layer doesn't change.
- Base URL comes from `lib/env/env.dart` (`Env.current.baseUrl`), keyed by `Flavor` (`dev`/`uat`/`prod`). **Flavors are not wired yet** — `Env.current` defaults to `dev`. `lib/values/flavors/flavor_config.dart` is a placeholder for when flavored `main_*` entries are introduced.
- `BASE_URL` is sourced at **compile time** via `envied` (`_Env` in `env.dart`, `@Envied(path: '.env', obfuscate: true)`), generating an obfuscated `lib/env/env.g.dart` from the gitignored `.env` file — copy `.env.example` to `.env` and run `dart run build_runner build --delete-conflicting-outputs` after editing it. This replaced `flutter_dotenv`'s runtime file loading; there is no `Env.load()` call anymore.

## Routing — GoRouter

- Route enum + paths: `lib/utilities/navigation/app_routes.dart` (`Routes.login.path`, etc.), plus the `.withProvider()` extension.
- Per-variant router builders: `lib/utilities/navigation/mobile_routes.dart` and `admin_routes.dart`.
- 404 fallback: `lib/views/invalid_route/invalid_route_screen.dart`.

## Theme, localization, assets

- Colors/typography extracted from the design mockup: `lib/values/app_theme/app_colors.dart`, `app_text_styles.dart`, `app_theme.dart` (light theme only; `AppTheme.dark` is a stub aliasing light).
- Fonts (Poppins headings, DM Sans body) are **declared as commented-out** in `pubspec.yaml` — the `.ttf` files don't exist yet and Flutter fails the build if the `fonts:` block points at missing files. **When adding font files:** drop them in `assets/fonts/`, uncomment the `fonts:` block in `pubspec.yaml`, run `flutter pub get`. Until then, `AppTextStyles` fall back to the platform default font.
- Localization: ARB source at `lib/l10n/app_en.arb`, generated output at `lib/generated/l10n/` (gitignored, regenerate with `flutter gen-l10n`). Access via `context.l10n` (`lib/utilities/extensions/context_extensions.dart`). No hardcoded UI strings — add new keys to the ARB file.
- Icons: `flutter_svg` + `assets/icons/` + `flutter_gen` (`Assets.*` generated into `lib/generated/`). No SVG files exist yet — added as real screens are built.

## Code generation

After changing any `@freezed` model, Retrofit service, or ARB file:

```
flutter gen-l10n
dart run build_runner build --delete-conflicting-outputs
```

(`build.yaml` configures freezed/json_serializable/flutter_gen output options.)

## What's deliberately NOT done yet

- No real backend / live API endpoints (everything routed through mocks).
- No flavor (dev/uat/prod) build config for Android/iOS/web — `Env` is flavor-*shaped* but only `dev` is active.
- No dark theme (stub only).
- No font files or SVG icon assets.
- Only one placeholder screen per variant exists (Login + mobile shell; Dashboard + admin shell). The remaining screens from the mockup (E01–E15, M01–M04 mobile/manager; A01–A14 admin) are not built.
- No `get_it` — DI is `BlocProvider` + `.withProvider()` per route, by explicit choice.

## Directory map (hand-written files only)

```
lib/
├── main_mobile.dart / main_admin.dart      # entry points (always run with -t)
├── app.dart                                 # AssetPilotApp — picks router by AppVariant
├── env/env.dart                             # flavor-shaped config, only `dev` active
├── l10n/app_en.arb                          # source strings
├── models/
│   ├── api_response/ (api_response_dm.dart, api_result.dart)
│   └── exceptions/app_exception.dart
├── modules/
│   ├── mobile/{login, shell}/               # Employee/Manager screens
│   └── admin/{dashboard, shell}/             # IT Admin screens
├── repositories/
│   ├── remote_repository/{api_repository, auth}/
│   └── local_repository/{secure_storage.dart, shared_pref/}
├── utilities/
│   ├── api_utilities/ (dio_client, error_manager, my_call_adapter)
│   ├── extensions/context_extensions.dart
│   ├── helpers/ (platform_helper, responsive)
│   ├── navigation/ (app_routes, mobile_routes, admin_routes)
│   └── network/ (network_state, safe_emit)
└── values/
    ├── app_global/, app_theme/, constants/, enumeration/, flavors/
```
