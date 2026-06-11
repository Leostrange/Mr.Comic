# AGENTS.md

## Cursor Cloud specific instructions

Mr.Comic is a single **native Android** app (Kotlin, Jetpack Compose, Hilt, Room,
Media3) built with Gradle. It is a fully on-device client: there is **no backend,
database server, or web service** to run, and no external credentials are required
for core reading/library/settings flows. Optional cloud SDKs (Google Drive,
MSAL, ML Kit, online translation) degrade gracefully and are not needed for E2E.

### Toolchain (already installed in the VM snapshot)
- **JDK 17** at `/usr/lib/jvm/java-17-openjdk-amd64` (the project requires 17, not the
  default 21). `JAVA_HOME`/`ANDROID_HOME` are exported in `~/.bashrc`.
- **Android SDK** at `$HOME/android-sdk` (cmdline-tools, `platforms;android-35`,
  `build-tools;35.0.0`, platform-tools, emulator, `system-images;android-35;google_apis;x86_64`).
- The committed `gradlew` does **not** have the executable bit set — run `chmod +x gradlew`
  (the update script does this) or invoke `sh gradlew`.

### Build / test / lint / run (see also `README.md`)
- Build debug APK: `./gradlew --no-daemon :app:assembleDebug`
  → `android/app/build/outputs/apk/debug/Mr.Comic-debug.apk`.
- Unit tests (per module): `./gradlew --no-daemon :<module>:testDebugUnitTest`
  (e.g. `:engine-formats`, `:feature-reader`, `:feature-library`).
- Lint (per module): `./gradlew --no-daemon :<module>:lintDebug`.
- CI (`.github/workflows/build-apk.yml`) only runs `assembleDebug` / `assembleRelease`,
  **not** unit tests.

### Known caveats
- **Pre-existing unit-test failures**: `:engine-formats` has ~19 failing tests on a clean
  checkout (`EpubCorpusSmokeTest`, `TextRealFileSmokeTest`, `FormatDiagnosticsTest`) — they
  are real-corpus content assertions, fail regardless of environment, and are unrelated to
  setup. `:feature-reader` and `:feature-library` unit tests pass.
- **Emulator has no KVM**: this VM cannot hardware-accelerate, so the Android emulator runs
  in software (TCG) mode. Boot takes ~7-10 min and the device is heavily CPU-bound, so
  `system_server`/`systemui`/Google Play services ANR dialogs appear repeatedly and intercept
  input. It is reliable for confirming the app **builds, installs, launches and renders**, but
  unreliable for interactive UI testing. To suppress blocking ANR dialogs:
  `adb shell settings put global hide_error_dialogs 1`. Prefer fast JVM unit tests for verifying
  reader/text-engine logic.
- App package (debug): `com.example.mrcomic.debug`; launcher activity
  `com.example.mrcomic.MainActivityIcon_1`.
