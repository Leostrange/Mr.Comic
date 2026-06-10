# Reader / Formats Stabilization Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use `superpowers:subagent-driven-development` to execute this plan slice-by-slice. Do not batch unrelated reader, format, raster, and UI changes into one diff.

**Goal:** вернуть Mr.Comic к архитектурно устойчивому, производительному и плавному reader contract, где текстовые и графические форматы не пересекаются контейнерами, а режимы `PAGE_*` и `WEBTOON` имеют разные независимые pipelines.

**Current baseline:** проект после возврата части text reader/format pipeline к состоянию 1 апреля и восстановления raster/DJVU fallback внутри raster path. Графические форматы не чинить через text/WebView path.

**Reference basis:**
- `.codegraph/` локальный граф проекта Mr.Comic.
- `reference/github-reader-projects/koreader`: document/session separation, renderer independence.
- `reference/github-reader-projects/librera-reader`: adapters per format, cached text/raster flows, independent reading modes.
- `reference/github-reader-projects/readium-kotlin-toolkit`: publication/spine/navigation/assets model.
- `reference/github-reader-projects/seeneva-reader-android`: raster page model, decode/preload separate from UI.
- Existing QA artifacts: `Incorrect display`, `.qa_run`, `docs/active/*`, `docs/reference/format-references/*`.

## Non-Negotiable Contracts

1. `Text PAGE` is not `Text WEBTOON`.
2. `Raster PAGE` is not `Raster WEBTOON`.
3. `CBR/CBZ/PDF/DJVU/FOLDER` never enter the text/WebView reader route.
4. `EPUB/MOBI/RTF/DOCX/HTML/Markdown/TXT/FB2` never enter the raster route.
5. `PAGE_*` has no vertical scroll leakage, no swipe-triggered chrome opening, and no horizontal text scaling.
6. `WEBTOON` has no page-turn behavior and no PAGE JS.
7. `CHARS_PER_PAGE` can remain only as a temporary fallback. It is not a product fix for visual pagination.
8. Do not touch the confirmed fixed customization bug for `Фон экрана`.
9. Do not `git stage`, `git commit`, or `git push` unless explicitly requested.

## Target Architecture

### 1. Reader Routing Layer

Add or harden one resolver that is the only entry point for selecting the visual container:

```kotlin
enum class ReaderContainerKind {
    TEXT_PAGE,
    TEXT_WEBTOON,
    RASTER_PAGE,
    RASTER_WEBTOON
}
```

Rules:
- Text formats + `PAGE_LTR/PAGE_RTL/DUAL_PAGE` -> `TEXT_PAGE`.
- Text formats + `WEBTOON` -> `TEXT_WEBTOON`.
- Raster formats + `PAGE_LTR/PAGE_RTL/DUAL_PAGE` -> `RASTER_PAGE`.
- Raster formats + `WEBTOON` -> `RASTER_WEBTOON`.
- Archive containers must be classified before route selection.

Diagnostics must include:
- `resolvedContainer`
- `detectedFormat`
- `innerArchiveFormat`
- `archiveCacheHit`
- `sourceIdentity`

### 2. Document Session Layer

Introduce stable internal sessions instead of forcing every format to return visual pages too early.

Recommended models:

```kotlin
data class ReaderSourceIdentity(
    val uri: String,
    val size: Long?,
    val modifiedAt: Long?,
    val innerEntryPath: String? = null
)

data class TextDocumentSection(
    val index: Int,
    val id: String?,
    val title: String?,
    val html: String,
    val baseUrl: String?,
    val isFrontMatter: Boolean = false
)

data class TextReaderSession(
    val source: ReaderSourceIdentity,
    val sections: List<TextDocumentSection>,
    val toc: List<ReaderTocEntry>,
    val footnoteMap: Map<String, String>,
    val anchorIndex: Map<String, TextAnchorTarget>
)

data class RasterReaderSession(
    val source: ReaderSourceIdentity,
    val pageCount: Int,
    val pageModel: List<RasterPageDescriptor>
)
```

Format readers should move toward this:
- text formats return sections, assets, TOC, anchors, footnotes;
- raster formats return page descriptors and decode hints;
- archive readers return a delegated session, not UI fallback HTML.

### 3. Text PAGE Container

`TextPageContainer` owns PAGE behavior for all text formats.

Requirements:
- It uses WebView only for text PAGE.
- It loads the current `TextDocumentSection`.
- It calculates visual subpages from real viewport using CSS columns or measured layout.
- It stores progress as `(sectionIndex, subPageIndex, subPageCount)`.
- It never scrolls vertically.
- It never scrolls horizontally.
- It does not open chrome on drag/swipe.
- It opens chrome only on clean center tap.
- It reserves immutable safe/chrome viewport insets.

WebView settings:
- `useWideViewPort = false`
- `loadWithOverviewMode = false`
- `setInitialScale(100)`
- `isHorizontalScrollBarEnabled = false`
- `isVerticalScrollBarEnabled = false` in PAGE

PAGE layout:
- `usableHeight = viewportHeight - topInset - bottomInset`
- round `usableHeight` down to a stable line grid;
- avoid cutting half a line;
- next page must continue from the same text flow, not jump to next paragraph;
- changing chrome visibility must not trigger full reload or text reflow jump.

### 4. Text WEBTOON Container

`TextWebtoonContainer` owns vertical text reading.

Requirements:
- Separate WebView/document flow, not `HtmlPageView(webtoonMode=true)`.
- No PAGE JS.
- Full document or appendable section stream.
- `width=device-width`.
- Images and tables fit via responsive CSS.
- Frontispiece/title/cover are retained as first sections.
- Chapter transitions append smoothly.
- No empty tail after several sections.
- Center tap toggles chrome.
- Drag/swipe scrolls content and must not toggle chrome.

CSS baseline:
- body width: `100%`
- max-width: `none`
- overflow-x: `hidden`
- paragraphs keep normal spacing;
- tables use wrapper/overflow model;
- images use `max-width: 100%; height: auto`.

### 5. Raster Containers

Keep raster readers separate.

`RasterPageContainer`:
- Used for CBR/CBZ/PDF/DJVU page mode.
- One page at a time, zoom/pan behavior as designed.

`RasterWebtoonContainer`:
- Used for CBR/CBZ/PDF/DJVU vertical feed.
- Own preload/retention window.
- Visible pages have priority over preload pages.
- Decode queue uses bounded parallelism, for example a semaphore of 2.
- Keep HTML visual fallback inside raster branch for DJVU diagnostic/visual-layer pages if bitmap decode is unavailable.

Do not route raster fallback through text container.

### 6. Archive Resolution

Archive handling must happen before reader route selection.

Add `ArchiveResolvedEntry`:

```kotlin
data class ArchiveResolvedEntry(
    val archiveIdentity: ReaderSourceIdentity,
    val entryPath: String,
    val entryFormat: ComicFormat,
    val extractedFile: File,
    val cacheHit: Boolean
)
```

Classification:
- single text book: one EPUB/MOBI/RTF/DOCX/HTML/MD/TXT/FB2 entry -> text delegate reader;
- image sequence: images only -> raster reader;
- mixed: choose explicit book entry if obvious, otherwise unsupported/mixed UI.

Fix class of bugs:
- text-in-ZIP must not become black raster loader;
- CBZ/CBR image sequence must not enter text reader;
- content URI sources must be copied to a readable cache file before Zip4j/native readers use them;
- cache extraction by `(archive identity, entry path, size/mtime)`.

### 7. Footnotes And Anchors

Normalize noteref detection across EPUB/FB2/MOBI/HTML/Markdown:
- `role=doc-noteref`
- `epub:type=noteref`
- `.footnote-ref`
- `.fn`
- `data-footnote-id`
- fragments like `#fn`, `#note`, `#footnote`, `#FbAutId`

Click contract:
1. Determine whether target is a noteref.
2. Try `footnoteMap`.
3. Try current HTML fallback extraction.
4. Only then use normal anchor/page navigation.

Visual contract:
- footnote numbers are accent links;
- popup opens without moving the text position;
- anchor navigation in PAGE lands target near top of visible page.

### 8. Chrome / Insets

Renderer receives immutable viewport:

```kotlin
data class ReaderViewport(
    val safeTopInsetPx: Int,
    val safeBottomInsetPx: Int,
    val chromeReserveTopPx: Int,
    val chromeReserveBottomPx: Int,
    val contentTopInsetPx: Int,
    val contentBottomInsetPx: Int,
    val viewportWidthPx: Int,
    val viewportHeightPx: Int
)
```

Rules:
- visible chrome reserves space or overlays only by explicit mode;
- hidden chrome still preserves system safe insets;
- changing chrome visibility must not reload text;
- changing chrome visibility must not change PAGE step unpredictably;
- top toolbar icon set:
  - text formats: standard 6 slots;
  - raster formats: standard 5 slots;
  - distribute via equal slots / `Arrangement.SpaceEvenly`.

### 9. Performance Plan

Add measurable session caching:
- source identity cache for parsed sessions;
- section HTML LRU;
- raster bitmap memory/disk cache;
- archive extracted-entry cache;
- first visible raster page priority queue;
- avoid repeated whole-document string copies.

Diagnostics:
- `firstPageMs`
- `fullParseMs`
- `archiveCacheHit`
- `containerKind`
- `sectionIndex`
- `subPageIndex`
- `subPageCount`
- `decodeMs`
- `footnoteHit`

Do not call an issue fixed without timing and emulator evidence.

## Execution Tasklist

### Slice 1: Freeze Container Routing

- [ ] Add or harden `ReaderContainerKind` tests.
- [ ] Test text formats resolve only to text containers.
- [ ] Test raster formats resolve only to raster containers.
- [ ] Test DJVU/PDF/CBR/CBZ with diagnostic HTML still resolve to raster containers.
- [ ] Test `WEBTOON + DJVU + diagnosticHtml -> RASTER_WEBTOON`.

Commands:

```powershell
.\gradlew.bat --console=plain :feature-reader:testDebugUnitTest
```

### Slice 2: Reader Diagnostics

- [ ] Add diagnostics model for container, archive, section/subpage, cache hits.
- [ ] Surface diagnostics in logs only, not noisy UI.
- [ ] Add enough log points to debug black loader and skipped text without guessing.

Commands:

```powershell
.\gradlew.bat --console=plain :feature-reader:compileDebugKotlin
```

### Slice 3: Text PAGE Stability

- [ ] Keep PAGE in its own `TextPageContainer`.
- [ ] Set WebView scale/viewport settings for no horizontal scaling.
- [ ] Remove any vertical scroll leakage in PAGE.
- [ ] Make swipe change exactly one page/subpage.
- [ ] Prevent swipe/drag from opening chrome.
- [ ] Recalculate page layout when viewport or insets change, without reload.
- [ ] Ensure bottom inset is 1-2 text lines and no line is clipped.

Regression samples:
- `Под солнцем_868805.epub`
- `S_Skott_...epub`
- TXT plain
- TXT in ZIP
- MOBI
- RTF
- DOCX
- HTML
- Markdown

Commands:

```powershell
.\gradlew.bat --console=plain :feature-reader:testDebugUnitTest
.\gradlew.bat --console=plain :app:assembleDebug
```

### Slice 4: Text WEBTOON Stability

- [ ] Keep WEBTOON text in separate `TextWebtoonContainer`.
- [ ] Remove PAGE JS from webtoon path.
- [ ] Fix `width=device-width` and no center-shrinking.
- [ ] Preserve cover/frontispiece/title sections.
- [ ] Append/preload sections without losing scroll position.
- [ ] Fix empty tail after several sections.
- [ ] Center tap toggles chrome; drag never toggles chrome.

Commands:

```powershell
.\gradlew.bat --console=plain :feature-reader:testDebugUnitTest
.\gradlew.bat --console=plain :app:assembleDebug
```

### Slice 5: Archive Reader Path

- [ ] Implement archive classification before route selection.
- [ ] Add readable temp cache for content URI archives before Zip4j/native readers.
- [ ] Route single text book archives to text delegate reader.
- [ ] Route image sequence archives to raster reader.
- [ ] Add persistent extraction cache.
- [ ] Add unit tests for ZIP/RAR/7Z/TAR text vs image sequence.

Commands:

```powershell
.\gradlew.bat --console=plain :engine-formats:testDebugUnitTest
.\gradlew.bat --console=plain :feature-reader:testDebugUnitTest
```

### Slice 6: Footnotes / Anchors

- [ ] Normalize noteref anchors in parser layer.
- [ ] Preserve `footnoteMap` for EPUB/FB2/MOBI/HTML/Markdown where available.
- [ ] Add noteref bridge in PAGE and WEBTOON.
- [ ] Popup first, navigation fallback second.
- [ ] Verify EPUB `[1]` after `Жоанну` opens popup.
- [ ] Verify MOBI footnotes on a live file.

Commands:

```powershell
.\gradlew.bat --console=plain :engine-formats:testDebugUnitTest :feature-reader:testDebugUnitTest
```

### Slice 7: Raster Smoothness

- [ ] Keep raster path separate.
- [ ] Add bounded decode parallelism.
- [ ] Prioritize visible pages over preload.
- [ ] Keep DJVU centered.
- [ ] Keep DJVU visual-layer HTML fallback inside raster branch.
- [ ] Remove endless black loaders in raster WEBTOON.

Commands:

```powershell
.\gradlew.bat --console=plain :feature-reader:testDebugUnitTest
.\gradlew.bat --console=plain :app:assembleDebug
```

### Slice 8: Format-Specific Polish

- [ ] EPUB: frontispiece/title/cover stable, no flicker, no skipped pages.
- [ ] MOBI: starts at beginning, encoding fixed, footnotes verified.
- [ ] RTF: repeat open faster, Russian encoding stable.
- [ ] DOCX/HTML: table wrapper/overflow model.
- [ ] Markdown: headings/lists/code blocks and TOC restored.
- [ ] TXT: normal font scale, margins, paragraph spacing.

### Slice 9: Emulator QA Gate

Device:
- Android 16 / API 36.
- Before install: uninstall `com.example.mrcomic.debug`.
- Install fresh APK.
- Add samples through file/folder picker, not old DB.

For each text format:
- PAGE: flip at least 6 pages.
- WEBTOON: scroll through at least 6 screens.

Required checks:
- no vertical scroll in PAGE;
- no horizontal scroll in text;
- no clipped bottom line;
- no lost continuation between pages;
- no chrome opening on swipe;
- footnotes popup where applicable;
- text-in-archive opens without black loader;
- raster formats remain raster-only.

Final build:

```powershell
.\gradlew.bat --console=plain :app:assembleDebug
```

### Slice 10: Targeted CodeRabbit Review

Run only after local tests pass.

Review scopes:
- reader route/container slice;
- text PAGE/WEBTOON slice;
- archive slice;
- footnote/anchor slice;
- raster slice only if modified.

If CodeRabbit fails due to auth/rate limit/tooling, record it as a tooling blocker and continue local verification. Do not claim review completed.

## Acceptance Criteria

The stabilization effort is done only when:

- Text PAGE and Text WEBTOON are separate containers.
- Raster PAGE and Raster WEBTOON are separate containers.
- Archive classification is deterministic and covered by tests.
- `Под солнцем_868805.epub` footnote `[1]` opens popup.
- `S_Skott_...epub` and `Под солнцем_868805.epub` do not skip text in PAGE.
- PAGE has no vertical or horizontal scroll.
- WEBTOON has no PAGE behavior.
- DJVU/PDF/CBR/CBZ do not enter text reader.
- Fresh APK is built and installed on emulator after removing the old package.
- Emulator QA evidence exists: screenshots/logs for text PAGE, text WEBTOON, raster PAGE, raster WEBTOON, archive text.

