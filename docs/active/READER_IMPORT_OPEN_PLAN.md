# Reader Import And Open Plan

Created: 2026-06-18

## Goal

Restore and harden the original add/open behavior for the reader module:

- add a single file from the library picker;
- scan a folder tree;
- open a file from Android "Open with";
- accept shared files from external apps;
- store imported entries in the unified library;
- open every supported reader format through the same reader shell.

The reader format set is:

- graphic/document: `CBZ`, `CBR`, `ZIP`, `RAR`, `7Z`, `TAR`, `PDF`, `DJVU`, image folders;
- text/reflowable: `EPUB`, `FB2`, `TXT`, `HTML`, `Markdown`, `RTF`, `MOBI`, `AZW3`, `DOCX`, `ODT`;
- audio is routed separately to audiobook import and must not pollute the reader library.

## Current Findings

The project already has most of the raw behavior:

- `android/app/src/main/java/com/example/mrcomic/navigation/AppNavigation.kt` launches `OpenDocument` and `OpenDocumentTree`, persists SAF grants, and calls `LibraryViewModel.addComicFromUri` / `addComicsFromDirectory`.
- `android/app/src/main/java/com/example/mrcomic/MainActivity.kt` handles `ACTION_VIEW`, `ACTION_SEND`, and `ACTION_SEND_MULTIPLE`, stages incoming `content://` files, then navigates to `Screen.Reader.createForUri`.
- `android/app/src/main/AndroidManifest.xml` declares intent filters for the original file families and a universal `content:// */*` fallback.
- `android/core-data/src/main/java/com/example/core/data/repository/ComicRepository.kt` detects formats by extension, MIME, archive contents, and magic bytes; stores SAF metadata; generates covers; scans folder trees.
- `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt` can open by `comicId` or raw `uri`, then creates a legacy `FormatReader`.
- `android/engine-api`, `android/engine-registry`, `android/engine-formats`, and `android/engine-epub-readium` already define the newer `BookEngine` boundary.

The risk is that these behaviors are duplicated and partially inconsistent:

- format detection exists in both `ComicRepository` and `FormatDetector`;
- picker MIME types, manifest filters, repository MIME handling, and reader extension handling are separate lists;
- raw external opens can bypass the library-first flow;
- `ReaderViewModel` still opens most formats through `FormatFactory` directly even though `BookEngineRegistry` exists;
- folder scan keeps child `content://` paths, while single-file import sometimes copies to `files/library`;
- `SEND_MULTIPLE` currently extracts only the first URI for reader opening.

## Architecture Decision

Build a small import/open pipeline instead of adding more UI-side branches.

The stable path should be:

1. URI enters from picker, folder picker, `ACTION_VIEW`, `SEND`, or `SEND_MULTIPLE`.
2. A single importer validates access, detects format, chooses storage policy, extracts basic metadata/cover, deduplicates, and returns imported library entries.
3. Library UI displays the entries by existing `Comic` rows.
4. Reader opens by `comicId` whenever possible.
5. Reader resolves the engine via `BookEngineRegistry`; legacy readers remain behind `LegacyFormatBookEngine`.

This keeps EPUB/Readium, DJVU, text, and raster paths behind one reader contract and avoids format-specific exceptions in the UI.

## Implementation Units

### 1. Format catalog

Create one source of truth for supported reader formats, extensions, and MIME types.

Files:

- `android/core-model/src/main/java/com/example/core/model/ReaderFormatCatalog.kt`
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/FormatDetector.kt`
- `android/core-data/src/main/java/com/example/core/data/repository/ComicRepository.kt`
- `android/app/src/main/java/com/example/mrcomic/navigation/AppNavigation.kt`
- `android/app/src/main/java/com/example/mrcomic/MainActivity.kt`

Work:

- Move extension and MIME mapping into `ReaderFormatCatalog`.
- Include aliases: `cb7`, `cbt`, `djv`, `azw`, `kf8`, `prc`, `xhtml`, `markdown`, `text`.
- Keep ZIP/RAR/7Z/TAR container classification separate because archive contents affect whether the entry is graphic archive or delegated text archive.
- Expose picker MIME lists from the same catalog.

Tests:

- `android/core-model/src/test/java/com/example/core/model/ReaderFormatCatalogTest.kt`
- `android/app/src/test/java/com/example/mrcomic/IncomingOpenFormatPolicyTest.kt`

### 2. Import pipeline

Extract `ComicRepository.addComic` and `addComicsFromDirectory` internals into a testable import service while keeping persistence in or below the repository layer.

Files:

- `android/core-data/src/main/java/com/example/core/data/repository/ComicRepository.kt`
- new `android/core-data/src/main/java/com/example/core/data/importer/ReaderImportService.kt`
- new `android/core-data/src/main/java/com/example/core/data/importer/ReaderImportModels.kt`
- `android/core-domain/src/main/java/com/example/core/domain/usecase/AddComicUseCase.kt`
- `android/core-domain/src/main/java/com/example/core/domain/usecase/ScanFolderUseCase.kt`

Work:

- Add import result types: `Imported`, `Duplicate`, `Unsupported`, `Unreadable`, `Failed`.
- Preserve existing metadata fields: `path`, `treeUri`, `documentId`, `fileSize`, `lastModified`, `folderId`, `coverPath`.
- Keep single-file SAF behavior: use direct `content://` when readable, copy only when a backend needs a file path or the incoming grant is transient.
- Keep folder imports as tree-backed child URIs so folder moves can be repaired with existing `repairLibraryAccess`.
- Deduplicate by stable source key, not only current path: for SAF use `documentId` when available; for copied external shares use hash/source metadata.
- Return counts and failed items to `LibraryViewModel` so the UI can show useful errors.

Tests:

- unsupported file returns `Unsupported`;
- duplicate URI returns existing entry;
- transient content URI is copied;
- persisted content URI stays direct;
- folder scan preserves relative `folderId`;
- archive with a single EPUB delegates to EPUB;
- archive with images stays raster archive.

### 3. Library add UX

Keep the current Compose screen but route user actions through the import use cases and expose import progress.

Files:

- `android/app/src/main/java/com/example/mrcomic/navigation/AppNavigation.kt`
- `android/feature-library/src/main/java/com/example/feature/library/LibraryViewModel.kt`
- `android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt`

Work:

- Use the format catalog for `OpenDocument` MIME types.
- Keep audio split before reader import, but make it explicit and tested.
- Show import progress for folder scans and a summary for partial success.
- After successful single-file import, match current behavior: import into library, then let the user open from shelf unless the source was an external open intent.
- For folder import, avoid adding both comic and audiobook versions of the same files.

### 4. External open/share

Treat external intents as import/open requests, not as raw reader-only paths.

Files:

- `android/app/src/main/java/com/example/mrcomic/MainActivity.kt`
- `android/app/src/main/java/com/example/mrcomic/navigation/AppNavigation.kt`
- `android/app/src/main/AndroidManifest.xml`

Work:

- Preserve original intent filter coverage for `VIEW`, `SEND`, `SEND_MULTIPLE`, `file://`, and `content://`.
- For `ACTION_VIEW` and single `SEND`, import or find the library entry, then navigate by `comicId`.
- For `SEND_MULTIPLE`, import all supported files and navigate to library with an import summary; if exactly one reader file succeeds, open it.
- Keep staging for non-persistable content grants, but store the staged file through the same import service.
- Add missing MIME/extension coverage from the catalog: `7z`, `tar/cbt`, `markdown`, `azw3`, `docx`, `odt`, `rtf`, `djvu`.

### 5. Reader open boundary

Move reader opening to `BookEngineRegistry` as the primary path, with legacy readers accessed through `LegacyFormatBookEngine`.

Files:

- `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt`
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/LegacyFormatBookEngine.kt`
- `android/engine-registry/src/main/java/com/example/engine/registry/BookEngineRegistry.kt`
- `android/engine-epub-readium/src/main/java/com/example/engine/epub/readium/ReadiumEpubEngine.kt`

Work:

- Build `OpenBookRequest` from `Comic`: `bookId`, `format`, `BookSource.FilePath` or `BookSource.ContentUri`, stored locator, preference snapshot.
- Resolve `BookSession` first, then obtain the legacy reader only when the session exposes legacy access.
- Keep EPUB and DJVU on their dedicated engines.
- Centralize renderer selection from `BookSession.rendererKey`, not scattered format checks.
- Preserve current progress and locator restore behavior.

### 6. Format-reader parity hardening

Do not block import on perfect rendering, but make unsupported or fragile paths honest.

Files:

- `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/TextFormatReader.kt`
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/archive/ArchiveDelegatingFormatReader.kt`
- `android/engine-formats/src/test/kotlin/com/example/engine/formats/text/*`

Work:

- Keep all README formats importable.
- For weaker extractors (`TXT`, `HTML`, `Markdown`, `DOCX`, `ODT`, `RTF`), return controlled reader errors instead of blank pages.
- Add open-smoke tests using `samples/format-real-corpus`.
- Make archive text delegation deterministic: single text book inside archive opens as text; image-heavy archive opens as raster; mixed archives get a predictable rule.

## Rollout Order

1. Add `ReaderFormatCatalog` and tests.
2. Extract and test import service without changing UI behavior.
3. Switch library picker and external intent handling to import results.
4. Route reader opening through `BookEngineRegistry`.
5. Add corpus-based smoke tests for all supported formats.
6. Polish folder import progress and partial-failure UI.

## Acceptance Criteria

- Library "Add file" accepts all supported reader formats and rejects unsupported files with a clear message.
- Library "Add folder" recursively imports supported reader files, preserves folder grouping, and avoids duplicates.
- Android "Open with Mr.Comic" opens supported files from both `file://` and `content://`.
- Android share intents import supported files; multiple shares do not silently drop all but the first file.
- Imported entries reopen after app restart through persisted URI grants or managed internal copies.
- EPUB uses the Readium-backed engine boundary for open state; DJVU uses its dedicated engine; legacy formats stay behind the legacy adapter.
- Text formats open in text containers; graphic/document formats open in raster containers.
- Progress and locator restore keep working for library opens and external opens.
- No blank-page success state: a failed parser shows a reader error.

## Verification

Use the Windows Gradle wrapper:

```powershell
.\gradlew.bat --no-daemon --console=plain :core-model:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :core-data:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :core-domain:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :feature-library:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :engine-formats:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :app:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug
```

Manual QA:

- import one file for every supported extension;
- import a folder with nested comics/books/audio;
- open files from Android Files, Telegram, and a document provider;
- restart app and reopen imported `content://` files;
- verify reading position restore for EPUB, TXT, CBZ, PDF, and DJVU.

## Risks

- Some document providers do not grant persistable permissions; staging must preserve extension and enough metadata for detection.
- `DOC`, unlike `DOCX`, appears in manifest filters but is not in `ComicFormat`; either explicitly defer it or add a real `DOC` conversion path later.
- `FormatDetector.detectByExtension("zip")` now reports `ZIP`, while repository detection can classify text archives; catalog/import code must preserve archive-content inspection.
- Moving reader opening through `BookEngineRegistry` touches a large `ReaderViewModel`; do it after import tests are stable.
- Text extractors for `HTML`, `DOCX`, `ODT`, and `RTF` are still limited; import support must not be mistaken for full fidelity rendering.
