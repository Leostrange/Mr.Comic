# Mr.Comic Bug Tracker

**Repository:** https://github.com/Leostrange/Mr.Comic  
**Branch:** `test`  
**Date:** 2026-09-05  

---

## Classification Legend

| Priority | Meaning |
|----------|---------|
| P0 | Critical — blocks core usage |
| P1 | High — significantly degrades UX |
| P2 | Medium — noticeable but workaround exists |
| P3 | Low — cosmetic or edge-case |

| Category | Meaning |
|----------|---------|
| RDR | Reader — pagination, rendering, gestures |
| FMT | Format — parsing, text splitting, EPUB/FB2/HTML |
| PRG | Progress — seekbar, page count, position persistence |
| UI | UI/Layout — chrome panels, dialogs, landscape |
| PERF | Performance — loading speed |

---

## BUG-01: First page requires double-tap in text formats

**Priority:** P1  
**Category:** RDR  
**Formats:** All text (EPUB, FB2, TXT, HTML)  

**Symptom:** When opening any text format, the first page does not turn on the first swipe/tap. The second attempt works.

**Root cause:** The WebView stays at `alpha=0f` (invisible) until the paged layout JavaScript returns valid page metrics. The initial `applyPagedLayout()` call receives null metrics because the DOM is not yet rendered. Retries at 80ms/320ms eventually succeed, but taps during this window have no visible effect.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderPagedLayoutController.kt` | 61-101 | `applyPagedLayout()` returns without showing WebView when metrics are null |
| `feature-reader/.../ReaderHtmlPageLoadDelegate.kt` | 17-28 | `onPageFinished()` fires layout before DOM is ready |
| `feature-reader/.../ReaderWebView.kt` | 84-97, 283-298 | `pagedModeScrollLock` setter and `markLoadRequested()` set alpha=0f |
| `feature-reader/.../ReaderPagedLayoutJs.kt` | 15-25, 138-162 | `readerPagedLayoutJs()` and `buildPages()` return null when DOM not ready |

**Fix direction:** Show the WebView at `alpha=1f` immediately on first load with page 0. Only defer precise page-boundary computation for subsequent layout refinements. The initial visibility should not depend on JS metrics being available.

---

## BUG-02: FB2 wrong text splitting, gaps between pages

**Priority:** P1  
**Category:** FMT  
**Format:** FB2  

**Symptom:** FB2 pages have incorrect splits with empty gaps between content blocks.

**Root cause:** The `GENERATED_BLOCK_RE` regex in the FB2 parser only matches `<h2>`, `<h3>`, `<p>`, `<blockquote>`, `<br>`. Content that doesn't match (inline elements, `<h4>`-`<h6>`, `<em>`, `<strong>`, bare text between tags) creates tiny inter-block "raw sections" that become standalone pages with empty space.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `engine-formats/.../fb2/Fb2FormatReader.kt` | 51-58 | `GENERATED_BLOCK_RE` — expand regex to include all block-level elements |
| `engine-formats/.../fb2/Fb2FormatReader.kt` | 305-325 | `extractPageBlocks()` — merge non-block content into preceding block |
| `engine-formats/.../fb2/Fb2FormatReader.kt` | 327-352 | `flushPage()` — 4000-char budget causes arbitrary mid-paragraph splits |
| `engine-formats/.../fb2/Fb2FormatReader.kt` | 689-720 | `mergeRawSections()` — `isSemanticSectionStart` too restrictive |

**Fix direction:** Expand `GENERATED_BLOCK_RE` to capture all block-level HTML elements produced by the FB2 parser. In `extractPageBlocks()`, merge consecutive non-block-level content into the preceding block instead of creating separate sections.

---

## BUG-03: FB2 text cut off at bottom when toolbar hide is off

**Priority:** P2  
**Category:** RDR  
**Format:** FB2 (and other text formats)  

**Symptom:** When "hide toolbars while reading" is OFF, text is clipped at the bottom edge by the navigation bar.

**Root cause:** In paged mode, the CSS padding is zeroed out (`topPx = 0`, `bottomPx = 0` in `ReaderHtmlSourceLoader.kt`). The `pageHeight` in the paged layout JS uses `window.innerHeight` which includes the navigation bar area. The bottom portion of text is rendered behind the nav bar.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderHtmlSourceLoader.kt` | 106-113 | `loadInlineSource()` forces `bottomPx = 0` for paged mode |
| `feature-reader/.../ReaderTextChromeLayoutPolicy.kt` | 41-46 | `resolveReaderTextChromeLayoutInsets()` always returns 0 |
| `feature-reader/.../ChromeInsetsPlan.kt` | 104-112 | `textContentBottomInsetPx` computed but not used in paged mode |
| `feature-reader/.../ReaderPagedLayoutJs.kt` | 53-64, 128-129 | `pageHeight` and `rawUsableHeight` don't subtract nav bar |
| `feature-reader/.../ReaderContainerHost.kt` | 209-210 | `contentBottomInsetPx` always 0 in paged mode |

**Fix direction:** Pass the system bottom inset as `pageInsetBottom` to the JS in paged mode, or constrain the WebView container height to exclude the nav bar.

---

## BUG-04: Position not saved when switching reading mode (paged ↔ vertical)

**Priority:** P0  
**Category:** PRG  
**Formats:** Text formats (EPUB, FB2, TXT)  

**Symptom:** Switching between paged mode and vertical webtoon mode loses the current reading position.

**Root cause:** When switching modes, `ReaderHtmlSourceLoader` detects the change via `activePagedMode != requestedPagedMode` and triggers a full document reload. The webtoon scroll position (character offset) is stored in `_uiState.freeScrollCharacterOffset`, but the paged layout controller discards it on reload. Additionally, `savePositionImmediate()` may fire before the 120ms debounce in `ReaderFreeScrollRestoreController` captures the latest position.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderHtmlSourceLoader.kt` | 25-62 | Mode change triggers full reload, discarding webtoon position |
| `feature-reader/.../ReaderReadingModeController.kt` | 42-62, 85-162 | `setReadingMode()` / `applyReadingMode()` — position capture timing |
| `feature-reader/.../ReaderWebView.kt` | 283-298 | `markLoadRequested()` resets free scroll state |
| `feature-reader/.../ReaderFreeScrollRestoreController.kt` | 23-27, 48-49 | `primeRestoreTarget()` / `onScrollChanged()` — debounce skips capture |

**Fix direction:** Before mode switch, synchronously capture the current scroll position (cancel debounce). Pass the captured position as a restore target to the new mode's layout. For webtoon→paged, map the character offset to the nearest page index.

---

## BUG-05: Position not saved when going back to library and returning

**Priority:** P0  
**Category:** PRG  
**Formats:** All  

**Symptom:** Reading position is lost when navigating to the library and back to the reader.

**Root cause:** `onCleared()` in `ReaderViewModel` uses `runBlocking(Dispatchers.IO)` to flush progress, but if the process is killed (not just Activity destroyed), `onCleared()` never executes. The periodic save (every 5 seconds) is the only safety net — up to 5 seconds of reading can be lost. Additionally, `forceSavePositionOnClose()` enqueues a `PendingProgressSave` but doesn't trigger the flush; the flush depends on `onCleared()` running.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderViewModel.kt` | 447-479 | `onCleared()` — `runBlocking` may not execute if process killed |
| `feature-reader/.../ReaderProgressController.kt` | 190-213, 276-298, 538-570 | `forceSavePositionOnClose()` enqueues but doesn't flush; `emitReaderClosed()` doesn't flush |
| `feature-reader/.../ReaderProgressController.kt` | 80-101 | Periodic save interval (5s) — too long for rapid exits |
| `feature-reader/.../ReaderFreeScrollRestoreController.kt` | 48-49 | `onScrollChanged()` skips capture when pending target exists |

**Fix direction:** Flush progress synchronously in `onStop()` (not just `onCleared()`). Reduce periodic save interval to 2s. Add a `ReaderLifecycleObserver` that saves on `ON_STOP` event.

---

## BUG-06: EPUB wrong text distribution

**Priority:** P1  
**Category:** FMT  
**Format:** EPUB  

**Symptom:** Pages in EPUB have uneven text distribution — some pages have very little text, others are overloaded.

**Root cause:** The `mediaFirstPageBottom` heuristic gives a single image an entire dedicated page, leaving disproportionate text for subsequent pages. The heading compaction passes (`compactHeadingAndBlankPages`, `keepHeadingsWithFollowingBody`) can merge unrelated content across section boundaries.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderPagedLayoutJs.kt` | 244-268 | `mediaFirstPageBottom` — too aggressive for non-cover images |
| `feature-reader/.../ReaderPagedLayoutJs.kt` | 340-358 | First page handling — fallback to `contentHeight` creates oversized pages |
| `feature-reader/.../ReaderPagedLayoutJs.kt` | 438-473 | `compactHeadingAndBlankPages` — merges unrelated content |
| `feature-reader/.../ReaderPagedLayoutJs.kt` | 475-521 | `keepHeadingsWithFollowingBody` — extends pages beyond natural boundaries |

**Fix direction:** Restrict `mediaFirstPageBottom` to only activate for book-cover-like images (first image in spine, or specific classes). Make heading compaction respect section boundaries. Target 70-90% page fill instead of arbitrary extension.

---

## BUG-07: Swipe triggers text selection

**Priority:** P1  
**Category:** RDR  
**Formats:** All text formats  

**Symptom:** Swiping to turn a page also triggers text selection highlight in the WebView.

**Root cause:** In paged mode, selection is suppressed only after 4-12px of movement. The 0-4px window allows the browser to initiate selection. In webtoon mode, there is NO selection suppression at all during swipes.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderWebViewTouchController.kt` | 44-88 | `handlePagedTouchEvent()` — selection suppression starts too late |
| `feature-reader/.../ReaderWebViewTouchController.kt` | 145-189 | `handleWebtoonTouchEvent()` — NO selection suppression at all |
| `feature-reader/.../ReaderWebView.kt` | 159-165 | `setUserSelectNone` — only called from paged handler |
| `feature-reader/.../ReaderWebViewJavaScript.kt` | 244-272 | `selectstart` listener — 4px JS threshold leaves gap |
| `feature-reader/.../gesture/PagedGesturePolicy.kt` | 26-29 | `MOVE_THRESHOLD = 12f` — too high |

**Fix direction:** Suppress selection proactively at `ACTION_DOWN` in both paged and webtoon modes when the tap is in a non-link area. Add `suppressWebtoonDragSelection()` to the webtoon touch handler. Reduce MOVE_THRESHOLD to 4px.

---

## BUG-08: Seekbar lies, doesn't match read pages

**Priority:** P1  
**Category:** PRG  
**Formats:** All text formats (especially EPUB)  

**Symptom:** The progress seekbar shows incorrect position — doesn't correspond to actual page numbers.

**Root cause:** For EPUB, the `ReaderBottomBar` Slider uses raw `currentPage`/`totalPages` (spine-level indices) instead of `effectiveCurrentPage`/`effectiveTotalPages` (accumulated visual pages). The slider thumb position and the page counter text can disagree.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../components/ReaderBottomBar.kt` | 193-208 | Slider uses raw `currentPage`/`totalPages` instead of effective values |
| `feature-reader/.../components/ReaderBottomBar.kt` | 52-66 | Progress percentage computation |
| `feature-reader/.../EpubProgressCalculator.kt` | 36-43 | `estimatedTotalPages()` — BUG-RDR-013 comment, estimate too small |
| `feature-reader/.../EpubProgressCalculator.kt` | 58-101 | `accumulate()` — provisional section count causes premature 100% |
| `feature-reader/.../ReaderUiState.kt` | 272-291 | `effectiveTotalPages` / `effectiveCurrentPage` — not used by Slider |

**Fix direction:** Pass `effectiveCurrentPage`/`effectiveTotalPages` to the Slider. Fix `estimatedTotalPages()` to use a more accurate estimate when `totalSections` is provisional.

---

## BUG-09: Book unread, seekbar at 100%, pages still turn

**Priority:** P0  
**Category:** PRG  
**Formats:** EPUB, text formats  

**Symptom:** The seekbar shows 100% and the book is marked as complete, but there are still unread pages.

**Root cause:** When `totalSections` is provisional (fewer than actual), `estimatedTotalPages()` returns a total smaller than reality. Combined with `currentPage` being close to this small total, the completion check `page >= totalPages - 1` fires prematurely.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../EpubProgressCalculator.kt` | 36-43 | `estimatedTotalPages()` — estimate * totalSections too small |
| `feature-reader/.../ReaderProgressPolicy.kt` | 31-43 | `shouldComplete()` — fires on provisional total |
| `feature-reader/.../ReaderProgressController.kt` | 331 | `reachedLastPageSafe` — uses potentially wrong totalPages |
| `feature-reader/.../ReaderBookPreparer.kt` | 82-96 | `shouldDeferReaderPageCount()` always returns true |
| `core-data/.../ComicRepository.kt` | 271-276 | `updateProgress()` guard `totalPages <= 1` |

**Fix direction:** Don't mark as complete when `totalSections` is provisional. Add a `isPageCountProvisional` flag and suppress completion until the deferred page count resolves.

---

## BUG-10: Wrong page count, triple overlay showing 100%

**Priority:** P1  
**Category:** UI/PRG  
**Formats:** All  

**Symptom:** The cover overlay shows three overlapping elements in the top-right corner, all displaying 100% progress for an unfinished book.

**Root cause:** Three separate UI regions can render simultaneously: (1) header overlay, (2) footer overlay, (3) expanded bottom panel. When `chromeAutoHideEnabled = false` and chrome is hidden, both header and footer overlays render. When chrome is expanded, the `ReaderExpandedBottomPanel` also shows its own `ReaderBottomBar`. The `effectiveProgressPercent` uses a potentially wrong (provisional) total, showing 100%.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderChromeOverlays.kt` | 186, 54, 213-235 | Header + footer overlays render simultaneously |
| `feature-reader/.../ReaderChromeBottomPanel.kt` | 22, 103-125 | `ReaderExpandedBottomPanel` adds third progress display |
| `feature-reader/.../ReaderUiState.kt` | 286-291 | `effectiveProgressPercent` — wrong when total is provisional |
| `feature-reader/.../ReaderScreen.kt` | 207-212 | `resolveOverlayLine()` passes wrong percent |

**Fix direction:** Ensure only one progress display is visible at a time. Fix `effectiveProgressPercent` to return 0 or a capped value when total is provisional. Consider hiding the header/footer overlay when chrome is expanded.

---

## BUG-11: Slow file loading (5-7 seconds)

**Priority:** P2  
**Category:** PERF  
**Formats:** All  

**Symptom:** Files take 5-7 seconds to load on a capable device.

**Root cause:** The loading pipeline involves: (1) reader creation/parsing on IO, (2) deferred page count resolution, (3) HTML generation with repeated `Jsoup.parseBodyFragment()` calls for every oversized block, (4) WebView DOM rendering. The `paginateInternal()` function calls `Jsoup.parseBodyFragment()` for every block split, which is expensive.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `engine-formats/.../text/ReflowablePagination.kt` | 38-112 | `paginateInternal()` — repeated Jsoup parsing |
| `engine-formats/.../text/ReflowablePagination.kt` | 131-168 | `splitTextMarkupBlock()` — `Jsoup.parseBodyFragment()` per block |
| `feature-reader/.../ReaderDeferredTasks.kt` | 75-100 | `scheduleDeferredPageCountResolution()` — IO-bound |
| `feature-reader/.../ReaderBookPreparer.kt` | 54-107 | `prepare()` — heavy parsing on IO |
| `feature-reader/.../ReaderPageLoader.kt` | 57-120 | `loadPage()` — runs on Main dispatcher |

**Fix direction:** Cache Jsoup parsing results. Move HTML generation entirely to IO dispatcher. Add preloading/prefetching for the first few pages. Consider streaming HTML generation instead of blocking.

---

## BUG-12: HTML in archive — wrong chapter splitting

**Priority:** P2  
**Category:** FMT  
**Format:** HTML inside CBZ/CBR archives  

**Symptom:** New chapters don't start on new pages. Chapters marked with `<h4>`-`<h6>` or `<section>` are split across pages.

**Root cause:** `isReaderSectionStartBlock()` only recognizes `<h1>`, `<h2>`, `<h3>`. Additionally, `sectionHtmlDocument()` uses `keepWholeDocument=true` for HTML format, bypassing Kotlin-side chapter detection entirely.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `engine-formats/.../text/TextFormatReaderHtml.kt` | 232-243 | `paginateHtmlDocument()` — only splits on h1-h3 |
| `engine-formats/.../text/TextFormatReaderHtml.kt` | 306-312 | `isReaderSectionStartBlock()` — doesn't recognize h4-h6 |
| `engine-formats/.../text/TextFormatReaderSource.kt` | 25-56 | `sectionHtmlDocument()` — `keepWholeDocument=true` bypasses pagination |
| `engine-formats/.../text/ReflowablePagination.kt` | 423-473 | `sectionizeBlocks()` — uses same limited `isReaderSectionStartBlock()` |
| `engine-formats/.../archive/ArchiveDelegatingFormatReader.kt` | 125-136 | Routes HTML to `TextFormatReader` |

**Fix direction:** Expand `isReaderSectionStartBlock()` to recognize h4-h6 and common chapter markers. For HTML-in-archive, use `keepWholeDocument=false` so Kotlin-side pagination splits on chapter headings.

---

## BUG-13: Landscape chrome panels different heights

**Priority:** P2  
**Category:** UI  
**Formats:** All  

**Symptom:** In landscape mode, the top and bottom chrome bars have different heights.

**Root cause:** Default reserves are asymmetric: top = 56dp, bottom = 48dp. The landscape unification logic only runs when `chromeAutoHideEnabled = false`. When auto-hide is on (default), the asymmetry persists.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderScreen.kt` | 234-235 | Default reserves: top=56dp, bottom=48dp — asymmetric |
| `feature-reader/.../ReaderScreen.kt` | 337-340 | Unification logic — only runs in non-auto-hide branch |
| `feature-reader/.../ReaderChromeOverlays.kt` | 283-367 | Top adds statusBarsPadding, bottom adds navigationBarsPadding conditionally |

**Fix direction:** Move the landscape unification logic outside the auto-hide conditional. Or set equal default reserves (e.g., both 52dp).

---

## BUG-14: TTS settings panel too tall in landscape

**Priority:** P2  
**Category:** UI  
**Formats:** All (TTS settings)  

**Symptom:** The TTS/autoplay settings panel covers most of the screen in landscape mode.

**Root cause:** The dialog uses `Modifier.fillMaxSize()` with a fixed 260dp artwork image. In landscape, screen height is ~411dp, so the 260dp image + app bar + controls consume most vertical space.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderAudioSheet.kt` | 115-118 | Dialog fills entire screen |
| `feature-reader/.../ReaderAudioSheet.kt` | 156-162 | Fixed 260dp artwork height |
| `feature-reader/.../ReaderAudioSheet.kt` | 267-497 | Settings section uses `weight(1f)` — gets squeezed |

**Fix direction:** Reduce artwork height in landscape (120-140dp). Cap dialog at 82% of screen height. Consider horizontal layout for landscape.

---

## BUG-15: Crop button visible for all formats in landscape

**Priority:** P3  
**Category:** UI  
**Formats:** CBR/CBZ (should not show crop)  

**Symptom:** The crop button appears in landscape for CBZ/CBR formats (dimmed/locked), but should only show for PDF/DJVU.

**Root cause:** `showCropIcon` only checks `!isTextReader`, not the format. `marginCropAvailable` correctly limits to PDF/DJVU but only controls enabled/disabled state, not visibility.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderChromeOverlays.kt` | 333 | `showCropIcon` — missing format check |
| `feature-reader/.../ReaderChromeComponents.kt` | 409-440 | `ReaderChromeButton.CROP` — only checks `showCropIcon` |
| `core-model/.../Comic.kt` | 266-267 | `supportsDocumentMarginCrop()` — exists but unused in visibility |

**Fix direction:** Add format check to `showCropIcon`: `showCropIcon = uiState.chromeShowCropIcon && !isTextReader && uiState.comic?.format?.supportsDocumentMarginCrop() == true`

---

## BUG-16: Crop dialog doesn't show all 4 sides in landscape

**Priority:** P2  
**Category:** UI  
**Formats:** PDF, DJVU  

**Symptom:** In landscape, the crop dialog doesn't properly display all 4 side controls (top/bottom/left/right).

**Root cause:** The 2-column layout groups sides non-intuitively: left column = [Top, Bottom], right column = [Left, Right]. The 0.82x screen height cap truncates the dialog.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-reader/.../ReaderMarginCropLayoutPolicy.kt` | 10-25 | `sideColumns = 2` for landscape |
| `feature-reader/.../ReaderMarginCropDialog.kt` | 86-96 | `maxHeightDp = 0.82 * screenHeight` — too restrictive |
| `feature-reader/.../ReaderMarginCropDialog.kt` | 198-217 | Side grouping: [Top,Bottom] + [Left,Right] — non-intuitive |

**Fix direction:** Group sides by axis: [Left, Right] + [Top, Bottom]. Increase height cap to 0.88x in landscape. Use compact inline sliders.

---

## BUG-17: Preview doesn't work in covers settings

**Priority:** P2  
**Category:** UI  
**Scope:** Settings → Customization → Covers  

**Symptom:** The "Живой предпросмотр" (Live Preview) in cover settings doesn't reflect changes when selecting different cover themes.

**Root cause:** The `LibraryStylePreview` composable renders abstract placeholder cards with hardcoded gradients. The terms `fileCoverTheme` and `folderCoverTheme` don't exist in the remote codebase. The preview is purely decorative, not functional.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `feature-settings/.../SettingsLibraryPreviews.kt` | 128-250 | `LibraryStylePreview` — uses hardcoded gradients |
| `feature-settings/.../SettingsLibraryPreviews.kt` | 256-532 | `LibraryPreviewVolume` — no cover image loading |
| `feature-settings/.../SettingsLibraryPreviews.kt` | 536-676 | `LibraryPreviewFolder` — no cover image loading |

**Note:** This was partially addressed in the local `test` branch with `painterResource` loading, but the integration with the settings state (`fileCoverTheme`/`folderCoverTheme`) needs verification.

**Fix direction:** Pass `fileCoverTheme`/`folderCoverTheme` from `SettingsUiState` to the preview. Load actual drawable assets (`file_light_01`, `folder_dark_03`) via `painterResource` when a theme is selected.

---

## BUG-18: Swipe inversion doesn't work, no swipe/tap toggle

**Priority:** P1  
**Category:** RDR  
**Formats:** All paged formats  

**Symptom:** The swipe inversion setting doesn't work. There's no toggle between swipe and tap modes.

**Root cause:** `GestureProfile.swipeInverted` exists as a data class but is completely dead code. It is never read by the touch controller, never stored in preferences, never exposed in settings UI. The `ReaderWebViewTouchController` hardcodes `TAP_LEFT` → previous page, `TAP_RIGHT` → next page with no inversion logic.

**Files to fix:**

| File | Lines | What to change |
|------|-------|----------------|
| `core-ui/.../library/GestureProfile.kt` | 9-17 | `swipeInverted` — defined but never used |
| `feature-reader/.../ReaderWebViewTouchController.kt` | 113-133 | `TAP_LEFT`/`TAP_RIGHT` — hardcoded, no inversion |
| `feature-settings/.../SettingsViewModelFlows.kt` | — | No gesture profile flow exists |
| `feature-settings/.../SettingsUiState.kt` | — | No `swipeInverted` field |
| `core-data/.../PreferencesKeys.kt` | — | No gesture preference keys |

**Fix direction:** Wire `GestureProfile` end-to-end: (1) add preference keys, (2) create ViewModelFlows, (3) add to `ReaderUiState`, (4) pass to `ReaderWebViewTouchController`, (5) swap `TAP_LEFT`/`TAP_RIGHT` when inverted, (6) add settings UI toggle.

---

## Summary

| ID | Bug | Priority | Category |
|----|-----|----------|----------|
| BUG-01 | First page double-tap | P1 | RDR |
| BUG-02 | FB2 text gaps | P1 | FMT |
| BUG-03 | FB2 text cut off at bottom | P2 | RDR |
| BUG-04 | Position lost on mode switch | P0 | PRG |
| BUG-05 | Position lost on library navigation | P0 | PRG |
| BUG-06 | EPUB uneven page fills | P1 | FMT |
| BUG-07 | Swipe triggers text selection | P1 | RDR |
| BUG-08 | Seekbar position wrong | P1 | PRG |
| BUG-09 | Seekbar 100% but unread | P0 | PRG |
| BUG-10 | Triple overlay / wrong page count | P1 | UI/PRG |
| BUG-11 | Slow file loading (5-7s) | P2 | PERF |
| BUG-12 | HTML chapter splitting | P2 | FMT |
| BUG-13 | Landscape chrome height mismatch | P2 | UI |
| BUG-14 | TTS panel too tall in landscape | P2 | UI |
| BUG-15 | Crop button for wrong formats | P3 | UI |
| BUG-16 | Crop dialog landscape layout | P2 | UI |
| BUG-17 | Cover preview doesn't work | P2 | UI |
| BUG-18 | Swipe inversion dead code | P1 | RDR |

**Total:** 18 bugs  
**P0 (Critical):** 3 — BUG-04, BUG-05, BUG-09  
**P1 (High):** 7 — BUG-01, BUG-02, BUG-06, BUG-07, BUG-08, BUG-10, BUG-18  
**P2 (Medium):** 7 — BUG-03, BUG-11, BUG-12, BUG-13, BUG-14, BUG-16, BUG-17  
**P3 (Low):** 1 — BUG-15
