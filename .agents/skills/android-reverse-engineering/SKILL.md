---
name: "android-reverse-engineering"
description: "Decompile Android APK/XAPK/JAR/AAR files, trace call flows, and extract HTTP APIs (Retrofit, OkHttp, Ktor, Apollo, Volley)."
metadata:
  version: "0.1.0"
  category: "reverse-engineering"
  tags: ["android", "reverse-engineering", "decompile", "jadx", "fernflower", "api-extraction", "kotlin"]
  triggers:
    include: ["decompile apk", "reverse engineer android", "extract api endpoints android", "trace call flow android", "analyze apk structure"]
    exclude: ["build apk", "sign apk", "publish to play store"]
---

# Android Reverse Engineering

Decompile Android APK, XAPK, JAR, and AAR files using jadx and Fernflower/Vineflower, trace call flows through application code and libraries, and produce structured documentation of extracted APIs. Two decompiler engines are supported — jadx for broad Android coverage and Fernflower for higher-quality output on complex Java code — and can be used together for comparison.

## Prerequisites

This skill requires **Java JDK 17+** and **jadx** to be installed. **Fernflower/Vineflower** and **dex2jar** are optional but recommended for better decompilation quality. Run the dependency checker to verify:

```bash
bash .agents/skills/android-reverse-engineering/scripts/check-deps.sh
```

On Windows (PowerShell):
```powershell
& ".agents\skills\android-reverse-engineering\scripts\check-deps.ps1"
```

If anything is missing, follow the installation instructions in `.agents/skills/android-reverse-engineering/references/setup-guide.md`.

## Workflow

### Phase 0: Fingerprint the App (recommended before anything else)

Before installing tools or decompiling, run a fast triage to determine what
kind of app you are looking at. **Decompiling Java is mostly useless for
Flutter, React Native, Cordova/Capacitor, and Xamarin apps** — the real code
lives elsewhere. The fingerprint script tells you which.

```bash
bash .agents/skills/android-reverse-engineering/scripts/fingerprint.sh <file.apk|file.xapk>
```

It prints, in one screen:

- **Mobile framework** (Flutter / React Native / Cordova / Xamarin / Native Kotlin / etc.) with the file marker that triggered the verdict.
- **HTTP stack** (Retrofit, OkHttp, Ktor, Apollo, Volley) detected via DEX string scan — works even when class names are obfuscated.
- **DI / serialization** signals (Hilt, Dagger, Koin, kotlinx.serialization, Moshi, Gson, Jackson).
- **Obfuscation level** estimate based on root-level short-named packages.
- **Notable third-party SDKs** (AppsFlyer, Datadog, Sentry, Firebase, payment SDKs, support/chat SDKs, etc.).
- **Consolidated native libraries** across the base APK and all splits — XAPK split bundles often place `.so` files in `config.<abi>.apk`, not in `base.apk`.
- **Recommended next step**, which differs by framework (e.g. for Flutter the script suggests `blutter` / `strings libapp.so` rather than jadx).

If the fingerprint says the app is Flutter / RN / Cordova / Xamarin, **stop**
and switch to the framework-appropriate tooling. Phases 1–5 below assume a
native (Java/Kotlin) Android app.

### Phase 1: Verify and Install Dependencies

Before decompiling, confirm that the required tools are available — and install any that are missing.

**Action**: Run the dependency check script.

```bash
bash .agents/skills/android-reverse-engineering/scripts/check-deps.sh
```

On Windows (PowerShell):
```powershell
& ".agents\skills\android-reverse-engineering\scripts\check-deps.ps1"
```

The output contains machine-readable lines:
- `INSTALL_REQUIRED:<dep>` — must be installed before proceeding
- `INSTALL_OPTIONAL:<dep>` — recommended but not blocking

**If required dependencies are missing** (exit code 1), install them automatically:

```bash
bash .agents/skills/android-reverse-engineering/scripts/install-dep.sh <dep>
```

On Windows (PowerShell):
```powershell
& ".agents\skills\android-reverse-engineering\scripts\install-dep.ps1" <dep>
```

The install script detects the OS and package manager, then:
- Installs without sudo when possible (downloads to `~/.local/share/`, symlinks in `~/.local/bin/`)
- Uses sudo and the system package manager when necessary (apt, dnf, pacman)
- If sudo is needed but unavailable or the user declines, it prints the exact manual command and exits with code 2 — show these instructions to the user

**Windows notes**: The PowerShell install script uses `winget`, `scoop`, or `choco` (in that order). If none are available, it downloads directly to `%USERPROFILE%\.local\share\` and adds the directory to the user's PATH.

**For optional dependencies**, ask the user if they want to install them. Vineflower and dex2jar are recommended for best results.

After installation, re-run `check-deps.sh` to confirm everything is in place. Do not proceed to Phase 2 until all required dependencies are OK.

### Phase 2: Decompile

Use the decompile wrapper script to process the target file. The script supports three engines: `jadx`, `fernflower`, and `both`.

**Action**: Choose the engine and run the decompile script. The script handles APK, XAPK, JAR, and AAR files.

```bash
bash .agents/skills/android-reverse-engineering/scripts/decompile.sh [OPTIONS] <file>
```

On Windows (PowerShell):
```powershell
& ".agents\skills\android-reverse-engineering\scripts\decompile.ps1" [OPTIONS] <file>
```

For **XAPK** files (ZIP bundles containing multiple APKs, used by APKPure and similar stores): the script automatically extracts the archive, identifies all APK files inside (base + split APKs), and decompiles each one into a separate subdirectory.

**Split/bundled APK detection**: Some APKs are actually bundle wrappers — the outer APK contains `base.apk` plus `split_config.*.apk` files inside its resources directory. When this happens, jadx will decompile the thin wrapper and produce very few Java files. The decompile scripts automatically detect this (≤10 Java files + inner APKs present) and re-decompile `base.apk` into an `<output>/base/` subdirectory. Config-only splits (ABI, language, density) are skipped.

Options:
- `-o <dir>` — Custom output directory (default: `<filename>-decompiled`)
- `--deobf` — Enable deobfuscation (recommended for obfuscated apps)
- `--no-res` — Skip resources, decompile code only (faster)
- `--engine ENGINE` — `jadx` (default), `fernflower`, or `both`

**Engine selection strategy**:

| Situation | Engine |
|---|---|
| First pass on any APK | `jadx` (fastest, handles resources) |
| JAR/AAR library analysis | `fernflower` (better Java output) |
| jadx output has warnings/broken code | `both` (compare and pick best per class) |
| Complex lambdas, generics, streams | `fernflower` |
| Quick overview of a large APK | `jadx --no-res` |

When using `--engine both`, the outputs go into `<output>/jadx/` and `<output>/fernflower/` respectively, with a comparison summary.

### Phase 3: Analyze Structure

Navigate the decompiled output to understand the app's architecture.

**Actions**:

1. **Read AndroidManifest.xml** from `<output>/resources/AndroidManifest.xml`:
   - Identify the main launcher Activity
   - List all Activities, Services, BroadcastReceivers, ContentProviders
   - Note permissions (especially `INTERNET`, `ACCESS_NETWORK_STATE`)
   - Find the application class (`android:name` on `<application>`)

2. **Survey the package structure** under `<output>/sources/`:
   - Identify the main app package and sub-packages
   - Distinguish app code from third-party libraries
   - Look for packages named `api`, `network`, `data`, `repository`, `service`, `retrofit`, `http`

3. **Read every `BuildConfig.java`** — these are almost never obfuscated and frequently leak the highest-signal constants (base URLs, flavor names, build type, API keys, feature flags):
   ```bash
   find <output>/sources -name BuildConfig.java -exec grep -H '=' {} \;
   ```

4. **Identify the architecture pattern**:
   - MVP: look for `Presenter` classes
   - MVVM: look for `ViewModel` classes and `LiveData`/`StateFlow`
   - Clean Architecture: look for `domain`, `data`, `presentation` packages

### Phase 3.5: Recover Kotlin Class Names (only for obfuscated Kotlin apps)

If Phase 0 reported moderate / high obfuscation **and** the app is Kotlin
(Compose / kotlin_module markers detected), run the metadata recovery
script before tracing call flows. R8 obfuscates JVM symbols but cannot
strip Kotlin metadata strings, so original FQNs leak through
`@DebugMetadata` and `@Metadata.d2`.

```bash
bash .agents/skills/android-reverse-engineering/scripts/recover-kotlin-names.sh \
    <output>/sources <output>/mapping
```

Then use the lookup helper instead of plain grep — every hit comes
annotated with the owning class's real name:

```bash
bash .agents/skills/android-reverse-engineering/scripts/lookup-name.sh \
    <output>/mapping --grep '"/api/' <output>/sources
```

Typical recovery on a real-world Kotlin app: ~100% of `*Repository` /
`*ViewModel` / `*UseCase` / `*Impl` classes, ~80% of DTOs.

### Phase 4: Trace Call Flows

Follow execution paths from user-facing entry points down to network calls.

**Actions**:

1. **Start from entry points**: Read the main Activity or Application class identified in Phase 3.

2. **Follow the initialization chain**: Application.onCreate() often sets up the HTTP client, base URL, and DI framework. Read this first.

3. **Trace user actions**: From an Activity, follow:
   - `onCreate()` → view setup → click listeners
   - Click handler → ViewModel/Presenter method
   - ViewModel → Repository → API service interface
   - API service → actual HTTP call

4. **Map DI bindings** (if Dagger/Hilt is used): Find `@Module` classes to understand which implementations are provided for which interfaces.

5. **Handle obfuscated code**: When class names are mangled, use string literals and library API calls as anchors. Retrofit annotations and URL strings are never obfuscated.

### Phase 5: Extract and Document APIs

Find all API endpoints and produce structured documentation.

**Action**: Run the API search script for a broad sweep.

```bash
bash .agents/skills/android-reverse-engineering/scripts/find-api-calls.sh <output>/sources/
```

On Windows (PowerShell):
```powershell
& ".agents\skills\android-reverse-engineering\scripts\find-api-calls.ps1" <output>/sources/
```

Targeted searches:
```bash
# Only Retrofit
bash .agents/skills/android-reverse-engineering/scripts/find-api-calls.sh <output>/sources/ --retrofit

# Only hardcoded URLs
bash .agents/skills/android-reverse-engineering/scripts/find-api-calls.sh <output>/sources/ --urls

# Only auth patterns
bash .agents/skills/android-reverse-engineering/scripts/find-api-calls.sh <output>/sources/ --auth
```

Document the endpoints in **two tiers**:

#### Tier 1 — flat inventory (always)

A single table covering every discovered endpoint:

| Host | Method | Path | Auth | Source file |
|------|--------|------|------|-------------|
| `api.example.com` | GET | `/v1/users/profile` | Bearer | `com/example/api/UserApi.java` |

#### Tier 2 — per-endpoint detail (only for high-value endpoints)

Reserve for: authentication flows, payment/checkout endpoints, anything unusual.

```markdown
### `METHOD /path`

- **Source**: `com.example.api.ApiService` (ApiService.java:42)
- **Base URL**: `https://api.example.com/v1`
- **Path params**: `id` (String)
- **Query params**: `page` (int), `limit` (int)
- **Headers**: `Authorization: Bearer <token>`
- **Request body**: `{ "email": "string", "password": "string" }`
- **Response**: `ApiResponse<User>`
- **Called from**: `LoginActivity → LoginViewModel → UserRepository → ApiService`
```

## Output

At the end of the workflow, deliver:

1. **Decompiled source** in the output directory
2. **Architecture summary** — app structure, main packages, pattern used
3. **API documentation** — all discovered endpoints in the format above
4. **Call flow map** — key paths from UI to network (especially authentication and main features)

## References

- `.agents/skills/android-reverse-engineering/references/setup-guide.md` — Installing Java, jadx, Fernflower/Vineflower, dex2jar
- `.agents/skills/android-reverse-engineering/references/jadx-usage.md` — jadx CLI options and workflows
- `.agents/skills/android-reverse-engineering/references/fernflower-usage.md` — Fernflower/Vineflower CLI options
- `.agents/skills/android-reverse-engineering/references/api-extraction-patterns.md` — Library-specific search patterns and documentation template
- `.agents/skills/android-reverse-engineering/references/call-flow-analysis.md` — Techniques for tracing call flows
- `.agents/skills/android-reverse-engineering/references/kotlin-name-recovery.md` — Recovering original class names from R8 metadata
- `.agents/skills/android-reverse-engineering/references/third_party_hosts.txt` — Denylist for first/third-party host bucketing
