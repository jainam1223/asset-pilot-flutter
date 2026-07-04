# AssetPilot

Employee Device Management app. Two variants share one Flutter codebase:

- **Mobile (iOS/Android)** — Employee + Manager: login, my devices, requests, handovers, profile, approvals.
- **Web + Desktop** — IT Admin: dashboard, request management, inventory, assignment, support, shipping/returns, extensions, QR management, settings.

See [SCAFFOLD.md](SCAFFOLD.md) for the architecture/convention deep-dive (state management, models, networking, routing, platform isolation rules). This README is the get-started guide.

## Prerequisites

- Flutter `3.41.6` (stable channel), Dart SDK `^3.11.4` — check with `flutter --version`.
- Xcode + an iOS simulator (for iOS), Android Studio + an emulator or device (for Android), Chrome (for web), and Xcode/Visual Studio toolchains enabled for macOS/Windows desktop builds as needed.
- No backend/API keys required yet — all data is mocked (see below).

## First-time setup

```bash
git clone <repo-url>
cd asset_pilot

flutter pub get

# Generate localization + Freezed/Retrofit/flutter_gen code.
# Required before the app will compile — the generated files are gitignored.
flutter gen-l10n
dart run build_runner build --delete-conflicting-outputs
```

## Running the app — always pass `-t`

There is **no `lib/main.dart`**. The app has two entry points, one per variant:

```bash
# Employee/Manager — mobile
flutter run -t lib/main_mobile.dart

# IT Admin — web
flutter run -t lib/main_admin.dart -d chrome

# IT Admin — desktop (macOS example)
flutter run -t lib/main_admin.dart -d macos
```

Run `flutter devices` to see available targets for `-d`.

## After pulling changes / when things don't compile

If you see missing generated files, undefined `AppLocalizations`, or `.g.dart`/`.freezed.dart` errors, regenerate:

```bash
flutter pub get
flutter gen-l10n
dart run build_runner build --delete-conflicting-outputs
```

Run this whenever you pull changes that touch: `*.arb` files, `@freezed` models, the Retrofit `api_service.dart`, or assets (icons/images referenced via `flutter_gen`).

## Project conventions (must-read before contributing)

- **State management:** Cubit (`flutter_bloc`) only — no MobX, no setState-driven business logic. See `SCAFFOLD.md` for the `NetworkState<T>` / `safeEmit()` pattern.
- **Models:** Freezed. API request/response models go under `lib/repositories/remote_repository/[module]/models/`; common/nav models go under `lib/models/`. Never mix the two locations.
- **DI:** No `get_it`. Cubits are provided per-route with `.withProvider()` in the router files.
- **Platform isolation — important:**
  - Never import `dart:io` directly in `lib/` — it breaks the web build. Use `lib/utilities/helpers/platform_helper.dart` instead.
  - `lib/modules/mobile/` and `lib/modules/admin/` must never import each other. Shared code only lives in `models/`, `repositories/`, `utilities/`, `values/`.
  - Before submitting a PR that touches shared code, sanity-check:
    ```bash
    grep -rn "import 'dart:io'" lib/
    grep -rn "modules/mobile" lib/modules/admin
    grep -rn "modules/admin" lib/modules/mobile
    ```
    All three should print nothing.
- **No hardcoded strings or colors** — use `context.l10n.*` for text and `AppColors`/`Theme.of(context)` for color/typography.
- **Networking is currently mocked.** `AuthRepository` (and any repo you add for now) returns mock data — there's no live backend. Don't be alarmed that requests never hit the network.

## Verifying your changes

```bash
flutter analyze         # must be clean before committing
flutter build web -t lib/main_admin.dart      # sanity-check the web/admin variant compiles
flutter build apk --debug -t lib/main_mobile.dart   # sanity-check the mobile variant compiles
```

## Known gaps (by design, not bugs)

- No flavors (dev/uat/prod) wired yet — `lib/env/env.dart` only has `Flavor.dev` active.
- No custom fonts (Poppins/DM Sans) or SVG icons yet — asset files aren't added; the `fonts:` block in `pubspec.yaml` is intentionally commented out until they are.
- No dark theme (stub only).
- Only one placeholder screen per variant exists so far (Login + mobile shell; Dashboard + admin shell).

Full details on all of the above: [SCAFFOLD.md](SCAFFOLD.md).
