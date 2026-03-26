# Mr.Comic Project Context Handoff

Last updated: 2026-03-25
Project root: `C:\Users\xmeta\projects\Mr.Comic`
Current branch: `codex/savepoint-library-styling-20260313-2049`
Primary platform: Android
Primary language: Kotlin
UI: Jetpack Compose
DI: Hilt
Persistence: DataStore + Room/repository layer
Build: Gradle Kotlin DSL

## Latest OCR status

- `A5 OCR comic translation completion` moved forward again.
- OCR availability copy is now pair-aware across:
  - page translation
  - manual translation
  - selected-block translation
- route failures now mention the active pair for cases like:
  - missing online route
  - missing offline model
  - unsupported machine pair
  - dictionary-only fallback
- selected-block translation no longer treats the dictionary as “available” just because the global dictionary backend exists:
  - the block text itself must qualify for short dictionary lookup
- the shared dictionary core now supports short phrase lookup (`2–3` words), not just single words:
  - reader and OCR dictionary-first flows no longer advertise a path the engine cannot execute
  - when no bundled phrase entry exists, the dictionary path can now produce a machine-assisted short-phrase entry
- reader-side phrase availability no longer lies about “network means translation”:
  - `Translate as phrase` is now hidden when there is no offline model and no configured online route, even if raw network connectivity exists
- OCR online readiness no longer lies about “configured means ready”:
  - a configured online provider without connectivity now surfaces as `needs network`, not as a ready route
  - online-only OCR actions are disabled until connectivity is actually present
- reader selected-text actions no longer keep a dead `Open dictionary` button when the real lookup for the current snippet did not resolve
- `QuickDictionaryEngine.isLookupAvailable()` is now network-aware:
  - machine-assisted dictionary fallback is no longer reported as available just because an online provider is configured
  - this aligns the core dictionary availability contract with the newer reader/OCR UI availability policies
- `RoomDictionaryEngine.isLookupAvailable()` is now pair-aware too:
  - the room dictionary path no longer reports “available” only because the source-language database exists
  - direct target routes and English bridge routes are checked explicitly before exposing the room dictionary route
- room dictionary results are now stricter for non-English target pairs:
  - English glosses are no longer surfaced as if they were a real target translation for pairs like `PL→RU` or `JA→RU`
  - the engine now prefers a real fallback route or fails honestly instead
- automated regression coverage now explicitly locks the main short-translation pairs for the current runtime:
  - `PL → RU`
  - `JA → RU`
  - `EN → RU`
  across the shared quick-dictionary path and OCR short-snippet dictionary-first flow
- latest green verification:
  - `:core-domain:testDebugUnitTest`
  - `:feature-reader:testDebugUnitTest`
  - `:feature-ocr:testDebugUnitTest`
  - `:app:assembleDebug`
- remaining strict next step for OCR:
  - explicit live language-pair regression pass

## 0. Current stop point

The current active stream is the settings IA redesign from `TASKLIST_04_SETTINGS_IA_LOCALIZATION.md`, with the gamification roadmap still preserved but no longer the immediate focus.

Legacy monolithic roadmaps are archived under `docs/archive/roadmaps/`.

Latest completed focus:

- `P1 Reading Calendar / History` is closed.
- `P2 Progress / Profile Hub v2` is in a strong implemented state:
  - best week / best streak / completed titles
  - stage runway
  - XP integrated into history
  - achievements progress summary
  - stage archive
  - route alignment between `Continue`, `Library -> Mr.Comic`, and `Settings -> About`
- `P3 Mascot State System` is implemented and closed on the code side:
  - shared mascot state resolver lives in `android/core-domain/src/main/java/com/example/core/domain/analytics/MrComicMascotState.kt`
  - shared mascot asset-contract lives in `android/core-ui/src/main/java/com/example/core/ui/mascot/MrComicMascotCopy.kt`
  - `Continue`, `Library`, `Progress/Profile`, `Reader`, and `Onboarding` are on the common contract for `mini avatar`, `scene lead`, and `stage preview lead`
  - `Progress/Profile` now also has a visual mascot stage archive that respects quiet-mode
  - quiet-mode / opt-out direct mascot-only branches were removed from the key surfaces and the package now has green tests + green debug build

Most recent safe cleanup:

- removed project-root Gradle cache folders like `.gradle*` that were just local build trash
- repaired global Gradle cache issues enough to get `:app:compileDebugKotlin` and later `:app:assembleDebug` green again
- removed the remaining hardcoded mascot-only lead path from `Continue`/`Library` stage-preview helpers so the shared mascot contract is now consistently `showMascot`-aware

Current next step:

- continue the settings redesign under the new product IA:
  - `Appearance`
  - `Reading`
  - `Library`
  - `Sync`
  - `Storage`
  - `Advanced`
- immediate target:
  - rebuild `Reading` into the requested hub with subpages for text, paging, headers, and behavior
  - keep `Library` logic-only
  - continue moving visual controls into `Appearance`

Latest settings IA slice completed:

- top-level `Backup`-style mixing was split into real sections:
  - `Sync`
  - `Storage`
  - `Advanced`
- `Appearance` now owns a dedicated `Covers and library` page for:
  - library view mode
  - cover/title visual controls
  - shelves/background
  - atmosphere sliders
- `Library` settings were cut back to logic-first behavior:
  - sort order
  - grouping
  - explicit notice that visuals moved to `Appearance`
- `Reading` settings were rebuilt into a real hub:
  - `Text appearance`
  - `Page layout`
  - `Headers and footers`
  - `Paging`
  - `Behavior`
- new compact previews were added for:
  - text appearance
  - header/footer structure
  - tap zones
- newest reader-settings runtime slice completed:
  - `Headers and footers` now have real saved slot settings:
    - left / center / right for header
    - left / center / right for footer
    - font size and insets
  - `Paging` now has a real saved tap-zone model:
    - `Simple / Custom`
    - swap left/right in simple mode
    - custom left / center / right actions
  - these values are now wired into the real reader runtime:
    - tap zones change actual navigation behavior
    - calm header/footer overlays render in hidden chrome mode
  - `Paging` now also supports hardware page turns:
    - new `volume buttons paging` preference in settings
    - `MainActivity` acts as a key-event host for the active reader session
    - volume up = previous page
    - volume down = next page
  - green verification:
    - `:core-model:testDebugUnitTest`
    - `:feature-reader:testDebugUnitTest`
    - `:feature-settings:compileDebugKotlin`
    - `:app:assembleDebug`
- newest page-layout slice completed:
  - `Page layout` now has a real compact preview instead of a placeholder info card
  - reading mode remains explicit through the settings hub
  - new `landscape spread` preference is wired end-to-end:
    - stored in prefs
    - exposed in settings
    - applied by the reader runtime on wide screens
  - `preload pages` stays on the same page as an actual layout-performance control
  - green verification:
    - `:feature-settings:compileDebugKotlin`
    - `:app:assembleDebug`
- newest behavior slice completed:
  - `Behavior` now includes a real bridge for selected-text tools instead of only screen/wellness cards
  - the page now exposes:
    - screen session controls
    - selection / translation behavior summary
    - live `Explain` toggle used by the reader runtime
    - direct route into the dedicated `Translation` settings section
  - user-facing subtitles on the screen card were cleaned up so they describe behavior rather than raw Android flag names
  - green verification:
    - `:feature-settings:compileDebugKotlin`
    - `:app:assembleDebug`
- newest in-reader control slice completed:
  - old text-only sheet inside the reader was replaced with a unified in-reader control center
  - the runtime reader now has 3 semantic tabs:
    - `Reading`
    - `Style`
    - `Services`
  - the tabs are format-aware:
    - text books default into `Style`
    - image/comic readers default into `Reading`
    - text-only typography controls are hidden behind a calm explanation for non-text formats
  - `Reading` tab now exposes live runtime controls for:
    - reading mode
    - brightness
    - keep screen on
    - immersive mode
    - landscape spread
    - volume-button paging
    - page animation
    - preload pages
  - `Services` tab now groups the scattered reader-side service hooks:
    - TOC / bookmarks
    - bookmark toggle
    - OCR / translate for page images
    - selection-tools guidance for text readers
    - reserved `Read aloud` slot for the future TTS layer
  - top reader chrome was cleaned up:
    - settings button now opens the unified control center
    - OCR action is no longer shown for text readers
  - green verification:
    - `:feature-reader:testDebugUnitTest`
    - `:app:assembleDebug`
- newest reader-service slice completed:
  - `Read aloud / TTS` is now live for text books instead of being a reserved placeholder
  - a native Android `TextToSpeech` controller now powers reader-side playback with:
    - play / pause / stop
    - previous / next chunk
    - voice selection
    - speed
    - pitch
    - volume
    - sleep timer
  - the reader services tab and `Settings -> Read Aloud` now share the same stored defaults
  - text pages are normalized into calm TTS chunks before playback
  - comics and image formats keep an honest unavailable state instead of pretending TTS exists there
  - green verification:
    - `:core-model:testDebugUnitTest`
    - `:feature-reader:testDebugUnitTest`
    - `:feature-settings:compileDebugKotlin`
    - `:app:assembleDebug`
- newest TTS-provider slice completed:
  - a shared `TTS provider` model now exists in prefs/state even though only `System TTS` is active
  - `Settings -> Read Aloud` now includes:
    - explicit provider card
    - live preview playback for the selected voice
    - shared provider/voice/speed/pitch/volume defaults
    - honest disabled placeholders for external providers (`OpenAI`, `Azure`, `Aliyun`)
  - this keeps `A4` moving without pretending that online voices already work
  - green verification:
    - `:core-model:testDebugUnitTest`
    - `:feature-settings:compileDebugKotlin`
    - `:feature-reader:compileDebugKotlin`
    - `:app:assembleDebug`
- newest AI-services slice completed:
  - `AI Services` is no longer a generic roadmap page
  - the section now exposes real service-center cards for:
    - machine translation
    - `Local Explain`
    - `Advanced Explain`
    - `Summary`
    - OCR page services
    - external providers
  - live cards use honest copy:
    - local / offline paths are described as available
    - advanced Explain is described as waiting for an external provider
    - summary is described as not connected yet
    - online / external providers are described as not connected yet
  - transport and Explain controls remain editable below the overview cards
  - green verification:
    - `:feature-settings:compileDebugKotlin`
    - `:app:assembleDebug`
- newest reader-behavior runtime slice completed:
  - `screen timeout` is no longer just a future note
  - a shared timeout model now exists in `core-model` and is used by:
    - `Settings -> Reading -> Behavior`
    - the in-reader `Reading` tab inside the new control center
    - the reader window runtime
  - supported modes:
    - `System`
    - `30 sec`
    - `1 min`
    - `2 min`
    - `5 min`
    - `10 min`
    - `Never`
  - `Never` now behaves as an explicit keep-awake mode, while timed modes are applied to the reader window as a best-effort per-window timeout
  - green verification:
    - `:core-model:testDebugUnitTest`
    - `:feature-reader:testDebugUnitTest`
    - `:app:assembleDebug`

## 1. What this project is

`Mr.Comic` is a native Android reading application focused on:

- comics
- manga
- webtoons
- PDF
- EPUB
- FB2
- archive-based graphic formats (`CBZ`, `CBR`, `ZIP`, `RAR`, `7Z`, `TAR`)
- folder-based library imports

It is not just a reader. The user is actively shaping it into a highly customizable library + reader application with:

- deep library styling
- folder hierarchy support
- customizable thumbnails and covers
- theme and background presets
- reader UI for both text and graphic formats
- performance adaptation for different classes of devices
- support for `MOBI / AZW3`
- a separate future `DjVu` stage

## 2. Important user intent and working style

These points matter a lot. A new account or agent should follow them carefully.

### User expectations

- The user wants direct implementation, not high-level discussion.
- If the user describes a UI behavior precisely, follow it literally.
- If the user points to a photo in the project root, it is usually a visual bug report or UI direction.
- The user is very sensitive to regressions in existing behavior.
- The user expects builds after meaningful UI changes.

### User-specific working constraints

- Do not run two terminal jobs in parallel. The user explicitly asked for this because they do not want terminal tasks crashing each other.
- Do not casually rework reader/library panels if the user asked for a narrower change.
- Do not remove working features while adding new ones.
- When something is fixed, confirm with a build and provide the APK path.

### Communication preference

- Be direct and concrete.
- Avoid vague promises.
- When you changed behavior, state exactly what changed.
- If something is still incomplete, say so clearly.

## 3. Repository structure

Root-level modules are declared in `settings.gradle.kts` and point into `android/`.

Modules:

- `:app`
- `:core-model`
- `:core-data`
- `:core-domain`
- `:core-ui`
- `:engine-formats`
- `:engine-rendering`
- `:feature-library`
- `:feature-reader`
- `:feature-settings`
- `:feature-ocr`
- `:feature-onboarding`

High-level role of modules:

- `core-model`: shared models such as `Comic`, `ComicFormat`, `SortOrder`
- `core-data`: DataStore keys, repository code, storage/import logic
- `core-ui`: shared UI primitives, localization container, library visual helpers
- `engine-formats`: format readers, render profiles, format detection/factory
- `engine-rendering`: preloader, bitmap pool, rendering DI
- `feature-library`: library screen, folder/grouping logic, library cards and top bar
- `feature-reader`: text and graphic reading UI, reader chrome, reader settings behavior
- `feature-settings`: app settings, customization UI, library styling controls

## 4. Current root files that matter

At the root there are several important files/assets:

- `TASKLIST.md`
- `PROJECT_CONTEXT_HANDOFF.md` (this file)
- `photo_2026-03-12_06-31-20.jpg`
- `photo_2026-03-12_06-31-25.jpg`
- sample content files:
  - `6177.epub`
  - `6177.fb2`
  - `Packt.Mastering.Kotlin.for.Android.14.1837631719.pdf`

About the photos:

- the current two photos were used to report UI issues in the library/settings area
- they show:
  - library settings screen felt too long and not visual enough
  - cover styling looked poor / noisy
- only inspect root photos if the user explicitly references them

## 5. Current savepoint / rollback state

There is already an explicit savepoint recorded by the project workstream.

From `TASKLIST.md`:

- branch: `codex/savepoint-20260311-0100`
- commit: `68c8473`
- message: `savepoint: before customization audit`

Note: the working tree is currently dirty. Do not reset it. Build and continue on top unless the user explicitly requests rollback.

## 6. Current implemented work status

This section reflects the current state after the latest changes made in this session lineage.

### 6.1 Library behavior and structure

Implemented or improved:

- hierarchical folder display in the library
- folder cards can represent nested structure
- folder navigation with breadcrumbs
- folder cover uses the first relevant item cover when available
- library supports grouping by folder / series / none
- rectangle vs square thumbnails are implemented
- tile size affects list and grid presentation

Key files:

- `android/feature-library/src/main/java/com/example/feature/library/LibraryViewModel.kt`
- `android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt`
- `android/feature-library/src/main/java/com/example/feature/library/components/ComicGridItem.kt`
- `android/feature-library/src/main/java/com/example/feature/library/components/LibraryContentDecor.kt`

### 6.2 Library top bar / hamburger behavior

Most recent behavior:

- the library hamburger menu no longer expands as a vertical drop-down panel below the top bar
- it now expands inline inside the top app bar, horizontally to the left, similar to the reader behavior
- visible action buttons include:
  - view toggle
  - filters
  - thumbnail shape
  - add file/folder

Key file:

- `android/feature-library/src/main/java/com/example/feature/library/components/LibraryTopBar.kt`

Why this was changed:

- the user explicitly wanted the library hamburger behavior to match the reader pattern
- the previous downward expanding panel felt wrong to the user

### 6.3 Library settings screen

The library section in Settings was heavily reworked.

Current behavior:

- the section is split into quick blocks/tabs:
  - `View`
  - `Covers`
  - `Shelves & background`
  - `Sorting`
- this reduces the giant uninterrupted settings column
- in the `Shelves & background` block:
  - live preview stays visible at the top
  - the long list of controls is in a separate internal scroll area
  - this was done specifically because the user complained that while scrolling options they could no longer see what was changing

Key file:

- `android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt`

### 6.4 Cover styling / content-aware visual treatment

There is now stronger separation between content types:

- text books (`EPUB`, `FB2`) are styled more like bound books
- graphic volumes (`CBZ`, `CBR`, `PDF`, archive/folder image content) have a more poster/graphic-novel presentation
- folders have their own cover treatment

Recent improvement:

- aggressive `GRAPHIC` sticker overlay was removed
- graphic cover styling was cleaned up
- a new configurable graphic-cover style setting was added

Current graphic cover style presets:

- `POSTER`
- `INK`
- `MINIMAL`

These are now:

- persisted in DataStore
- exposed in Settings
- consumed by library UI
- reflected in preview and real library cards

Key files:

- `android/core-data/src/main/java/com/example/core/data/preferences/PreferencesKeys.kt`
- `android/core-ui/src/main/java/com/example/core/ui/library/LibraryVisualStyle.kt`
- `android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsViewModel.kt`
- `android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt`
- `android/feature-library/src/main/java/com/example/feature/library/LibraryViewModel.kt`
- `android/feature-library/src/main/java/com/example/feature/library/components/LibraryContentDecor.kt`

### 6.5 Localization work

A large localization sweep has already happened for the library.

Improved areas:

- many hardcoded library strings were replaced with localized logic
- recent strip title is localized
- content descriptions and labels in library controls and metadata were localized
- `LibraryViewModel` error messages are now localized through helper functions

Key file:

- `android/core-ui/src/main/java/com/example/core/ui/locale/AppStrings.kt`

Important caveat:

- localization is not yet fully complete project-wide
- there is still technical debt in `ReaderScreen`, `SettingsScreen`, and some other feature surfaces

### 6.7 Startup and library cleanup

Recent cleanup already applied:

- onboarding / welcome screen is no longer used as the initial app route
- app starts directly into the main flow
- the `Continue reading` strip was removed from the library screen itself
- the dedicated `Continue` root screen still exists in navigation

Key files:

- `android/app/src/main/java/com/example/mrcomic/MainActivity.kt`
- `android/app/src/main/java/com/example/mrcomic/navigation/AppNavigation.kt`
- `android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt`

### 6.8 Format support expanded

Current real support now includes:

- `CBZ`
- `CBR`
- `PDF`
- `EPUB`
- `FB2`
- `ZIP`
- `RAR`
- `7Z`
- `TAR`
- `FOLDER`
- `TXT`
- `HTML / HTM / XHTML`
- `Markdown`
- `RTF`
- `MOBI`
- `AZW3`
- `DOCX`
- `ODT`

Implementation notes:

- `TXT / HTML / Markdown / RTF / MOBI / AZW3 / DOCX / ODT` are wired into:
  - `ComicFormat`
  - `FormatDetector`
  - `FormatFactory`
  - `ComicRepository`
  - file picker MIME filters
  - the existing HTML/text reader path
- `DOCX` and `ODT` currently use a lightweight zip+xml text extraction path, not a heavyweight office rendering engine
- `MOBI` and `AZW3` currently use a lightweight non-DRM text extraction path:
  - PalmDB container parsing
  - uncompressed + PalmDOC text record support
  - HTML/markup extraction when present
  - graceful fallback message for DRM or unsupported HuffDic-compressed books
- `DjVu` was intentionally not added yet because the clean Android path is a separate native/licensing decision

### 6.6 Render profile crash fix

A critical runtime crash was fixed.

Problem:

- `Context.display` was being accessed from a non-visual `ApplicationContext`
- this caused:
  - `UnsupportedOperationException`
  - crash during reader initialization

Fix:

- e-ink/refresh-rate detection was changed to a safer approach using `DisplayManager` + guarded fallback
- no direct unsafe `context.display` access remains in that code path

Key file:

- `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/RenderDeviceProfile.kt`

## 7. Current user-facing unfinished work

This is the most important section for a new account continuing development.

### 7.1 Library customization is improved but not finished

Still open:

- transparency controls for menus/panels need deeper validation
- library theme presets as reusable user presets are implemented but still need UX polish
- shelf/background system now has real new families (`Liquid Glass`, `Midnight Mica`, `Sunset Haze`, `Frost`, `Aluminum`, `Float`) plus actual blur/veil control, but still needs visual tuning to fully satisfy the user
- some tabs in settings are now compact, but the user is sensitive to any area that still feels too long

### 7.2 Reader / library parity still needs careful work

The user often asks for:

- consistent behavior between library top controls and reader controls
- compact but visually strong panels
- no duplicated controls across top/bottom bars
- no fullscreen panel regressions where compact controls were expected

### 7.3 Performance roadmap is only partially done

There is active groundwork but not full delivery.

Already present in codebase or partially started:

- `BitmapPool`
- `PagePreloader`
- `RenderDeviceProfile`
- some device-tier/perf related files

Still unfinished:

- only the deeper `DjVu` stage and any later perf polish beyond the current memory-trim pass

### 7.4 Remaining format work

Already implemented:

- `TXT`
- `HTML / HTM / XHTML`
- `Markdown`
- `RTF`
- `MOBI / AZW3`
- `DOCX / ODT`

Still not implemented:

- `DjVu`

Important note for `DjVu`:

- treat it as its own stage
- usual Android options here tend to imply `DjVuLibre` / `MuPDF` style native + GPL/AGPL tradeoffs
- do not casually pull in a dead or license-problem dependency just to claim format support
- a safe stage 0 is now present in code:
  - `DjVu` files are detected and imported
  - opening such a file shows an explicit in-app placeholder page instead of skipping the file or crashing
  - actual page rendering is still pending a renderer/licensing decision

## 8. User complaints and corrections that matter historically

This helps avoid repeating mistakes.

### Do not reinterpret UI requests too loosely

The user repeatedly corrected earlier changes where:

- a panel was changed in the wrong place
- a behavior was changed more broadly than requested
- a working feature was removed while another feature was added

### The user strongly cares about:

- thumbnail format control being present and actually working
- no duplicate settings buttons/panels
- reader vs library behavior being intentionally different when requested
- text-reader portrait/rotation behavior
- comic landscape layout correctness
- no crashes from placeholder translation buttons

### Another recurring issue

The user is very quick to notice when:

- a panel overlays too much
- buttons are misaligned by a few dp
- controls feel bulky or visually messy
- a preview exists but is not visible during actual parameter adjustments

## 9. Files most likely to be touched next

If continuing this customization track, these are the likely hot files:

- `android/feature-library/src/main/java/com/example/feature/library/components/LibraryTopBar.kt`
- `android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt`
- `android/feature-library/src/main/java/com/example/feature/library/LibraryViewModel.kt`
- `android/feature-library/src/main/java/com/example/feature/library/components/LibraryContentDecor.kt`
- `android/feature-library/src/main/java/com/example/feature/library/components/ComicGridItem.kt`
- `android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt`
- `android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsViewModel.kt`
- `android/core-ui/src/main/java/com/example/core/ui/library/LibraryVisualStyle.kt`
- `android/core-ui/src/main/java/com/example/core/ui/locale/AppStrings.kt`

If continuing reader/performance work, likely files are:

- `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt`
- `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt`
- `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderChromeComponents.kt`
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/pdf/PdfFormatReader.kt`
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/zip/ZipFormatReader.kt`
- `android/engine-rendering/src/main/kotlin/com/example/engine/rendering/preload/PagePreloader.kt`
- `android/engine-rendering/src/main/kotlin/com/example/engine/rendering/pool/BitmapPool.kt`

## 10. Current build status

The project has been successfully built after the latest library/settings work.

Last confirmed successful commands:

```powershell
.\gradlew.bat :feature-library:compileDebugKotlin
.\gradlew.bat :feature-settings:compileDebugKotlin
.\gradlew.bat :app:assembleDebug
```

Latest confirmed debug APK:

- `C:\Users\xmeta\projects\Mr.Comic\android\app\build\outputs\apk\debug\Mr.Comic-debug.apk`

At time of writing:

- last write time: `2026-03-12 07:05:24`

## 11. Existing tasklist and planning baseline

There is already a project tasklist in:

- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

It contains:

- rollback/savepoint info
- customization roadmap
- performance roadmap
- new format roadmap
- localization debt

Important note:

- some items marked as pending in `TASKLIST.md` have already been partially implemented after the file was last updated
- before continuing, sync `TASKLIST.md` with real code state

## 12. Recommended next steps for a new account

If continuing from the current state, the safest order is:

1. Verify the latest APK behavior manually:
   - library hamburger expands left inline
   - library settings `Shelves & background` keeps preview visible while options scroll
   - graphic cover presets (`POSTER / INK / MINIMAL`) visibly change library cards

2. Update `TASKLIST.md` so it matches the real current state.

3. Continue the library customization track before touching reader again:
   - refine menu/panel transparency
   - add user library-theme presets
   - polish shelf/background preview behavior further

4. Only then return to heavy perf work:
   - zoom sharpness
   - PDF high-res rendering tier
   - viewport-aware decode sampling

## 13. Short continuation summary

If another account opens this project and needs a fast mental model:

- this is an Android Compose comic/book reader
- library customization is the current main active workstream
- the user is extremely specific about UI behavior and notices regressions quickly
- library top controls were just moved to inline left-expanding behavior
- library settings were just split into blocks and the style tab now keeps preview visible
- graphic cover styling is now configurable through three presets
- build is green
- do not run parallel terminal jobs
- do not reset the dirty tree

## 14. Backup and Savepoint before library styling

Before starting the current library-styling pass, a manual filesystem backup and a git savepoint were created.

Backup:

- `C:\Users\xmeta\projects\Mr.Comic_backups\Mr.Comic_backup_20260313_200900`

Backup notes:

- this is a working-tree snapshot intended for emergency rollback
- `.git`, Gradle/build output, and similar heavy/generated folders were excluded
- the backup folder also contains:
  - `GIT_STATUS.txt`
  - `GIT_HEAD.txt`

Git savepoint:

- branch: `codex/savepoint-library-styling-20260313-2049`
- commit: `ddc3b26`
- message: `savepoint: before library styling overhaul`

Important:

- current work may already be ahead of that savepoint commit
- if rollback is needed, prefer checking the savepoint branch/commit first instead of manually reverting files one by one

## 15. Current library-styling stage

The current active pass is a broader visual overhaul of library presentation.

Implemented in this stage:

- new library zone presets:
  - `DARK_STUDY`
  - `LIGHT_GREENHOUSE`
  - `SCIENCE_LAB`
  - `CITY_LIBRARY`
- user library-theme slots:
  - three save/apply/clear slots in library settings
  - snapshot includes background, image URI, veil, shelf style/depth, card shadow, card style, thumbnail mode, graphic cover style, cover scale, panel opacity
- stronger shelf presets:
  - `GLASS`
  - `OAK`
  - `WALNUT`
  - `STEEL`
  - `LACQUER`
  - `NEON`
  - `MINIMAL`
  - `NONE`
- animated progress medallion instead of a plain linear-only progress look
- more differentiated cover treatment:
  - text books look more like bound books
  - graphic formats use `POSTER / INK / MINIMAL`
  - folders look more like a stacked storage box / volume set
- settings-side library style preview was extended to reflect the new style direction
- zone presets can now apply coordinated combinations of background/shelf/card/cover settings through `SettingsViewModel.applyLibraryZonePreset(...)`

Most relevant files for this styling stage:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\library\LibraryVisualStyle.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\LibraryContentDecor.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\ComicGridItem.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`

## 16. Build status after the current styling pass

Reconfirmed successful commands during the current pass:

```powershell
.\gradlew.bat :feature-library:compileDebugKotlin
.\gradlew.bat :app:assembleDebug
```

Latest confirmed debug APK after the styling pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\app\build\outputs\apk\debug\Mr.Comic-debug.apk`

At time of writing:

- last write time: `2026-03-13 20:58`

## 17. Most recent follow-up fixes after the styling pass

Two additional follow-up changes were completed after the previous styling checkpoint.

### 17.1 Clean reinstall should no longer restore old app data

Cause:

- Android backup/restore was still enabled and could restore prior internal files after reinstall.

Applied fix:

- `android:allowBackup="false"` in:
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\AndroidManifest.xml`
- disabled restore for `sharedpref`, `database`, and `file` in:
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\res\xml\backup_rules.xml`
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\res\xml\data_extraction_rules.xml`

Expected result:

- future clean reinstall scenarios should no longer pull old library/app data back from Android auto-restore

### 17.2 P1 library background pass continued

The next P1 pass focused on making library backgrounds calmer and more theme-aware.

Applied changes:

- library backdrops now have cleaner differentiation for:
  - `LIGHT`
  - `DARK`
  - `AMOLED`
- the background intensity curve was reduced globally, especially for AMOLED
- atmospheric/background detail was reduced so cards and covers win over the backdrop
- several decorative scenes were simplified into more abstract ambience:
  - `DARK_STUDY` -> softer lamp wash, less literal panel/grain dressing
  - `LIGHT_GREENHOUSE` -> soft panes and diffuse botanical color, no explicit leaf illustration
  - `SCIENCE_LAB` -> lighter grid/readout treatment
  - `CITY_LIBRARY` -> abstract vertical architectural rhythm instead of a literal skyline

Primary file:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\library\LibraryVisualStyle.kt`

Tasklist state after this pass:

- `P1 #1` (cover styling final polish) -> done
- `P1 #2` (theme-separated library backgrounds) -> done
- `P1 #3` (reduce background competition with cards) -> done

Additional P1 cover refinements completed after that:

- quieter card shells for both grid and list
- smaller card radii and weaker borders
- less visual competition between card chrome and the actual cover
- text-book treatment now behaves more like a calm hardback overlay
- `POSTER`, `INK`, and `MINIMAL` are pushed further apart:
  - `POSTER` -> lighter display framing, subtle poster strip, softer cinematic edge
  - `INK` -> heavier dark gutter and stronger black framing
  - `MINIMAL` -> near-full-bleed look with only a faint frame/rule
- settings preview cards were updated to stay closer to the real library card treatment

Primary files for this follow-up:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\ComicGridItem.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\LibraryContentDecor.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`

## 18. Library quick presets added

The next library step added ready-made library styling presets so the user does not have to build a look manually from multiple controls.

Added presets:

- `Paper`
- `Dark Shelf`
- `AMOLED`
- `Comics / Neon`

Implementation notes:

- presets are exposed in the `Library -> Shelves & background` section as a dedicated quick-preset block
- each preset applies a coordinated combination of:
  - background
  - backdrop strength
  - veil
  - shelf style and depth
  - card shadow
  - card density/style
  - thumbnail mode
  - graphic cover style
  - cover scale
  - panel opacity
- `AMOLED` also forces AMOLED dark mode on
- non-AMOLED presets turn AMOLED dark mode off again so the result stays predictable

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`

## 19. Content-aware library card pass completed

The next library step strengthened the visual distinction between books, graphic volumes, and folders.

Applied changes:

- text books:
  - calmer and slightly warmer card shell
  - subtler, more restrained border treatment
  - keeps a more “bound book” feel instead of a display-card feel
- graphic volumes:
  - darker / more showcase-oriented shell
  - slightly stronger accent border
  - poster-like presentation stays dominant
- folders:
  - card shell now sits closer to a curated collection / box-set look
  - folder cover treatment now includes a collection-count pill
  - stack layers and volume bars were refined so the folder reads as a grouped collection, not a system placeholder
- settings preview was aligned again so the library preview reflects the new content-specific styling

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\ComicGridItem.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\LibraryContentDecor.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`

## 20. Folder-as-collection pass completed

Folders received a dedicated follow-up pass so they read more like curated collections than system folders.

Applied changes:

- added localized collection meta chips on folder cards
  - collection label
  - volume count
  - sub-collection count on larger list cards
- folder cards now carry more editorial / collection framing instead of neutral utility framing
- folder cover stacks became more dynamic:
  - visible “volumes” scale with file count
  - nested folders add a secondary small set cluster on the opposite side
- folder grid cards got a slightly taller information block to fit collection metadata without crushing the title

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\LibraryContentDecor.kt`

## 21. Library P3 polish completed

The final P3 cleanup pass for the library is now done.

Applied changes:

- a single recommended baseline is now encoded directly into defaults:
  - `Paper Grain` background
  - `Oak` shelves
  - `Minimal` graphic cover style
  - quieter backdrop / veil / shelf depth / card shadow defaults
  - reset-from-image now falls back to the same calm baseline instead of the old aurora preset
- library card noise was reduced:
  - lower default elevation curve
  - softer card shells and border alpha
  - thinner / quieter progress indicators in grid and list cards
- library settings preview is more informative now:
  - shows the current background label as before
  - now also shows compact pills for the active profile, shelf style and graphic-cover style
  - `Paper` is explicitly surfaced as the recommended baseline when active
  - preview shell and preview cards were quieted to better match the real library screen

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\library\LibraryVisualStyle.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\ComicGridItem.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 22. First performance pass completed

The reader UI was intentionally left untouched after the user confirmed it is already fine.
This pass focused only on device-tier performance policy and decode behavior.

Applied changes:

- formalized the existing device profiles so they now also carry:
  - default preload window
  - memory-cache budget divisor
  - bitmap-pool capacity
  - image decode boost factor
- wired the profile into runtime behavior:
  - reader preload default now comes from the active device profile
  - low / mid / high / eink tiers now drive cache budget and pool size instead of using one global constant
- extracted a shared image decode policy helper for viewport-based sampling
- `CBZ/ZIP` decode was moved onto the shared device-aware sampling policy
- `CBR/RAR` decode was brought to the same path, so archive images are no longer always decoded at near-full size on weaker devices

What is still intentionally left for the next perf passes:

- true high-res zoom tier for `PDF`
- high-res zoom refresh for comics / manga / webtoon
- broader `BitmapPool` usage beyond the current PDF-centric path
- import-path optimization for `content://`
- automatic animation downshift outside the already existing e-ink path

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\RenderDeviceProfile.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\ImageDecodePolicy.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\FormatFactory.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\zip\ZipFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\rar\RarFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-rendering\src\main\kotlin\com\example\engine\rendering\cache\TieredBitmapCache.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-rendering\src\main\kotlin\com\example\engine\rendering\pool\BitmapPool.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 23. PDF high-res zoom tier completed

The next step in the performance block was focused specifically on `PDF`.
Reader UX was still left untouched; only the render pipeline and page cache behavior changed.

Applied changes:

- `FormatReader` now exposes an optional render-quality tier API:
  - tier `1` = baseline viewport render
  - higher tiers may request a more detailed page bitmap
- `PdfFormatReader` now renders discrete zoom tiers instead of always using the same viewport-sized bitmap
- `PagePreloader` cache keys were extended to include render quality:
  - baseline page cache remains
  - high-detail variants can coexist without replacing the baseline flow immediately
  - stale high-detail variants for the same page are dropped when a newer tier is requested
- `PageView` now watches the live zoom scale for PDF pages and escalates render quality automatically:
  - baseline bitmap remains visible immediately
  - sharper PDF bitmap is requested once the zoom crosses tier thresholds
  - the higher-quality bitmap replaces the stretched one as soon as it is available

Current tier thresholds in UI:

- scale `< 1.45` -> quality tier `1`
- scale `>= 1.45` -> quality tier `2`
- scale `>= 2.6` -> quality tier `3`

This means the user still gets instant pinch feedback, but PDF pages no longer stay blurred when zooming deeper.

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\FormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\pdf\PdfFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-rendering\src\main\kotlin\com\example\engine\rendering\preload\PagePreloader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\components\PageView.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 24. High-res zoom for comics / manga / webtoon completed

The next sequential step extended the same idea from PDF to image-based reading formats.
Again, reader UX was not redesigned; only the decode/render path was upgraded.

Applied changes:

- added a `ComicFormat.supportsHighResZoomTiers()` helper so only raster-based reading formats opt into zoom-tier rendering
- the shared image decode policy now accepts a render-quality tier
- image readers were upgraded to honor that tier:
  - `ZIP / CBZ`
  - `RAR / CBR`
  - `FOLDER`
  - `7Z`
  - `TAR`
- `PageView` now escalates image-page quality by zoom level, not just PDF quality
- `WebtoonView` now does the same per-page:
  - the base bitmap still shows immediately
  - once the user zooms deeper, a sharper version of that page is requested
  - when ready, the sharper bitmap replaces the stretched one

Current image zoom thresholds:

- scale `< 1.4` -> quality tier `1`
- scale `>= 1.4` -> quality tier `2`
- scale `>= 2.6` -> quality tier `3`

This means page-based comics and webtoon pages now refresh into sharper source imagery while zoomed instead of staying blurred.

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-model\src\main\java\com\example\core\model\Comic.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\ImageDecodePolicy.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\FormatFactory.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\zip\ZipFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\rar\RarFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\folder\FolderFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\sevenz\SevenZFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\tar\TarFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\components\PageView.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\components\WebtoonView.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 25. BitmapPool integration and content URI import optimization completed

The next sequential pass finished two infrastructure items in the performance backlog:

1. real `BitmapPool` participation in image decode
2. less wasteful `content://` import handling

Applied changes for bitmap reuse:

- image-based readers were moved from plain `BitmapFactory.decode*` calls to pooled decode helpers
- a new pooled decode layer now:
  - reads bounds first
  - computes the viewport/device-tier sample size
  - requests a reusable bitmap from `BitmapPool`
  - decodes with `inBitmap` / `inMutable`
  - falls back safely if the reused candidate is incompatible
- this now covers:
  - `ZIP / CBZ`
  - `RAR / CBR`
  - `FOLDER`
  - `7Z`
  - `TAR`

Applied changes for imports:

- single-file `content://` imports no longer get copied into `filesDir/library` by default
- repository logic now prefers direct persisted-URI access first
- managed internal copy is retained only as a fallback when the content URI cannot be read directly
- this reduces duplicated storage use after import and avoids unnecessary permanent copies for formats the readers already know how to open from `content://`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\PooledBitmapDecode.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\FormatFactory.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\zip\ZipFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\rar\RarFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\folder\FolderFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\sevenz\SevenZFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\tar\TarFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\repository\ComicRepository.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 26. Reduced-motion / reduced-effects path for weak devices completed

The next sequential performance pass addressed the UI side of weak-device adaptation.

Applied changes:

- added a small UI-layer performance hint model via composition locals
  - `reducedMotion`
  - `reducedVisualEffects`
- these hints are now derived once in `MainActivity` from the device profile:
  - `LOW_END` -> reduced motion + reduced visual effects
  - `EINK` -> reduced motion + reduced visual effects
- reader page transitions now honor reduced motion in the same way they already honored e-ink / `NONE`
- library backdrop now gets automatically simplified on weak devices:
  - lower effective backdrop strength
  - stronger veil when image backgrounds are used
  - only a minimal overlay layer
  - decorative background layer skipped entirely
- achievement and easter-egg visuals were downshifted:
  - infinite shimmer / pulse / rotation disabled on reduced-motion devices
  - cat / confetti overlay animations are reduced or removed

This means weak devices no longer try to render the full decorative library atmosphere and animation stack, while normal devices keep the full presentation.

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\performance\PerformanceLocals.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\java\com\example\mrcomic\MainActivity.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\library\LibraryVisualStyle.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\LibraryAchievements.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\components\PageView.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 27. Memory-pressure handling for long webtoon and large PDF completed

The next sequential performance pass focused on releasing reader memory more aggressively when the app is no longer visible or Android starts signalling memory pressure.

Applied changes:

- `BitmapAllocator` now exposes optional memory-maintenance hooks:
  - `clear()`
  - `trimMemory(level)`
- `BitmapPool` now reacts to trim levels:
  - clears the whole reusable pool once the UI is hidden / app is backgrounded
  - trims the pool size under running-low memory pressure
- `PagePreloader` now exposes `trimMemory(level)` and uses different policies depending on severity:
  - `UI_HIDDEN` / `BACKGROUND` / more severe:
    - cancel preload work
    - clear loaded page map
    - clear page cache
    - forward trim to the bitmap pool
  - `RUNNING_LOW` / `RUNNING_CRITICAL` while still visible:
    - cancel preload work
    - evict only high-quality zoom tiers first
    - shrink cache budget instead of blanking the current baseline page
- `ComicApplication` now forwards Android `onTrimMemory()` / `onLowMemory()` into the reader rendering stack
- `ReaderViewModel.onCleared()` now clears reader pages instead of only cancelling the preload job

This means:

- big PDF or webtoon sessions do not keep their zoom-tier bitmaps as aggressively after the reader closes
- when the app goes into background, reader page cache is released instead of waiting for process death
- on visible low-memory pressure, the app first sacrifices expensive high-detail zoom pages before the baseline page path

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\BitmapAllocator.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-rendering\src\main\kotlin\com\example\engine\rendering\pool\BitmapPool.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-rendering\src\main\kotlin\com\example\engine\rendering\preload\PagePreloader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\java\com\example\mrcomic\ComicApplication.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 28. MOBI / AZW3 support completed with lightweight reader path

The next sequential format pass added `MOBI` and `AZW3` to the existing text-reader pipeline without introducing a heavy external dependency.

Applied changes:

- added `ComicFormat.MOBI` and `ComicFormat.AZW3`
- marked both as text-reading formats
- wired both into:
  - extension detection
  - MIME detection
  - content-based fallback detection via PalmDB `BOOKMOBI` signature
  - `FormatFactory`
  - `ComicRepository`
  - SAF file picker MIME filters
- added a dedicated lightweight extractor for non-DRM Kindle/Mobipocket books:
  - PalmDB record parsing
  - raw / uncompressed text record support
  - PalmDOC decompression support
  - HTML/markup extraction when the book payload is markup-oriented
  - plain-text fallback when markup is absent
- added a small unit-test covering:
  - minimal uncompressed MOBI extraction
  - PalmDOC back-reference decompression

Important limitation:

- this implementation intentionally does not claim full Kindle-engine parity
- DRM-protected files are rejected with a readable message
- HuffDic-compressed books are also rejected with a readable message instead of pretending to support them
- this keeps the reader stable and useful for a meaningful subset of `MOBI / AZW3` files without adding a risky native or unmaintained dependency

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-model\src\main\java\com\example\core\model\Comic.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\FormatDetector.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\FormatFactory.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\text\MobiTextSupport.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\text\TextFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\test\kotlin\com\example\engine\formats\text\MobiTextSupportTest.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\repository\ComicRepository.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\java\com\example\mrcomic\navigation\AppNavigation.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 29. DjVu stage 0 completed

The next sequential stage moved `DjVu` from "completely unknown to the app" into a safe explicit placeholder state.

Applied changes:

- added `ComicFormat.DJVU`
- wired `DjVu` into:
  - extension detection (`.djvu`, `.djv`)
  - MIME detection
  - repository import path
  - file picker MIME list
- added a dedicated `DjvuFormatReader`
  - it currently returns one HTML page with a clear user-facing explanation
  - this keeps the file visible and openable in-app while avoiding fake claims of real page rendering

Current status:

- `DjVu` is now recognized and imported by the app
- opening a `DjVu` item no longer depends on the generic unsupported-format branch
- real page rendering, page count, cover extraction, zoom, preload and image pipeline integration are still pending

Why the implementation intentionally stopped here:

- the obvious Android paths for real `DjVu` rendering still imply a renderer and licensing decision
- this project explicitly should not pull in a risky GPL/AGPL/native dependency casually just to tick the format-support box
- stage 0 was chosen as the safe path that improves behavior immediately without poisoning the codebase

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-model\src\main\java\com\example\core\model\Comic.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\FormatDetector.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\base\FormatFactory.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\djvu\DjvuFormatReader.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\repository\ComicRepository.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\java\com\example\mrcomic\navigation\AppNavigation.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 30. First hardcoded-strings sweep pass completed

The next sequential system-cleanup pass started removing local mini-dictionaries and visible hardcoded UI text from the most user-facing library/settings areas.

Applied changes:

- added explicit `AppStrings` keys for common library quick-menu and delete-dialog text:
  - comic fallback label
  - delete title / delete message / delete action
  - view list / grid
  - covers square / rectangle
  - add
  - order and filters
  - reset
- `LibraryScreen` now uses these shared localized keys instead of inline `tr(...)` blocks for those controls
- `SettingsScreen` translation/backup/about section leads were reconnected to existing shared `AppStrings`
- OCR language chips now reuse `langJa / langZh / langEn / langKo`
- the inline About achievements list now reuses the existing achievement titles from `AppStrings`

Important note:

- this does not finish the full hardcoded-string sweep yet
- there are still remaining localized helper blocks and direct literals in `LibraryScreen`, `SettingsScreen`, and especially `ReaderScreen`
- but the most visible library quick controls and several settings sections are now on the shared localization path

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\locale\AppStrings.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`

## 31. LibraryScreen localization cleanup completed

The next sequential cleanup pass finished the visible library-side localization refactor and removed the fragile language detection hack from `LibraryScreen`.

Applied changes:

- `AppStrings` now has an explicit `languageCode` field instead of inferring language from visible UI labels
- added shared library localization keys for:
  - filter-sheet section titles and options
  - empty-library and empty-folder states
  - collection/folder labels
  - comic info sheet labels and actions
  - library stats chips (`completed` / `reading`)
- removed local `libraryLang(...)` and `tr(...)` helpers from `LibraryScreen`
- `LibraryScreen` now reads explicit keys from `AppStrings` for:
  - sorting / status / format / grouping / thumbnails sections
  - empty states
  - info sheet labels and actions
  - completed / reading stats labels
- plural-sensitive folder and stats helpers still exist, but they now rely on `strings.languageCode` instead of matching on `navLibrary`

Important note:

- this pass finishes the library-screen side of the mini-dictionary cleanup
- `SettingsScreen` and `ReaderScreen` still need separate follow-up sweeps
- this is a safer state than before because language switching no longer depends on the translated text of the navigation label itself

Build status after the change:

- `:core-ui:compileDebugKotlin` — `SUCCESS`
- `:feature-library:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\locale\AppStrings.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 32. SettingsScreen main menu and appearance pass completed

The next sequential cleanup pass moved the top-level settings UI away from scattered hardcoded strings and into centralized language-aware helpers inside `SettingsScreen`.

Applied changes:

- added `MainMenuText` and `AppearanceSectionText` helper models
- added explicit language-aware factories:
  - `settingsMainMenuText(language)`
  - `appearanceSectionText(language)`
- `SettingsMainMenu` now uses centralized text for:
  - search placeholder
  - command-center lead
  - sections card title
- `QuickReadingHub` now uses centralized text for:
  - card title and description
  - quick preset labels
  - brightness label
  - OCR toggle state labels
- `AppearanceSection` now uses centralized text for:
  - section lead
  - quick block title
  - appearance tab labels and hints
  - size/shape card title
  - accent colors title and description
  - surfaces title and description
  - service elements title
  - density / surface labels
  - palette reset label
- `uiDensityLabel(...)` is now localized by explicit language code instead of returning only English literals

Important note:

- this does not finish `SettingsScreen`
- the library subsection inside settings still contains large localized helper blocks and presets that should be cleaned in the next pass
- achievements and some utility lists also still contain direct literals

Build status after the change:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 33. SettingsScreen library subsection cleanup completed

The next sequential cleanup pass moved the library subsection inside `SettingsScreen` away from a large cluster of inline `when (uiState.appLanguage)` blocks and into a centralized text layer.

Applied changes:

- added `LibrarySectionMetaText`
- added `librarySectionMetaText(language)` to centralize:
  - quick-block title
  - library tab labels and hints
  - graphic cover style labels
  - quick preset labels and descriptions
  - saved-theme action labels
  - zone preset labels
  - card-density labels
  - cover-scale labels
  - shelf-style labels
  - sorting/grouping labels
- `LibrarySection(...)` now uses:
  - `strings.languageCode`
  - `librarySectionText(language)`
  - `librarySectionMetaText(language)`
- removed a large amount of inline language branching from the `LibrarySection` composable itself
- localized `libraryBackgroundStyleLabel(...)` for generated background presets
- localized `libraryShelfStyleLabel(...)` for shelf style names

Important note:

- `SettingsScreen` is not fully finished yet
- achievements and some long utility lists still contain direct literals and should be handled in the next pass
- but the main settings menu, appearance section, and library subsection are now all on the same centralized language-aware path

Build status after the change:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 34. SettingsScreen reader subsection cleanup completed

The next sequential cleanup pass finished the system-settings reader subsection without touching the actual reader UI/UX.

Applied changes:

- added `ReaderSectionText`
- added `readerSectionText(language)` to centralize:
  - reader subsection lead title
  - reader subsection lead description
  - localized preset names for `Paper`, `Night Ink`, and `E-Ink`
- `ReaderSection(...)` now uses `strings.languageCode` and `readerSectionText(...)`
- removed direct Russian literals from the section lead
- removed inline preset-name literals from the preset chip row
- also improved the Russian `MainMenuText.readingHubDescription` so it no longer mixes `reading preset` in English

Important note:

- this still does not finish the entire hardcoded-string sweep project-wide
- `SettingsScreen` is now mostly centralized, but achievements and some utility lists still need a separate short pass
- `ReaderScreen` itself still requires its own careful sweep later, and should be handled separately from the settings screen

Build status after the change:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Known warning:

- deprecated icon usage remains in `SettingsScreen.kt`:
  - `Icons.Filled.Sort` should eventually be migrated to `Icons.AutoMirrored.Filled.Sort`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 35. SettingsScreen mixed-language labels cleanup completed

The next sequential polish pass stayed inside `SettingsScreen` and removed the most visible Russian/English mixed labels that remained after the larger localization refactors.

Applied changes:

- localized Russian reader preset chips:
  - `Paper` -> `Бумага`
  - `Night Ink` -> `Ночная тушь`
- updated the Russian quick-reading hub to use the same localized preset names
- cleaned Russian helper copy in the appearance subsection:
  - `action-элементы` -> `ключевые действия`
  - `overlay` wording replaced with a fully Russian description
- cleaned Russian helper copy in the library subsection:
  - `progress bar` wording replaced with `индикатор прогресса`
  - quick preset titles now use Russian labels:
    - `Бумага`
    - `Тёмная полка`
    - `Комиксы / Неон`
  - `manga-ink` wording in the preset subtitle is now fully Russian
- localized Russian helper labels for:
  - `libraryGraphicCoverStyleName(...)`
  - `libraryQuickPresetTitle(...)`
  - `libraryBackgroundStyleLabel("EINK_WASH", "ru")`

Important note:

- the remaining localization debt in `SettingsScreen` is now mostly down to smaller utility tails rather than the main user-facing section structure
- the explicit next major sweep should still be `ReaderScreen`, handled separately and carefully

Build status after the change:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Known warning:

- deprecated icon usage remains in `SettingsScreen.kt`:
  - `Icons.Filled.Sort` should eventually be migrated to `Icons.AutoMirrored.Filled.Sort`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`

## 36. SettingsScreen utility tails cleanup completed

The next sequential polish pass finished the small utility leftovers inside `SettingsScreen`, so the screen is no longer the primary localization hotspot.

Applied changes:

- replaced the deprecated sorting-tab icon usage:
  - `Icons.Default.Sort` -> `Icons.AutoMirrored.Filled.Sort`
- added the missing `automirrored.filled.Sort` import so the change compiles correctly
- extracted saved-library-theme slot naming into a centralized helper:
  - `libraryThemeSlotLabel(index, language)`
- removed the inline `when (appLanguage)` block from `SavedLibraryThemeCard(...)`

Result:

- the old `SettingsScreen` warning about deprecated `Sort` icon usage is gone
- the main visible localization/control debt is no longer in `SettingsScreen`
- the next major sequential sweep should move to `ReaderScreen`, handled carefully and without changing reader UX

Build status after the change:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 37. Reader visible localization pass completed

The next sequential pass moved the most visible user-facing strings in the reader UI away from hardcoded literals without changing reader behavior or layout logic.

Applied changes:

- added a dedicated reader UI text layer:
  - `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderUiText.kt`
- centralized reader-localized labels for:
  - error state title
  - footnote / note titles
  - close / expand / collapse actions
  - chapters / bookmarks tabs
  - bookmark empty state
  - delete bookmark action
  - page labels
  - text settings sheet headings
  - quick preset labels
  - day / sepia / night labels
  - text alignment labels
  - reset-to-default action
  - reader chrome content descriptions
- `ReaderScreen.kt` now uses the helper layer for:
  - error state
  - footnote popup panel
  - TOC / bookmarks bottom sheet
  - text settings bottom sheet
- `ReaderChromeComponents.kt` now uses the helper layer for:
  - action-row content descriptions
  - expanded bottom panel preset labels
  - saved note card
  - reader note panel

Important note:

- this was intentionally limited to visible UI strings and chrome labels
- it did not change reader UX, gestures, or layout behavior
- there may still be deeper technical literals inside `ReaderScreen.kt` related to WebView/config internals, but they are not the main user-facing localization debt anymore

Build status after the change:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderUiText.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderChromeComponents.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 38. Reader chrome warning cleanup completed

The follow-up polish pass removed the remaining reader chrome deprecation warnings without changing behavior.

Applied changes:

- migrated deprecated icons in `ReaderChromeComponents.kt` to AutoMirrored variants:
  - `KeyboardArrowLeft`
  - `KeyboardArrowRight`
  - `Notes`

Result:

- `feature-reader` now builds cleanly without the previous reader chrome deprecation warnings

Build status after the change:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderChromeComponents.kt`

## 39. App language source-of-truth normalization completed

The next sequential system pass reduced the language-switching ambiguity between DataStore values, `LocalStrings`, and feature-specific UI state.

Applied changes:

- added a single normalization helper in shared locale infrastructure:
  - `normalizeAppLanguageCode(code)`
- `appStringsForCode(...)` now resolves strings only after normalization
- `SettingsViewModel` now:
  - reads `APP_LANGUAGE` through normalization before exposing it in `SettingsUiState`
  - writes `APP_LANGUAGE` through the same normalization path in `setAppLanguage(...)`
- `LibraryViewModel` now normalizes the stored app language before rebuilding localized folder/grouping data
- `SettingsScreen` language chip selection now uses:
  - `LocalStrings.current.languageCode`
  instead of relying on `uiState.appLanguage` for visible UI selection

Result:

- Compose UI now has a clearer source of truth for the active language: `LocalStrings`
- feature ViewModels still keep `appLanguage` where they need it for non-Compose localized data generation
- regional / malformed / blank language codes now collapse to a single normalized set:
  - `ru`, `en`, `ja`, `zh`, `ko`

Build status after the change:

- `:core-ui:compileDebugKotlin` — `SUCCESS`
- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:feature-library:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\locale\AppStrings.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 40. QA regression and smoke checklist added

The next sequential process-improvement pass added a dedicated validation checklist in the project root so future debug APK checks are consistent and not memory-based.

Added file:

- `C:\Users\xmeta\projects\Mr.Comic\docs\active\QA_REGRESSION_CHECKLIST.md`

What it covers:

- library regression checks
- folder hierarchy checks
- library styling checks
- text-reader checks
- comics / manga / webtoon checks
- PDF checks
- bookmarks / TOC / notes checks
- import / clean install checks
- splash / startup checks
- language switching checks
- short smoke pass for every debug APK
- suggested device coverage

Tasklist impact:

- marked regression checklist as completed
- marked debug APK smoke checklist as completed

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\docs\active\QA_REGRESSION_CHECKLIST.md`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 41. Library visual presets moved into shared data layer

The next sequential cleanup pass removed the remaining quick-preset duplication from `SettingsScreen` and `SettingsViewModel`.

What changed:

- added a shared preset catalog in:
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\library\LibraryVisualPresets.kt`
- moved there:
  - `LibraryThemePresetSnapshot`
  - `parseLibraryThemePreset(...)`
  - the quick preset catalog (`PAPER`, `DARK_SHELF`, `AMOLED`, `COMICS_NEON`)
  - preset accent colors
  - preset title / description localization helpers
  - preset matching / resolution helpers
- `SettingsViewModel` now applies quick presets through the shared catalog instead of a local `when (presetId)` block:
  - `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`
- `SettingsScreen` now renders preset tiles from the shared catalog instead of storing its own preset structures and giant language-specific lists:
  - `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`

Why this matters:

- library quick presets are no longer defined separately in UI and ViewModel
- preset application and preset recognition now come from the same source
- preset titles/descriptions stay shared and reusable
- future library preset expansion can happen in one place

Build status after this pass:

- `:core-ui:compileDebugKotlin` — `SUCCESS`
- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 42. Library utility/plural labels moved to AppStrings helpers

The next sequential cleanup pass targeted the remaining visible hardcoded count/summary strings inside `LibraryScreen`.

What changed:

- added shared helper functions in:
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\locale\AppStrings.kt`
- helpers added:
  - `libraryFileCountLabel(...)`
  - `libraryFolderCountLabel(...)`
  - `libraryVolumeCountLabel(...)`
  - `librarySetCountLabel(...)`
  - `libraryComicCountLabel(...)`
- `LibraryScreen` now uses those helpers instead of local language-specific `when` blocks for:
  - folder file count
  - subfolder count
  - volume count
  - subcollection count
  - total comics stats label

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\locale\AppStrings.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:core-ui:compileDebugKotlin` — `SUCCESS`
- `:feature-library:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 49. LibraryTopBar easter-egg tail removed completely

One more tiny cleanup pass finished the earlier easter-egg removal in the library top bar.

What changed:

- removed the leftover `onSettingsLongPress` parameter from `LibraryTopBar(...)`
- replaced `combinedClickable(...)` on the hamburger button with a simple `clickable(...)`
- removed the remaining long-press wiring/comment that still suggested a hidden action existed there

Relevant file:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\LibraryTopBar.kt`

Build status after this pass:

- `:feature-library:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 50. Reader page counter duplication reduced for text reading

The first reader UI/UX cleanup step was done as a narrow and safe change.

What changed:

- removed the explicit `current / total` page counter text from the bottom reader bar when the current session is a text reader
- the slider stays in place, and image-based readers still keep their counter text
- this reduces duplication/clutter in text-reading mode without changing page navigation behavior

Relevant file:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\components\ReaderBottomBar.kt`

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`

## 53. Reader panel transparency now follows theme opacity

The next reader UI step focused on the top and bottom chrome transparency. The theme system already supports `surfaceOpacity`, but the reader chrome still had several hardcoded alpha values that overrode it, so changing panel transparency in settings did not map cleanly to the reading UI.

What changed:

- added a shared helper:
  - `readerPanelSurfaceColor(...)`
- the helper preserves the theme surface alpha and only applies a light emphasis multiplier on top of it
- updated the top reader chrome background in `ReaderScreen`:
  - minimal and expanded bars now derive their panel alpha from the active theme surface
  - no more hardcoded `0.97f / 0.9f` override
- updated the minimal bottom progress pill:
  - its translucency now follows the same themed panel helper instead of a fixed `0.52f`
- updated the compact landscape image-reader bottom panel:
  - panel background now follows theme surface opacity
  - bookmark capsule background now follows theme surface-variant opacity

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderPanelSurface.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderChromeComponents.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderScreen.kt`

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`

## 54. Reader localization tails cleaned completely

The next pass finished the remaining user-facing reader localization tails that were still left outside the earlier text-layer cleanup.

What changed:

- localized reader error messages in `ReaderViewModel`:
  - item not found in library
  - failed to add/find item
  - unsupported format
  - no readable pages
  - generic open failure
- these errors now read the current app language from preferences and map through reader-localized helpers instead of hardcoded Russian strings
- added dedicated reader localization helpers for those error cases in `ReaderUiText.kt`
- localized page `contentDescription` in image reader components:
  - `PageView`
  - `WebtoonView`
- those components now use the shared `readerPageLabel(...)` helper and `LocalStrings.current.languageCode` instead of hardcoded English `"Page N"`

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderUiText.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\components\PageView.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\components\WebtoonView.kt`

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`

## 55. Reader bookmarks flow stabilized

The next pass focused on the in-reader page bookmarks flow: add/remove behavior, TOC/bookmarks sheet state, and stale bookmark recovery.

What changed:

- bookmark loading in `ReaderViewModel` is now sanitized against the current page count:
  - invalid page indices are filtered out
  - cleaned bookmark sets are written back to preferences automatically
- this prevents old or stale bookmark entries from appearing after page-count changes or format changes
- `TocBottomSheet(...)` now handles the "remove last bookmark while the bookmarks tab is open" case safely:
  - the sheet no longer drops into an empty/blank content state
  - if chapters exist, it automatically switches back to the chapters tab
  - if there are no chapters, the bookmarks tab remains visible long enough to show the empty-state instead of disappearing abruptly
- bookmark add/remove itself still uses the same page-level DataStore persistence, but the surrounding UI state is now consistent when the list changes live

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderScreen.kt`

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`

## 56. Hardcoded-string sweep moved into tail-only state

After the reader bookmark pass, the next sequential block was the remaining UI string sweep. At this point the large user-facing parts had already been localized earlier, so this pass focused on the visible wording tails that still made the UI feel mixed or unfinished.

What changed:

- cleaned the English backup-section description in `SettingsScreen` so it reads naturally instead of sounding like an inline developer note
- cleaned the library progress subtitle wording in `SettingsScreen`:
  - English now uses "progress indicator" instead of the more UI-implementation sounding "progress bar"
  - Russian no longer mixes Russian with the English phrase `progress bar`
- updated the tasklist to reflect the real state of the sweep:
  - not fully "done"
  - but no longer a large open block
  - remaining work is now only tail-level helper wording and rare strings found during manual checks

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`

## 57. Translation module spec accepted and mapped to the current codebase

The next product-level input was a full specification for text translation and comic translation. Before starting implementation, the existing codebase was checked to see what already exists and what is still missing.

What exists right now:

- `feature-ocr` already exists
- reader navigation can open OCR/translation from the current page
- `OcrRepository` already uses:
  - ML Kit Text Recognition
  - ML Kit on-device Translation
- `OcrScreen` can:
  - run OCR on a saved reader page image
  - translate the recognized text
  - save the translation as a page note
- settings already contain:
  - `translationMode`
  - `ocrLanguage`

What is still missing relative to the accepted spec:

- no dictionary engine
- no text-selection translation flow for books
- no router for `dictionary / offline_mt / online_mt / llm`
- no OCR block segmentation
- no per-bubble/block translation card
- no overlay renderer over comic pages
- no page-level OCR/translation cache model
- no target language / translation strategy settings
- no explain layer

What was added in this pass:

- a root-level translation spec file:
  - `C:\Users\xmeta\projects\Mr.Comic\docs\active\TRANSLATION_MODULE_TZ.md`
- a dedicated translation section in the project tasklist with staged implementation:
  - stage 1: text translation MVP
  - stage 2: OCR translate for comics
  - stage 3: advanced comic translation
  - stage 4: explain layer

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\docs\active\TRANSLATION_MODULE_TZ.md`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

## 58. Translation stage 1 started with shared domain models

After the translation spec was accepted, the first actual implementation step of stage 1 was started. The goal of this pass was not to build UI yet, but to create a stable shared model layer that later stages can build on without re-inventing request/result contracts.

What changed:

- added `TranslationModels.kt` to `core-model`
- the new shared model file contains:
  - `TranslationSourceType`
  - `TranslationMode`
  - `TranslationProviderType`
  - `OcrBlockType`
  - `DictionaryEntry`
  - `TranslationRequest`
  - `TranslationResult`
  - `OcrBlock`
  - `OverlayBlock`
- the models intentionally use primitive fields only:
  - no Android-specific geometry classes
  - no renderer dependencies
  - safe to use from `reader`, `settings`, `ocr`, future cache layer, and future dictionary/router layers

Why this matters:

- the current translation code was still a stage-0 screen tied directly to ML Kit OCR + ML Kit translation
- these shared models are the first step toward:
  - router-based translation flow
  - page OCR block caching
  - overlay rendering
  - future dictionary / explain layers

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-model\src\main\java\com\example\core\model\TranslationModels.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:core-model:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 51. Text reader top bar now keeps title and direct actions together

The next reader UI/UX pass cleaned up the expanded top bar specifically for text-reading mode.

What changed:

- when the current reader session is a text reader, the expanded top bar now keeps the file title visible at all times
- the needed top actions are shown directly in the app bar action area instead of replacing the title with the old inline-action strip
- image-based readers keep the previous expandable inline-action behavior

Implementation notes:

- added a `useDirectActions` switch to `ReaderExpandedBar(...)`
- `ReaderScreen` now enables that mode only for `isTextReader`
- no page-navigation or chrome-state behavior was changed; this was a UI-structure cleanup only

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderChromeComponents.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderScreen.kt`

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 67. Translation settings are now wired through DataStore, settings UI, and reader

The next sequential step after the unified word/phrase bottom sheet was to expose real translation settings instead of keeping everything hardcoded inside the reader.

What is now wired:

- new persisted settings in DataStore:
  - `translation_source_language`
  - `translation_target_language`
  - `translation_transport`
  - `translation_explain_enabled`
- `SettingsUiState` and `SettingsViewModel` now expose:
  - source language
  - target language
  - transport preference (`AUTO` / `OFFLINE` / `ONLINE`)
  - explain toggle
- the `SettingsScreen` translation section now renders chips/toggles for:
  - source language (`AUTO`, `RU`, `EN`, `JA`, `ZH`, `KO`)
  - target language (`APP`, `RU`, `EN`, `JA`, `ZH`, `KO`)
  - transport preference
  - explain toggle
- `ReaderViewModel` now reads these settings before translating selected text:
  - manual source language overrides auto-detection
  - target language no longer has to follow app language
  - selected-text translation transport defaults to the stored preference
  - explain preference is loaded and ready for the later LLM layer

Important notes:

- the online provider is still a safe placeholder, so `ONLINE` currently means:
  - try the safe online path
  - fall back predictably if only offline is available
- the explain toggle is intentionally only wiring/configuration right now
  - there is still no real `LlmExplainEngine` connected at this stage

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\preferences\PreferencesKeys.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`

Build status after this pass:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 68. OCR is now segmented into text blocks instead of only a whole-page string

The next sequential step after translation settings was the first OCR-for-comics architecture step from Stage 2: stop treating the page as a single giant blob of text and introduce block segmentation.

What changed:

- added a dedicated `ComicTextDetector` contract in `core-domain`
- added `MlKitComicTextDetector` in `feature-ocr`
  - it uses ML Kit text blocks as the first segmentation source
  - each block now produces:
    - stable block id
    - page id
    - bounding box
    - original text
    - normalized text
    - source-language hint when available
- `OcrRepository` now exposes `detectBlocks(...)`
- `recognizeText(...)` is now derived from detected blocks by joining their text
  - this keeps the older whole-page translation button working while the pipeline moves toward block-based translation
- `OcrViewModel` state now stores `recognizedBlocks`
- `OcrScreen` now shows the detected OCR blocks under the recognized text

Why this matters:

- Stage 2 is no longer anchored on a single `String`
- the next step (`ComicTranslationEngine`) can translate per block instead of translating the whole page blindly
- later overlay rendering can use the already captured bounding boxes

Current limitations:

- block confidence is still `null`
- block type is still `UNKNOWN`
- there is no overlay renderer yet
- translating still uses the page-level joined text, not per-block translation

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\ComicTextDetector.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\MlKitComicTextDetector.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\OcrRepository.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\di\OcrModule.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`

Build status after this pass:

- `:core-domain:compileDebugKotlin` — `SUCCESS`
- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 70. OverlayRenderer now shows translated OCR blocks on top of the page preview

After block translation was available, the next sequential step was to finally render those translated segments over the comic page instead of only showing text lists below the image.

What changed:

- added a dedicated UI composable:
  - `OverlayRenderer`
- it renders:
  - the original page bitmap
  - translated OCR blocks positioned from stored bounding boxes
- the OCR screen now uses that renderer for the page preview card
- added overlay visibility state in `OcrUiState`
- added `setOverlayEnabled(...)` in `OcrViewModel`
- after OCR translation the screen now lets the user:
  - keep overlay visible
  - hide overlay
  - show overlay again

What this stage intentionally does not do yet:

- no real bubble cleaning / inpainting
- no typography fitting by speech-bubble shape
- no per-block tap action yet
- no overlay rendering directly inside the main reader screen yet

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OverlayRenderer.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 76. Backup / restore no longer creates two DataStores for app icon settings

A blocker regression was reported when exporting backup data:

- `There are multiple DataStores active for the same file: ... app_icon_settings.preferences_pb`

Root cause:

- `AppIconManager` had its own `preferencesDataStore(name = "app_icon_settings")`
- `SettingsViewModel` introduced a second independent `preferencesDataStore(name = "app_icon_settings")` for backup/export-import
- Android DataStore does not allow two active stores for the same file from different delegates

What changed:

- added a shared app icon preferences file in `core-data`:
  - `AppIconPreferences.kt`
- moved the singleton definitions there:
  - `Context.appIconDataStore`
  - `APP_ICON_PREFERENCE_KEY`
  - `DEFAULT_APP_ICON_ID`
- `AppIconManager` now uses the shared store/key instead of its private delegate
- `SettingsViewModel` export/import now uses the same shared store/key instead of creating another DataStore delegate

Why this matters:

- backup export/import can safely read and write the launcher icon setting
- no duplicate DataStore instance is created for `app_icon_settings.preferences_pb`
- the exported backup still contains:
  - main preferences DataStore
  - theme preferences
  - app icon preference
  - reading progress entries

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\preferences\AppIconPreferences.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\java\com\example\mrcomic\icons\AppIconManager.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`

Build status after this pass:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 78. Library folders now have their own delete confirmation window

The user asked for a dedicated delete window for folders in the library.

This pass added a separate confirm flow for folder deletion instead of reusing comic deletion.

What changed:

- folder cards in the library now support long press
- long press on a folder opens a dedicated delete confirmation dialog
- the dialog clearly states that:
  - the folder and its items are removed from the library
  - files on disk are not deleted

Current behavior:

- folder deletion is virtual/library-side only
- because folders are derived from `folderId` paths and are not standalone DB entities, deleting a folder removes all comics whose `folderId` is:
  - exactly the selected folder path
  - or inside its nested subfolders
- this is implemented in `LibraryViewModel.deleteFolder(...)`
- if the currently open folder path matches the deleted folder, navigation falls back to the parent folder

UI details:

- comic deletion still uses its existing confirm dialog
- folder deletion now has separate localized strings and its own confirm dialog
- trigger:
  - long press on a folder card in grid or list mode

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\locale\AppStrings.kt`

Build status after this pass:

- `:feature-library:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 77. OCR cleanup for noisy text is now available from the block sheet

The next strict step after OCR explain was adding cleanup for noisy OCR text.

This pass implemented cleanup as a local, deterministic tool instead of pretending there is already a real LLM cleanup backend.

What changed:

- `OcrViewModel` now has dedicated cleanup state for the selected OCR block:
  - `isCleaningSelectedBlock`
  - `selectedBlockCleanedText`
  - `selectedBlockCleanupError`
- the selected block bottom sheet now includes a new action:
  - `Очистить OCR`
- the sheet can now show a dedicated `Очищенный OCR` card with:
  - loading state
  - cleaned text
  - no-change message when cleanup did not improve the block

Current cleanup behavior:

- cleanup is local and heuristic-based
- it does not rewrite the original OCR block in the cached source data
- it produces a cleaned suggestion for the selected block only
- current cleanup rules include:
  - line break normalization
  - whitespace compaction
  - hyphen line-break merge for broken words
  - removal of extra spaces before punctuation
  - CJK-specific removal of spurious spaces between characters
  - trimming of obvious edge noise markers such as repeated `|`, `¦`, `•`, `·`
  - collapse of excessive repeated punctuation

Behavior integration:

- if cleaned text exists, `Explain` for the selected OCR block now prefers the cleaned text over the raw OCR text
- cleanup state is reset when:
  - page OCR is refreshed
  - full-page translation runs
  - source or target language changes
  - another block is selected
  - the block sheet is dismissed

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 72. Dictionary lookup now prefers a Room prepackaged database and falls back to FreeDict/MT

The user then pointed to the prepared `Translate` folder at the project root and asked to use the Room-compatible offline dictionary pipeline instead of leaving dictionary lookup on a lightweight TSV-only path.

What changed in code:

- added a dedicated Room dictionary layer in `core-data`:
  - Room entities for:
    - `entries`
    - `forms`
    - `senses`
    - `translations`
    - `readings`
    - `examples`
  - DAO lookups by normalized form / lemma
  - normalizer
  - repository
  - prepackaged `DictionaryDatabase`
- `core-data` now also applies the `androidx.room` Gradle plugin and exports schema metadata
- `DatabaseModule` now provides:
  - optional `DictionaryDatabase`
  - optional `DictionaryDao`
  - optional `DictionaryRepository`
- added `RoomDictionaryEngine` in `core-domain`
  - this is now the bound `DictionaryEngine`
  - it uses the Room DB first for:
    - lemma
    - POS
    - glosses / meanings
    - examples
  - if the Room DB does not provide a good translation for the requested target language:
    - it falls back to the existing `QuickDictionaryEngine`
    - which still uses bundled FreeDict pairs and then MT fallback

What changed in assets:

- created a staged prepackaged Room dictionary asset:
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary.db`
- current asset size:
  - about `356 MB`
- current staged sources included in that DB:
  - `WordNet 3.0`
  - `JMdict`
  - `CC-CEDICT`
- `Kaikki RU` and `Kaikki KO` are intentionally not included in the current shipped Room DB yet
  - reason: those raw dumps are much larger
  - Russian/Korean lookup still works through the older bundled FreeDict/MT fallback path

Build / builder notes:

- the prepared builder scripts in `Translate` were updated to use working current download endpoints:
  - WordNet default moved from old FTP to HTTPS
  - JMdict default moved to an HTTP endpoint that works in this environment
- the Room DB was built through:
  - `C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary_room.py`
- working directory used for staged downloads/build artifacts:
  - `C:\Users\xmeta\projects\Mr.Comic\Translate\room_build_work`

Room schema export:

- schema output now exists at:
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-data\schemas\com.example.core.data.dictionary.DictionaryDatabase\1.json`

Known follow-up:

- KSP warns that dictionary foreign-key `entry_id` columns are not indexed
- this is not a build blocker
- fix it later only together with `build_dictionary_room.py`, because changing Room entity indices without changing the generated SQLite schema would break prepackaged DB validation

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\gradle\libs.versions.toml`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\build.gradle.kts`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\dictionary\DictionaryEntities.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\dictionary\DictionaryRelations.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\dictionary\LookupModels.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\dictionary\DictionaryNormalizer.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\dictionary\DictionaryDao.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\dictionary\DictionaryDatabase.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\dictionary\DictionaryRepository.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\di\DatabaseModule.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\RoomDictionaryEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\TranslationModule.kt`
- `C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary.py`
- `C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary_room.py`
- `C:\Users\xmeta\projects\Mr.Comic\docs\active\THIRD_PARTY_DICTIONARIES.md`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:core-data:compileDebugKotlin` — `SUCCESS`
- `:core-domain:compileDebugKotlin` — `SUCCESS`
- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 71. OCR screen now supports tap-to-translate for individual blocks

After the overlay renderer was in place, the next sequential step was to let the user interact with a specific OCR block instead of only translating the whole visible page.

What changed:

- `OcrUiState` now keeps:
  - `selectedBlockId`
  - `isTranslatingSelectedBlock`
- `OcrViewModel` now exposes:
  - `selectBlock(blockId)`
  - `dismissSelectedBlock()`
- tapping a block works from:
  - the overlay itself
  - the recognized block list
  - the translated block list
- if a block already has a translated overlay entry:
  - the sheet opens immediately
- if a block does not yet have a translation:
  - the view model translates that single block on demand
  - merges it into `translatedBlocks`
  - keeps the full-page joined translation text in sync
- the OCR screen now shows a bottom sheet with:
  - original block text
  - translated block text
  - loading state while on-demand translation runs
  - copy original
  - copy translation

Why this matters:

- Stage 2 now has the core user interaction from the MVP:
  - user can target a specific segment instead of only the page as a whole
- later reader integration can reuse the same interaction model

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OverlayRenderer.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 69. ComicTranslationEngine now translates OCR blocks instead of only a joined page string

After block segmentation was in place, the next sequential step was to stop translating comic OCR as one large page blob and add a dedicated translation engine for OCR blocks.

What changed:

- added `ComicTranslationEngine` in `core-domain`
- added `DefaultComicTranslationEngine` in `feature-ocr`
  - translates a `List<OcrBlock>`
  - supports `AUTO` / `OFFLINE` / `ONLINE` transport preference
  - prefers offline first for `AUTO` and `OFFLINE`
  - prefers online first for `ONLINE`
  - falls back predictably if the primary path is unavailable
- the engine returns `OverlayBlock` entries keyed by `ocrBlockId`
- `OcrViewModel` now uses `ComicTranslationEngine` when the screen is working with an image page and detected OCR blocks
- `OcrUiState` now keeps `translatedBlocks`
- the OCR screen now shows:
  - the joined translated text
  - the translated block list

What stays intentionally simple for now:

- no overlay drawing on top of the image yet
- no tap-to-translate per block yet
- no per-block font/layout fitting yet
- the OCR screen still also keeps the joined page translation string for backward-compatible viewing and saving

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\ComicTranslationEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\DefaultComicTranslationEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\di\OcrModule.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`

Build status after this pass:

- `:core-domain:compileDebugKotlin` — `SUCCESS`
- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 65. Single-word dictionary mode now works and uses bundled free offline dictionaries

The next sequential step after selected-text translation was to finally implement the actual single-word dictionary path.

This pass did two things together:

- added a real `DictionaryEngine`
- downloaded and bundled locally usable offline dictionary assets instead of pretending that dictionary mode already existed

What changed in architecture:

- added shared contract:
  - `DictionaryEngine`
- added implementation:
  - `QuickDictionaryEngine`
- wired it through Hilt in `TranslationModule`
- `ReaderViewModel` now injects `DictionaryEngine`

What changed in the reader:

- when the selected fragment is a single word, the routing path can now resolve to `DICTIONARY`
- the reader sheet now supports dictionary mode:
  - original word
  - lemma
  - part of speech
  - meanings
  - form as it appeared in the text
- for 2–3 words the existing phrase-translation path is preserved instead of regressing into a broken dictionary-only branch

Bundled offline dictionaries:

- source: `FreeDict`
- bundled pairs:
  - `en-ru`
  - `ru-en`
  - `en-ja`
  - `ja-en`
  - `ja-ru`
  - `en-zh`
  - `zh-ru`
- generated assets location:
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\assets\dictionaries\freedict`
- attribution/license notes:
  - `C:\Users\xmeta\projects\Mr.Comic\docs\active\THIRD_PARTY_DICTIONARIES.md`
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\assets\dictionaries\freedict\ATTRIBUTION.md`
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\assets\dictionaries\freedict\COPYING-FreeDict-CC-BY-SA-3.0.txt`

Import/regeneration tooling:

- added reusable importer:
  - `C:\Users\xmeta\projects\Mr.Comic\scripts\import_freedict.py`
- it downloads selected FreeDict source archives, extracts TEI, converts them into compact TSV assets, and refreshes manifest/attribution files

Current lookup behavior:

- first try bundled dictionary assets for the exact source-target pair
- if the word is not found in the bundled pair:
  - fall back to the existing quick translation-backed dictionary behavior
- if there is no bundled pair and no translation backend for the pair:
  - show a controlled dictionary-unavailable error

Important current limitations:

- this is still MVP dictionary mode, not a full lexicographic engine
- part-of-speech values are partly sourced from FreeDict and partly filled by lightweight heuristics
- not all app languages have bundled pair coverage yet
  - especially Korean is still not covered by the current bundled FreeDict set
- the word/phrase sheet is already shared in practice, but it is still not the final “full spec” translation UI from the long-term TZ

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\DictionaryEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\QuickDictionaryEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\TranslationModule.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\test\java\com\example\core\domain\translation\QuickDictionaryEngineTest.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderUiText.kt`
- `C:\Users\xmeta\projects\Mr.Comic\scripts\import_freedict.py`
- `C:\Users\xmeta\projects\Mr.Comic\docs\active\THIRD_PARTY_DICTIONARIES.md`

Build status after this pass:

- `:core-domain:testDebugUnitTest` — `SUCCESS`
- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 66. Translation bottom sheet now behaves like a unified word/phrase tool

The next sequential step after enabling dictionary mode was to stop treating the selection result sheet as a raw debug panel.

This pass turned it into a more coherent shared bottom sheet for:

- single-word dictionary lookup
- phrase translation
- switching between those two paths without reselecting text

What changed in state and behavior:

- `SelectedTextTranslationState` now also keeps:
  - preferred transport (`AUTO / OFFLINE / ONLINE`)
  - whether the current selection can reopen dictionary mode
  - whether the current selection can be re-run as phrase translation
- `ReaderViewModel.translateSelectedText(...)` now accepts:
  - `preferredTransport`
  - `preferDictionary`
- added reader actions:
  - `translateSelectedTextWithTransport(...)`
  - `translateSelectedTextAsPhrase()`
  - `openDictionaryForSelectedText()`

How it works now:

- if a single word is selected:
  - the first pass can open dictionary mode
  - the bottom sheet can then switch to “translate as phrase” without forcing the user to reselect the word
- if the user is already looking at phrase translation for a single word:
  - the same sheet can jump back to dictionary mode
- if the selection is phrase-based:
  - the sheet shows transport chips:
    - `Auto`
    - `Offline`
    - `Online`
  - tapping a chip reruns the translation with that preference
  - the actual resolved mode chip still reflects the real result (`Offline` or `Online`)

Reader UI changes:

- the shared `SelectedTextTranslationSheet(...)` now has two distinct presentations:
  - dictionary view:
    - original word
    - lemma
    - part of speech
    - meanings
    - original form in text
    - action: “Translate as phrase”
  - phrase translation view:
    - original text
    - translated text
    - source → target chip
    - actual mode chip
    - transport chooser chips
    - action: “Dictionary” for single-word selections
- localized labels were added for:
  - transport section
  - `Auto`
  - `Translate as phrase`
  - `Dictionary`

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderUiText.kt`

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 43. SettingsScreen recovery after failed text-layer move

During the next localization cleanup pass, `SettingsScreen.kt` was accidentally broken while trying to move a large block of localized helper text into a separate file.

Recovery path used:

- restored `SettingsScreen.kt` from the local archive:
  - `C:\Users\xmeta\projects\Mr.Comic\android.zip`
- removed temporary broken files created during recovery
- reattached the shared library preset integration on top of the restored screen:
  - `parseLibraryThemePreset(...)`
  - shared quick preset catalog
  - shared quick preset title/description
  - shared preset matching helper
- re-applied the `Icons.AutoMirrored.Filled.Sort` fix in the library settings tab row

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\library\LibraryVisualPresets.kt`

Result:

- settings screen is compiling again
- app debug APK builds again
- the larger settings-text extraction was intentionally not continued in this pass after recovery; continue only from a stable base

Build status after recovery:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 44. Safe SettingsScreen localization cleanup after recovery

After restoring `SettingsScreen.kt` from `android.zip`, the next pass was kept intentionally small and local to avoid breaking the screen again.

What changed:

- added a small local `MainMenuText` helper inside:
  - `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- localized the visible top-level settings menu text without another large extraction:
  - search placeholder
  - command-center title/description
  - sections card title
  - quick-reading title/description
  - OCR button labels
- switched quick reading and reader preset chips to a shared local helper:
  - `Paper`
  - `Night Ink`
  - `E-Ink`
- localized the remaining visible appearance labels:
  - interface density label
  - surface/cards label
  - surface opacity label
- localized library settings utility labels that were still staying in English:
  - quick blocks title
  - card density chips (`Compact / Balanced / Showcase`)
  - cover scale chips (`Fill / Fit`)
  - generated background preset names (`Aurora Mist`, `Cinema Noir`, `Paper Grain`, `Manga Ink`, `E-Ink Wash`)
  - shelf style names (`Glass`, `Oak`, `Walnut`, `Steel`, `Lacquer`, `Neon`, `Minimal`)

Why this pass was done this way:

- the previous large text-layer move had already broken `SettingsScreen`
- this pass keeps all changes inside the same file and only replaces clearly visible UI literals
- no large structural refactor was attempted

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`

## 45. Remaining SettingsScreen chip labels cleaned up

The next tiny pass continued from the recovered-and-stabilized `SettingsScreen` and only targeted remaining visible mixed-language chips in the library settings area.

What changed:

- graphic cover style chip labels now use a dedicated helper instead of inline literals:
  - `Poster`
  - `Ink`
  - `Minimal`
- shelf style chips now use the existing localized shelf-style helper instead of hardcoded English labels:
  - `Glass`
  - `Oak`
  - `Walnut`
  - `Steel`
  - `Lacquer`
  - `Neon`
  - `Minimal`
  - `None`
- sorting chips now use a dedicated localized helper:
  - `New`
  - `Recent`
  - `Title`
  - `Progress`

Relevant file:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`

Relevant locations:

- graphic cover option list:
  - `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt:1640`
- shelf-style chip row:
  - `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt:2023`
- sorting chip row:
  - `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt:2082`
- helper functions:
  - `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt:2267`
  - `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt:2292`

Build status after this pass:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 52. Landscape comic/webtoon bottom panel compacted

The next reader UI step was completed after the text-reader top bar cleanup. The target was the expanded bottom panel in wide landscape image-reading mode, where the old layout still spent too much vertical space and risked crowding the page area around the page slider.

What changed:

- `ReaderExpandedBottomPanel(...)` now detects the landscape image-reader case separately:
  - `isLandscape == true`
  - `currentHtmlContent == null`
- in that case it no longer renders the old tall stack of:
  - bookmark chip
  - full `ReaderBottomBar`
- instead it renders a dedicated compact panel:
  - bookmark icon button inside a small capsule
  - current mode label (`spread` or `webtoon`)
  - page counter on the right
  - page slider directly underneath
- the compact panel uses:
  - tighter vertical paddings
  - translucent surface background
  - smaller bookmark control than the previous `FilterChip`
- text reader behavior was not changed by this pass
- portrait reader behavior was not changed by this pass

Relevant file:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderChromeComponents.kt`

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`

## 48. Library grid alignment and shelf cleanup

The next pass focused on the remaining visual complaints in the library itself:

- covers still looked uneven in height across different content types
- folder cards in the grid still felt taller and noisier than regular items
- shelf bars under cards looked too heavy and stripe-like

What changed:

- unified the rectangular grid cover ratio for regular books and graphic volumes:
  - the grid no longer uses separate cover aspect ratios for text vs graphic items
  - all rectangular covers now follow the same ratio per card style
- normalized the grid title block height for regular comic/book cards:
  - the title area is now fixed at `44.dp`
  - this reduces row-to-row drift caused by `40.dp` vs `42.dp` item bottoms
- simplified folder grid cards to match the same rhythm:
  - shelf spacing reduced slightly
  - the folder grid info block was reduced to `44.dp`
  - compact folder meta chips were removed from the grid card bottom
  - folder cards now rely more on the cover badge/overlay and title, instead of a taller stacked footer
- softened list/grid shelf visuals in `LibraryShelfBar(...)`:
  - shelf height was reduced visually
  - heavy shadow was replaced with a softer ambient shadow
  - the shelf body now uses rounded geometry instead of a hard painted stripe
  - wood grain lines were reduced and weakened
  - glass and neon effects were also softened so the shelf stays behind the cover instead of competing with it

Relevant files:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\ComicGridItem.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\library\LibraryVisualStyle.kt`

Build status after this pass:

- `:core-ui:compileDebugKotlin` — `SUCCESS`
- `:feature-library:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 46. Library tails cleaned up and eye-rest timer added

The next pass focused on the specific residual issues the user reported after the broader localization and library work:

- inconsistent card/cover heights in the library grid
- runtime easter-egg overlays still showing up in the normal library flow
- decorative placeholder/background treatment still being too visible behind real covers
- missing eye-rest reminder feature for long reading sessions

What changed:

- removed runtime easter-egg wiring from the regular library screen:
  - deleted the active overlay usage for `EasterEggCatOverlay` and `ReaderSleepOverlay`
  - removed the long-press trigger from the library top bar hookup
  - removed the `SecretTapTarget` wrapper from the library stats row so normal library usage no longer activates hidden overlays
- aligned library tile/card heights more aggressively:
  - folder grid cards now use the same thumbnail aspect logic as the regular cover cards
  - folder list thumbnail sizing now follows the shared tile-size/card-style policy
  - folder grid info block was shortened and the extra description line was removed to reduce vertical drift
  - regular comic grid title height was switched from a soft minimum to a fixed height so cards stop drifting row-by-row
- simplified decorative treatments when a real cover already exists:
  - text-book covers with a real image now only keep a thin frame/highlight instead of the heavier decorative “book” treatment
  - graphic-volume covers with a real image now keep only a restrained style-specific frame/shadow
  - folder covers with a real preview now keep only a light frame, top tab and count badge instead of the older heavier placeholder stack
- added eye-rest timer settings and runtime reminder flow:
  - new preferences:
    - `READER_EYE_REST_ENABLED`
    - `READER_EYE_REST_MINUTES`
  - `SettingsViewModel` now exposes:
    - `readerEyeRestEnabled`
    - `readerEyeRestMinutes`
    - setters for both
  - `SettingsScreen` reader section now contains:
    - eye-rest toggle
    - interval chips (`10 / 20 / 30 / 45 / 60`)
  - `ReaderViewModel` now:
    - restores these preferences
    - starts/restarts a reminder timer while a comic/book is open
    - exposes a shared-flow reminder event
    - supports snoozing the reminder
  - `ReaderScreen` now listens to the reminder flow and shows a localized dialog
  - `ReaderUiText` was extended with localized strings for:
    - eye-rest title
    - message
    - dismiss button
    - snooze button

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\preferences\PreferencesKeys.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderUiText.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\ComicGridItem.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\components\LibraryContentDecor.kt`

Notes:

- the reader build briefly broke because `eyeRestReminderMinutes` had been declared below the `LaunchedEffect` that used it
- this was fixed by moving the state above the effects; no feature rollback was needed
- stale comments referencing `SecretTapTarget` in `LibraryScreen` were also cleaned up to match the new runtime behavior

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 47. SettingsScreen tails cleaned further

The next safe pass continued the hardcoded-string cleanup in `SettingsScreen`, but still avoided any large refactor. The focus was on the user-facing sections that still had visible Russian-only labels even after the earlier localization work.

What changed:

- localized the lead block of the translation section via a dedicated helper:
  - section title
  - section description
- switched OCR language chips to shared language labels from `AppStrings`:
  - `strings.langJa`
  - `strings.langZh`
  - `strings.langEn`
  - `strings.langKo`
- localized the lead block of the backup section via a dedicated helper:
  - section title
  - section description
- localized the lead block of the about section via a dedicated helper:
  - section title
  - section description
  - achievements card title
- switched the achievements list in the about section to shared `AppStrings` labels instead of hardcoded Russian names:
  - first book
  - reader
  - collector
  - first complete
  - marathon
  - bookmarker
  - author fan
  - genre gourmet
  - secret cat

Relevant file:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`

Build status after this pass:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 59. Translation stage 1 now has a shared LanguageDetector

After the translation module spec was accepted and the shared translation models were added, the next step was to put a real language-detection layer in place before touching routing or UI.

What changed:

- added shared detection models in `core-model`:
  - `LanguageCandidate`
  - `LanguageDetectionResult`
- added a shared contract in `core-domain`:
  - `LanguageDetector`
- added ML Kit Language ID dependency to the project catalog and `feature-ocr`
- implemented `MlKitLanguageDetector` in `feature-ocr`
  - uses ML Kit Language Identification
  - returns normalized short language codes (`en`, `ru`, `ja`, `zh`, etc.)
  - preserves confidence for the best match
  - marks fallback usage when detection is empty and a fallback language is provided
  - returns `und` for unknown/undetermined language instead of throwing for normal no-result cases
- wired the implementation into Hilt via `OcrModule`

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\gradle\libs.versions.toml`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\build.gradle.kts`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-model\src\main\java\com\example\core\model\TranslationModels.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\LanguageDetector.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\MlKitLanguageDetector.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\di\OcrModule.kt`

Build status after this pass:

- `:core-model:compileDebugKotlin` — `SUCCESS`
- `:core-domain:compileDebugKotlin` — `SUCCESS`
- `:feature-ocr:compileDebugKotlin` — `SUCCESS`

## 60. Reader exit crash fixed in TieredBitmapCache clear path

The user reported a runtime crash when leaving the reader:

- `IllegalStateException: ... LruCache.sizeOf() is reporting inconsistent results`
- the stack pointed to `TieredBitmapCache.clear() -> PagePreloader.clearPages() -> ReaderViewModel.onCleared()`

Root cause:

- `TieredBitmapCache` was storing raw `Bitmap` values in `LruCache`
- `sizeOf()` recalculated cache size from the live bitmap object via `byteCount`
- once bitmaps had been recycled, reused or otherwise mutated during the page-preload cleanup path, `sizeOf()` could return a different value for the same cached entry
- Android `LruCache` treats that as a fatal consistency error and throws

What changed:

- `TieredBitmapCache` now stores a lightweight cache-entry wrapper:
  - `bitmap`
  - `sizeKb` captured once at insertion time
- `sizeOf()` now returns the stored `sizeKb`, so it no longer depends on a mutable/recycled `Bitmap`
- `get()` now guards against recycled bitmaps:
  - if a cached bitmap is already recycled, it is removed from the cache and treated as a miss
- `remove()` still exposes the raw `Bitmap?` to callers, so the rest of the preload pipeline did not need a broader rewrite

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\engine-rendering\src\main\kotlin\com\example\engine\rendering\cache\TieredBitmapCache.kt`

Build status after this pass:

- `:engine-rendering:compileDebugKotlin` — `SUCCESS`
- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 61. Translation stage 1 now has a shared LookupRouter

After adding the shared translation models and the ML Kit-backed `LanguageDetector`, the next sequential step was to add the routing policy layer that decides how translation requests should be handled before any UI integration starts.

What changed:

- expanded `TranslationModels.kt` with routing primitives:
  - `TranslationTransportPreference`
  - `LookupRouteKind`
  - `TranslationRoutingFailureReason`
  - `TranslationRoutingRequest`
  - `TranslationRoutingDecision`
- added shared router contract:
  - `LookupRouter`
- added shared implementation in `core-domain`:
  - `DefaultLookupRouter`
- wired the router into Hilt with `TranslationModule`
- added unit tests covering the current routing rules

Current routing policy:

- blank text:
  - returns `UNAVAILABLE / NO_TEXT`
- one token:
  - prefers `DICTIONARY_LOOKUP` when dictionary is available
  - otherwise falls back to machine translation if any backend exists
- two to three tokens:
  - prefers `DICTIONARY_WITH_TRANSLATION_OPTION` when dictionary is available
  - exposes the selected MT mode as a secondary option
- four or more tokens:
  - routes to `MACHINE_TRANSLATION`
- long text:
  - marks `isLongText = true` after 40+ tokens
- low-confidence OCR:
  - routes to `REVIEW_OCR_TEXT`
  - marks `requiresUserReview = true`
  - exposes `LLM` as a secondary follow-up mode when available
- explicit explain action:
  - routes directly to `LLM_EXPLAIN`

Transport selection policy right now:

- `AUTO`:
  - prefers `OFFLINE_MT` if an offline model is available
  - otherwise uses `ONLINE_MT` if network is available
- explicit `OFFLINE`:
  - prefers `OFFLINE_MT`, then falls back to `ONLINE_MT`
- explicit `ONLINE`:
  - prefers `ONLINE_MT`, then falls back to `OFFLINE_MT`
- if neither backend exists:
  - returns `UNAVAILABLE / NO_TRANSLATION_BACKEND`

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-model\src\main\java\com\example\core\model\TranslationModels.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\LookupRouter.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\DefaultLookupRouter.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\TranslationModule.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\test\java\com\example\core\domain\translation\DefaultLookupRouterTest.kt`

Build status after this pass:

- `:core-model:compileDebugKotlin` — `SUCCESS`
- `:core-domain:compileDebugKotlin` — `SUCCESS`
- `:core-domain:testDebugUnitTest` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 75. OCR page cache is now disk-backed instead of process-only

The next strict step after the explain-layer groundwork was to start moving `feature-ocr` away from demo-style state and closer to a production pipeline.

This pass focused on the page cache layer.

Previously:

- `OcrPageCache` was just two in-memory `LinkedHashMap`s
- recognized OCR blocks and translated overlay blocks disappeared as soon as the process was killed
- reopening the OCR screen after process recreation meant running OCR/translation again even for the same page

What changed:

- `OcrPageCache` now has a hybrid cache model:
  - in-memory LRU for hot access
  - disk-backed JSON snapshots under app cache storage for process persistence
- recognized page blocks are now persisted by:
  - `pageId`
  - `sourceLanguage`
- translated overlay blocks are now persisted by:
  - `pageId`
  - `sourceLanguage`
  - `targetLanguage`
  - `transport`
  - `filterProfile`
- disk cache files use stable SHA-256 derived file keys instead of raw paths in filenames
- corrupt cache files are dropped automatically instead of crashing the OCR path
- disk cache is trimmed with the same logical limits as the in-memory LRU:
  - recognized pages: `24`
  - translated pages: `24`

Important behavior change:

- OCR results for a page now survive process death better
- reopening OCR for the same page can reuse cached recognition/translation even after the screen and `ViewModel` were recreated
- this is still a cache, not permanent user data:
  - it lives under app cache storage
  - OS cleanup can still evict it if needed

Why this matters:

- it removes one of the biggest “demo/stage-0” symptoms of the OCR module
- page translation feels more stable and less disposable
- it is a safe production step without forcing a Room schema or large migration yet

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\OcrPageCache.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 75. Text-reader explain is now wired and useful without a real LLM provider

The next strict step after adding the safe `LlmExplainEngine` contract was explain support for the text reader.

This pass completed that step in a practical way instead of waiting for a real external LLM:

- text selection in HTML-based books no longer jumps straight from the Android selection menu into one hardcoded action
- the Android contextual action is now explicitly just an entry point to the app flow:
  - label changed from a direct translation-style label to a generic actions label (`Actions…` / `Действия…` etc.)
- after tapping that entry, the app opens its own compact action sheet with:
  - `Translate`
  - `Dictionary`
  - `Explain`

Explain behavior now:

- for a single selected word:
  - the app first tries the local dictionary
  - if a dictionary entry is available, it builds a local explanation immediately from:
    - lemma
    - part of speech
    - meanings
    - source form(s)
  - this means word-level explain is already useful offline and does not depend on a real external LLM provider
- for longer fragments:
  - the reader still routes into the shared explain engine
  - the current safe implementation remains explicit and controlled:
    - if no real provider is configured, the user gets a normal unavailable message instead of a crash

Reader UI notes:

- the translation sheet now also serves as the explain sheet
- explain mode has its own title and result label
- the bottom row still allows switching back to `Dictionary` when available
- copy behavior stays aligned with the currently visible result text

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderUiText.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

Next strict step:

- add explain support for OCR blocks

## 76. OCR block explain is now available from the block sheet

The next strict step after text-reader explain was adding explain support for OCR blocks.

This pass completed that step without introducing a fake online dependency.

What changed:

- `OcrViewModel` now has dedicated state for selected-block explanation:
  - `isExplainingSelectedBlock`
  - `selectedBlockExplanation`
  - `selectedBlockExplanationError`
- the selected OCR block bottom sheet now has a new action:
  - `Объяснить`
- the sheet can now show a third card under the translation card:
  - loading state
  - explanation result
  - controlled unavailable/error state

Explain behavior:

- for a single-word OCR block:
  - the app first tries the local dictionary
  - if the dictionary lookup is available, it builds a local explanation immediately from:
    - lemma
    - part of speech
    - meanings
    - form in text
  - this makes word-level OCR explain already useful without any real LLM backend
- for longer OCR fragments:
  - the app routes into the shared `LlmExplainEngine`
  - because the current implementation is still the safe placeholder engine, longer OCR explain requests return a controlled “unavailable” message instead of crashing

State reset behavior:

- explanation state is cleared when:
  - source language changes
  - target language changes
  - a new page OCR pass starts
  - full-page translation starts
  - another block is selected
  - the selected block sheet is dismissed

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 62. Translation stage 1 now has an OfflineTranslationEngine

The next sequential step after `LanguageDetector` and `LookupRouter` was to add a real offline translation engine, but in a strict and safe form:

- local-only execution
- no hidden network download path
- no UI wiring yet

What changed:

- added shared contract in `core-domain`:
  - `OfflineTranslationEngine`
- added ML Kit support helper in `feature-ocr`:
  - shared language normalization and ML Kit language mapping
- added `MlKitOfflineTranslationEngine` in `feature-ocr`
  - checks whether the requested offline language pair is actually installed
  - uses ML Kit translator without calling `downloadModelIfNeeded()`
  - returns a proper `TranslationResult` with:
    - `provider = ML_KIT`
    - `isOffline = true`
- updated `OcrRepository.translateText(...)` to reuse the same ML Kit language mapping helper instead of silently defaulting unsupported codes to English
- wired the offline engine into Hilt in `OcrModule`

Current behavior of the offline engine:

- if both source and target offline models are already downloaded:
  - translation runs locally
- if the pair is not available:
  - the engine returns an error instead of silently starting a network download
- this is intentional, because the later settings/data-management step should explicitly control:
  - package download
  - package deletion
  - storage usage

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\OfflineTranslationEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\MlKitTranslationSupport.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\MlKitOfflineTranslationEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\OcrRepository.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\di\OcrModule.kt`

Build status after this pass:

- `:core-domain:compileDebugKotlin` — `SUCCESS`
- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 63. Translation stage 1 now has an OnlineTranslationEngine contract with safe fallback

The next sequential step after the offline engine was to add the online translation layer, but without pretending that a real cloud provider already exists.

So this pass intentionally implemented:

- a real shared contract for online translation
- a safe default implementation
- explicit fallback behavior

What changed:

- added shared contract in `core-domain`:
  - `OnlineTranslationEngine`
- added safe default implementation:
  - `SafeOnlineTranslationEngine`
- wired that implementation in `TranslationModule`
- added unit tests for the fallback policy

Current behavior of the safe online engine:

- `isConfigured()` currently returns `false`
  - this is honest: there is still no real network provider wired into the app
- if `translate(...)` is called in `ONLINE_MT` mode:
  - first it checks whether an offline pair is available through `OfflineTranslationEngine`
  - if yes, it falls back to `OFFLINE_MT`
  - if no, it returns a clear error explaining that:
    - online provider is not configured
    - no offline fallback exists for the requested pair

Why it was done this way:

- the app now has a stable contract for future real online providers
- callers can safely depend on `OnlineTranslationEngine` without crashing
- until a real provider is added, the system still behaves predictably and can reuse offline translation where available

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\OnlineTranslationEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\SafeOnlineTranslationEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\TranslationModule.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\test\java\com\example\core\domain\translation\SafeOnlineTranslationEngineTest.kt`

Build status after this pass:

- `:core-domain:compileDebugKotlin` — `SUCCESS`
- `:core-domain:testDebugUnitTest` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 64. Text-book reader now supports translating selected text

The next sequential step was the first user-visible translation feature inside the actual reader:

- only for text-based books rendered through the HTML/WebView path
- without touching comic/image translation yet
- without waiting for the later dictionary and settings stages

What changed:

- added a reader-side selected-text translation state:
  - original text
  - translated text
  - source / target language
  - resolved mode
  - loading / error state
- `ReaderViewModel` now injects:
  - `LanguageDetector`
  - `LookupRouter`
  - `OfflineTranslationEngine`
  - `OnlineTranslationEngine`
- added `translateSelectedText(...)` flow in `ReaderViewModel`
  - normalizes selected text
  - resolves target language from current app language
  - auto-detects source language
  - checks offline model availability
  - routes via `LookupRouter`
  - executes `OFFLINE_MT` or `ONLINE_MT`
  - stores result into a sheet state visible from the reader UI
- added `dismissSelectedTextTranslation()` and automatic cleanup on page navigation/open

Reader UI changes:

- the text-reader WebView now uses a small custom `ReaderWebView`
- it wraps Android selection `ActionMode` and injects an extra menu item:
  - `Перевести` / localized equivalent
- when the user selects text in a text book and taps that action:
  - the WebView sends the selected text to the native layer via `JavascriptInterface`
  - the reader opens a compact bottom sheet with:
    - original text
    - translated text or error
    - resolved mode chip (`Offline` / `Online` when available)
    - source → target language chip
    - copy button

Important current limitations of this stage:

- this works only in text books rendered through `HtmlPageView`
  - EPUB / FB2 / text-HTML flow
- it does not yet implement dictionary mode for a single word
- it does not yet expose translation settings in the UI
- target language currently follows the app language
- because the online provider is still only a safe placeholder:
  - if no offline model is installed for the detected pair,
  - translation may show a controlled “unavailable” error instead of silently downloading/using a real online provider

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderUiText.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderScreen.kt`

Build status after this pass:

- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 65. Room dictionary tech debt is now closed

The Room-based dictionary integration initially worked, but it still had one concrete maintenance issue:

- Room/KSP warned that child-table foreign key columns (`entry_id`) were not indexed
- the prepackaged SQLite builder script did not create those matching indices yet
- this meant the schema was functionally fine, but not cleanly aligned with Room expectations

This pass closed that debt before moving on to OCR page translation.

What changed:

- added Room-side indices on `entry_id` for:
  - `forms`
  - `senses`
  - `translations`
  - `readings`
  - `examples`
- updated the SQLite builder script `build_dictionary_room.py` to create matching SQL indices in the generated prepackaged database
- rebuilt `android/app/src/main/assets/databases/dictionary.db`
- reran `:core-data:compileDebugKotlin`

Current state after this pass:

- the Room dictionary layer is still Room-first with fallback to the existing FreeDict/MT path
- the prepackaged database remains compatible with `createFromAsset()`
- the previous KSP warnings about missing `entry_id` indices are no longer emitted

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\dictionary\DictionaryEntities.kt`
- `C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary_room.py`
- `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary.db`

Build status after this pass:

- `:core-data:compileDebugKotlin` — `SUCCESS`

## 66. OCR comics now support translate-visible-page as a single action

After block OCR, overlay rendering and per-block translation were already in place, the next missing user-facing step was a one-tap action for the whole current page.

This pass implemented that flow.

What changed:

- `OcrViewModel` now has `translateVisiblePage()`
- in image mode, that action:
  - checks whether OCR blocks already exist
  - if not, runs block detection for the current page first
  - then translates all detected blocks through `ComicTranslationEngine`
  - stores translated overlay blocks and combined translated text in the existing OCR state
- the OCR screen now exposes a dedicated primary action:
  - `Перевести видимую страницу`
- the old explicit OCR-only path was kept as a secondary manual action:
  - `Только распознать текст`
- manual text mode still uses the normal standalone `Перевести` button

Why it matters:

- page translation in comics is no longer a forced two-step flow
- users can now open a page image and directly request translation for the visible page
- the flow still reuses the existing block overlay and tap-to-translate behavior, so it stays consistent with the rest of the OCR UI

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`

## 67. OCR page results are now cached per page/language pair

After adding `translate-visible-page`, the next missing production step was avoiding repeated OCR and repeated page-wide translation for the same page.

This pass added a lightweight in-memory page cache for OCR comics.

What changed:

- added `OcrPageCache` as a singleton page-level cache in `feature-ocr`
- the cache stores:
  - recognized OCR blocks by `pageId + sourceLanguage`
  - translated overlay blocks by `pageId + sourceLanguage + targetLanguage + transport`
- `OcrViewModel.detectBlocksForCurrentPage(...)` now:
  - checks the page OCR cache first
  - uses cached blocks immediately if available
  - otherwise runs OCR and writes the result back into the cache
- `OcrViewModel.translateVisiblePage()` now:
  - checks page translation cache first
  - restores cached translated overlays immediately if available
  - otherwise falls back to OCR + translate pipeline
- per-block translation through `selectBlock(...)` now merges the translated block back into the same page translation cache

Why this matters:

- reopening the same page in the OCR flow no longer has to rerun full OCR immediately within the same app session
- repeated `translate-visible-page` requests on the same page/language pair can reuse cached overlay results
- cache invalidation is naturally driven by the cache key:
  - changing page changes `pageId`
  - changing OCR source language changes the OCR cache key
  - changing target language or transport changes the translation cache key

Current scope of this cache:

- in-memory only
- session-scoped
- no disk persistence yet
- enough to remove redundant OCR/translation work in the current app run without complicating storage or migrations

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\OcrPageCache.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`

## 68. OCR blocks now have a first-pass type classification

The next strict step after page-level OCR/translation caching was to start classifying comic OCR blocks by role.

This pass added the first production-friendly heuristic classifier for:

- `SPEECH`
- `NARRATION`
- `SFX`
- `UNKNOWN`

What changed:

- added `ComicBlockClassifier` in `feature-ocr`
- `MlKitComicTextDetector` now classifies each detected text block using:
  - normalized text content
  - line count
  - bbox aspect ratio
  - punctuation pattern
  - short-burst / repeated-character heuristics for likely SFX
- OCR UI now shows the detected block type:
  - in the recognized blocks list
  - in the block bottom sheet

Current behavior of the classifier:

- short compact bursts with repeated characters / strong uppercase pattern / low punctuation bias toward `SFX`
- longer rectangular text or bracket-like narration boxes bias toward `NARRATION`
- readable dialogue-like text defaults to `SPEECH`
- blank/unusable text stays `UNKNOWN`

Important scope note:

- this is an intentionally heuristic first pass
- no special manga vertical-text handling yet
- no filtering logic yet
- the next strict step is still:
  - `только диалоги / включать SFX`

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\ComicBlockClassifier.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\MlKitComicTextDetector.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`

## 69. OCR translation filters now support dialogues-only and SFX inclusion

The next strict step after block classification was to let automatic page translation respect simple comic-oriented filters.

This pass implemented two saved filters:

- dialogues only
- include SFX

What changed:

- added new persisted preferences:
  - `OCR_DIALOGUES_ONLY`
  - `OCR_INCLUDE_SFX`
- added those values into `SettingsUiState` and `SettingsViewModel`
- added a compact filter card into the Translation & OCR settings section
- `OcrViewModel.translateVisiblePage()` now reads the current filter settings before page-wide translation
- filter behavior is applied only to automatic page translation
  - manual tap-to-translate for a single block still works regardless of filters
- page translation cache keys now include the active OCR filter profile
  - changing filters no longer reuses stale overlay results for a different filter set

Current filter behavior:

- `dialogues only = ON`
  - keeps `SPEECH`
  - keeps `UNKNOWN` as a safety net because the classifier is still heuristic
  - excludes `NARRATION`
- `include SFX = OFF`
  - excludes `SFX` from automatic page translation
  - SFX blocks still remain visible in OCR results and can still be translated manually by tapping them

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\preferences\PreferencesKeys.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\OcrPageCache.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:feature-ocr:compileDebugKotlin` — `SUCCESS`

## 70. OCR overlay layout is now adaptive by block size and type

The next strict step after filters was improving the overlay layout itself so translated text does not look like the same generic pill for every comic block.

This pass upgraded the page overlay renderer.

What changed:

- `OverlayRenderer` now computes an adaptive layout profile for each translated block using:
  - block type
  - block area
  - aspect ratio
  - translated text length
- overlay styling is now different for:
  - `SPEECH`
  - `NARRATION`
  - `SFX`
  - `UNKNOWN`
- font size, line height, padding, corner radius, text alignment, background alpha and stroke alpha are now adjusted per block instead of using one fixed `labelSmall` preset
- overlay width/height are clamped to stay inside the preview bounds more safely

Current visual behavior:

- `SPEECH`
  - centered text
  - medium weight
  - softer rounded bubble feel
- `NARRATION`
  - more rectangular card feel
  - left-aligned text
  - slightly steadier background/stroke
- `SFX`
  - bolder, tighter, more poster-like treatment
  - slightly larger text when space allows
- `UNKNOWN`
  - neutral fallback between speech and narration

Why it matters:

- translated overlays now read closer to the role of the original block
- large narration boxes and compact sound-effect regions no longer share the same rigid text layout
- long translated lines are handled more gracefully through adaptive font sizing and line budgeting

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OverlayRenderer.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`

## 71. EPUB fallback is now resilient when OPF parsing fails

A regression surfaced while opening at least one English `.epub`: the reader showed `Нет читаемых страниц` / `The file does not contain readable pages.` even though the book itself was valid enough to be opened for reading.

Root cause:

- `EpubFormatReader` already had a fallback listing for archive contents
- but in the main `parsed` lazy builder, if OPF parsing or page construction threw an exception, the reader could still fall back all the way to `ParsedEpub(emptyList(), ...)`
- that meant one partial OPF/manifest failure could zero out the whole book and trigger the no-pages error

What changed:

- introduced a stronger fallback path based on archive content listing (`fallbackContentPages(...)`)
- if OPF header lookup fails:
  - use archive fallback pages
- if OPF parsing fails:
  - log the error and use archive fallback pages
- if page construction from OPF fails:
  - log the error and use archive fallback pages
- if TOC or footnote parsing fails:
  - keep pages and only drop those secondary structures instead of failing the whole book
- if the top-level EPUB parse block throws:
  - attempt to reopen the ZIP and still build fallback pages instead of returning an empty page list

Why this matters:

- text EPUBs with partial metadata/manifest issues are much less likely to die with `no readable pages`
- the reader now prefers a degraded-but-openable book over a total failure
- this is especially important for testing translation on real-world EPUB files, where packaging quality varies a lot

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\engine-formats\src\main\kotlin\com\example\engine\formats\epub\EpubFormatReader.kt`

Build status after this pass:

- `:engine-formats:compileDebugKotlin` — `SUCCESS`
- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 72. Bubble replacement groundwork is now in place without forcing real inpainting

The next strict step after overlay layout improvements was preparing the architecture for future post-MVP text replacement inside speech bubbles.

This pass intentionally did not add real inpainting or destructive image editing.
Instead, it added a future-ready preview path and data model so the OCR translation pipeline can later evolve into true bubble replacement without another structural rewrite.

What changed:

- added new core-model enums:
  - `OverlayDisplayMode`
  - `BubbleMaskShape`
- extended `OverlayBlock` with replacement-oriented metadata:
  - mask shape
  - mask corner radius
  - mask inset
  - preview preference flag
- added `BubbleReplacementPreviewPlanner` in `feature-ocr`
  - generates overlay metadata for future bubble replacement based on OCR block type and geometry
- `DefaultComicTranslationEngine` now builds translated overlay blocks through that planner instead of emitting a flat generic overlay block
- OCR UI state now supports switching between:
  - normal `OVERLAY`
  - `BUBBLE_PREVIEW`
- `OverlayRenderer` now understands those preview semantics:
  - uses replacement-aware shape/inset data
  - renders more opaque bubble-style masks for blocks that prefer replacement preview
  - keeps normal overlay behavior for blocks where replacement preview does not make sense, especially SFX
- OCR screen now exposes a small user-facing mode switch:
  - `Overlay mode`
  - `Bubble preview`

Why this matters:

- the app now has a safe non-destructive bridge between current overlay translation and future real text replacement
- future work can plug in masking / bubble cleanup / text fitting on top of an already structured rendering model
- current users still keep the old overlay path and can switch preview on only when they want to inspect replacement-style rendering

Important scope note:

- this is still preview groundwork only
- no original text removal yet
- no inpainting yet
- no bitmap rewriting yet
- no export path yet

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-model\src\main\java\com\example\core\model\TranslationModels.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\BubbleReplacementPreviewPlanner.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\DefaultComicTranslationEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OverlayRenderer.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:core-model:compileDebugKotlin` — `SUCCESS`
- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

APK after this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\app\build\outputs\apk\debug\Mr.Comic-debug.apk`

## 73. Room prepackaged dictionary schema mismatch is fixed

A runtime crash was reported when opening the offline dictionary:

- `Pre-packaged database has an invalid schema`

Root cause:

- the packaged `dictionary.db` did not fully match the exported Room schema
- `room_master_table` was missing
- primary key columns like `id` were created in a way that SQLite exposed as `notNull = false` in `PRAGMA table_info`
- `entries.pos` was created with `DEFAULT ''`, while Room expected no default value in the current entity/schema export
- the builder was also reusing an existing output DB file, so schema changes in the builder did not actually replace old tables

What was changed:

- `Translate/build_dictionary_room.py` now:
  - deletes an existing output DB and its `-wal` / `-shm` sidecars before building
  - creates primary keys as explicit `INTEGER NOT NULL PRIMARY KEY`
  - creates `entries.pos` as `TEXT NOT NULL` without a default value
  - creates and fills `room_master_table`
  - writes the current Room `identity_hash`
  - checkpoints WAL and switches back to `DELETE` journal mode for a cleaner packaged asset
- `DictionaryDatabase.fromAsset(...)` now uses a new internal app DB name:
  - `dictionary_room_asset_v2.db`
  - this forces devices that already copied the old broken packaged DB to create a fresh local copy from the fixed asset instead of reusing the stale internal file
- the packaged asset was rebuilt from cached sources into:
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary.db`

Validation done after rebuild:

- direct `PRAGMA` inspection now matches Room expectations for all dictionary tables
- exported Room schema vs packaged DB was checked with a local comparison script and returned `OK`
- build passes:
  - `:core-data:compileDebugKotlin` — `SUCCESS`
  - `:app:assembleDebug` — `SUCCESS`

Current staged source set inside the packaged Room dictionary:

- `WordNet 3.0`
- `JMdict`
- `CC-CEDICT`
- `Kaikki RU`
- `Kaikki KO`

## 74. Explain layer now has a safe domain engine contract

The next strict step after OCR bubble-preview groundwork was starting the `Explain Layer`.

This pass intentionally did not add user-facing explain UI yet.
Instead, it established the domain contract and a safe default implementation so the reader and OCR flows can integrate explain without inventing another ad-hoc path later.

What changed:

- added new translation-domain models:
  - `ExplainRequest`
  - `ExplainResult`
- added the new contract:
  - `LlmExplainEngine`
- added a safe default implementation:
  - `SafeLlmExplainEngine`
- wired it into Hilt in `TranslationModule`
- added unit tests covering:
  - `isConfigured() == false`
  - controlled error when explain is requested before a real provider is configured

Behavior right now:

- the app now has a proper explanation engine interface
- `SafeLlmExplainEngine` is intentionally non-destructive and explicit:
  - no hidden network calls
  - no fake local pseudo-LLM behavior
  - returns a clear controlled error until a real explain provider is plugged in

Why this matters:

- the next steps can now cleanly add:
  - explain for text reader selection
  - explain for OCR blocks
  - noisy OCR cleanup
- all of that can reuse one shared contract instead of duplicating logic per screen

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-model\src\main\java\com\example\core\model\TranslationModels.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\LlmExplainEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\SafeLlmExplainEngine.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\main\java\com\example\core\domain\translation\TranslationModule.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\core-domain\src\test\java\com\example\core\domain\translation\SafeLlmExplainEngineTest.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:core-model:compileDebugKotlin` — `SUCCESS`
- `:core-domain:compileDebugKotlin` — `SUCCESS`
- `:core-domain:testDebugUnitTest` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 77. Backup import now restores library entries, not only settings/progress

Problem fixed:

- backup/restore already restored settings and attempted to restore reading progress
- but it only applied progress to comics that already existed in Room
- after a clean install, library rows were missing, so progress could not be restored in practice

What changed:

- `SettingsViewModel` backup export format was expanded from version `2` to version `3`
- backup entries now include full library metadata needed to recreate rows:
  - `format`
  - `treeUri`
  - `documentId`
  - `fileSize`
  - `addedDate`
  - `lastModified`
  - `folderId`
  - `tags`
  - `series`
  - `volume`
  - `issue`
  - `year`
  - `publisher`
  - `author`
  - `artist`
  - `genre`
  - `language`
  - plus reading state fields
- import remains backward-compatible with old backups that only had the minimal entry schema
- old backups now reconstruct a reasonable `ComicFormat` from the file extension when the explicit `format` field is missing

Repository-side restore logic:

- `ComicRepository` now has `restoreComicFromBackup(...)`
- it performs an upsert-style restore:
  - if an existing comic is found by `id` or `path`, it merges backup state into the existing row
  - if the comic is missing, it recreates the library row from backup metadata
- restored rows regenerate cover art when possible; if the source is not readable during restore, cover generation safely falls back to `null`

Import result behavior:

- import status now separates:
  - `Импортировано в библиотеку`
  - `обновлено`
  - `пропущено`
  - `настроек восстановлено`
- this makes it visible whether backup actually recreated the library itself

Important caveat:

- this restores library references/rows and reading state
- it does not magically recover files that no longer exist at their original location or SAF permissions that were lost after reinstall
- for local file paths that still exist, and for sources still reachable, this is enough to bring the library back and restore reading progress

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\repository\ComicRepository.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`

Build status after this pass:

- `:core-data:compileDebugKotlin` — `SUCCESS`
- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 78. OCR page cache is now source-aware, not only page-aware

The next production step in `feature-ocr` was cache invalidation.

Problem before this pass:

- OCR page cache had already been upgraded to disk-backed JSON snapshots
- but the cache key still effectively depended only on logical page identity:
  - `comicId:page`
  - or standalone `imagePath`
- that meant old OCR blocks / translated overlay could survive even when the underlying source changed
- this was especially risky for:
  - replaced local files
  - changed imported source documents
  - repeated OCR launches using a refreshed page image while keeping the same logical page

What changed:

- `OcrViewModel` now builds a source-aware cache id via `buildPageCacheId()` instead of using only the old logical page id
- the cache id now combines:
  - the logical page id (`comicId:page` or `imagePath`)
  - plus a source fingerprint of the real underlying source

Fingerprint strategy:

- for comics opened from the library:
  - local files use `absolutePath + length + lastModified`
  - `content://` sources use a best-effort fingerprint from `displayName + asset length + stored lastModified + documentId`
  - inaccessible sources fall back to stored comic metadata
- for standalone OCR image paths:
  - the cache uses `absolutePath + length + lastModified`
  - if the file no longer exists, it falls back to the path string

Why this matters:

- old OCR recognition / overlay results are much less likely to be reused for a changed file
- repeated OCR on the same unchanged source still benefits from the cache
- this moves `feature-ocr` another step away from demo behavior toward a safer production pipeline

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md`

Build status after this pass:

- `:feature-ocr:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`

## 79. Backup now stores sourcePath for library restore, not only the current readable path

Problem discovered after library-restore support was added:

- backup import could already recreate library rows
- but some restored items appeared in the library without covers and still did not open
- the root cause was that many imported documents had `comic.path` pointing to an app-managed readable copy or transient resolved path instead of the true original source
- after reinstall / data reset, that internal readable copy no longer existed, so restoring the row alone was not enough

What changed:

- single-document imports now store the original `content://` URI in `Comic.treeUri`
- backup export format was expanded again to version `4`
- each library entry now exports:
  - `path` (current stored path)
  - `sourcePath` (preferred real source path/URI for restore)
- `sourcePath` resolution prefers:
  - the original `content://` source stored in `treeUri`
  - or, for older rows, a matching persisted SAF permission reconstructed from `documentId`
  - otherwise it falls back to the current stored path

Import/open behavior:

- import now prefers `sourcePath` over raw stored `path`
- `ComicRepository.restoreComicFromBackup(...)` can replace a dead stored path with a readable backup path when merging into an existing row
- `ReaderViewModel.resolveReadablePath(...)` now also falls back to `comic.treeUri` when a restored non-content path no longer exists but the original content URI is still readable

Why this matters:

- future backups are much more likely to restore library items as actually openable books/comics, not just visible Room rows
- this is especially important for documents originally imported through SAF / `OpenDocument`

Important user-facing caveat:

- this fix improves backups created from the new build onward
- if a backup was created before `sourcePath` existed, and the stored path pointed to an app-internal readable copy that no longer exists, that old backup may still restore a visible but unreadable row
- in that case the correct flow is to export a fresh backup from the source installation with the new build and then restore that new backup

Files touched in this pass:

- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\repository\ComicRepository.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt`

Build status after this pass:

- `:core-data:compileDebugKotlin` — `SUCCESS`
- `:feature-settings:compileDebugKotlin` — `SUCCESS`
- `:feature-reader:compileDebugKotlin` — `SUCCESS`
- `:app:assembleDebug` — `SUCCESS`
Library access repair update (2026-03-15):

- Added a manual SAF recovery flow in Backup & maintenance: the user can choose the original source folder again and the app will rebind restored library entries whose content:// access was lost after reinstall.
- ComicRepository.repairLibraryAccess(treeUri) now rebuilds readable document URIs from stored documentId, refreshes path, stores the new treeUri, and regenerates coverPath where possible.
- This is specifically meant for the case confirmed by logcat_2026-03-15_18-17-46.txt: restored library rows existed, but opening failed with SecurityException because SAF permissions were gone after reinstall.
- If the library came from multiple folders, the user may need to repeat the repair flow once per source folder.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\repository\ComicRepository.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt

Build status after this pass:

- :core-data:compileDebugKotlin - SUCCESS
- :feature-settings:compileDebugKotlin - SUCCESS
- :app:assembleDebug - SUCCESS
OCR cache stability update (2026-03-15):

- OcrPageCache now writes schema version 2 for recognized/translated page snapshots.
- Cache reads delete incompatible old snapshot files automatically instead of silently reusing stale data from older cache layouts.
- Added age-based pruning (7 days) for OCR page cache files, plus an eager prune on OcrViewModel init.
- This keeps the disk-backed OCR cache production-safer during repeated testing and language/setting changes, while still preserving fast re-entry for recent pages.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\OcrPageCache.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt

Build status after this pass:

- :feature-ocr:compileDebugKotlin - SUCCESS
- :app:assembleDebug - SUCCESS
Backup/restore recovery hardening update (2026-03-15):

- restoreComicFromBackup(...) now tries to revive restored entries immediately through any already granted SAF permission, instead of only writing the raw restored path into Room.
- Restored items now report readability back to importProgress(), so import status can explicitly say how many files still require manual access repair.
- ReaderViewModel.resolveReadablePath(...) now has an extra fallback path through current persistedUriPermissions and best-effort primary external storage path reconstruction, which reduces false-negative open failures for restored items.
- This does not remove the Android SAF restriction after a clean reinstall: if no permission exists yet, the user still needs to reselect the original source folder once. But after that, the app is now much better at auto-rebinding restored entries and rebuilding covers.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\repository\ComicRepository.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-reader\src\main\java\com\example\feature\reader\ui\ReaderViewModel.kt

Build status after this pass:

- :core-data:compileDebugKotlin - SUCCESS
- :feature-reader:compileDebugKotlin - SUCCESS
- :feature-settings:compileDebugKotlin - SUCCESS
- :app:assembleDebug - SUCCESS
Auto-repair prompt after backup import (2026-03-15):

- Backup import now triggers an automatic OpenDocumentTree flow when unresolved restored entries remain after import.
- This keeps the Android-required user permission step, but removes the need to manually discover the repair button in Backup & maintenance after every restore.
- The flow still may need to be repeated for multiple source folders, because SAF permissions are per picked tree.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsViewModel.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt

Build status after this pass:

- :feature-settings:compileDebugKotlin - SUCCESS

Library quick presets / saved themes restoration update (2026-03-18):

- While continuing the reopened `tasklist2` library pass, another real gap surfaced: quick presets and saved library themes still existed in logic/helpers, but they were not actually rendered in the live `Settings -> Library -> Shelves & background` screen.
- `SettingsScreen.kt` now renders both blocks in the real runtime UI:
  - quick presets are shown as visual preset tiles with miniature backdrop / shelf previews
  - saved theme slots are shown again in the same screen with save / apply / clear actions
- This means the library customization surface is now materially closer to what `tasklist2` had originally claimed, but device-side validation of rhythm, spacing and final polish still remains open there.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt
- C:\Users\xmeta\projects\Mr.Comic\tasklist2

Build status after this pass:

- :feature-settings:compileDebugKotlin - SUCCESS

OCR production cleanup update (2026-03-18):

- The next open main-tasklist step was continued in `feature-ocr`.
- A leftover stage-0 demo artifact was removed:
  - deleted unused `SimpleTranslateScreen.kt`
  - removed obsolete whole-text / direct-translate helper methods from `OcrRepository.kt` that were no longer used by the real OCR block pipeline
- The standalone `OCR / Перевод` screen from navigation is now less demo-like and more production-usable:
  - when opened without a page from the reader, it now offers image picking directly from storage
  - the selected image is copied into app cache and then fed into the same OCR block / overlay pipeline as a reader page
  - manual text translation remains available as a secondary standalone utility

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\data\OcrRepository.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\SimpleTranslateScreen.kt

Build status after this pass:

- :feature-ocr:compileDebugKotlin - SUCCESS

OCR standalone state-hardening update (2026-03-18):

- The standalone `OCR / Перевод` path was still behaving too much like a transient prototype:
  - selected image state lived mostly in current `ViewModel` memory
  - imported standalone OCR images were stored in cache storage
  - there was no explicit path back from standalone image OCR to pure manual text mode
- This was tightened up:
  - `OcrViewModel` now keeps standalone image selection in `SavedStateHandle`
  - imported standalone OCR images are copied into `filesDir/ocr_imports` instead of ephemeral cache storage
  - the screen now exposes an explicit `Ручной режим` action for standalone image OCR sessions
- This does not finish the whole OCR production cleanup line yet, but it removes another practical stage-0 behavior and makes the standalone nav destination more stable across recreation.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt

Build status after this pass:

- :feature-ocr:compileDebugKotlin - SUCCESS

OCR screen text-layer cleanup update (2026-03-18):

- Another visible stage-0 trait in `feature-ocr` was the screen text layer itself:
  - `OcrScreen.kt` still contained a large amount of hardcoded strings and mixed prototype labels such as `overlay / Bubble preview`
- This pass introduced `OcrUiText.kt` and moved the visible OCR screen copy behind a dedicated language-aware text layer.
- The OCR screen now uses this text model for:
  - top bar
  - language section labels
  - standalone image/manual text mode copy
  - page OCR actions
  - overlay controls
  - translated block list
  - selected block sheet
  - block type labels
- This does not complete the entire OCR production migration, but it removes another very visible prototype seam from the runtime UI.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrUiText.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt

Build status after this pass:

- :feature-ocr:compileDebugKotlin - SUCCESS
- :app:assembleDebug - SUCCESS

Library settings preview sync update (2026-03-18):

- `tasklist2` was stale: it claimed the library customization audit was fully complete, while runtime library polish was still ongoing.
- The file was updated to stop using the old `All tasks completed successfully.` marker and now explicitly says the audit pass is done but runtime polish continues.
- `Settings -> Library -> Shelves & background` now shows a dedicated preview card for the currently selected background image:
  - real image thumbnail
  - extracted file name / readable URI tail
  - short hint that the same file is used in the live library backdrop
- This closes the previously still-open `реальный preview фонового изображения` line in `TASKLIST.md`.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\build.gradle.kts
- C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md
- C:\Users\xmeta\projects\Mr.Comic\tasklist2

Build status after this pass:

- :feature-settings:compileDebugKotlin - SUCCESS
- :app:assembleDebug - SUCCESS

Library shelves/background block restoration update (2026-03-18):

- The `tasklist2` file was not actually reflecting runtime reality: several library styling controls were still missing from the live Settings UI even though the audit file suggested the pass was complete.
- `Settings -> Library -> Shelves & background` is now much closer to a real visual control surface:
  - background presets are no longer plain text chips only; they are shown as horizontally scrollable visual preset cards rendered through the real `LibraryBackdropLayer(...)`
  - the selected custom background image still has its own dedicated preview card
  - shelf style selection is back in the UI and is also shown as visual cards rendered over the current library backdrop
  - shelf depth and card shadow sliders were restored to the UI block
- `tasklist2` was updated to reflect that:
  - visual background preset cards are now done
  - shelf style / depth / shadow controls are restored
  - only device-side visual validation remains open there
- `TASKLIST.md` now marks `настоящие generated backgrounds` as completed for the library settings path.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt
- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\build.gradle.kts
- C:\Users\xmeta\projects\Mr.Comic\TASKLIST.md
- C:\Users\xmeta\projects\Mr.Comic\tasklist2

Build status after this pass:

- :feature-settings:compileDebugKotlin - SUCCESS
- :app:assembleDebug - SUCCESS

Library live-preview alignment update (2026-03-18):

- The library settings preview is now closer to the real runtime library behavior instead of mostly showing only the active background.
- `LibraryStylePreview(...)` now reflects:
  - current card density
  - current shelf style
  - current cover scale
  - thumbnail shape
  - progress visibility toggle
- `LibraryPreviewVolume(...)` now varies its card/container geometry by `COMPACT / BALANCED / SHOWCASE`, respects `FIT` vs `CROP` visually via inset handling, and hides the preview progress strip when library progress display is turned off.
- `LibraryPreviewFolder(...)` now also tracks the active card style and rectangle/square thumbnail mode, so folder rhythm in preview matches the grid more closely.
- `tasklist2` keeps device-side validation open, but the preview/runtime mismatch is substantially smaller now.

Files touched in this pass:

- C:\Users\xmeta\projects\Mr.Comic\android\feature-settings\src\main\java\com\example\feature\settings\ui\SettingsScreen.kt
- C:\Users\xmeta\projects\Mr.Comic\tasklist2

Build status after this pass:

- :feature-settings:compileDebugKotlin - SUCCESS

## 77. `Ocr update` language and dictionary integration is now partially wired into runtime

The user pointed out that the `Ocr update` folder was not just about OCR polish: it also introduced a wider language/dictionary direction that had not yet been wired into the real app.

What was done in this pass:
- imported the new update materials into `Translate/`:
  - `build_dictionary_full.py`
  - `README_build_dictionary_full.md`
  - `dictionary_optimization_guide.md`
  - `updated_TZ.md`
- fixed the compile blocker in `DictionaryRepository.kt` introduced during the first ranking/cache pass (`targetLanguage` is nullable and is now normalized safely)
- added a shared translation-language catalog in:
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-ui\src\main\java\com\example\core\ui\locale\TranslationLanguageCatalog.kt`
- expanded runtime translation language support from the old `ru/en/ja/zh/ko` set to:
  - `ru`, `en`, `ja`, `zh`, `ko`, `fr`, `it`, `pl`, `tr`, `pt` (`pt-BR` normalized to `pt`)
- switched `SettingsScreen` translation language chips to the shared catalog instead of a local hardcoded five-language list
- switched OCR language chips in settings to the shared OCR-capable language catalog
- switched `ReaderViewModel.resolveTranslationSettings()` to shared normalization, so new target/source languages are no longer truncated back to the old five-language set
- switched `OcrScreen` source/target language chips to shared catalogs and moved them to `FlowRow`, which keeps the expanded set usable in UI
- tightened `OcrViewModel` defaults:
  - translation target now accepts the full expanded language catalog
  - OCR source still falls back only to OCR-capable languages, so we do not expose broken recognition defaults
- `DictionaryRepository` now adds small LRU-style caches for lookup/suggestions and ranks Room results with target-language-aware scoring:
  - specialized source + direct target translation first
  - then specialized source
  - then Kaikki with direct target translation
  - then Kaikki with English gloss/fallback
- extended `Translate/build_dictionary_room.py` so the Room-compatible builder now accepts repeatable generic Kaikki sources via:
  - `--kaikki lang:path-or-url`

Important current state after this pass:
- runtime/UI is now ready for the wider language set from `Ocr update`
- at the time of this pass the shipped `dictionary.db` still only contained staged Room data for:
  - `en`, `ja`, `zh`, `ru`, `ko`
- compile verification completed successfully for:
  - `:core-ui:compileDebugKotlin`
  - `:core-data:compileDebugKotlin`
  - `:core-domain:compileDebugKotlin`
  - `:feature-reader:compileDebugKotlin`
  - `:feature-settings:compileDebugKotlin`
  - `:feature-ocr:compileDebugKotlin`

## 78. Shipped Room dictionary has now been rebuilt with the extended Kaikki languages

The user chose the first option for the `Ocr update` follow-up: extend the main shipped Room dictionary instead of splitting new languages into optional packs.

What was done:
- created a safety backup of the previous packaged DB:
  - `C:\Users\xmeta\projects\Mr.Comic\Translate\backups\dictionary_before_extended_langs_20260318.db`
- finished the Room-compatible builder work so it can consume repeatable generic sources with:
  - `--kaikki lang:path-or-url`
- downloaded the extra Kaikki dumps locally and rebuilt the packaged DB completely offline, using:
  - `frwiktionary`
  - `itwiktionary`
  - `plwiktionary`
  - `trwiktionary`
  - `ptwiktionary`
- replaced the shipped asset:
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary.db`

Verified result after rebuild:
- languages now present in `entries`:
  - `en` `155593`
  - `fr` `2074001`
  - `it` `392716`
  - `ja` `212991`
  - `ko` `106030`
  - `pl` `115406`
  - `pt` `392420`
  - `ru` `474655`
  - `tr` `317503`
  - `zh` `120665`
- source distribution:
  - `wordnet` `155593`
  - `jmdict` `212991`
  - `cc-cedict` `120665`
  - `kaikki-ruwiktionary` `474655`
  - `kaikki-kowiktionary` `106030`
  - generic `kaikki` rows `3292046` for the newly added languages

Important consequence:
- the new packaged `dictionary.db` is now about `2.56 GB`
- functionally this gives much broader offline dictionary coverage
- operationally this is now a real APK-size / packaging risk and should be treated as the next follow-up task after runtime verification

## 79. Single huge Room dictionary was not shippable, so runtime moved to per-language Room assets

The first offline rebuild of the monolithic `dictionary.db` worked at the data level, but a real `:app:assembleDebug` verification exposed the packaging limit:

- build failed at `:app:compressDebugAssets`
- error:
  - `Required array size too large`

To keep the new offline languages without backing them out, the dictionary runtime was switched to per-language Room assets.

What was done:
- added per-language asset catalog:
  - `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\dictionary\DictionaryAssetCatalog.kt`
- changed `DictionaryRepository` to lazy-open the matching Room DB by source language
- removed the old DI path that expected a single packaged `dictionary.db`
- updated `RoomDictionaryEngine` to use the repository directly
- added helper builder:
  - `C:\Users\xmeta\projects\Mr.Comic\Translate\build_dictionary_shipped_assets.py`
- built and shipped these Room assets:
  - `dictionary_en.db`
  - `dictionary_fr.db`
  - `dictionary_it.db`
  - `dictionary_ja.db`
  - `dictionary_ko.db`
  - `dictionary_pl.db`
  - `dictionary_pt.db`
  - `dictionary_ru.db`
  - `dictionary_tr.db`
  - `dictionary_zh.db`
- removed the monolithic packaged asset:
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\src\main\assets\databases\dictionary.db`

Verified sizes:
- combined `dictionary_*.db` size:
  - `2,534,572,032` bytes
- largest single asset:
  - `dictionary_fr.db` `1,097,777,152` bytes

Build result after the switch:
- `:core-data:compileDebugKotlin` - `SUCCESS`
- `:core-domain:compileDebugKotlin` - `SUCCESS`
- `:feature-reader:compileDebugKotlin` - `SUCCESS`
- `:feature-settings:compileDebugKotlin` - `SUCCESS`
- `:feature-ocr:compileDebugKotlin` - `SUCCESS`
- `:app:assembleDebug` - `SUCCESS`

Current debug APK:
- `C:\Users\xmeta\projects\Mr.Comic\android\app\build\outputs\apk\debug\Mr.Comic-debug.apk`
- size:
  - `2,700,006,866` bytes

## 80. Dictionary asset set has now been compressed and the APK size dropped sharply

The per-language Room asset split fixed packaging correctness, but the APK was still too heavy because it was shipping raw SQLite files.

What was done:
- measured actual gzip compression on the per-language DB set:
  - raw combined size: about `2,534,572,032` bytes
  - gzip combined size: about `752,482,974` bytes
- switched the shipped dictionary assets from raw `.db` files to precompressed custom-extension assets:
  - `dictionary_en.dbpack`
  - `dictionary_fr.dbpack`
  - `dictionary_it.dbpack`
  - `dictionary_ja.dbpack`
  - `dictionary_ko.dbpack`
  - `dictionary_pl.dbpack`
  - `dictionary_pt.dbpack`
  - `dictionary_ru.dbpack`
  - `dictionary_tr.dbpack`
  - `dictionary_zh.dbpack`
- updated `DictionaryAssetCatalog.kt` to reference `.dbpack` assets and bump extracted DB version to `v3`
- added `DictionaryAssetExtractor.kt`, which unpacks the gzip payload from the asset into:
  - `filesDir/dictionary_assets/`
  and then opens the resulting SQLite file through `Room.createFromFile(...)`
- updated `android/app/build.gradle.kts` to keep the precompressed `dbpack` assets unmodified by AAPT
- updated `Translate/build_dictionary_shipped_assets.py` so future rebuilds emit `.dbpack` assets directly

Why `.dbpack` instead of `.gz`:
- using plain `.gz` in the asset pipeline still resulted in AGP emitting raw `.db` files during `mergeDebugAssets`
- switching to a custom extension kept the payload opaque to the packaging pipeline while still letting runtime decompress it explicitly

Final verified result:
- packaged dictionary assets inside the APK are now:
  - `assets/databases/dictionary_*.dbpack`
- `:app:clean :app:assembleDebug` - `SUCCESS`
- current debug APK:
  - `C:\Users\xmeta\projects\Mr.Comic\android\app\build\outputs\apk\debug\Mr.Comic-debug.apk`
  - size: `917,934,274` bytes

Net effect:
- offline dictionary coverage stayed intact
- debug APK dropped from roughly `2.70 GB` to about `918 MB`

## 81. Standalone OCR/manual mode now follows the same translation rules as the reader

The next OCR production pass removed another remaining prototype gap in the standalone `OCR / Translate` screen.

What changed:
- the source-language chip row is now mode-aware:
  - in image/OCR mode it still uses the OCR-supported source list
  - in standalone manual-text mode it now uses the full translation language catalog
- this fixes the previous limitation where manual text mode was still constrained to OCR-only source languages and could not behave like a full text translation tool
- when switching from standalone text mode into standalone image OCR, the current source language is automatically coerced back into a valid OCR-supported language if needed
- manual translation in `OcrViewModel.translate()` now mirrors the routing used in the text reader:
  - same-language requests return the original text immediately
  - single-word requests can fall back to dictionary lookup instead of ending in a raw MT/backend error
  - backend-unavailable errors are localized and normalized into clear user-facing messages
- the standalone hint text in `OcrUiText` was updated to match current reality:
  the screen can now be used both for typed text translation and for picking an image and running OCR/overlay outside the reader

Files touched:
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrUiText.kt`

Build status after this pass:
- `:feature-ocr:compileDebugKotlin` - `SUCCESS`

## 83. Library covers no longer live only in cache and now auto-repair on startup

The next bugfix pass addressed disappearing covers after app restart.

Root cause:
- generated comic covers were stored in `cacheDir/covers`
- this is not a stable location for library artwork
- when those files disappeared, the database still kept `coverPath`, but the image files themselves were gone

What changed:
- `ComicRepository.generateCoverPath(...)` now stores covers in:
  - `filesDir/covers`
  instead of `cacheDir/covers`
- legacy cache-based covers are still recognized:
  - if an old `cacheDir/covers/<comicId>.jpg` exists, it is copied into the new persistent location and reused
- `ComicRepository.repairStoredCovers()` was added:
  - it scans stored comics
  - prefers already migrated persistent covers
  - copies legacy cache covers forward if they still exist
  - regenerates missing covers for readable comics when needed
  - updates `coverPath` in Room to the persistent file path
- `LibraryViewModel` now triggers `repairStoredCovers()` once on init, so existing libraries heal automatically when the library screen is opened after update

Files touched:
- `C:\Users\xmeta\projects\Mr.Comic\android\core-data\src\main\java\com\example\core\data\repository\ComicRepository.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-library\src\main\java\com\example\feature\library\LibraryViewModel.kt`

Build status after this pass:
- `:core-data:compileDebugKotlin` - `SUCCESS`
- `:feature-library:compileDebugKotlin` - `SUCCESS`
- `:feature-reader:compileDebugKotlin` - `SUCCESS`

## 82. Standalone OCR/manual mode now has real dictionary and explain actions

The next OCR production pass removed another remaining gap between the standalone manual screen and the reader translation flow.

What changed:
- `OcrUiState` now keeps explicit standalone-manual result state:
  - `manualResultMode`
  - `manualDictionaryEntry`
  - `isExplainingManualText`
  - `manualExplanation`
  - `manualExplanationError`
- the standalone manual result is no longer just a single flat `translatedText` string
- `OcrViewModel` now exposes:
  - `openDictionaryForManualText()`
  - `explainManualText()`
- single-word manual input can now open a real dictionary card directly from the standalone OCR screen
- manual explain is now available from the same screen:
  - for one word it uses the dictionary-based local explanation path
  - for longer text it goes through `LlmExplainEngine`
- `OcrScreen` now renders:
  - action buttons under the standalone translate button:
    - `Dictionary` for single-word input
    - `Explain`
    - `Copy translation`
  - a dedicated dictionary card with lemma / part of speech / meanings / forms
  - a dedicated explanation card with loading, result, and error states

Why this matters:
- the standalone `OCR / Translate` screen now feels much less like an early prototype
- manual text mode is closer to the reader translation UX instead of being “just one text field and one translate button”

Files touched:
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrViewModel.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrScreen.kt`
- `C:\Users\xmeta\projects\Mr.Comic\android\feature-ocr\src\main\java\com\example\feature\ocr\ui\OcrUiText.kt`

Build status after this pass:
- `:feature-ocr:compileDebugKotlin` - `SUCCESS`
## 84. OCR runtime messages moved out of ViewModel and engine errors are now mapped at UI level

- `feature-ocr` получил ещё один production-cleanup pass без изменения самого OCR/translation pipeline.
- Добавлен файл [OcrRuntimeText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrRuntimeText.kt):
  - словарное explain-представление для OCR/manual mode;
  - локализованные runtime-сообщения для explain/cleanup/translation/dictionary/image-open/image-decode/recognition/save-note;
  - локализация частей речи для OCR dictionary/explain path.
- `OcrViewModel` больше не держит внутри себя длинный набор `localized*` helper-ов и сырой success/error текст.
- OCR user-facing ошибки теперь ориентируются на язык интерфейса (`APP_LANGUAGE`), а не на `target language`.
- `OverlayRenderer` больше не содержит жёсткий `contentDescription = "Страница комикса"`:
  description теперь приходит из `OcrUiText`.
- `DefaultComicTranslationEngine` больше не возвращает сырые строки вроде:
  - `Offline model is not available`
  - `Offline availability is still loading`
  - `Translation failed`
  вместо этого production UI получает доменный `TranslationBackendUnavailableException` и уже на уровне `OcrViewModel` превращает его в локализованное сообщение.
- Валидация:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 85. OCR screen UX states are now less prototype-like

- После выноса runtime-текстов добран ещё один UX-pass по самому `OcrScreen`.
- Что изменено:
  - ряды action-кнопок в overlay/result/block-card переведены на `FlowRow`, чтобы длинные локализованные лейблы не ломали layout на узких экранах;
  - dismiss-действие в success/error карточках теперь использует нормальную локализованную подпись вместо сырого `×`;
  - manual dictionary card теперь локализует `part of speech`, а не показывает raw English tag.
- Файлы:
  - [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
- Валидация:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 86. Manual OCR result card now shows mode and language pair

- Следующий маленький production-pass после UX cleanup:
  standalone/manual translation result в `OcrScreen` теперь показывает не только сам текст результата, но и metadata-профиль результата.
- Что добавлено:
  - chip с реально сработавшим режимом (`Dictionary`, `Offline`, `Online`), если он известен;
  - chip с языковой парой (`EN → RU`, `JA → RU` и т.п.) через `translationLanguageShortLabel(...)`.
- Это выравнивает manual OCR flow с reader-side translation result sheet, где такой профиль уже был.
- Файлы:
  - [OcrRuntimeText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrRuntimeText.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
- Валидация:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 87. Manual/image OCR transitions now use explicit state reset helpers

- Следующий production-pass был не про новый UI, а про state hygiene.
- В `OcrViewModel` добавлены helper-методы:
  - `clearTransientFeedback()`
  - `clearSelectedBlockState()`
  - `clearImageScenarioState()`
  - `clearManualScenarioState(...)`
- Они подключены в ключевые transition-пути:
  - manual translate start;
  - manual dictionary start;
  - manual explain start;
  - `setSourceLang(...)`;
  - `setTargetLang(...)`;
  - `setManualText(...)`;
  - `loadStandaloneImage(...)`;
  - `clearStandaloneImage()`.
- Практический эффект:
  - при переходе между standalone manual и image OCR меньше шансов, что останутся старые:
    `saveMessage`, `error`, block-selection state, manual dictionary card, manual explanation card или overlay-related selection state.
- Файл:
  - [OcrViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrViewModel.kt)
- Валидация:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 88. OCR screen now presents manual and image scenarios as explicit modes

- Следующий production-pass был уже про структуру экрана, а не про state cleanup.
- `OcrScreen` больше не выглядит как один длинный смешанный экран с условными кусками:
  сверху добавлена явная mode-card, которая показывает, в каком подрежиме пользователь находится сейчас.
- Что теперь есть:
  - `Текстовый режим` / `Text mode`
  - `OCR-режим по изображению` / `Image OCR mode`
  - краткое описание текущего сценария;
  - главное действие для текущего режима прямо в этой карточке.
- Для image mode:
  - если это standalone image, mode-card даёт `Choose another image` и `Switch to text mode`;
  - если изображение пришло из reader, карточка остаётся описательной и не предлагает сломать reader-context лишними кнопками.
- Для text mode:
  - mode-card явно ведёт к `Pick page image`, не пряча это действие ниже как часть старой standalone-заглушки.
- Файлы:
  - [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
- Валидация:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 89. OCR translation profile card replaces the old technical header

- Следующий OCR production-pass был уже не про pipeline, а про ясность верхнего блока экрана.
- Раньше `OCR / Перевод` начинался как техническая шапка:
  - отдельный заголовок source language;
  - отдельный заголовок target language;
  - отдельная строка transport;
  - затем отдельная mode-card.
- Теперь это собрано в единый `Профиль перевода`:
  - title + mode-aware hint;
  - summary chips для текущего режима, языковой пары и transport;
  - mode-aware label для языка входа:
    - `Язык текста` в manual mode;
    - `Язык OCR` в image mode;
  - target selector и human-readable note, что transport берётся из настроек.
- Практический эффект:
  - верх экрана меньше похож на debug/tooling header;
  - manual и image сценарии объясняют себя понятнее;
  - transport/source/target остаются на месте, но воспринимаются как единый translation profile, а не как набор разрозненных тех-настроек.
- Файлы:
  - [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
- Валидация:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 90. Manual OCR text mode now uses a contextual action card

- После profile-card следующим заметным prototype-хвостом оставался manual text mode:
  - поле ввода жило отдельно;
  - затем шла просто primary translate button;
  - ещё ниже отдельно торчал ряд `Словарь / Объяснить / Копировать перевод`.
- Теперь manual path собран в отдельную action-card:
  - заголовок сценария;
  - context-aware hint:
    - для одного слова;
    - для фразы / короткого абзаца;
  - primary action `Перевести`;
  - secondary actions внутри той же карточки:
    - `Словарь` для single-word input;
    - `Объяснить`;
    - `Копировать перевод`, если результат уже есть.
- Практический эффект:
  - standalone manual flow меньше похож на набор независимых контролов;
  - шаги использования читаются проще;
  - различие `одно слово` vs `фраза` объясняется прямо в UI, без необходимости догадываться по поведению кнопок.
- Файлы:
  - [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
- Валидация:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 91. Image OCR mode now uses a contextual page action card

- После manual action-card симметричный prototype-хвост оставался в image OCR mode:
  - под превью страницы висели просто две отдельные кнопки:
    - `Перевести видимую страницу`;
    - `Только распознать текст`.
- Теперь image path тоже собран в отдельную action-card:
  - заголовок сценария;
  - context-aware hint в зависимости от состояния страницы:
    - ещё ничего не распознано;
    - блоки уже найдены;
    - page translation уже готов;
  - короткие status chips по найденным и переведённым блокам;
  - primary action `Перевести видимую страницу`;
  - secondary action `Только распознать текст`.
- Практический эффект:
  - image mode меньше похож на внутренний tool screen;
  - пользователь лучше понимает, когда логичнее сначала гнать OCR, а когда сразу переводить страницу;
  - состояние page OCR / page translation читается уже до пролистывания вниз к спискам блоков.
- Файлы:
  - [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
- Валидация:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 92. Non-English translation/explain fallback paths were tightened up

- After the OCR/manual production passes, the next bug report was functional rather than visual:
  translation seemed to work reliably only for English, while other languages often fell into one of three bad outcomes:
  - a false `online provider is not configured / offline model is not installed` dead-end;
  - explanations for single words saying explain was unavailable even though a local dictionary explanation path already existed;
  - non-English dictionary lookups surfacing source-language Kaikki glosses too early instead of giving a usable target-language result.
- Root causes:
  - `MlKitOfflineTranslationEngine` only translated when models were already downloaded;
  - `SafeOnlineTranslationEngine` only fell back if the pair was already marked available, so `AUTO` could route to `ONLINE_MT` and then die before on-device download even had a chance;
  - reader/OCR explain flows checked the global `translation_explain_enabled` toggle before trying the existing local single-word dictionary explanation;
  - `RoomDictionaryEngine` preferred direct target translations correctly, but when those were absent it still exposed bridge/source glosses too eagerly instead of trying to bridge through English.
- Changes made:
  - `MlKitOfflineTranslationEngine.translate(...)` now explicitly calls `downloadModelIfNeeded()` for explicit user translation actions;
  - `SafeOnlineTranslationEngine` now always attempts the offline engine as its safe fallback, instead of requiring `isLanguagePairAvailable(...) == true` first;
  - reader and OCR single-word explain paths now try local dictionary explanation before they honor the global explain toggle;
  - reader selected-text actions now expose `Explain` for single words even when the remote explain toggle is off, because local explanation still works;
  - `RoomDictionaryEngine` now does a bridge fallback through non-source translations (English first) and can translate a bridge term to the requested target language before surfacing raw bridge glosses.
- Practical outcome:
  - non-English translation requests are much less likely to stop at a false backend-unavailable message;
  - single-word explain works locally in reader and OCR even with the remote explain toggle disabled;
  - Kaikki-backed non-English dictionary results are more useful for target languages like Russian because English bridge translations are now used as an actual fallback path instead of just being shown as-is.
- Files:
  - [MlKitOfflineTranslationEngine.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/data/MlKitOfflineTranslationEngine.kt)
  - [SafeOnlineTranslationEngine.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/main/java/com/example/core/domain/translation/SafeOnlineTranslationEngine.kt)
  - [RoomDictionaryEngine.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/main/java/com/example/core/domain/translation/RoomDictionaryEngine.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
  - [OcrViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrViewModel.kt)
  - [SafeOnlineTranslationEngineTest.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/test/java/com/example/core/domain/translation/SafeOnlineTranslationEngineTest.kt)
  - [SafeLlmExplainEngineTest.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/test/java/com/example/core/domain/translation/SafeLlmExplainEngineTest.kt)
- Validation:
  - `cmd /c gradlew.bat :core-domain:compileDebugKotlin :feature-ocr:compileDebugKotlin :feature-reader:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c gradlew.bat :core-domain:testDebugUnitTest` -> `SUCCESS`

## 93. OCR screen now uses a single busy-state instead of overlapping actions

- After the non-English translation fix, the next production gap in `feature-ocr` was not data quality but interaction safety.
- Before this pass, the screen could still feel prototype-like under rapid input:
  - source/target chips stayed clickable during page OCR / translation;
  - switching between manual and image mode was still possible while work was running;
  - standalone image pick/clear could race with translation state;
  - the UI often disabled only the button that launched the current action, but not neighboring controls that could invalidate the in-flight state.
- Changes made:
  - `OcrViewModel` now has explicit busy-state helpers:
    - `isPageOperationRunning()`
    - `isManualScenarioBusy()`
    - `isSelectedBlockBusy()`
    - `isInteractionLocked()`
  - those helpers are enforced in command entry points:
    - `recognize()`
    - `translateVisiblePage()`
    - `translate()`
    - `loadStandaloneImage(...)`
    - `clearStandaloneImage()`
    - `openDictionaryForManualText()`
    - `explainManualText()`
    - `selectBlock(...)`
    - `explainSelectedBlock()`
    - `cleanupSelectedBlockText()`
    - `saveTranslationNote()`
  - `OcrScreen` now surfaces one clear busy card near the top with the active operation message:
    - recognizing page
    - translating page/manual text
    - translating selected block
    - cleaning OCR text
    - preparing explanation
  - while that busy-state is active, conflicting controls are disabled:
    - source/target language chips
    - standalone image pick/switch buttons
    - page action buttons
    - manual text input
    - manual dictionary/explain actions
    - overlay mode toggles
    - translated/recognized block card taps
    - selected block cleanup/explain actions
- Practical effect:
  - less chance to create overlapping jobs from rapid taps;
  - less chance to invalidate in-flight OCR/translation by changing scenario mid-operation;
  - the screen now feels more like one coherent tool state and less like several prototype controls sharing one page.
- Files:
  - [OcrViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrViewModel.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
- Validation:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 94. OCR screen now exposes language-pair readiness and can pre-download offline models

- After the busy-state pass, the last major production gap in `feature-ocr` was transparency:
  the screen still let the user pick languages and press translate, but it did not clearly explain what was actually available for the current pair.
- What was added:
  - `OcrUiState` now carries `translationAvailability` and `isPreparingOfflineModel`;
  - `OcrViewModel` now refreshes pair-readiness based on:
    - dictionary availability;
    - whether ML Kit can support the pair at all;
    - whether the offline model is already installed;
    - whether network is available right now;
    - whether phrase explain is enabled in settings.
- New OCR profile behavior:
  - the top profile card now includes a dedicated availability section for the current source/target pair;
  - it explains, in plain language, whether:
    - single-word dictionary fallback is available;
    - offline MT is already ready;
    - offline MT can be downloaded now;
    - offline MT needs network once;
    - offline MT is not supported for this pair;
    - single-word local explain is available;
    - phrase explain is enabled or disabled in settings.
- Offline preparation:
  - a new action `Prepare offline model` is available directly from the OCR profile card when the pair is supported and network is available;
  - `OfflineTranslationEngine` now has `prepareLanguagePair(...)`;
  - `MlKitOfflineTranslationEngine` implements it via explicit `downloadModelIfNeeded()`;
  - after preparation, the availability card refreshes and the user gets a localized success/failure message.
- Additional interaction hardening:
  - preparing the offline model now participates in the unified OCR busy-state, so language/mode switches and competing actions do not race with model setup.
- Practical effect:
  - OCR no longer behaves like a black box around language pairs;
  - users can see why a pair works or does not work before pressing translate;
  - first-use offline setup is now a visible, user-controlled step instead of an opaque side effect.
- Files:
  - [OfflineTranslationEngine.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/main/java/com/example/core/domain/translation/OfflineTranslationEngine.kt)
  - [MlKitOfflineTranslationEngine.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/data/MlKitOfflineTranslationEngine.kt)
  - [OcrViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrViewModel.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
  - [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
  - [OcrRuntimeText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrRuntimeText.kt)
- Validation:
  - `cmd /c gradlew.bat :feature-ocr:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c gradlew.bat :core-domain:testDebugUnitTest` -> `SUCCESS`

At this point the OCR block is code-complete for the current MVP/production scope:
- page OCR
- per-block translation
- page translation
- overlay / bubble preview
- tap-to-translate
- page/block cache
- block classification and filters
- cleanup and explain
- standalone manual mode
- pair readiness and offline model preparation
- busy-state and conflict-safe interactions

Remaining OCR work after this pass is no longer architectural implementation, but ordinary device-side QA and future product expansion.

## 95. OCR block sheet now supports repeat-OCR and direct block-level translation control

- После availability/busy-state passes самым слабым местом OCR оставалась карточка отдельного блока:
  она уже показывала original/translation/cleanup/explain, но всё ещё была больше "просмотром", чем рабочей карточкой.
- Что было добавлено:
  - `OverlayBlock` теперь хранит метаданные translation runtime:
    `translationMode`, `provider`, `isOffline`;
  - `OcrPageCache` переведён на schema version `3`, чтобы эти новые overlay-поля переживали disk cache корректно;
  - карточка выбранного блока теперь показывает:
    - detected language;
    - confidence chip (если confidence доступен);
    - translation meta chip (`Dictionary / Offline / Online`, `ML Kit`, и т.п.), когда перевод уже есть;
  - добавлены новые block-level actions:
    - `Translate block / Translate again`;
    - явные quick actions `Auto / Offline / Online` для повторного перевода конкретного блока;
    - `Repeat OCR` для повторного распознавания именно выбранного блока, а не всей страницы.
- Поведение `Repeat OCR`:
  - `OcrViewModel` теперь умеет вырезать crop вокруг bbox выбранного блока;
  - прогонять этот crop через `OcrRepository.detectBlocks(...)`;
  - выбирать лучший retried text;
  - если OCR реально улучшился, обновлять сам `recognizedBlock` в состоянии и cache;
  - stale translation для этого блока при этом выбрасывается, чтобы пользователь явно перевёл блок заново уже по обновлённому OCR.
- Практический эффект:
  - OCR block card теперь ближе к сценарию из ТЗ (`tap block -> inspect -> repeat OCR -> re-translate -> explain -> copy`);
  - проблемный баббл можно довести вручную, не гоняя заново всю страницу;
  - page-level overlay и disk cache остаются согласованными после такого локального исправления.
- Файлы:
  - [TranslationModels.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-model/src/main/java/com/example/core/model/TranslationModels.kt)
  - [BubbleReplacementPreviewPlanner.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/data/BubbleReplacementPreviewPlanner.kt)
  - [DefaultComicTranslationEngine.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/data/DefaultComicTranslationEngine.kt)
  - [OcrPageCache.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/data/OcrPageCache.kt)
  - [OcrRuntimeText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrRuntimeText.kt)
  - [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
  - [OcrViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrViewModel.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
- Валидация:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :core-model:compileDebugKotlin :feature-ocr:compileDebugKotlin :feature-reader:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :core-domain:testDebugUnitTest` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :app:assembleDebug` -> `SUCCESS`

## 96. OCR overlay settings now exist end-to-end and affect the real renderer

- После того как block workflow стал production-ready, в OCR оставался ещё один реальный незакрытый кусок из ТЗ:
  пользователь всё ещё не мог настраивать сам overlay переводов.
- Что было добавлено:
  - новые `DataStore`-ключи:
    - `OCR_OVERLAY_OPACITY`
    - `OCR_OVERLAY_FONT_SCALE`
    - `OCR_OVERLAY_STYLE`
  - `SettingsViewModel` и `SettingsUiState` теперь хранят эти настройки вместе с остальными translation/OCR preferences;
  - `SettingsScreen` получил отдельную карточку `Comic overlay` / `Overlay комиксов`:
    - opacity slider;
    - font scale chips (`85 / 100 / 115 / 130%`);
    - style chips (`Auto / Light / Dark`);
  - `OcrViewModel` читает эти настройки и держит их в `OcrUiState`;
  - `OcrScreen` прокидывает их в `OverlayRenderer`;
  - `OverlayRenderer` теперь реально применяет:
    - opacity scaling;
    - font size scaling;
    - forced light / dark overlay palette поверх current theme.
- Дополнительно:
  - русские OCR strings дочищены от смешанного `overlay`-жаргона (`Показать overlay`, `overlay mode` и т.п.).
- Практический эффект:
  - overlay теперь можно делать легче/плотнее без перепрошивки кода;
  - на ярких страницах можно усилить читабельность через `Light / Dark`;
  - на компактных устройствах можно отдельно поднять или уменьшить размер overlay-текста.
- Файлы:
  - [PreferencesKeys.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/preferences/PreferencesKeys.kt)
  - [SettingsViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsViewModel.kt)
  - [SettingsScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt)
  - [OcrViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrViewModel.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
  - [OverlayRenderer.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OverlayRenderer.kt)
  - [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
- Валидация:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-settings:compileDebugKotlin :feature-ocr:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :app:assembleDebug` -> `SUCCESS`

## 97. Explain layer now gives useful local explanations for phrases, and OCR blocks get neighboring context

- After the block workflow and overlay settings passes, the weakest remaining OCR/translation gap was still the explain layer:
  single words were already decent via local dictionary fallback, but phrases and OCR snippets still collapsed into a polite placeholder when no external explain provider existed.
- What was improved:
  - `SafeLlmExplainEngine` now injects `OfflineTranslationEngine` and tries a real local fallback before giving up;
  - if a direct translation is already available, the engine builds the explanation around that translation instead of showing a generic stub;
  - if no translated text is passed but an offline pair is already installed, it performs a local offline translation and uses that as the "direct meaning" line;
  - the explanation now includes structured local hints:
    - direct meaning;
    - source context (`book text`, `OCR text`, `comic block`);
    - tone heuristic (`question`, `emphasis`, `unfinished thought`, etc.);
    - low-confidence OCR warning when OCR confidence is weak;
    - optional `contextBefore / contextAfter` if the caller provides them.
- OCR-specific improvement:
  - `OcrViewModel.explainSelectedBlock()` now builds neighboring block context from the current page by sorting recognized blocks top-to-bottom / left-to-right;
  - the closest non-empty block before and after the selected one is passed into `ExplainRequest`;
  - this means the explain result for a comic bubble is no longer based only on the isolated line, but also sees short neighboring context from the page.
- Practical effect:
  - explain for phrases is now useful even without a real cloud/local LLM provider;
  - OCR block explain is noticeably less "floating in space" because it can reference what comes before/after on the page;
  - the system still stays honest: it is a local heuristic explain fallback, not a fake claim of deep LLM reasoning.
- Files:
  - [SafeLlmExplainEngine.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/main/java/com/example/core/domain/translation/SafeLlmExplainEngine.kt)
  - [SafeLlmExplainEngineTest.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/test/java/com/example/core/domain/translation/SafeLlmExplainEngineTest.kt)
  - [OcrViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :core-domain:testDebugUnitTest` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 98. Local explain is now always available for phrases, and OCR block context is visible in the UI

- After the local explain fallback became useful, the next UX problem was artificial gating:
  - reader and OCR still blocked phrase explanation behind the old `TRANSLATION_EXPLAIN_ENABLED` toggle;
  - OCR block context was passed into explain internally, but the user still could not see that context in the block sheet itself.
- What changed:
  - `ReaderViewModel` no longer disables phrase explain just because the future "advanced explain" toggle is off;
  - `OcrViewModel.explainManualText()` and `OcrViewModel.explainSelectedBlock()` now always allow the local explain path to run;
  - the toggle remains in settings, but its meaning is now "allow richer explain when an advanced provider is connected", not "disable all phrase explanations";
  - translation/OCR settings copy was rewritten to match this behavior and stop implying that explain is still unwired;
  - `OcrScreen` now shows a dedicated `Nearby context` card inside the selected block sheet, with short `Before / After` snippets from neighboring OCR blocks.
- Practical effect:
  - phrases no longer feel "randomly disabled" when only the advanced provider toggle is off;
  - OCR users can see the same surrounding context that the explain engine uses, which makes block-level explanation feel grounded in the page instead of detached.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
  - [OcrViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrViewModel.kt)
  - [OcrScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrScreen.kt)
  - [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
  - [SettingsScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin :feature-ocr:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-settings:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :core-domain:testDebugUnitTest` -> `SUCCESS`

## 99. Non-English single-word lookup is now more robust, including Polish

- A new functional bug report came in after the translation/OCR expansion:
  Polish and some other non-English single-word requests still failed too often even though the shipped dictionary assets existed.
- The root cause was not missing `pl` data:
  `dictionary_pl.dbpack` contained real entries/translations, but single-word flows trusted auto-detected source language too early and surfaced bridge/source glosses before trying a better dictionary path.
- What changed:
  - added `SingleWordDictionaryResolver` in `core-domain`;
  - reader and OCR single-word flows now try multiple source-language candidates:
    preferred source language, detected language, then supported translation languages as fallback candidates;
  - a match is accepted only if it contains a meaningful translation for the requested target language, instead of taking the first raw dictionary hit;
  - `RoomDictionaryEngine` bridge fallback was tightened so that when direct target translations are missing it first performs a real bridge lookup through English dictionary data before exposing raw bridge/source glosses.
- Practical effect:
  - Polish single-word translation/dictionary/explain is much less likely to fall into a dead-end or a source-language-only result;
  - the fix also benefits other non-English single-word paths (`fr`, `it`, `tr`, `pt`, etc.) because the issue was systemic, not Polish-only.
- Files:
  - [SingleWordDictionaryResolver.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/main/java/com/example/core/domain/translation/SingleWordDictionaryResolver.kt)
  - [SingleWordDictionaryResolverTest.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/test/java/com/example/core/domain/translation/SingleWordDictionaryResolverTest.kt)
  - [RoomDictionaryEngine.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-domain/src/main/java/com/example/core/domain/translation/RoomDictionaryEngine.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
  - [OcrViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :core-domain:testDebugUnitTest :feature-reader:compileDebugKotlin :feature-ocr:compileDebugKotlin` -> `SUCCESS`

## 100. Reader zoom now requests real higher render-quality tiers instead of only scaling the baseline bitmap

- The next active task moved from OCR to the open reader-pipeline/zoom-quality block.
- The main practical gap was that render-quality tiers already existed in the rendering stack, but the UI still mostly stretched the baseline bitmap during zoom.
- What changed:
  - `PageView` now observes base + `q2` + `q3` page flows and picks the best available bitmap for the current zoom scale;
  - `ReaderPageGestureSurface` exposes current scale so the image reader can request `renderQuality = 2/3` as zoom increases;
  - `WebtoonView` now does the same per page item, so pinch/double-tap zoom can switch to a higher-detail render tier instead of only magnifying the original decode;
  - webtoon zoom state is no longer keyed to the concrete bitmap instance, so swapping `q1 -> q2/q3` no longer risks resetting the active zoom just because a sharper bitmap arrived;
  - OCR export from the reader (`requestOcr()`) now prefers a high-detail current-page render (`q3` / `q2`) before falling back to the baseline bitmap, and writes the temporary page snapshot as lossless PNG instead of JPEG;
  - webtoon page-index updates are lightly debounced before calling `navigateTo()`, which reduces progress/preload churn while fast-scrolling.
- Practical effect:
  - zoom quality should look noticeably cleaner on image-based formats because the reader can swap in a denser decode tier;
  - OCR launched from the reader gets a sharper source image when a better current render is already available or can be quickly decoded;
  - webtoon scrolling should produce fewer redundant preload/progress updates.
- Files:
  - [PageView.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/components/PageView.kt)
  - [WebtoonView.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/components/WebtoonView.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 125. Reader pipeline / zoom pass is now complete enough to be treated as a finished stage

- The current reader pass is no longer a loose collection of perf tweaks; it now covers the practical runtime faults that were still leaking between page turns, mode switches, and fast book changes:
  - high-res zoom tiers (`q2 / q3`) are real and warm up predictably;
  - text formats are isolated from the bitmap/image pipeline;
  - `PAGE_RTL`, `DUAL_PAGE`, and explicit `WEBTOON` behavior are aligned more consistently;
  - stale open/export/note/bookmark jobs are constrained by latest-only/session-aware guards;
  - progress writes, preload windows, and decode jobs are deduplicated more aggressively.
- That means `Этап 3: оптимизация reader pipeline и качества zoom` can now be treated as complete in the main tasklist.

## 126. DjVu now has a pluggable backend path and a real library-facing placeholder cover

- `DjVu` is no longer modeled as just one hardcoded HTML placeholder reader.
- What changed:
  - `engine-formats` now has a dedicated `DjvuBackend` / `DjvuDocument` contract and a default `UnavailableDjvuBackend`;
  - `FormatFactory` injects that backend into `DjvuFormatReader`, so a future renderer can plug into the existing path without reworking the rest of the format factory;
  - `DjvuFormatReader` now reports backend status in its placeholder HTML/metadata and will automatically switch to bitmap page rendering once a real backend is provided;
  - `ComicRepository` now generates a dedicated placeholder cover for `DjVu`, so DjVu entries no longer show up in the library as blank coverless items while renderer work is still pending.
- Practical effect:
  - current builds still keep DjVu on the safe placeholder path;
  - the library/runtime path is cleaner and more future-ready;
  - the next renderer integration step can focus on decoding/rendering instead of also having to redesign the import/cover/reader flow.

## 127. DjVu renderer research is now recorded explicitly, so the next integration step starts from facts instead of memory

- Added:
  - [DJVU_RENDERER_RESEARCH.md](C:/Users/xmeta/projects/Mr.Comic/docs/active/DJVU_RENDERER_RESEARCH.md)
- The current conclusion is:
  - `DjVuLibre` is mature but GPL-based;
  - `DjVu.js` keeps the actual library under GPL v2 even though the viewer shell is more permissive;
  - `SnDjVu` looks licensing-friendly (`Apache-2.0 / MIT`) but is still explicitly "not yet useful".
- Practical effect:
  - the project now has a written explanation for why DjVu is still on a safe staged runtime path;
  - the next renderer attempt can start from the recorded tradeoffs instead of repeating the same research.

## 128. Library quote strings now go through AppStrings instead of local per-screen language helpers

- `LibraryScreen` still had one visible localization tail around the quote section:
  labels like `Quotes`, the empty-state hint, delete-title, and page label were still produced by local `when(language)` helpers in the screen file itself.
- What changed:
  - quote-section labels were moved into `AppStrings`;
  - `libraryQuotePageLabel(...)` is now a shared locale helper next to the other library plural/utility labels;
  - `LibraryScreen` now uses `strings.navLibrary` for the files section and `strings.libraryQuotes` for the quote section, instead of its own fallback translation helpers.
- Practical effect:
  - the quote tab is cleaner and more consistent with the rest of the app-level localization path;
  - the hardcoded-strings sweep for `LibraryScreen` is smaller and more honest now.

## 101. High-quality zoom tiers are now trimmed more aggressively when the reader moves on

- After higher render-quality zoom tiers were wired into the UI, the next practical risk was memory drift:
  once `q2/q3` pages start appearing during zoom, it is easy to quietly keep too many of them around while navigating.
- What changed:
  - `PagePreloader` now has `retainHighQualityPages(indices)` so the reader can explicitly keep only the current visible spread/page in high-quality form;
  - `ReaderViewModel.navigateTo(...)` calls that retention pass before starting the normal preload window;
  - dual-page mode keeps the current two-page spread, while other modes keep only the current page as the high-quality survivor set.
- Practical effect:
  - zoom quality still improves on demand, but high-res pages are less likely to accumulate around the session;
  - this keeps the new zoom-quality pass aligned with the older memory-pressure work instead of undoing it.
- Files:
  - [PagePreloader.kt](C:/Users/xmeta/projects/Mr.Comic/android/engine-rendering/src/main/kotlin/com/example/engine/rendering/preload/PagePreloader.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :engine-rendering:compileDebugKotlin :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 102. Reader now warms a higher-quality render tier after navigation, so zoom sharpens faster

- After wiring high-res zoom tiers and trimming their memory more aggressively, the next gap was responsiveness:
  the sharper `q2/q3` bitmap only started loading after the user had already zoomed, which made the first zoom moment feel softer than necessary.
- What changed:
  - `ReaderViewModel` now keeps a small `highQualityWarmupJob`;
  - after opening a comic or navigating to another page/spread, mid/high-end devices schedule a short delayed warmup of the current visible page:
    - `MID_RANGE` warms `q2`;
    - `HIGH_END` warms `q3`;
  - dual-page mode warms the visible spread, not just the left page;
  - warmup jobs are cancelled on re-navigation, open failure, and `onCleared()` so the reader does not keep stale background work alive.
- Practical effect:
  - zoom should sharpen faster on capable devices because the denser render tier is often already decoded by the time the user pinches/double-taps;
  - low-end/e-ink devices are left alone, so the optimization does not push them into unnecessary decode work.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 103. Reader progress saving is now quieter during rapid scrolling, but still flushes on exit

- After the zoom/render-quality passes, a remaining pipeline inefficiency was persistence churn:
  `saveProgress()` still wrote too eagerly while webtoon scrolling or scrubbing quickly through pages.
- What changed:
  - `ReaderViewModel` now debounces progress writes through `progressSaveJob`;
  - it skips scheduling when the page is already pending or already persisted;
  - the pending page is flushed explicitly in `onCleared()`, so the session still closes with the latest page stored.
- Practical effect:
  - fewer pointless Room writes during fast webtoon scrolling and slider scrubbing;
  - less DB churn without turning progress restore into a "best effort maybe later" feature.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 104. PagePreloader now deduplicates in-flight decodes for the same page/quality

- Once zoom tiers and warmup were added, another hidden inefficiency became more likely:
  the same page could be requested concurrently by preload, warmup, and UI collection paths before it ever reached the cache.
- What changed:
  - `PagePreloader` now tracks `inFlightLoads` keyed by `(pageIndex, renderQuality)`;
  - concurrent requests for the same page/quality now await the same deferred decode instead of starting parallel renders;
  - `preloadAround()` was switched to go through `loadPage(...)` so it also benefits from the same dedupe path;
  - in-flight decode jobs are cancelled when the preloader is fully cleared.
- Practical effect:
  - fewer redundant image/PDF decodes under rapid navigation and zoom;
  - the reader pipeline is less likely to waste CPU and I/O when several code paths converge on the same page at once.
- Files:
  - [PagePreloader.kt](C:/Users/xmeta/projects/Mr.Comic/android/engine-rendering/src/main/kotlin/com/example/engine/rendering/preload/PagePreloader.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :engine-rendering:compileDebugKotlin :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 105. Reading-mode switches now resync preload/warmup/note/progress instead of only mutating UI state

- Another reader-pipeline gap was mode switching:
  `applyReadingMode()` changed `readingMode/currentPage`, but it did not always immediately realign the rest of the runtime pipeline around that new anchor page/spread.
- What changed:
  - `ReaderViewModel` now has a shared `syncReaderPosition(page, mode, persistProgress)` helper;
  - `navigateTo(...)` uses that helper instead of reimplementing the side effects inline;
  - `applyReadingMode(...)` now also runs the same sync path after aligning the current page for dual-page mode;
  - visible pages for the current mode are resolved through a shared `visiblePagesFor(...)` helper used by preload/high-quality retention/warmup.
- Practical effect:
  - switching between `PAGE_LTR / PAGE_RTL / DUAL_PAGE / WEBTOON` keeps preload, high-quality retention, OCR-ready page notes, and persisted progress aligned with the new runtime anchor page;
  - dual-page alignment is no longer just a cosmetic `currentPage` rewrite.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 106. Reader preload now anchors on the full visible spread, not only the left/anchor page

- Another remaining reader-pipeline gap was spread-aware preloading:
  even after mode-sync improvements, `PagePreloader.preloadAround(...)` still built its window from a single anchor page.
  In dual-page mode that meant "current left page plus N ahead" instead of "whole visible spread plus N ahead".
- What changed:
  - `PagePreloader` now has a `visiblePages` overload for `preloadAround(...)`;
  - the preload window is built from the first/last actually visible pages instead of only one page index;
  - initial book open now loads the whole visible spread immediately instead of only the left page;
  - `ReaderViewModel.syncReaderPosition(...)` now passes the resolved visible pages into preload as well.
- Practical effect:
  - dual-page mode behaves more like a real spread pipeline;
  - the first open and later navigation are less likely to leave the right page one step behind the left page in runtime readiness.
- Files:
  - [PagePreloader.kt](C:/Users/xmeta/projects/Mr.Comic/android/engine-rendering/src/main/kotlin/com/example/engine/rendering/preload/PagePreloader.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :engine-rendering:compileDebugKotlin :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 107. Page translation notes now use a latest-only load path

- A smaller but real runtime issue remained around `pageTranslationNote`:
  rapid navigation could allow a slow note read from page A to arrive after the user had already moved to page B.
- What changed:
  - `ReaderViewModel` now tracks `pageTranslationNoteJob`;
  - every new note request cancels the previous one;
  - the visible note is cleared immediately while the new page note loads;
  - the result is only applied if the requested page is still the current page when the read completes.
- Practical effect:
  - stale translation-note content should no longer briefly flash from the previous page during fast reader navigation;
  - note loading is now aligned with the same "latest wins" direction already applied to progress and preload work.
- Files:
  - [ReaderViewModel.kt](C:/Users\xmeta\projects\Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 109. High-quality zoom retention now follows the actual zoom focus, not only the navigation anchor

- Another remaining reader-pipeline gap was hidden high-resolution memory drift:
  `q2/q3` pages were already trimmed around navigation, but in practice webtoon zoom and page zoom could still load higher tiers for a page that was no longer the current navigation anchor.
- What changed:
  - `ReaderViewModel` now exposes `setHighQualityFocusPages(indices)` and deduplicates retention updates through `lastRetainedHighQualityPages`;
  - `syncReaderPosition(...)` still resets retention to the visible navigation page/spread after normal page changes;
  - `PageView` now reports a high-quality focus set while the current page/spread is actually zoomed;
  - `WebtoonView` now reports the real `zoomedPageIndex`, so high-resolution retention follows the page the user is enlarging instead of whichever page is currently first visible in the list.
- Practical effect:
  - zoom quality still sharpens through `q2/q3`, but stale high-resolution pages are less likely to linger after the user zooms a different page in webtoon or exits zoom without changing the navigation anchor;
  - this closes another quiet memory-pressure gap in the current reader pipeline pass.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
  - [PageView.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/components/PageView.kt)
  - [WebtoonView.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/components/WebtoonView.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin :engine-rendering:compileDebugKotlin` -> `SUCCESS`

## 110. PagePreloader now skips redundant restarts of the same base preload window

- Another remaining reader-pipeline inefficiency was not decode duplication itself, but window churn:
  even when the effective base preload window had not changed, `preloadAround(...)` still cancelled the old job and rebuilt the same request.
- What changed:
  - `PagePreloader` now tracks an `activePreloadWindow` keyed by reader instance + `start/end` page range;
  - if the exact same window is requested again and all base pages are already cached, it simply rehydrates `_loadedPages` and returns instead of restarting work;
  - if the exact same window is still actively loading, it returns early and lets the in-flight preload continue.
- Practical effect:
  - fewer pointless preload cancellations/restarts during repeated sync calls that resolve to the same page window;
  - the reader pipeline now wastes less work not only on duplicate decode requests, but also on duplicate preload scheduling.
- Files:
  - [PagePreloader.kt](C:/Users/xmeta/projects/Mr.Comic/android/engine-rendering/src/main/kotlin/com/example/engine/rendering/preload/PagePreloader.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :engine-rendering:compileDebugKotlin :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 108. Quote notebook added as a separate library section, with reader save actions and backup support

- A dedicated quote pipeline is now in the project, separate from normal library files:
  - new Room model/table: `SavedQuote` / `saved_quotes`;
  - new DAO/repository: `QuoteDao`, `QuoteRepository`;
  - `AppDatabase` bumped to version `2` with `MIGRATION_1_2`.
- Reader-side quote saving is now wired end-to-end:
  - quotes can be saved from the selected-text action sheet;
  - quotes can be saved from the selected-text translation sheet;
  - text selection in the WebView now exposes a direct `Save quote` action alongside `Translate / Dictionary / Explain`;
  - save feedback is emitted through `quoteSaveMessages` and shown as a toast.
- Library-side separation is now explicit:
  - `LibraryContentSection` splits the library into `FILES` and `QUOTES`;
  - quote search/listing is powered by `QuoteRepository`;
  - tapping a quote reopens the reader on the linked book and stored page;
  - long-press on a quote opens delete.
- Backup/import now includes quotes:
  - backup JSON version was raised to `5`;
  - quotes are exported/restored alongside comics, settings, and reading progress.
- Files:
  - [SavedQuote.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-model/src/main/java/com/example/core/model/SavedQuote.kt)
  - [QuoteDao.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/db/QuoteDao.kt)
  - [AppDatabase.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/db/AppDatabase.kt)
  - [AppDatabaseMigrations.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/db/AppDatabaseMigrations.kt)
  - [QuoteRepository.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/repository/QuoteRepository.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
  - [ReaderScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt)
  - [ReaderUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderUiText.kt)
  - [LibraryViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryViewModel.kt)
  - [LibraryScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt)
  - [SettingsViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsViewModel.kt)
  - [AppNavigation.kt](C:/Users/xmeta/projects/Mr.Comic/android/app/src/main/java/com/example/mrcomic/navigation/AppNavigation.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin :feature-library:compileDebugKotlin :feature-settings:compileDebugKotlin :app:assembleDebug` -> `SUCCESS`

## 111. Reader state now resets cleanly across books, and redundant same-page/same-mode syncs are skipped

- Another remaining reader-pipeline tail was state stickiness:
  some internal reader state was keyed only by page index or mode, not by the actual comic,
  so reopening another book on the same page could inherit stale zoom/list state.
- What changed:
  - `PageView` now keys its zoom/reset state and animated content by `comic.id` as well as page/mode;
  - `WebtoonView` now keys `LazyListState`, `zoomedPageIndex`, per-item zoom scale, and reset tokens by `comic.id`;
  - `ReaderViewModel.navigateTo(...)` now returns early when the request points to the already active page and there is no inline selection state to clear;
  - `ReaderViewModel.setReadingMode(...)` / `applyReadingMode(...)` now no-op when the requested mode is already active and does not change the aligned page.
- Practical effect:
  - opening a different book on page `0` should no longer inherit the previous book's zoom/pan/list state;
  - repeated taps on the already active reading mode should no longer trigger unnecessary `syncReaderPosition(...)`, preload, warmup, or progress-save work;
  - repeated same-page navigation requests waste less work and should feel calmer around fast mode toggles and re-entry.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
  - [PageView.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/components/PageView.kt)
  - [WebtoonView.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/components/WebtoonView.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 112. Reader no longer carries stale TOC, bookmarks, notes, or inline footnotes into the next book

- Another repeat-entry tail was stale reader-side metadata:
  opening a new book could briefly keep TOC, bookmark, note, or inline-footnote state from the previous one,
  and `loadToc()` even left the old TOC intact when the next book simply had no TOC at all.
- What changed:
  - `openComic(...)` now clears `currentHtmlContent`, `tableOfContents`, `bookmarkedPages`, `pageTranslationNote`, TOC sheet visibility, and inline-footnote state before initializing the next reader session;
  - `loadToc()` now captures the current `FormatReader` instance and always writes the resulting TOC list back, including the empty case;
  - TOC updates are ignored if the reader instance has already changed underneath the async load.
- Practical effect:
  - new books should no longer flash the previous book's TOC/bookmarks/note while loading;
  - books without a TOC no longer inherit the old TOC just because the next `getTableOfContents()` call returned empty.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 113. Async bookmark and page-note loads are now bound to the active comic, not only to the active page

- There was still one quiet re-entry race left:
  `loadBookmarks(...)` and `loadPageTranslationNote(...)` were async, but they only partially checked current state.
  In particular, `pageTranslationNote` only guarded by page index, so a fast switch to another book on the same page number could still apply the old book's note.
- What changed:
  - `openComic(...)` now passes the explicit `comic.id` and page count into bookmark/note loading;
  - `loadBookmarks(...)` validates that the active comic is still the same before writing bookmark state back;
  - normalized bookmark saves now target the original `comicId` explicitly instead of whichever comic happens to be active later;
  - `loadPageTranslationNote(...)` now captures an explicit `comicId` and requires both `comic.id` and page index to still match before applying the loaded note.
- Practical effect:
  - fast book switches should no longer import bookmark or translation-note state from the previous book when page numbers happen to line up;
  - bookmark normalization during load is less likely to write into the wrong comic preference bucket.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 114. Reader page cache is now session-aware across books, and text-page HTML updates are latest-only

- A deeper reader-pipeline collision still remained underneath the UI:
  `PagePreloader` already keyed preload windows by reader instance, but its actual bitmap cache keys and in-flight decode keys were still only `page + quality`.
  That meant two different books could theoretically collide internally if they hit the same page index during a fast switch.
- What changed:
  - `PagePreloader.PageCacheKey` now includes `readerToken`;
  - bitmap cache keys are now `readerToken + page + quality`, not only `page + quality`;
  - in-flight decode deduplication is now also per reader session, not globally per page index;
  - stale decode completions from a previous reader session are dropped instead of being written back into the active cache;
  - `_loadedPages` and high-quality eviction now operate per active reader token;
  - `ReaderViewModel.loadPage(...)` now treats `currentHtmlContent` as latest-only state:
    HTML and `currentHtmlContent = null` updates are only applied if the same comic and same page are still active when the async read completes.
- Practical effect:
  - fast switches between books should no longer risk sharing a page bitmap just because both sessions were on page `0/1/...`;
  - text-reader pages should no longer briefly revert to older HTML content after a quick page jump;
  - this closes one of the last serious "same index, different session" holes in the current reader pipeline pass.
- Files:
  - [PagePreloader.kt](C:/Users/xmeta/projects/Mr.Comic/android/engine-rendering/src/main/kotlin/com/example/engine/rendering/preload/PagePreloader.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :engine-rendering:compileDebugKotlin :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 115. Dual-page anchoring is now normalized end-to-end, and opening mode respects the new book's format

- Another subtle reader-pipeline inconsistency was dual-page anchoring:
  page normalization to an even spread anchor existed in several places, but not from one shared rule.
  That left room for odd-page spread anchors during open/navigate flows and a concrete text-book bug:
  after reading a comic in `DUAL_PAGE`, opening a text book could silently align the requested page backward to an even spread page before the text-reader portrait correction happened.
- What changed:
  - `ReaderViewModel` now uses a shared `normalizePageForMode(...)` helper for:
    opening a book, normal navigation, visible-page computation, and reading-mode switches;
  - `nextPage()/prevPage()` now step by `2` in `DUAL_PAGE`, so normalization does not trap them on the same spread;
  - `effectiveOpeningModeFor(format)` now chooses the initial mode from the new book's actual format and current orientation:
    text formats open in the portrait reader mode, while image formats can still open in landscape spread mode;
  - `openComic(...)` now applies that effective opening mode before choosing `startPage`;
  - `loadPage(...)` now captures the current `FormatReader` before launching async work and refuses to apply results if that reader is no longer active;
  - `ReaderScreen` now keys local UI state such as the brightness row and eye-rest reminder dialog by `comic.id`, so those local surfaces do not bleed into the next book.
- Practical effect:
  - dual-page reading should no longer quietly operate from an odd-page anchor;
  - text books opened after comics should land on the requested/stored page, not on the previous spread's left page;
  - repeated entry into another book should feel cleaner both in underlying page selection and in small local UI state.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
  - [ReaderScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 116. Reader mode switches now animate more honestly, and landscape auto-spread no longer overrides an explicit WEBTOON choice

- Another remaining reader-pipeline tail was that some transitions still *looked* like ordinary page flips even when they were not:
  switching between single-page and dual-page layout, or jumping a long distance, could still reuse the slide animation meant for adjacent page navigation.
  There was also a mode-consistency issue on wide landscape screens:
  the reader could still auto-push an image-based book back into `DUAL_PAGE` even when the user had explicitly chosen `WEBTOON`.
- What changed:
  - `PageView` now uses a cut transition when:
    - the comic identity changes,
    - the layout mode changes (`single <-> dual`),
    - the page jump is larger than a near-neighbor change;
  - `ReaderViewModel.onOrientationChanged(...)` now auto-enters `DUAL_PAGE` only for page-based portrait modes (`PAGE_LTR / PAGE_RTL`);
  - `effectiveOpeningModeFor(...)` now preserves `WEBTOON` across landscape reopen while still allowing page-based modes to auto-open in spread mode on wide screens.
- Practical effect:
  - mode switches and large jumps should feel less like a fake page-flip and more like a layout/state change;
  - landscape image readers should no longer silently override a deliberate `WEBTOON` choice just because the screen is wide.
- Files:
  - [PageView.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/components/PageView.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 117. Pending reader progress saves are now bound to the comic session, not just the page index

- One more subtle reader-pipeline race remained around debounced progress persistence:
  `saveProgress()` delayed writes by a few hundred milliseconds, but the pending state only stored a page number.
  If the user switched books before that debounce completed, the later flush could end up resolving against the new active comic.
- What changed:
  - `ReaderViewModel` now stores pending progress as an explicit `(comicId, page, totalPages)` payload;
  - last-persisted progress is also tracked as `(comicId, page)`, not only a bare page number;
  - `openComic(...)` now flushes any pending progress write before swapping to the next reader session and cancels the old debounce job afterward.
- Practical effect:
  - quick switches between books should no longer risk writing the previous book's pending page into the new book;
  - this also makes the debounce path more honest under fast reopen / rapid library navigation, because the old session is finalized before the next one takes over.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 118. Delayed high-quality warmup is now latest-only, so stale q2/q3 decodes do not keep trailing behind quick navigation

- Another quiet reader-pipeline inefficiency remained in the zoom-quality pass:
  after navigation the app intentionally delayed high-quality warmup for a short moment,
  but that job still only relied on cancellation timing.
  Under very quick page/mode/book switches, an older warmup could still wake up and start decoding no-longer-relevant `q2/q3` pages.
- What changed:
  - `scheduleHighQualityWarmup(...)` now captures the active `comicId`, `FormatReader`, reading mode, and target visible pages;
  - after the warmup delay it re-validates that the same reader session, same mode, and same visible-page set are still active before decoding anything.
- Practical effect:
  - rapid page turns, mode switches, or book switches should waste less background work on stale high-resolution pages;
  - this reduces another source of quiet decode spikes while keeping the warmup benefit when the user actually stays on the page.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 119. Text-reader no longer runs the bitmap preload/high-res zoom pipeline unnecessarily

- Another quiet inefficiency in the current reader pass was that text-based books still flowed through parts of the image pipeline:
  `syncReaderPosition(...)` always tried bitmap preload, high-quality retention, and warmup even for EPUB/FB2/TXT/HTML/Markdown/RTF/MOBI/AZW3/DOCX/ODT, where those bitmap tiers are meaningless.
- What changed:
  - `ReaderViewModel` now distinguishes between:
    - formats that support bitmap preload at all;
    - formats that support true high-res zoom tiers;
  - text books still load their current HTML page through `loadPage(...)`, but they no longer schedule bitmap preload, retain high-quality image tiers, or warm up `q2/q3` pages.
- Practical effect:
  - text-reader navigation wastes less background work;
  - switching between image books and text books should carry less unnecessary preload/high-quality churn from the image pipeline;
  - this keeps the current zoom-quality pass focused on the formats that can actually benefit from it.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 120. Text-reader opening mode is now isolated from WEBTOON history, so text books no longer inherit a stale comic-only mode

- Another subtle reader-state leak remained around opening modes:
  the app already remembered the last non-dual portrait mode in `portraitReadingMode`, but that also included `WEBTOON`.
  After reading an image comic in `WEBTOON`, opening a text book could therefore restore a comic-only portrait mode into the text reader.
- What changed:
  - `ReaderViewModel` now separately tracks the last page-based portrait mode (`PAGE_LTR / PAGE_RTL`) in `portraitPagedReadingMode`;
  - text formats now open from that page-based portrait mode instead of the broader `portraitReadingMode`;
  - `onOrientationChanged(...)` now collapses text readers from `DUAL_PAGE` back to the page-based portrait mode;
  - `restoreReaderPreferences()` no longer forces `DUAL_PAGE` in landscape when the stored mode is `WEBTOON`.
- Practical effect:
  - EPUB/FB2/TXT and other text-based books should stop inheriting a stale `WEBTOON` mode from a previous image-based session;
  - starting the app in landscape with a stored `WEBTOON` preference no longer routes reader state through an unnecessary `DUAL_PAGE` detour.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 121. Text-reader opening path is now cleaner: no first-open image preload, and requested page overrides are single-use

- Two smaller but real reader-pipeline leaks were still left in the book-opening path:
  - text books no longer used bitmap preload during normal navigation, but `openComic(...)` still called `preloadAround(...)` once on first open;
  - the navigation `page` argument was stored as a long-lived `requestedPage`, which meant a one-time deep-link/quote/restore page override could keep affecting later book opens inside the same `ReaderViewModel` session.
- What changed:
  - `openComic(...)` now skips `PagePreloader.preloadAround(...)` for text formats as well, so the first open path matches the later text-reader navigation path;
  - `requestedPage` was replaced with a mutable `pendingRequestedPage`, which is consumed once when the opening page is resolved and then cleared.
- Practical effect:
  - the very first open of EPUB/FB2/TXT/HTML/Markdown/RTF/MOBI/AZW3/DOCX/ODT no longer kicks the bitmap preload pipeline by inertia;
  - page overrides coming from quote jumps or navigation args now behave like a one-shot instruction instead of quietly biasing later opens in the same reader session.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 122. Reader tap zones now respect PAGE_RTL consistently, instead of only the toolbar direction toggle

- Another user-visible inconsistency remained in the reader:
  the expanded toolbar already knew about `PAGE_RTL`, but the actual left/right tap zones still always treated the left edge as "previous" and the right edge as "next".
- What changed:
  - `ReaderScreen` now derives shared `navigateBackward` / `navigateForward` lambdas from the current mode and page step;
  - left/right page taps are routed through `onLeftZoneTap` / `onRightZoneTap`, which swap direction automatically for `PAGE_RTL`;
  - this is applied consistently to:
    - `HtmlPageView`;
    - `PageView`;
    - `WebtoonView`.
- Practical effect:
  - when the user switches reader direction to `PAGE_RTL`, tap-zone navigation now matches that choice everywhere, not only in the toolbar controls;
  - text books and image readers should feel directionally consistent again.
- Files:
  - [ReaderScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 123. Reader opening/export flow is now latest-only, and page-scoped UI state no longer leaks across books/pages

- Another group of subtle reader issues remained around session transitions:
  - opening one book and then another in quick succession still allowed the older open coroutine to keep running too far;
  - reader preferences were restored in parallel with the first open, which meant a book could initially start on defaults and only later get corrected by stored preferences;
  - `requestOcr()` from the reader could still finish after the user had already switched page/book and emit an OCR launch for stale context;
  - some UI state was still leaking too far:
    `Text settings` could survive a book switch, and inline footnotes could survive a page change.
- What changed:
  - `ReaderViewModel` now tracks `loadComicJob` + `currentOpenRequestToken`, so the latest open request wins and stale open paths stop updating state;
  - `restoreReaderPreferences()` is now a suspend initialization step and runs before the first encoded `comicId/uri` open request is started;
  - `requestOcr()` now captures `(reader, comicId, page)` up front, re-validates that the same context is still active before emitting, and writes to a unique temp PNG instead of reusing one fixed cache file;
  - `openComic(...)` now clears `showTextSettings`;
  - `navigateTo(...)` now also clears `footnotePopup` / resets `FootnotePresentation`, so inline notes do not linger on the next page.
- Practical effect:
  - rapid switches between books should no longer let the old open request repaint the new session late;
  - the first opened book now starts from restored reader preferences more predictably;
  - OCR launched from the reader should track the page the user actually requested, instead of occasionally opening stale context after a fast switch;
  - text-settings and inline footnotes now behave more like page/book-scoped UI, not sticky global reader state.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 124. Stale open requests are now checked around the destructive phases of `openComic(...)`, not only at the edges

- After adding latest-only open requests, one more subtle race still remained:
  if a new book-open request arrived in the tiny window after the old request had already passed its first token check,
  the old request could still briefly reach destructive steps like `clearPages()` / `formatReader.close()` before the next suspension point.
- What changed:
  - `openComic(...)` now re-checks the active open-request token before and after the destructive phases:
    - after reader UI is put into loading state;
    - before `pagePreloader.clearPages()` / `formatReader.close()`;
    - before/after `resolveReadablePath(...)`;
    - before `getPageCount()`.
- Practical effect:
  - quick switches between books are less likely to let an already-stale open request tear down the newly active reader session;
  - this makes the latest-only reader opening path more robust under very fast library taps / reopen flows.
- Files:
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin` -> `SUCCESS`

## 125. Library settings text layer was tightened further, and quote-save errors no longer use a local inline language switch

- The next cleanup pass stayed in the remaining localization debt instead of starting a new feature.
- `SettingsScreen` still had one honest chunk of library-specific text living outside the centralized `LibrarySectionText`:
  - library tab labels/hints;
  - the `Image` background option label;
  - saved-theme card labels;
  - group-by labels.
- `ReaderViewModel` also still had one local `when (language)` just for the quote-save failure path.
- What changed:
  - `LibrarySectionText` now also owns:
    - `tabLabels`;
    - `tabHints`;
    - `imageBackgroundOption`;
    - `groupByLabels`;
    - saved-theme labels (`title`, `hint`, `slot prefix`, `save/apply/clear/empty`);
  - the library subsection inside `SettingsScreen` now reads those values directly instead of building more inline `when (uiState.appLanguage)` maps;
  - `LibraryThemePresetCard` now gets the saved-theme slot prefix from the section text instead of constructing its own local language switch for `Slot N`;
  - `ReaderUiText` gained `quoteSaveFailed`, and `ReaderViewModel` now emits that shared text instead of keeping an inline `when (language)` for quote-save failures.
- Practical effect:
  - the library settings screen is now more internally consistent and less likely to regress into mixed-language labels when that section changes again;
  - quote saving in the reader now follows the same text-layer path as the rest of the quote actions.
- Files:
  - [SettingsScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt)
  - [ReaderUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderUiText.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-reader:compileDebugKotlin :feature-settings:compileDebugKotlin` -> `SUCCESS`

## 126. The large UI hardcoded-string sweep is now finished as a package, not just "almost done"

- One more pass was used to verify the remaining debt honestly instead of leaving the task in a permanent `almost done` state.
- What changed:
  - `SettingsScreen` color swatches no longer carry unused Russian color names in `COLOR_PALETTE`; the palette is now stored as plain ARGB values because those labels were not rendered anywhere;
  - the raw `✕` in the clear-color swatch was replaced with a normal `Close` icon;
  - a final grep-based sweep was run across `ReaderScreen`, `LibraryScreen`, and `SettingsScreen` to separate real remaining user-facing literals from:
    - centralized text-layer definitions;
    - intentional symbols such as `A`, `+`, `−`, emoji badges;
    - utility formatting logic.
- Practical conclusion:
  - the broad localization/hardcoded-string cleanup for those three screens is now considered complete;
  - future findings in those areas should be treated as normal regression bugs, not as an unfinished project-wide sweep.
- Files:
  - [SettingsScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt)
  - [TASKLIST.md](C:/Users/xmeta/projects/Mr.Comic/TASKLIST.md)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-settings:compileDebugKotlin :feature-reader:compileDebugKotlin :feature-library:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :app:assembleDebug` -> `SUCCESS`

## 127. Settings runtime backup/cache/repair messages now follow the app language instead of one hardcoded language

- After the large screen-level sweep was marked complete, one practical localization tail was still left in live runtime behavior:
  `SettingsViewModel` still emitted hardcoded messages for cache clearing, backup export/import, access repair, and the fallback backup title `Untitled`.
- What changed:
  - `SettingsViewModel` now routes those runtime messages through language-aware helpers keyed off `uiState.appLanguage`;
  - localized helpers now cover:
    - cache clear success / already empty;
    - export success / export failure;
    - import read failure / import summary / import failure;
    - access rebind summary / rebind failure;
    - fallback untitled label used while parsing backup entries.
- Practical effect:
  - the backup/maintenance section is now much less likely to regress into mixed-language runtime status toasts/messages even though its screen labels were already cleaned up;
  - importing backups with missing titles no longer silently falls back to a single-language `Untitled` label.
- Files:
  - [SettingsViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-settings:compileDebugKotlin :app:assembleDebug` -> `SUCCESS`

## 128. Quote notebook is now safer as a section separate from files, instead of behaving like a broken library link when the source book is unavailable

- Once the quote notebook existed as its own library section, one stabilizing gap became obvious:
  quotes intentionally outlive the normal file list, but the UI still treated every quote card as a guaranteed working deep-link back into a book.
- What changed:
  - `QuoteDao` / `ComicRepository` now refresh the saved `comicTitle/comicPath` snapshot for quotes when the linked comic changes via:
    - metadata edit / rename;
    - backup restore;
    - SAF access repair / path rebinding;
  - `LibraryUiState` now exposes which quote sources are currently available in the library;
  - `QuoteCard` now shows a localized `source unavailable` state for orphaned/unavailable sources and stops pretending that the card is a working reopen action in that case;
  - long-press delete still remains available, so the quote notebook can keep independent quotes without forcing the user into a broken tap path.
- Practical effect:
  - quotes remain a separate notebook instead of being silently tied to normal file rows;
  - when the source book is temporarily missing, the quote card now behaves honestly instead of looking like a valid reopen link;
  - after restore/rebind/metadata changes, quote cards stay in sync with the current comic title/path snapshot.
- Files:
  - [QuoteDao.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/db/QuoteDao.kt)
  - [QuoteRepository.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/repository/QuoteRepository.kt)
  - [ComicRepository.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/repository/ComicRepository.kt)
  - [LibraryViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryViewModel.kt)
  - [LibraryScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt)
  - [AppStrings.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/locale/AppStrings.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :core-data:compileDebugKotlin :feature-library:compileDebugKotlin :app:assembleDebug` -> `SUCCESS`

## 129. App-shell localization is now finished as a real package, not left half in viewmodels and half in Russian payload objects

- After the screen-level sweep and the runtime `SettingsViewModel` cleanup, the next honest tail was the app shell itself:
  `ContinueScreen`, app icon settings, crash report UI, and app-load error fallback still needed to behave as one localized layer instead of a loose collection of helpers plus a few hidden Russian payload objects.
- What changed:
  - `ContinueScreen` now consistently passes the shared `ContinueScreenText` model into its empty-state cards instead of leaving a half-finished refactor behind;
  - `AppIconManager` no longer stores localized `name/description` strings inside the icon registry, so the manager only carries stable icon ids and preview resources, while UI-facing names/descriptions come from the app-level text layer;
  - `MainActivity` now normalizes the stored app language before providing `LocalStrings` and before showing app-load fallback messages, so shell-level error UI follows the same language normalization path as the rest of the app;
  - the app-shell text helper layer remains the single source of truth for:
    - continue screen copy;
    - app icon screen labels and runtime failures;
    - crash report share/continue labels;
    - app load-error fallback title/body.
- Practical effect:
  - the app shell is less likely to regress into mixed-language UI during future refactors;
  - launcher icon metadata is now structurally neutral instead of carrying Russian display text in a non-UI manager;
  - the continue screen refactor is stabilized instead of silently depending on recomputing text inside every empty-state card.
- Files:
  - [ContinueScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/app/src/main/java/com/example/mrcomic/home/ContinueScreen.kt)
  - [AppIconManager.kt](C:/Users/xmeta/projects/Mr.Comic/android/app/src/main/java/com/example/mrcomic/icons/AppIconManager.kt)
  - [MainActivity.kt](C:/Users/xmeta/projects/Mr.Comic/android/app/src/main/java/com/example/mrcomic/MainActivity.kt)
  - [AppModuleText.kt](C:/Users/xmeta/projects/Mr.Comic/android/app/src/main/java/com/example/mrcomic/ui/AppModuleText.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :app:compileDebugKotlin` -> `SUCCESS`

## 130. The file library now separates graphic volumes from text books instead of mixing them into one uninterrupted shelf

- A practical library UX issue appeared once both comics and books lived in the same file section:
  even with the existing content-aware card styling, mixed shelves still read as one continuous stream, so manga/webtoons/comics and text books visually blended together too easily.
- What changed:
  - `LibraryViewModel` gained a lightweight `LibrarySectionDividerItem` model and a `LibraryFileSection` enum;
  - flat file lists now split into:
    - graphic volumes (`CBZ/CBR/ZIP/RAR/7Z/TAR/FOLDER/PDF and other non-text reading formats`);
    - books (`EPUB/FB2/TXT/HTML/Markdown/RTF/MOBI/AZW3/DOCX/ODT`);
  - folder mode also uses the same split for direct files inside the currently opened folder, while folder cards themselves still stay above the file rows;
  - `LibraryScreen` renders those dividers as full-width labeled separators inside the existing grid/list pipeline instead of introducing a parallel render path.
- Practical effect:
  - mixed libraries no longer feel like one visually confused shelf;
  - users can scan graphic reading material and text books as separate bands without changing filters first;
  - the behavior stays compatible with existing sorting, folder navigation, and the separate quote notebook section.
- Files:
  - [LibraryViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryViewModel.kt)
  - [LibraryScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt)
  - [AppStrings.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/locale/AppStrings.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-library:compileDebugKotlin :app:assembleDebug` -> `SUCCESS`

## 131. Quote notebook now behaves like its own library mode instead of inheriting file-shelf stats and controls

- After separating `Files` and `Quotes`, one UX mismatch still remained:
  the quote section inherited the file library shell too literally, so it still showed comic/completion stats and could keep file controls/filter sheet open even though those controls were not relevant there.
- What changed:
  - entering the `Quotes` section now automatically closes the file controls strip and the filter sheet;
  - the header stats block is now section-aware:
    - `Files` keeps the normal library stats bar;
    - `Quotes` shows its own quote stats bar with:
      - total saved quotes;
      - distinct source count.
- Practical effect:
  - the quote notebook now feels more like a separate reading-memory section and less like “the file library with the wrong numbers”;
  - users no longer switch into quotes and still see file/completion stats from the other mode.
- Files:
  - [LibraryScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt)
  - [AppStrings.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/locale/AppStrings.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-library:compileDebugKotlin :app:assembleDebug` -> `SUCCESS`

## 132. Quote notebook no longer shows file-only top bar controls and badges

- One more UX mismatch remained after the quote-specific stats pass:
  the top bar still belonged to the file library too literally, so the quote section could still expose the file hamburger badge and file-only controls when those actions were irrelevant there.
- What changed:
  - `LibraryTopBar` is now section-aware via `LibraryContentSection`;
  - in `Quotes` mode:
    - the title switches to `Quotes`;
    - file-only actions disappear instead of merely being auto-closed:
      - hamburger/filters badge;
      - view toggle;
      - thumbnail mode;
      - add file/folder menu.
  - the filter sheet is additionally guarded so it cannot render while the quote section is active even if stale UI state tries to keep it open.
- Practical effect:
  - the quote notebook now reads as its own mode in both the content area and the app bar;
  - users no longer see file-library controls that do nothing for saved quotes.
- Files:
  - [LibraryTopBar.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/components/LibraryTopBar.kt)
  - [LibraryScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-library:compileDebugKotlin :app:assembleDebug` -> `SUCCESS`

## 133. Library shell was brought in line with the March 20 screenshot feedback

- The 5 photos from the repo root highlighted four concrete library issues:
  - the main files stats chip still said `comics` even though the shelf mixes books and graphic volumes;
  - the section switcher needed a third tab for bookmarked files;
  - grid cards and folder cards still used a detached lower title block (the `chin` effect);
  - folder covers should prefer the first real child cover instead of a placeholder representative.
- What changed:
  - `LibraryStatsBar` now uses the generic file count label instead of the old comic-only wording;
  - `LibraryContentSection` gained `BOOKMARKS`, and the library section switcher is now a three-way equal-width row:
    - `Library`;
    - `Bookmarks`;
    - `Quotes`;
  - the new bookmarks section is backed by the existing `isBookmarked` flag on library items and has its own empty state and title handling;
  - grid file cards now render the title inside the lower part of the cover via a gradient overlay instead of relying on a detached lower text zone;
  - grid folder cards now place the folder title inside the cover and drop the old lower title block;
  - folder representatives now prefer entries that already have a real cover path;
  - directory import no longer stops generating covers after the first 80 files.
- Practical effect:
  - mixed libraries no longer present themselves as if everything were a comic;
  - favorites have their own quick-access section without being merged into quotes;
  - grid cards read more like real cover tiles and less like covers sitting on top of a blank footer;
  - newly imported large folders should stop producing long rows of placeholder-only items just because they exceeded the old cover budget.
- Files:
  - [AppStrings.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/locale/AppStrings.kt)
  - [LibraryViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryViewModel.kt)
  - [LibraryScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt)
  - [LibraryTopBar.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/components/LibraryTopBar.kt)
  - [ComicGridItem.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/components/ComicGridItem.kt)
  - [ComicRepository.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/repository/ComicRepository.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-library:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :app:assembleDebug` -> `SUCCESS`

## 134. Library Theme Studio now has deeper manual card controls

- The next settings pass moved `Theme Studio` beyond atmosphere-only tuning and into real per-card construction.
- What changed:
  - library themes now store manual card-level parameters in addition to background and shelf mood:
    - `title scale`;
    - `title lines`;
    - `card stroke`;
    - `card corner radius`;
    - `title panel opacity`;
  - the settings preview now reflects those values instead of showing a generic mock card;
  - the live library cards and list items now respect the same tuning, so `Theme Studio` changes are visible in the actual library, not only in settings;
  - saved library theme slots preserve the deeper card tuning instead of flattening everything into background/shelf presets.
- Practical effect:
  - `Theme Studio` can now materially change card personality and readability, not just the canvas behind them;
  - custom themes are closer to a real constructor rather than a renamed preset picker.
- Files:
  - [SettingsScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt)
  - [SettingsViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsViewModel.kt)
  - [LibraryViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryViewModel.kt)
  - [LibraryScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt)
  - [ComicGridItem.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/components/ComicGridItem.kt)
  - [LibraryVisualPresets.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/library/LibraryVisualPresets.kt)
  - [LibraryVisualStyle.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/library/LibraryVisualStyle.kt)
  - [PreferencesKeys.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-data/src/main/java/com/example/core/data/preferences/PreferencesKeys.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-settings:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :feature-library:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :app:assembleDebug` -> `SUCCESS`

## 135. Translation and TTS now use shared service config contracts instead of duplicated raw flags

- Platform foundation work moved `translation` and `reader TTS` away from scattered raw strings/floats and into shared `core-model` contracts.
- What changed:
  - added shared models:
    - `TranslationServiceConfig`
    - `ReaderTtsConfig`
  - `SettingsUiState` now stores those typed configs directly and exposes legacy UI values as derived getters instead of owning the raw flags itself;
  - `SettingsViewModel` now assembles both configs as typed flows instead of shipping `Any` lists all the way into state;
  - `ReaderViewModel` no longer keeps a private duplicate `ReaderTranslationSettings` type and now resolves reader translation settings via the shared `TranslationServiceConfig`.
- Practical effect:
  - settings and reader now read the same transport/explain contract instead of maintaining parallel shapes;
  - next provider/TTS work can extend the shared models without bloating feature view models again.
- Files:
  - [ServiceConfigModels.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-model/src/main/java/com/example/core/model/ServiceConfigModels.kt)
  - [ServiceConfigModelsTest.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-model/src/test/java/com/example/core/model/ServiceConfigModelsTest.kt)
  - [SettingsViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsViewModel.kt)
  - [ReaderViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt)
- Validation:
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :core-model:testDebugUnitTest :feature-settings:compileDebugKotlin :feature-reader:compileDebugKotlin` -> `SUCCESS`
  - `cmd /c C:\Users\xmeta\projects\Mr.Comic\gradlew.bat :app:assembleDebug` -> `SUCCESS`
