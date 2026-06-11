# Mr.Comic

Mr.Comic is an Android reader for comics, manga, webtoons, books, audiobooks, OCR-assisted translation, dictionaries, and a customizable library UI. The project is built with Kotlin, Jetpack Compose, Material 3, Hilt, Room, DataStore, Media3, and modular Android feature/engine layers.

## Demo

![Mr.Comic demo](media/demo.gif)

[Watch the video splash screen](media/video_2025-09-22_00-33-37.mp4)

GitHub may show repository videos as a downloadable media link instead of an inline player. The GIF above is the lightweight preview; the MP4 is the original video splash screen.

## Purpose

Mr.Comic is designed as one app for several reading workflows:

- reading comics, manga, webtoons, PDF, DJVU, CBR, CBZ, and image folders;
- reading reflowable books such as EPUB, FB2, TXT, HTML, Markdown, RTF, MOBI, AZW3, DOCX, and ODT;
- OCR for page images and scanned content;
- offline translation and dictionary lookup;
- text-to-speech and audiobook playback;
- customizable library views, reader themes, typography, and visual presets.

## Main Features

- Unified library for image-based and text-based books.
- Four reader container paths: raster page, raster vertical feed, text page, and text vertical feed.
- Reader chrome, table of contents, bookmarks, progress, pop-up footnotes, quote saving, translation, dictionary lookup, and explanation actions.
- Reading presets: paper, sepia, newspaper, night ink, OLED black, and e-ink oriented styles.
- Typography controls for text readers: font family, font size, line height, letter spacing, paragraph spacing, alignment, and custom fonts.
- OCR and translation flows for comics and scanned documents.
- Offline dictionaries and local lookup routing.
- TTS, page-turn sounds, media session support, mini player, and audiobook UI.
- Library layout presets, progress surfaces, seasonal/decorative layers, and customizable visual styling.

## Supported Formats

### Image and Document Formats

- CBR, CBZ, ZIP, RAR, 7Z, TAR image archives
- PDF
- DJVU
- Image folders

### Text Formats

- EPUB
- FB2
- TXT
- HTML
- Markdown
- RTF
- MOBI and AZW3
- DOCX
- ODT

### Archive Behavior

Archives are expected to be classified before rendering. Image sequences should use raster containers. Single-book text archives should delegate to the matching text reader instead of going through the raster page loader.

## Build And Run

### Requirements

- Windows, macOS, or Linux with Android development tools
- Android Studio
- Android SDK
- JDK 17
- Gradle wrapper from this repository

On Windows in this repository use `.\gradlew.bat`, not `./gradlew`.

### Build Debug APK

```powershell
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug
```

Output APK:

```text
android/app/build/outputs/apk/debug/Mr.Comic-debug.apk
```

### Useful Checks

```powershell
.\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :engine-formats:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :feature-library:testDebugUnitTest
```

## Project Structure

```text
android/
  app/                  Application entry point, navigation, DI root, APK build
  core-model/           Shared models and enums
  core-data/            Room, DataStore, repositories, migrations
  core-domain/          Domain logic, translation, dictionary, analytics
  core-ui/              Theme, design system primitives, chrome, shared UI
  engine-api/           Reader engine boundary interfaces
  engine-formats/       Format readers: archives, EPUB, FB2, text, PDF, DJVU, images
  engine-rendering/     Bitmap cache, preloading, page rendering infrastructure
  engine-registry/      Engine registration
  feature-library/      Library, import flows, audiobook player, progress UI
  feature-reader/       Reader screen, text/raster containers, TTS, controls
  feature-settings/     Settings and customization screens
  feature-ocr/          OCR feature module
  feature-onboarding/   Onboarding and startup flows
docs/
  README.md             Documentation map
  active/               Active technical notes and task plans
  archive/              Historical checkpoints and roadmaps
  reference/            Reference notes and format research
samples/
  format-real-corpus/   Real sample files for smoke and regression testing
media/
  demo.gif              README preview
  video_2025-09-22_00-33-37.mp4
```

## Documentation

- [Documentation map](docs/README.md)
- [Reader QA checklist](docs/active/QA_REGRESSION_CHECKLIST.md)
- [Format support audit](docs/active/FORMAT_SUPPORT_AUDIT_2026-03-27.md)
- [DJVU renderer research](docs/active/DJVU_RENDERER_RESEARCH.md)
- [Readium EPUB/DJVU migration plan](docs/active/READIUM_EPUB_DJVU_MIGRATION_PLAN.md)
- [Third-party dictionaries](docs/active/THIRD_PARTY_DICTIONARIES.md)
- [Reader test progress](docs/reader_test_progress.md)

## Media And Demo Assets

The repository keeps only public demo media under `media/`:

- `media/demo.gif` for a lightweight README preview.
- `media/video_2025-09-22_00-33-37.mp4` for the video splash screen.

Large design dumps, local mockups, exported screenshots, emulator captures, and test logs should stay outside Git.

## Current Status

Mr.Comic is under active development. Current high-priority areas are reader stability, text/raster container separation, text pagination, archive text handling, EPUB/HTML/DOCX formatting, DJVU rendering, OCR/translation polish, and library customization.

The project contains experimental and legacy paths while the reader architecture is being stabilized. See the documentation map and active task plans for the current engineering focus.

## Repository Hygiene

Before committing, exclude:

- `android/**/build/`, `.gradle/`, `.kotlin/`, `.cxx/`, and generated sources;
- Android Studio workspace files;
- emulator screenshots, `qa-*`, `mrcomic-*`, UI dumps, and log files;
- local test databases and private sample books;
- signing keys, keystores, tokens, local API keys, and machine-specific settings.

## License

No explicit project license file is currently present in the repository. Third-party assets and bundled dictionaries may have their own licenses or attribution files in the relevant asset folders.
