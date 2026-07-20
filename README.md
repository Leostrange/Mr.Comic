<div align="center">
  <h1>Mr.Comic</h1>

  <p>
    <b>Android-reader for comics, manga, webtoons, books, audiobooks, OCR and translation workflows.</b><br>
    One modular Kotlin app for raster pages, reflowable books, local dictionaries, TTS and customizable reading.
  </p>

  <p>
    <a href="https://github.com/Leostrange/Mr.Comic/releases/tag/v2.1.0">
      <img alt="Release" src="https://img.shields.io/badge/release-v2.1.0-2563eb?style=for-the-badge">
    </a>
    <img alt="Platform" src="https://img.shields.io/badge/platform-Android-3ddc84?style=for-the-badge&logo=android&logoColor=white">
    <img alt="Kotlin" src="https://img.shields.io/badge/Kotlin-7f52ff?style=for-the-badge&logo=kotlin&logoColor=white">
    <img alt="Compose" src="https://img.shields.io/badge/Jetpack%20Compose-4285f4?style=for-the-badge&logo=jetpackcompose&logoColor=white">
    <img alt="License" src="https://img.shields.io/badge/license-source--available-16a34a?style=for-the-badge">
  </p>

  <p>
    <a href="https://github.com/Leostrange/Mr.Comic/releases/tag/v2.1.0"><b>Download release</b></a>
    ·
    <a href="docs/README.md">Documentation</a>
    ·
    <a href="THIRD_PARTY_NOTICES.md">Third-party notices</a>
  </p>
</div>

---

## About

Mr.Comic is an Android reader for comics, manga, webtoons, books, audiobooks, OCR-assisted translation, dictionaries and a customizable library UI.

The reader is built around separate containers for raster pages, raster vertical feeds, text pages and text vertical feeds. This keeps image archives, PDF/DJVU pages, EPUB/FB2/MOBI/DOCX/ODT books and plain text formats on the rendering path that fits them best.

## What It Does

<table>
  <tr>
    <td><b>Comic and manga reading</b></td>
    <td>CBR, CBZ, ZIP, RAR, 7Z, TAR, image folders, PDF and DJVU with page and vertical-feed modes.</td>
  </tr>
  <tr>
    <td><b>Book reading</b></td>
    <td>EPUB, FB2, TXT, HTML, Markdown, RTF, MOBI, AZW3, DOCX and ODT with text pagination and webtoon-style flow.</td>
  </tr>
  <tr>
    <td><b>Reader tools</b></td>
    <td>TOC navigation, bookmarks, progress, quote saving, pop-up footnotes, dictionary lookup, translation and explain actions.</td>
  </tr>
  <tr>
    <td><b>Reading style</b></td>
    <td>Paper, sepia, newspaper, night ink, OLED black and e-ink presets plus typography controls and custom fonts.</td>
  </tr>
  <tr>
    <td><b>Audio and OCR</b></td>
    <td>TTS, audiobook playback, media controls, OCR entry points and scanned-page workflows.</td>
  </tr>
</table>

## Release v2.1.0

Current release focus:

- stabilized text/raster reader separation;
- improved EPUB close behavior, asset handling and progress calculation;
- mojibake recovery and language-aware text rendering;
- archive routing for text books inside ZIP/RAR/7Z/TAR containers;
- safer footnote parsing, body inset injection and webtoon document building;
- local/online explain engine provider with OpenRouter integration;
- expanded unit tests for reader policy, CSS, formats, pagination and import/open routing.

Full notes are in [RELEASE_NOTES.md](RELEASE_NOTES.md).

## Supported Formats

| Type | Formats |
| --- | --- |
| Comic/image archives | CBR, CBZ, ZIP, RAR, 7Z, TAR |
| Documents/pages | PDF, DJVU, image folders |
| Reflowable books | EPUB, FB2, TXT, HTML, Markdown, RTF, MOBI, AZW3, DOCX, ODT |
| Audio flows | Local audiobook playback through the library and player UI |

Archives are classified before rendering. Image sequences use raster containers; single-book text archives delegate to the matching text reader instead of being forced through the raster page loader.

## Technology Stack

| Layer | Used |
| --- | --- |
| Language | Kotlin, Java 17 toolchain |
| UI | Jetpack Compose, Material 3 |
| Architecture | Modular Android app, feature/core/engine modules |
| DI | Hilt |
| Storage | Room, DataStore |
| Media | Android Media3 |
| Images | Coil |
| Networking | Retrofit, OkHttp |
| Archives | Zip4j, Junrar, Apache Commons Compress |
| EPUB engine path | Readium-oriented engine module plus format adapters |
| Build | Gradle wrapper, Android Gradle Plugin |
| CI | GitHub Actions APK build and unit-test workflow |

## Project Structure

```text
android/
  app/                   Application entry point, navigation, DI root, APK build
  core-model/            Shared models, format catalog and enums
  core-data/             Room, DataStore, repositories, migrations
  core-domain/           Domain logic, translation, dictionary, analytics
  core-ui/               Theme, design primitives, chrome, shared UI
  engine-api/            Reader engine boundary interfaces
  engine-epub-readium/   EPUB/Readium integration layer
  engine-formats/        Format readers: archives, EPUB, FB2, text, PDF, DJVU, images
  engine-rendering/      Bitmap cache, preloading, page rendering infrastructure
  engine-registry/       Engine registration
  feature-library/       Library, import flows, audiobook player, progress UI
  feature-reader/        Reader screen, text/raster containers, TTS, controls
  feature-settings/      Settings and customization screens
  feature-ocr/           OCR feature module
  feature-onboarding/    Onboarding and startup flows
docs/
  README.md              Documentation map
```

## Build And Run

### Requirements

- Android Studio
- Android SDK
- JDK 17
- Gradle wrapper from this repository

On Windows in this repository use `.\gradlew.bat`, not `./gradlew`.

### Build Debug APK

```powershell
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug
```

Output:

```text
android/app/build/outputs/apk/debug/Mr.Comic-debug.apk
```

### Useful Checks

```powershell
.\gradlew.bat --no-daemon --console=plain :engine-formats:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :app:testDebugUnitTest
```

## License

Mr.Comic source code is published as source-available unless a different license is granted in writing by the project owner. See [LICENSE](LICENSE).

Third-party libraries, Android components, dictionaries and bundled assets remain under their own licenses. See [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
