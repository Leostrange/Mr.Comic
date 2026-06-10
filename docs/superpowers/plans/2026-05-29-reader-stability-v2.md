# Reader Stability And Format Completion V2 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Stabilize Mr.Comic reader so text and raster formats use separate containers, PAGE mode never leaks vertical scroll, WEBTOON mode never uses page-turn behavior, and known text/archive/footnote/chrome regressions are fixed without breaking raster formats.

**Architecture:** Keep four reader containers separate: `TEXT_PAGE`, `TEXT_WEBTOON`, `RASTER_PAGE`, `RASTER_WEBTOON`. Text fixes must stay in HTML/text reader paths; raster fixes must stay in raster paths. Do not use `CHARS_PER_PAGE` as the product fix for visual pagination.

**Tech Stack:** Android, Kotlin, Jetpack Compose, WebView, Gradle wrapper `.\gradlew.bat`, engine-formats, feature-reader.

---

## Current Baseline

- Current project: `C:\Users\xmeta\projects\Mr.Comic_fresh_clone`
- Reader backup created before this plan:
  - `C:\Users\xmeta\projects\Mr.Comic_reader_backup_20260529_190407`
- Current text reader restore baseline:
  - Stable reader shell: `c806515` from 2026-04-01.
  - Text/CSS/format quality layer: `6d9cdc1` from 2026-04-03 where applicable.
- Fresh successful build after restore:
  - `C:\Users\xmeta\projects\Mr.Comic_fresh_clone\android\app\build\outputs\apk\debug\Mr.Comic-debug.apk`
  - Timestamp: `29.05.2026 18:36:44`
  - Size: `942837469` bytes

## Non-Negotiable Rules

- Use `.\gradlew.bat`, never `./gradlew`.
- Do not use `git reset --hard`.
- Do not stage, commit, or push unless explicitly requested.
- Do not touch graphical formats while fixing text reader bugs unless a task explicitly says “raster verification only”.
- Do not route `CBR/CBZ/PDF/DJVU/FOLDER` through text/WebView paths.
- Do not route `EPUB/MOBI/RTF/DOCX/HTML/Markdown/TXT/FB2` through raster paths.
- Do not “fix” PAGE mode by enabling vertical scroll.
- Do not treat `CHARS_PER_PAGE` reduction as a product-level pagination fix.
- Do not touch audiobook cover behavior in this plan.
- Do not touch the already confirmed “Фон экрана” customization fix.

## Files And Responsibilities

- `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt`
  - Owns reader screen composition, chrome visibility, WebView container placement, safe insets, text PAGE/WebView call site.
- `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt`
  - Owns reader state, page navigation, HTML page cache, footnote/anchor bridge, progress.
- `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderContentPolicy.kt`
  - Owns routing/container policy. Must prevent raster/text path mixing.
- `android/feature-reader/src/main/java/com/example/feature/reader/ui/components/PageView.kt`
  - Raster page UI. Do not change for text bugs.
- `android/feature-reader/src/main/java/com/example/feature/reader/ui/components/WebtoonView.kt`
  - Raster webtoon UI and current compatibility with HTML pages. Do not change for text PAGE bugs.
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/FormatReader.kt`
  - Common reader contract: page count, HTML content, assets, footnotes, anchors.
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/UnifiedReaderCssBuilder.kt`
  - Shared HTML/CSS construction for text formats.
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/TextFormatReader.kt`
  - TXT/HTML/Markdown/RTF/DOCX/MOBI-ish text path depending on current baseline.
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/epub/EpubFormatReader.kt`
  - EPUB pages, frontispiece/cover/title, anchors, footnotes.
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/fb2/Fb2FormatReader.kt`
  - FB2 text and footnote behavior.
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/archive/ArchiveFormatSupport.kt`
  - Archive classification helpers.
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/zip/ZipFormatReader.kt`
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/rar/RarFormatReader.kt`
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/sevenz/SevenZFormatReader.kt`
- `android/engine-formats/src/main/kotlin/com/example/engine/formats/tar/TarFormatReader.kt`
  - Archive reader/delegate behavior.

---

## Task 1: Lock Container Routing

**Problem:** Text and raster containers have repeatedly crossed paths. This caused text archives to show raster black loaders and raster formats to inherit text/WebView behavior.

**Files:**
- Modify: `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderContentPolicy.kt`
- Test: `android/feature-reader/src/test/java/com/example/feature/reader/ui/ReaderContentPolicyTest.kt`

- [ ] Add or restore explicit `ReaderContainerKind` values:
  - `TEXT_PAGE`
  - `TEXT_WEBTOON`
  - `RASTER_PAGE`
  - `RASTER_WEBTOON`

- [ ] Add tests for raster hard-routing:
  - `DJVU + PAGE_LTR -> RASTER_PAGE`
  - `DJVU + WEBTOON -> RASTER_WEBTOON`
  - `PDF + WEBTOON -> RASTER_WEBTOON`
  - `CBR + WEBTOON -> RASTER_WEBTOON`
  - `CBZ + WEBTOON -> RASTER_WEBTOON`
  - `FOLDER + WEBTOON -> RASTER_WEBTOON`

- [ ] Add tests for text hard-routing:
  - `EPUB + PAGE_LTR -> TEXT_PAGE`
  - `MOBI + PAGE_LTR -> TEXT_PAGE`
  - `RTF + PAGE_LTR -> TEXT_PAGE`
  - `DOCX + PAGE_LTR -> TEXT_PAGE`
  - `HTML + PAGE_LTR -> TEXT_PAGE`
  - `MARKDOWN + PAGE_LTR -> TEXT_PAGE`
  - `TXT + PAGE_LTR -> TEXT_PAGE`
  - Same formats with `WEBTOON -> TEXT_WEBTOON`

- [ ] Run:
  - `.\gradlew.bat --console=plain :feature-reader:testDebugUnitTest`

**Expected result:** Routing tests pass. Raster formats cannot enter text/WebView code path. Text formats cannot enter raster decode path.

---

## Task 2: Stabilize Text PAGE Viewport And Insets

**Problem:** PAGE text is cut at the bottom, sometimes starts too high, sometimes scrolls vertically, and chrome/tap recomposition can change viewport height.

**Files:**
- Modify: `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt`
- Modify if needed: `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt`
- Test: `android/feature-reader/src/test/java/com/example/feature/reader/ui/ReaderInteractionPolicyTest.kt`

- [ ] Ensure HTML PAGE receives immutable viewport values:
  - `contentTopInsetPx`
  - `contentBottomInsetPx`
  - `chromeReserveTopPx`
  - `chromeReserveBottomPx`
  - measured viewport width/height

- [ ] If `chromeAutoHideEnabled = true`:
  - reserve system top inset/cutout
  - reserve system bottom inset
  - do not add toolbar height reserve

- [ ] If `chromeAutoHideEnabled = false`:
  - reserve system top/bottom insets
  - reserve visible top toolbar/header height
  - reserve visible bottom toolbar/footer height
  - bottom content gap must be about 1-2 text lines, not zero and not huge

- [ ] PAGE WebView settings must be:
  - `useWideViewPort = false`
  - `loadWithOverviewMode = false`
  - initial scale `100`
  - horizontal scrollbar disabled
  - vertical scrollbar disabled

- [ ] PAGE JS/CSS must enforce:
  - `overflow-y: hidden`
  - `overflow-x: hidden`
  - no raw scrollable HTML fallback after page load
  - layout is not considered ready until paged layout callback succeeds

- [ ] When top/bottom inset or WebView size changes:
  - re-run paged layout calculation
  - do not call `loadDataWithBaseURL()` unless the HTML/load token changed

- [ ] Run:
  - `.\gradlew.bat --console=plain :feature-reader:testDebugUnitTest`
  - `.\gradlew.bat --console=plain :feature-reader:compileDebugKotlin`

**Expected result:** PAGE mode has no vertical scroll, no horizontal scroll, no text under status bar, no text under toolbar, no bottom clipping.

---

## Task 3: Fix PAGE Touch Policy

**Problem:** Chrome panels open by swipe/drag. PAGE mode jumps too far or opens chrome when user intends to turn a page.

**Files:**
- Modify: `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderInteractionPolicy.kt`
- Modify: `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt`
- Test: `android/feature-reader/src/test/java/com/example/feature/reader/ui/ReaderInteractionPolicyTest.kt`

- [ ] Define clean center tap:
  - down/up movement below tap threshold
  - duration below long-press threshold
  - x position inside center tap zone

- [ ] PAGE mode:
  - horizontal swipe turns exactly one page
  - vertical drag is ignored
  - vertical drag never toggles chrome
  - swipe never toggles chrome
  - only clean center tap toggles chrome

- [ ] WEBTOON mode:
  - drag scrolls vertical content
  - drag never toggles chrome
  - clean center tap toggles chrome

- [ ] Run:
  - `.\gradlew.bat --console=plain :feature-reader:testDebugUnitTest`

**Expected result:** Chrome opens only by clean center tap, not by swipe.

---

## Task 4: Repair PAGE Continuity

**Problem:** In PAGE mode, when a page ends mid-sentence, the next page can start from a new paragraph, losing text. This is unacceptable.

**Files:**
- Modify: `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt`
- Modify if needed: `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/UnifiedReaderCssBuilder.kt`
- Test: add focused JVM tests where possible in `android/engine-formats/src/test/kotlin/com/example/engine/formats/text/`

- [ ] Do not split visual PAGE content by arbitrary backend chunks when one backend chunk contains multiple visual pages.

- [ ] Use WebView/CSS visual pagination for the current HTML document:
  - current logical page/section loads once
  - visual subpage index moves within it
  - next logical page loads only after last visual subpage

- [ ] Track progress as:
  - logical page or section index
  - visual subpage index
  - visual subpage count

- [ ] Ensure page turn forward:
  - if `subPageIndex + 1 < subPageCount`, move transform/column offset only
  - else navigate to next logical page

- [ ] Ensure page turn backward:
  - if `subPageIndex > 0`, move transform/column offset only
  - else navigate to previous logical page and last subpage

- [ ] Run manual emulator check:
  - EPUB `Под солнцем_868805.epub`
  - EPUB `S_Skott_...epub`
  - TXT plain file
  - DOCX sample
  - turn at least 6 pages

**Expected result:** If a sentence ends halfway at the bottom, the next page continues exactly that sentence.

---

## Task 5: Separate Text WEBTOON From PAGE JS

**Problem:** Text WEBTOON has shown missing frontispiece, text jumps, scaling problems, and empty tail to end of book. It must not use PAGE JS.

**Files:**
- Modify: `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt`
- Modify or create: `android/feature-reader/src/main/java/com/example/feature/reader/ui/components/TextWebtoonView.kt`
- Do not modify for this task: `android/feature-reader/src/main/java/com/example/feature/reader/ui/components/WebtoonView.kt` unless it is only dispatching to the text component.

- [ ] Text WEBTOON must use a dedicated vertical HTML WebView/container.

- [ ] Text WEBTOON HTML must include:
  - `meta viewport width=device-width, initial-scale=1.0`
  - no CSS columns
  - no PAGE transform
  - normal vertical document flow
  - sane paragraph spacing
  - no forced text justification that creates huge word gaps

- [ ] Text WEBTOON must include first sections:
  - cover/frontispiece/title page when present
  - then normal spine/text sections

- [ ] Text WEBTOON section loading:
  - append/preload sections in order
  - no blank tail after several sections
  - preserve scroll position when appending

- [ ] Text WEBTOON chrome behavior:
  - clean center tap toggles chrome
  - drag does not toggle chrome
  - visible chrome does not cover text

- [ ] Run:
  - `.\gradlew.bat --console=plain :feature-reader:compileDebugKotlin`

**Expected result:** WEBTOON text scrolls normally, frontispiece is visible, no PAGE behavior leaks into WEBTOON.

---

## Task 6: EPUB Frontispiece, Cover, Title, Anchors

**Problem:** EPUB previously lost frontispiece, flickered after media-first pages, skipped pages, and anchors could land incorrectly.

**Files:**
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/epub/EpubFormatReader.kt`
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/epub/EpubFootnoteParser.kt`
- Test: `android/engine-formats/src/test/kotlin/com/example/engine/formats/epub/`

- [ ] Add regression sample references for:
  - `Под солнцем_868805.epub`
  - `S_Skott_...epub`
  - `epub_alice_gutenberg.epub`

- [ ] Preserve cover/frontispiece/title spine entries as normal ordered sections.

- [ ] Do not merge media-first pages into adjacent text sections.

- [ ] Do not run generic paragraph fragment splitter inside image-only cover/frontispiece section.

- [ ] Anchor navigation:
  - map `href#id` to section/logical page
  - after load, target anchor appears near top of visible area
  - no vertical scroll inside PAGE visual subpage after navigation

- [ ] Run:
  - `.\gradlew.bat --console=plain :engine-formats:testDebugUnitTest`

**Expected result:** EPUB frontispiece displays, following pages do not disappear, and TOC/anchors land predictably.

---

## Task 7: Footnotes And Anchors Across Text Formats

**Problem:** Footnote marks can appear as plain text, not clickable; some clicks navigate instead of opening popup.

**Files:**
- Modify: `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderViewModel.kt`
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/FormatReader.kt`
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/epub/EpubFormatReader.kt`
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/fb2/Fb2FormatReader.kt`
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/TextFormatReader.kt`
- Modify if present: `MobiFormatReader` or MOBI support inside `TextFormatReader.kt`

- [ ] Normalize noteref patterns:
  - `role="doc-noteref"`
  - `epub:type="noteref"`
  - `.footnote-ref`
  - `.fn`
  - `data-footnote-id`
  - `href="#fn..."`
  - `href="#note..."`
  - `href="#footnote..."`
  - FB2-style `fbanchor://...`
  - MOBI filepos/name/id anchors where available

- [ ] Footnote click order:
  - look up `formatReader.getFootnoteText(hrefOrId)`
  - if miss, look up current HTML fallback note element
  - if still miss, treat as normal anchor navigation

- [ ] Visual behavior:
  - footnote numbers are accent-colored links
  - popup opens without moving current reading position

- [ ] Required manual checks:
  - EPUB `Под солнцем_868805.epub`: `[1]` after `Жоанну`
  - MOBI sample with known footnotes
  - FB2 sample with notes

**Expected result:** Footnote marks open popup first; navigation only happens for non-footnote anchors.

---

## Task 8: Archive Text Opening And Cache

**Problem:** Text files inside archives can black-screen, show endless loaders, or route through wrong reader. ZIP/RAR/7Z/TAR text archives may lose content.

**Files:**
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/archive/ArchiveFormatSupport.kt`
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/zip/ZipFormatReader.kt`
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/rar/RarFormatReader.kt`
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/sevenz/SevenZFormatReader.kt`
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/tar/TarFormatReader.kt`

- [ ] Classify archive before reader creation:
  - single text book
  - image sequence
  - mixed/unsupported

- [ ] Text archive delegate:
  - TXT/HTML/RTF/MOBI/EPUB/DOCX/MD inside archive goes to text reader delegate
  - delegate receives stable file/cache path or stream
  - delegate does not route through raster loader

- [ ] Raster archive delegate:
  - CBZ/CBR/image sequence goes only to raster reader

- [ ] Fix `ZipException: no read access for input zip file`:
  - if source is content URI, copy once to accessible cache file
  - open Zip4j/native readers from cache file
  - cache key includes source identity, size/mtime, entry path

- [ ] Persistent extraction cache:
  - reuse extracted entry on second open
  - invalidate when archive size/mtime changes

- [ ] Run:
  - `.\gradlew.bat --console=plain :engine-formats:testDebugUnitTest`

**Expected result:** Text archives open as text, no black loader forever, second open is faster.

---

## Task 9: MOBI / RTF Performance

**Problem:** MOBI/RTF still open slowly, especially on repeat open.

**Files:**
- Modify: `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/TextFormatReader.kt`
- Modify if present: MOBI support classes under `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/`

- [ ] RTF:
  - detect charset/codepage first
  - use one main parse path
  - only run legacy fallback if mojibake signal is detected
  - avoid repeated full-text compare on each open

- [ ] MOBI:
  - avoid repeated whole-document copies where stream/bounded input works
  - cache parsed payload/session for current source identity
  - keep encoding diagnostics for Russian samples

- [ ] Add diagnostics:
  - `resolvedMode`
  - `anchorCount`
  - `footnoteCount`
  - `archiveCacheHit`

**Expected result:** First open remains correct; repeat open is measurably faster.

---

## Task 10: Raster WEBTOON Regression Verification Only

**Problem:** CBR/CBZ/PDF/DJVU previously showed black loaders in vertical feed and DJVU centering issues. This plan does not fix raster through text paths.

**Files:**
- Inspect only unless regression is confirmed:
  - `android/feature-reader/src/main/java/com/example/feature/reader/ui/components/PageView.kt`
  - `android/feature-reader/src/main/java/com/example/feature/reader/ui/components/WebtoonView.kt`
  - `android/engine-formats/src/main/kotlin/com/example/engine/formats/djvu/`
  - PDF/CBR/CBZ paths under `android/engine-formats`

- [ ] Confirm routing from Task 1 puts raster formats in raster containers.

- [ ] Emulator smoke only:
  - CBR PAGE
  - CBZ WEBTOON
  - PDF WEBTOON
  - DJVU PAGE
  - DJVU WEBTOON

- [ ] If raster regression is found:
  - create separate raster-only plan
  - do not fix in text PAGE/Text WEBTOON tasks

**Expected result:** Raster behavior is not made worse by text fixes.

---

## Required Verification Commands

- [ ] Reader/unit:
  - `.\gradlew.bat --console=plain :feature-reader:testDebugUnitTest`

- [ ] Formats/unit:
  - `.\gradlew.bat --console=plain :engine-formats:testDebugUnitTest`

- [ ] Combined targeted:
  - `.\gradlew.bat --console=plain :engine-formats:testDebugUnitTest :feature-reader:testDebugUnitTest`

- [ ] Final APK:
  - `.\gradlew.bat --console=plain :app:assembleDebug`

- [ ] After build, report:
  - APK path
  - APK size
  - APK timestamp

## Android 16 / API 36 Emulator QA

- [ ] Before install:
  - uninstall old `com.example.mrcomic.debug`
  - install fresh APK

- [ ] Add files through file picker/folder picker, not old DB.

- [ ] PAGE mode text checks, at least 6 turns each:
  - EPUB `Под солнцем_868805.epub`
  - EPUB `S_Skott_...epub`
  - MOBI
  - RTF
  - DOCX
  - HTML
  - Markdown
  - TXT
  - TXT/HTML/EPUB inside ZIP

- [ ] WEBTOON text checks:
  - vertical scroll works
  - center tap toggles chrome
  - drag does not toggle chrome
  - no empty tail to end of book
  - frontispiece/cover appears when source has one

- [ ] Raster checks:
  - CBR/CBZ/PDF/DJVU still open
  - raster WEBTOON does not show all-page black loaders
  - DJVU page is centered correctly

## CodeRabbit

- [ ] Run only after local compile/tests pass.
- [ ] Review slices separately:
  - reader viewport/paging slice
  - text-format/footnote slice
  - archive slice
  - raster slice only if raster files changed
- [ ] If CodeRabbit CLI/auth/rate-limit fails, record it as tooling blocker. Do not claim review completed.

## Completion Criteria

- [ ] PAGE mode has no vertical scroll leakage.
- [ ] PAGE mode has no horizontal scaling/scroll for text.
- [ ] PAGE mode preserves text continuity between pages.
- [ ] WEBTOON mode is a vertical feed only.
- [ ] Chrome toggles only by clean center tap.
- [ ] Visible chrome does not cover text.
- [ ] Hidden chrome still reserves system safe insets.
- [ ] EPUB frontispiece/title/cover no longer disappears.
- [ ] EPUB/MOBI/FB2 footnotes open popup where supported.
- [ ] Text archives open through text delegate and do not black-screen forever.
- [ ] Raster formats are not routed through text paths.
- [ ] Final APK builds and timestamp is fresh.

