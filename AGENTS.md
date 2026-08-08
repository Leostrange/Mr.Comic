# Mr.Comic Agent Instructions

## Project

Mr.Comic is a modular Android reader for comics, manga, webtoons,
reflowable books and audiobooks.

Language: Kotlin
UI: Jetpack Compose and Material 3
DI: Hilt
Storage: Room and DataStore
Media: Android Media3
Build system: Gradle
Required JDK: 17

## Current implementation status

Implemented and usable:

- raster comic and manga reading;
- text book reading, with known pagination and layout issues;
- library and customization;
- audiobook playback;
- text-to-speech.

Partially implemented or under development:

- text pagination accuracy;
- formatting and typography compatibility;
- footnotes;
- OCR workflows;
- translation;
- dictionaries;
- LLM explanations.

Do not present planned or stubbed functionality as completed.

## Architecture boundaries

- app: application entry point, navigation and dependency injection root.
- core-model: shared models and enums.
- core-data: persistence, Room, DataStore and repositories.
- core-domain: domain rules and use cases.
- core-ui: shared UI and design primitives.
- engine-api: reader engine interfaces.
- engine-formats: file parsing and format adapters.
- engine-rendering: page rendering, caching and preloading.
- engine-epub-readium: EPUB and Readium integration.
- engine-llm: LLM provider integrations.
- engine-registry: reader engine registration.
- feature-library: library and import UI.
- feature-reader: reader UI, pagination, controls and TTS.
- feature-settings: settings UI.
- feature-ocr: OCR functionality.
- feature-onboarding: startup and onboarding.

Do not place format parsing inside Compose UI.
Do not place Android UI dependencies in core-model.
Do not bypass engine-api from feature modules unless the existing
architecture explicitly requires it.

**Boundary status:** feature-reader main source depends on engine-api
for reader contracts and no longer imports engine-formats directly.
The reader contract family (`FormatReader`, `BaseFormatReader`,
`RasterPageReader`, `TextContentReader`), `LegacyFormatSessionAccess`,
`FormatDetector`, `RenderDeviceProfile`/`RenderDeviceTier`,
`EpubReadablePath`, `ReflowableTextFormatReader`, `ReaderFactory` and
`SectionPaginator` live in engine-api; implementations stay in
engine-formats, which re-exports the moved types via typealiases in
`base/FormatTypes.kt` (and per-package files) for backward
compatibility. Feature modules must not add new direct imports from
engine.formats; test sources may use engine-formats for real pagination
fixtures.

**ViewModel delegate controllers (4.1):** large ViewModels keep their
public API surface (Compose calls unchanged) but delegate logic to
small controllers with explicit dependencies: the ViewModel stays the
single owner of state and lifecycle. Established pattern (feature-library
and feature-settings):

- `LibraryCrudController` — CRUD/import/folder deletion; deps: repositories,
  scope, `MutableStateFlow<LibraryUiState>`, `rawComics`/`openFolder` lambdas.
- `LibraryContentPipeline` — pure filtering/sorting/grouping/statistics
  derivation (`derive(state, rawComics, rawQuotes, allLibraryComics)`);
  no Android dependencies, directly unit-testable.
- `SettingsPresetsController` — theme preset save/apply/clear/rename; deps:
  `UserPreferences`, `ThemePreferencesRepository`, scope, `uiState` lambda,
  `persistNullableColor` lambda.

Rule: one slice = one controller with explicit dependencies + its own
unit test before wiring into the ViewModel. Do not grow ViewModels with
new logic; extract into a controller instead. Prefer lambdas for ViewModel
callbacks (state writes, `applyFiltersAndSort`, persistence) so controllers
stay Android-free and testable.

## Reader invariants

Mr.Comic has separate rendering paths for:

1. raster paged content;
2. raster vertical content;
3. reflowable text pages;
4. reflowable vertical text.

Do not merge these paths merely to reduce code duplication.

Every reader change must consider:

- paged and vertical modes;
- left-to-right and right-to-left navigation;
- portrait and landscape;
- system bars and display cutouts;
- font scaling;
- progress restoration;
- chapter navigation;
- footnotes;
- images embedded in text documents;
- process recreation.

## Change policy

Before editing:

1. Identify the affected module.
2. Find existing tests for the behavior.
3. Explain the probable root cause.
4. List files expected to change.
5. Prefer the smallest safe change.

After editing:

1. Run tests for the affected module.
2. Run Detekt.
3. Compile the affected module.
4. Run app unit tests for changes crossing module boundaries.
5. Report commands and results.
6. Report tests that could not be executed.

Do not silently suppress exceptions.
Do not replace production behavior with hardcoded sample data.
Do not modify generated files or build output.
Do not commit APK files, logs, local databases or private book samples.

## Protected project work

Do not delete, rewrite or reorganize active task lists, TODO files,
roadmaps, handoff documents, project context files or unfinished work.

If a file mixes active tasks with agent instructions, preserve the task
sections and modify only the instruction sections after creating a backup.

See `.agents/protected-files.md` for the full list of protected files.

## Windows commands

Use gradlew.bat on Windows.

Build:

    .\gradlew.bat --no-daemon --console=plain :app:assembleDebug

Reader tests:

    .\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest

Format tests:

    .\gradlew.bat --no-daemon --console=plain :engine-formats:testDebugUnitTest

App tests:

    .\gradlew.bat --no-daemon --console=plain :app:testDebugUnitTest

Static analysis:

    .\gradlew.bat --no-daemon --console=plain detekt

## Definition of done

A task is complete only when:

- the code compiles;
- relevant tests pass;
- no unrelated behavior is changed;
- new behavior has a regression test where practical;
- protected task files remain unchanged;
- the final report lists changed files and verification commands.
