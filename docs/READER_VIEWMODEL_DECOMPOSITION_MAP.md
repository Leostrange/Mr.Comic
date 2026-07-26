# ReaderViewModel Decomposition Map

> Generated from `feature-reader/.../ui/ReaderViewModel.kt` (~3643 lines)
> File size: ~167 KB
> Analysis date: 2025-01

---

## 1. Top-Level Sections / Function Groups

| # | Group | Lines (approx) | Functions |
|---|-------|---------------|-----------|
| A | **Fields, State, Init** | 1–251 | class declaration, init block |
| B | **Book Opening / Lifecycle** | 253–548 | loadComicById, loadComic, openComic, localizedReaderError, currentReaderUiLanguage, localizedReaderText |
| C | **Page Loading / Rendering** | 550–911 | getPage, getPageFlow, loadPage, preloadWebtoonWindow, ensureTextWebtoonDocumentLoaded, scheduleHighQualityWarmup, setHighQualityFocusPages |
| D | **Selected Text Actions** | 913–991 | showSelectedTextActions, dismissSelectedTextActions, translateFromSelectedTextActions, openDictionaryFromSelectedTextActions, saveQuoteFromSelectedTextActions, saveQuoteDirectly, explainFromSelectedTextActions, explainSelectedTextDirect, highlightSelectedText |
| E | **Text Highlights** | 993–1048 | confirmHighlight, dismissHighlight, deleteHighlight, loadHighlightsForCurrentPage, injectHighlightsJs |
| F | **Translation / Dictionary / LLM Explain** | 1053–1805 | compareTranslations, dismissTranslationComparison, translateCurrentChapter, translateSelectedText, translateSelectedTextWithTransport, translateSelectedTextAsPhrase, openDictionaryForSelectedText, explainSelectedTextFromResult, dismissSelectedTextTranslation, saveQuoteFromSelectedTextResult, explainSelectedText, buildDictionaryExplanation |
| G | **Chrome UI / State** | 1807–1848, 2019–2025 | onCenterTap, toggleChromeUi, hideChrome, showMinimalChrome, showExpandedChrome, toggleTocSheet, toggleTextSettings |
| H | **Footnote Handling** | 1850–2017 | onAnchorClick, readerFootnoteCandidates, looksLikeReaderFootnoteAnchor, extractCurrentHtmlFootnote, showFootnotePopup, showInlineFootnote, consumePendingScrollToAnchor, consumePendingWebtoonSection, dismissFootnote, openHtmlAsset, expandFootnote, collapseFootnote |
| I | **Style / Preset Management (remaining)** | 2027–2125 | thin delegates to ReaderSettingsController + updateReaderStylePresetEntries, persistReaderStylePresetEntries, persistNullablePreference, applyReaderStylePresetSnapshot |
| J | **Bookmarks** | 2127–2186 | toggleBookmark, removeBookmark, loadBookmarks, saveBookmarks, saveBookmarksForComic |
| K | **Page Translation Note** | 2188–2200 | loadPageTranslationNote |
| L | **TOC Loading** | 2202–2322 | scheduleDeferredTocWarmup, scheduleDeferredPageCountResolution, loadToc, syncBookEngineTextLayer |
| M | **Reading Mode / Orientation** | 2324–2419, 2435–2456 | setReadingMode, onOrientationChanged, applyReadingMode, setLandscapeSpreadEnabled, setPreloadPages |
| N | **Settings Delegation (ReaderSettingsController passthrough)** | 2421–2512 | ~40 thin setters delegated to settingsController |
| O | **Progress Tracking / Save** | 2514–3011 | saveProgress, rememberChapterMilestoneAnchor, maybeEmitChapterMilestone, emitProgressRecap, syncReaderPosition, calculateAccuratePage, accumulatedTotalPagesForEpub, isProgressAlreadyPersisted, flushPendingProgressSave |
| P | **Lifecycle Cleanup** | 3013–3078 | onCleared, emitReaderClosed |
| Q | **Preference Restoration** | 3080–3319 | readReaderPreferencesSnapshot, restoreReaderPreferences |
| R | **Eye Rest Reminder** | 3321–3343 | snoozeEyeRestReminder, restartEyeRestTimer |
| S | **Format Detection & Path Resolution** | 3345–3488 | detectFormatForPath, resolveReadablePath, cacheContentUriForEpub, resolveReadablePathFromPersistedPermissions, isDocumentInsideTree, documentIdToExternalPath, isLocalFileReadable, hasReadAccess |
| T | **Translation Settings Resolution** | 3490–3588 | resolveTranslationTargetLanguage, resolveTranslationSettings, resolveSingleWordDictionaryMatch, resolveReaderDictionaryEntry, showSelectedTextDictionaryResult, countSelectionTokens |
| U | **Quote Saving** | 3590–3629 | saveQuote |
| V | **Utility** | 3631–3642 | isNetworkAvailable, SELECTION_TOKEN_REGEX companion |

---

## 2. Detailed Function Listing by Group

### A. Fields, State, Init (lines 123–251)

| Function / Field | Lines | Description |
|---|---|---|
| `ChapterMilestoneMarker` data class | 123–126 | Top-level data class |
| Constructor params (DI) | 130–152 | 22 injected dependencies |
| `_uiState`, `uiState` | 154–155 | Main state flow |
| Event flows (ocr, eyeRest, quoteSave, progressRecap) | 157–165 | SharedFlow events |
| `readerPreferences`, `settingsController` | 167–173 | Settings controller wiring |
| `renderProfile`, `formatReader`, `activeBookSession` | 174–177 | Core reader references |
| `documentSession` getter | 182–188 | Adapter for DocumentSession |
| `textWebtoonSessionController`, `textReaderOrchestrator` | 189–195 | Text reader orchestration |
| `_webtoonHtmlCache` | 201–204 | HTML cache for webtoon |
| Job fields (8 jobs) | 205–213 | loadComicJob, tocLoadJob, etc. |
| `sectionPageCounts`, `totalBookSections` | 220–227 | EPUB progress tracking |
| `encodedUri`, `encodedComicId`, `pendingRequestedPage` | 231–233 | SavedStateHandle args |
| `portraitReadingMode`, `portraitPagedReadingMode` | 240–241 | Mode memory |
| `init {}` | 243–251 | Restores prefs then loads comic |

### B. Book Opening / Lifecycle (lines 253–548, +3345–3488)

| Function | Lines | Size |
|---|---|---|
| `loadComicById(comicId)` | 253–266 | 14 |
| `loadComic(path)` | 268–283 | 16 |
| `openComic(comic, sourcePath, requestToken)` | 285–529 | **245** |
| `localizedReaderError(messageProvider)` | 531–536 | 6 |
| `currentReaderUiLanguage()` | 538–541 | 4 |
| `localizedReaderText()` | 543–548 | 6 |
| `openTextFormatReader(comic, path, format)` | 2786–2818 | 33 |
| `closeActiveBookSession()` | 2820–2829 | 10 |
| `closeReaderResources()` | 2831–2836 | 6 |
| `detectFormatForPath(path)` | 3345–3369 | 25 |
| `resolveReadablePath(comic, fallbackPath)` | 3371–3416 | **46** |
| `cacheContentUriForEpub(comic, contentUri)` | 3418–3423 | 6 |
| `resolveReadablePathFromPersistedPermissions(comic)` | 3425–3451 | 27 |
| `isDocumentInsideTree(treeDocId, docId)` | 3453–3458 | 6 |
| `documentIdToExternalPath(documentId)` | 3460–3472 | 13 |
| `isLocalFileReadable(path)` | 3474–3480 | 7 |
| `hasReadAccess(path)` | 3482–3488 | 7 |
| **Subtotal** | | **~470 lines** |

### C. Page Loading / Rendering (lines 550–911, +2749–2784, +2838–2902)

| Function | Lines | Size |
|---|---|---|
| `getPage(index, renderQuality)` | 550–551 | 2 |
| `getPageFlow(index, renderQuality)` | 554–555 | 2 |
| `loadPage(index, renderQuality)` | 557–647 | **91** |
| `preloadWebtoonWindow(pages)` | 649–687 | 39 |
| `ensureTextWebtoonDocumentLoaded()` | 689–722 | 34 |
| `setHighQualityFocusPages(indices)` | 789–804 | 16 |
| `scheduleHighQualityWarmup(page)` | 885–911 | 27 |
| `applyHighQualityRetention(indices)` | 2749–2753 | 5 |
| `activeComicSupportsBitmapPreload()` | 2755–2756 | 2 |
| `clearHtmlPageCache()` | 2758–2769 | 12 |
| `scheduleTextPagePaginationBuild()` | 2778–2784 | 7 |
| `refreshAdjacentHtmlPages(centerPage)` | 2838–2853 | 16 |
| `getCachedHtmlPage(index)` | 2855–2856 | 2 |
| `getOrLoadHtmlPage(reader, index)` | 2858–2866 | 9 |
| `prewarmHtmlPagesAround(centerPage, delay)` | 2868–2883 | 16 |
| `activeComicSupportsHighResZoom()` | 2885–2886 | 2 |
| `tocDisplayPage(enginePageIndex)` | 2771–2776 | 6 |
| **Subtotal** | | **~290 lines** |

### D. Selected Text Actions (lines 913–991)

| Function | Lines | Size |
|---|---|---|
| `showSelectedTextActions(selectedText)` | 913–933 | 21 |
| `dismissSelectedTextActions()` | 935–937 | 3 |
| `translateFromSelectedTextActions()` | 939–946 | 8 |
| `openDictionaryFromSelectedTextActions()` | 948–955 | 8 |
| `saveQuoteFromSelectedTextActions()` | 957–966 | 10 |
| `saveQuoteDirectly(selectedText)` | 968–975 | 8 |
| `explainFromSelectedTextActions()` | 977–981 | 5 |
| `explainSelectedTextDirect(selectedText)` | 983–985 | 3 |
| `highlightSelectedText(selectedText)` | 987–991 | 5 |
| **Subtotal** | | **~71 lines** |

### E. Text Highlights (lines 993–1048)

| Function | Lines | Size |
|---|---|---|
| `confirmHighlight(colorArgb)` | 993–1020 | 28 |
| `dismissHighlight()` | 1022–1024 | 3 |
| `deleteHighlight(id)` | 1026–1033 | 8 |
| `loadHighlightsForCurrentPage()` | 1035–1043 | 9 |
| `injectHighlightsJs()` | 1045–1048 | 4 |
| **Subtotal** | | **~52 lines** |

### F. Translation / Dictionary / LLM Explain (lines 1053–1805, +3490–3588)

| Function | Lines | Size |
|---|---|---|
| `compareTranslations(selectedText)` | 1053–1089 | 37 |
| `dismissTranslationComparison()` | 1091–1093 | 3 |
| `translateCurrentChapter()` | 1099–1166 | **68** |
| `translateSelectedText(text, transport, preferDict)` | 1168–1528 | **361** |
| `translateSelectedTextWithTransport(transport)` | 1530–1537 | 8 |
| `translateSelectedTextAsPhrase()` | 1539–1547 | 9 |
| `openDictionaryForSelectedText()` | 1549–1557 | 9 |
| `explainSelectedTextFromResult()` | 1559–1562 | 4 |
| `dismissSelectedTextTranslation()` | 1564–1566 | 3 |
| `saveQuoteFromSelectedTextResult()` | 1568–1577 | 10 |
| `explainSelectedText(selectedText)` | 1579–1771 | **193** |
| `buildDictionaryExplanation(entry, uiLanguage)` | 1773–1805 | 33 |
| `resolveTranslationTargetLanguage()` | 3490–3492 | 3 |
| `resolveTranslationSettings()` | 3494–3519 | 26 |
| `resolveSingleWordDictionaryMatch(...)` | 3521–3536 | 16 |
| `resolveReaderDictionaryEntry(...)` | 3538–3556 | 19 |
| `showSelectedTextDictionaryResult(...)` | 3558–3585 | 28 |
| `String.countSelectionTokens()` | 3587–3588 | 2 |
| **Subtotal** | | **~832 lines** |

### G. Chrome UI / State (lines 1807–1848, 2019–2025)

| Function | Lines | Size |
|---|---|---|
| `onCenterTap()` | 1807–1816 | 10 |
| `toggleChromeUi()` | 1818–1828 | 11 |
| `hideChrome()` | 1830 | 1 |
| `showMinimalChrome()` | 1832 | 1 |
| `showExpandedChrome()` | 1834 | 1 |
| `toggleTocSheet()` | 1837–1848 | 12 |
| `toggleTextSettings()` | 2020–2025 | 6 |
| **Subtotal** | | **~42 lines** |

### H. Footnote Handling (lines 1850–2017)

| Function | Lines | Size |
|---|---|---|
| `onAnchorClick(href)` | 1859–1914 | **56** |
| `readerFootnoteCandidates(cleanHref, fragPart)` | 1916–1918 | 3 |
| `looksLikeReaderFootnoteAnchor(anchor)` | 1920–1922 | 3 |
| `extractCurrentHtmlFootnote(anchorId, href)` | 1924–1952 | 29 |
| `showFootnotePopup(html)` | 1954–1962 | 9 |
| `showInlineFootnote(text)` | 1965–1973 | 9 |
| `consumePendingScrollToAnchor()` | 1998–2000 | 3 |
| `consumePendingWebtoonSection()` | 2002–2004 | 3 |
| `dismissFootnote()` | 2007–2009 | 3 |
| `openHtmlAsset(path)` | 2011 | 1 |
| `expandFootnote()` | 2013–2015 | 3 |
| `collapseFootnote()` | 2017 | 1 |
| **Subtotal** | | **~123 lines** |

### I. Style / Preset Management — Remaining Inline (lines 2027–2125)

| Function | Lines | Size |
|---|---|---|
| `markReaderPresetCustom()` | 2027 | 1 (delegate) |
| `applyReadingPreset(preset)` | 2029 | 1 (delegate) |
| `localizedReaderStyleFallbackName(index)` | 2084 | 1 |
| `updateReaderStylePresetEntries(entries)` | 2086–2097 | 12 |
| `persistReaderStylePresetEntries(entries)` | 2099–2108 | 10 |
| `persistNullablePreference(key, value)` | 2110–2114 | 5 |
| `applyReaderStylePresetSnapshot(snapshot)` | 2116–2125 | 10 |
| **Subtotal** | | **~40 lines** |

### J. Bookmarks (lines 2127–2186)

| Function | Lines | Size |
|---|---|---|
| `toggleBookmark()` | 2130–2150 | 21 |
| `removeBookmark(page)` | 2153–2159 | 7 |
| `loadBookmarks(comicId, totalPages)` | 2161–2176 | 16 |
| `saveBookmarks(pages)` | 2178–2181 | 4 |
| `saveBookmarksForComic(comicId, pages)` | 2183–2186 | 4 |
| **Subtotal** | | **~52 lines** |

### K. Page Translation Note (lines 2188–2200)

| Function | Lines | Size |
|---|---|---|
| `loadPageTranslationNote(comicId, page)` | 2188–2200 | 13 |
| **Subtotal** | | **~13 lines** |

### L. TOC Loading (lines 2202–2322)

| Function | Lines | Size |
|---|---|---|
| `scheduleDeferredTocWarmup(delayMillis)` | 2202–2211 | 10 |
| `scheduleDeferredPageCountResolution(...)` | 2213–2292 | **80** |
| `loadToc(force)` | 2295–2309 | 15 |
| `syncBookEngineTextLayer(reader)` | 2311–2322 | 12 |
| **Subtotal** | | **~117 lines** |

### M. Reading Mode / Orientation (lines 2324–2419, 2435–2456)

| Function | Lines | Size |
|---|---|---|
| `setReadingMode(mode)` | 2324–2342 | 19 |
| `onOrientationChanged(useLandscapeSpread, isTextReader)` | 2348–2367 | 20 |
| `applyReadingMode(mode)` | 2369–2419 | **51** |
| `setLandscapeSpreadEnabled(enabled)` | 2435–2445 | 11 |
| `setPreloadPages(count)` | 2447–2456 | 10 |
| `rememberPortraitMode(mode)` | 2741–2747 | 7 |
| **Subtotal** | | **~118 lines** |

### N. Settings Delegation — Passthrough (lines 2031–2083, 2421–2512)

~55 one-liner functions that delegate directly to `settingsController`. Each is a single expression. **Already extracted** — these are just passthrough facades.

| Lines | Count |
|---|---|
| 2031–2083 | ~17 passthroughs (typography, preset) |
| 2421–2512 | ~38 passthroughs (brightness, animation, tap zones, TTS, chrome icons) |
| **Subtotal** | **~55 lines** (thin delegation) |

### O. Progress Tracking / Save (lines 2514–3011, +2655–2700)

| Function | Lines | Size |
|---|---|---|
| `saveProgress(page, progressSource)` | 2514–2547 | 34 |
| `rememberChapterMilestoneAnchor(page)` | 2549–2558 | 10 |
| `maybeEmitChapterMilestone(page, progressSource)` | 2560–2616 | **57** |
| `emitProgressRecap(...)` | 2618–2653 | 36 |
| `syncReaderPosition(page, mode, persist, source, announce)` | 2655–2685 | 31 |
| `visiblePagesFor(page, mode)` | 2687–2693 | 7 (delegate) |
| `currentChapterFor(page)` | 2695–2700 | 6 (delegate) |
| `enginePageForUiPage(page)` | 2702–2707 | 6 (delegate) |
| `resolveNavigationPage(page, progressSource)` | 2709–2717 | 9 (delegate) |
| `normalizePageForMode(page, mode, totalPages)` | 2719–2723 | 5 (delegate) |
| `pageStepForMode(mode)` | 2725 | 1 (delegate) |
| `effectiveOpeningModeFor(format, readerRendersHtml)` | 2727–2737 | 11 (delegate) |
| `calculateAccuratePage(sectionIndex)` | 2888–2902 | 15 |
| `accumulatedTotalPagesForEpub()` | 2904–2909 | 6 |
| `isProgressAlreadyPersisted(comicId, page)` | 2911–2912 | 2 |
| `flushPendingProgressSave()` | 2914–3011 | **98** |
| **Subtotal** | | **~334 lines** |

### P. Lifecycle Cleanup (lines 3013–3078)

| Function | Lines | Size |
|---|---|---|
| `onCleared()` | 3013–3041 | 29 |
| `emitReaderClosed()` | 3043–3078 | 36 |
| **Subtotal** | | **~65 lines** |

### Q. Preference Restoration (lines 3080–3319)

| Function | Lines | Size |
|---|---|---|
| `readReaderPreferencesSnapshot()` | 3080–3090 | 11 |
| `restoreReaderPreferences()` | 3091–3319 | **229** |
| **Subtotal** | | **~240 lines** |

### R. Eye Rest Reminder (lines 3321–3343)

| Function | Lines | Size |
|---|---|---|
| `snoozeEyeRestReminder(minutes)` | 3321–3323 | 3 |
| `restartEyeRestTimer(initialDelayMinutes)` | 3325–3343 | 19 |
| **Subtotal** | | **~22 lines** |

### S. Format Detection & Path Resolution (lines 3345–3488)

Listed under Group B above — these functions belong to the book-opening lifecycle.

### T. Translation Settings Resolution (lines 3490–3588)

Listed under Group F above — these functions support the translation/dictionary subsystem.

### U. Quote Saving (lines 3590–3629)

| Function | Lines | Size |
|---|---|---|
| `saveQuote(text, translatedText, sourceLanguage, targetLanguage)` | 3590–3629 | 40 |
| **Subtotal** | | **~40 lines** |

### V. Utility (lines 3631–3642)

| Function / Field | Lines | Size |
|---|---|---|
| `isNetworkAvailable()` | 3631–3637 | 7 |
| `SELECTION_TOKEN_REGEX` companion | 3639–3641 | 3 |
| **Subtotal** | | **~10 lines** |

---

## 3. Already Extracted to Separate Files

The following groups are **fully or partially extracted** — the ViewModel holds thin delegates or no code at all:

| Extracted File | What Moved | How Referenced in ViewModel |
|---|---|---|
| `ReaderSettingsController.kt` (~650 lines) | All settings setter functions (typography, chrome, TTS, tap zones, brightness, animation, etc.) | ~55 thin passthrough delegates |
| `ReaderTextToSpeechController.kt` (~680 lines) | Full TTS engine lifecycle, playback, sleep timer, media session | Not directly referenced in ViewModel — composed externally |
| `ReaderProgressAnalytics.kt` (~130 lines) | `positiveProgressDelta`, `navigationProgressDelta`, `countsAsManualPageTurn`, `TitleCompletionPolicy`, `resolveTitleCompletionPolicy`, `shouldEmitChapterProgressRecap`, `resolveGoalCompletedAnalyticsEvent` | Direct function calls |
| `ReaderSessionCoordinator.kt` (~150 lines) | Session lifecycle: `start`, `close`, `recordManualPageTurn`, `updateTotalPages`, `recordChapterTransition`, `currentManualPageTurns` | Field: `readerSessionCoordinator` |
| `ReaderNavigationPolicy.kt` | `visiblePages`, `normalizePage`, `pageStep` | Static method calls |
| `ReaderFootnotePopupPolicy.kt` | `toPopupText` | Static method call in `showFootnotePopup` |
| `ReaderFootnoteAnchorPolicy.kt` | `lookupCandidates`, `isFootnoteAnchor` | Static method calls |
| `ReaderContentPolicy.kt` | `shouldBlockInlineHtmlChapterNavigation` | Static method call in `onAnchorClick` |
| `ReaderInteractionPolicy.kt` | `readerPhraseTranslationAvailable` | Static method call in `translateSelectedText` |
| `ReaderStylePresetReducer.kt` | `applySnapshot`, `setFontSize`, `setColorScheme`, etc. | Static method calls |
| `TextReaderOrchestrator.kt` | HTML page loading, pagination, prewarming, session management | Field: `textReaderOrchestrator` |
| `TextReaderController.kt` | Pagination controller, webtoon document loading | Nested inside TextReaderOrchestrator |
| `TextWebtoonSessionController.kt` | Webtoon session management | Field: `textWebtoonSessionController` |
| `ReaderChapterPolicy.kt` | `currentChapter` | Static method call |
| `ReaderOpeningModePolicy.kt` | `resolve`, `supportsAutomaticLandscapeSpread` | Static method calls |
| `ReaderWebtoonRestorePolicy.kt` | `webtoonRestoreSectionIndex`, `shouldRestoreTextWebtoonSection` | Static method calls |
| `ReaderSectionPagingPolicy.kt` | `sectionPagingStateAfterNavigation` | Static method call |
| `DeferredPageCountPolicy.kt` | `resolveDeferredPageCountWithRetries`, `shouldApplyDeferredPageCount`, `deferredResolvedStartPage` | Static method calls |
| `ReaderTranslationRouteMessagePolicy.kt` | `resolveReaderTranslationUnavailableMessage` | Static method call |
| `ReaderTranslationAvailabilityPolicy.kt` | `readerPhraseTranslationAvailable` | Static method call |
| `TextReaderNavigation.kt` | `enginePageForUiPage`, `resolveNavigationPage`, `tocDisplayPage` | Static method calls |
| `EpubProgressCalculator.kt` | `accumulate`, `absolutePage`, `estimatedTotalPages` | Static method calls |
| `TextBookSessionBridge.kt` | Book session bridge utilities | Exists as separate file |

---

## 4. Groups Still Inline in the ViewModel (Should Be Extracted Next)

| # | Group | Approx Lines | Functions Still Inline |
|---|-------|-------------|----------------------|
| 1 | **Translation / Dictionary / LLM Explain** | ~832 | `translateSelectedText` (361 lines!), `explainSelectedText` (193), `translateCurrentChapter` (68), `compareTranslations` (37), `buildDictionaryExplanation` (33), `showSelectedTextDictionaryResult` (28), `resolveTranslationSettings` (26), `resolveReaderDictionaryEntry` (19), `resolveSingleWordDictionaryMatch` (16), + 10 small helpers |
| 2 | **Preference Restoration** | ~240 | `restoreReaderPreferences()` (229 lines!), `readReaderPreferencesSnapshot()` (11) |
| 3 | **Book Opening / Lifecycle + Path Resolution** | ~470 | `openComic` (245), `resolveReadablePath` (46), `resolveReadablePathFromPersistedPermissions` (27), `detectFormatForPath` (25), `loadComicById` (14), `loadComic` (16), `openTextFormatReader` (33), + 7 small helpers |
| 4 | **Progress Tracking / Flush** | ~334 | `flushPendingProgressSave` (98), `maybeEmitChapterMilestone` (57), `emitProgressRecap` (36), `saveProgress` (34), `syncReaderPosition` (31), `calculateAccuratePage` (15), + 10 delegates/thin functions |
| 5 | **Page Loading / Rendering** | ~290 | `loadPage` (91), `preloadWebtoonWindow` (39), `ensureTextWebtoonDocumentLoaded` (34), `scheduleHighQualityWarmup` (27), `setHighQualityFocusPages` (16), `prewarmHtmlPagesAround` (16), `refreshAdjacentHtmlPages` (16), + 9 small functions |
| 6 | **Footnote Handling** | ~123 | `onAnchorClick` (56), `extractCurrentHtmlFootnote` (29), + 10 small functions |
| 7 | **Reading Mode / Orientation** | ~118 | `applyReadingMode` (51), `onOrientationChanged` (20), `setReadingMode` (19), `setLandscapeSpreadEnabled` (11), `setPreloadPages` (10), `rememberPortraitMode` (7) |
| 8 | **TOC Loading** | ~117 | `scheduleDeferredPageCountResolution` (80), `loadToc` (15), `syncBookEngineTextLayer` (12), `scheduleDeferredTocWarmup` (10) |
| 9 | **Lifecycle Cleanup** | ~65 | `onCleared` (29), `emitReaderClosed` (36) |
| 10 | **Text Highlights** | ~52 | `confirmHighlight` (28), `loadHighlightsForCurrentPage` (9), `deleteHighlight` (8), + 2 small |
| 11 | **Bookmarks** | ~52 | `toggleBookmark` (21), `loadBookmarks` (16), `removeBookmark` (7), + 2 small |
| 12 | **Selected Text Actions** | ~71 | Mostly thin delegates — `showSelectedTextActions` (21), + 8 one-liners |
| 13 | **Chrome UI / State** | ~42 | 7 trivial state-toggle functions |
| 14 | **Style Preset (remaining inline)** | ~40 | `updateReaderStylePresetEntries` (12), `persistReaderStylePresetEntries` (10), `applyReaderStylePresetSnapshot` (10), + 2 small |
| 15 | **Quote Saving** | ~40 | `saveQuote` (40) |
| 16 | **Eye Rest Reminder** | ~22 | `restartEyeRestTimer` (19), `snoozeEyeRestReminder` (3) |
| 17 | **Network Utility** | ~10 | `isNetworkAvailable` (7) |

---

## 5. Extraction Priority Ranking

Ranked by **impact × feasibility** — larger, more self-contained groups with fewer ViewModel-state dependencies rank higher.

### Priority 1 — CRITICAL (~832 lines, 23% of file)

#### 🔴 Translation / Dictionary / LLM Explain

**Size:** ~832 lines — single largest group
**Functions:** `translateSelectedText`, `explainSelectedText`, `translateCurrentChapter`, `compareTranslations`, `buildDictionaryExplanation`, `resolveTranslationSettings`, `resolveSingleWordDictionaryMatch`, `resolveReaderDictionaryEntry`, `showSelectedTextDictionaryResult`, `countSelectionTokens`, + delegates
**Dependencies on ViewModel state:** `_uiState`, `formatReader`, `readerPreferences`, `languageDetector`, `dictionaryEngine`, `offlineTranslationEngine`, `onlineTranslationEngine`, `llmExplainEngine`, `lookupRouter`, `translatorEngine`, `translationComparisonEngine`
**Why extract:** This is a self-contained translation subsystem. 550+ lines in two functions alone (`translateSelectedText` at 361 lines, `explainSelectedText` at 193 lines). Contains routing logic, engine availability checks, language detection, dictionary lookups, and error messaging. Can be extracted to a `ReaderTranslationController` or split into `ReaderTranslationController` + `ReaderDictionaryController`.
**Testability:** HIGH — all engine dependencies can be mocked. Language detection, routing decisions, and error paths are highly testable in isolation.

---

### Priority 2 — HIGH (~470 lines, 13% of file)

#### 🟠 Book Opening / Lifecycle + Path Resolution

**Size:** ~470 lines
**Functions:** `openComic` (245 lines), `resolveReadablePath` (46), `resolveReadablePathFromPersistedPermissions` (27), `detectFormatForPath` (25), `openTextFormatReader` (33), `closeActiveBookSession`, `closeReaderResources`, `loadComicById`, `loadComic`, + path utilities
**Dependencies:** `formatFactory`, `bookEngineRegistry`, `libraryRepository`, `importRepository`, `formatReader` (mutable), `activeBookSession` (mutable), `openGuard`, `context`
**Why extract:** `openComic` is the second-longest single function. Path resolution is a pure concern that can be a standalone utility. `ReaderBookOpener` or `ReaderContentResolver` are natural extraction targets.
**Testability:** MEDIUM-HIGH — path resolution is pure and highly testable. Book opening needs mocks for format factory and engine registry but is straightforward.

---

### Priority 3 — HIGH (~334 lines, 9% of file)

#### 🟠 Progress Tracking / Save

**Size:** ~334 lines
**Functions:** `flushPendingProgressSave` (98 lines), `maybeEmitChapterMilestone` (57), `emitProgressRecap` (36), `saveProgress` (34), `syncReaderPosition` (31), `calculateAccuratePage` (15), `accumulatedTotalPagesForEpub` (6), + delegates
**Dependencies:** `_uiState`, `libraryRepository`, `dailyReadingGoalStore`, `readerCheckpointStore`, `analyticsTracker`, `readerSessionCoordinator`, `sectionPageCounts`
**Why extract:** Much of the analytics math is already in `ReaderProgressAnalytics.kt`. The remaining orchestration (`flushPendingProgressSave`, `emitProgressRecap`, `maybeEmitChapterMilestone`) can form a `ReaderProgressTracker` that wraps the existing analytics functions.
**Testability:** HIGH — progress calculation, goal tracking, and analytics emission are all testable with mocked repositories.

---

### Priority 4 — MEDIUM-HIGH (~290 lines, 8% of file)

#### 🟡 Page Loading / Rendering

**Size:** ~290 lines
**Functions:** `loadPage` (91 lines), `preloadWebtoonWindow` (39), `ensureTextWebtoonDocumentLoaded` (34), `scheduleHighQualityWarmup` (27), `prewarmHtmlPagesAround` (16), `refreshAdjacentHtmlPages` (16), + helpers
**Dependencies:** `formatReader`, `pagePreloader`, `textReaderOrchestrator`, `_uiState`, `_webtoonHtmlCache`
**Why extract:** `loadPage` is the third-longest function. Page loading has a clear boundary — it takes a page index and produces either a bitmap or HTML content. Can be extracted to `ReaderPageLoader`.
**Testability:** MEDIUM — heavily coupled to mutable `formatReader` reference and `pagePreloader`, but the decision logic (HTML vs bitmap path) is testable.

---

### Priority 5 — MEDIUM (~240 lines, 7% of file)

#### 🟡 Preference Restoration

**Size:** ~240 lines
**Functions:** `restoreReaderPreferences()` (229 lines!), `readReaderPreferencesSnapshot()` (11)
**Dependencies:** `context.dataStore`, `PreferencesKeys`, `_uiState`
**Why extract:** `restoreReaderPreferences` is a 229-line function that reads ~50 preference keys and maps them to UI state. It can be a `ReaderPreferenceRestorer` or a companion function that returns a `ReaderUiState` diff.
**Testability:** HIGH — pure DataStore → state mapping. Given a fake DataStore with known values, the output state is fully deterministic.

---

### Priority 6 — MEDIUM (~123 lines)

#### 🟡 Footnote Handling

**Size:** ~123 lines
**Functions:** `onAnchorClick` (56 lines), `extractCurrentHtmlFootnote` (29), + 10 small delegates
**Dependencies:** `formatReader`, `_uiState`, `ReaderFootnoteAnchorPolicy`, `ReaderFootnotePopupPolicy`, `ReaderContentPolicy`
**Why extract:** `onAnchorClick` is complex with footnote detection, cross-file navigation, and HTML fallback. Can be a `ReaderAnchorHandler` that composes the existing footnote policies.
**Testability:** MEDIUM-HIGH — anchor classification and footnote extraction are testable with sample HTML strings.

---

### Priority 7 — MEDIUM (~118 lines)

#### 🟡 Reading Mode / Orientation

**Size:** ~118 lines
**Functions:** `applyReadingMode` (51 lines), `onOrientationChanged` (20), `setReadingMode` (19), + helpers
**Dependencies:** `_uiState`, `readerPreferences`, `textReaderOrchestrator`
**Why extract:** Mode switching logic is already partially in `ReaderOpeningModePolicy`. The remaining orchestration (`applyReadingMode`) can move to a `ReaderModeController`.
**Testability:** MEDIUM — depends on _uiState reads and writes but the mode-transition logic is deterministic.

---

### Priority 8 — MEDIUM (~117 lines)

#### 🟡 TOC Loading

**Size:** ~117 lines
**Functions:** `scheduleDeferredPageCountResolution` (80 lines), `loadToc` (15), `syncBookEngineTextLayer` (12), `scheduleDeferredTocWarmup` (10)
**Dependencies:** `formatReader`, `textReaderOrchestrator`, `activeBookSession`, `_uiState`
**Why extract:** `scheduleDeferredPageCountResolution` is 80 lines of retry logic. The deferred-count policy math is already in `DeferredPageCountPolicy`; only the coroutine orchestration remains inline.
**Testability:** MEDIUM — retry logic is testable, but timing-dependent coroutines require careful test setup.

---

### Priority 9 — LOW-MEDIUM (~71 lines)

#### 🟢 Selected Text Actions

**Size:** ~71 lines
**Functions:** `showSelectedTextActions` (21 lines), + 8 thin delegates
**Why extract:** These are UI event handlers that delegate to translation/explain/highlight. They form a natural "selected text action" surface that could be a single class or just a namespace of extension functions.
**Testability:** LOW — mostly thin delegates, minimal logic to test.

---

### Priority 10 — LOW-MEDIUM (~65 lines)

#### 🟢 Lifecycle Cleanup

**Size:** ~65 lines
**Functions:** `onCleared` (29 lines), `emitReaderClosed` (36 lines)
**Why extract:** `emitReaderClosed` has session metrics and analytics logic that could live with `ReaderSessionCoordinator` or a `ReaderSessionAnalytics` helper. `onCleared` itself must stay in the ViewModel but can delegate more.
**Testability:** MEDIUM — session close metrics are testable.

---

### Priority 11 — LOW (~52 lines each)

#### 🟢 Text Highlights / Bookmarks

**Size:** ~52 lines each
**Why extract:** Self-contained, simple CRUD on DataStore/preferences. `ReaderHighlightManager` and `ReaderBookmarkManager` are natural names. Low urgency because they're small and clean.
**Testability:** HIGH — simple repository interactions.

---

### Priority 12 — LOW (≤50 lines each)

#### 🟢 Chrome UI / Style Preset Remaining / Quote Saving / Eye Rest / Network Utility

**Size:** 10–42 lines each
**Why extract:** These are small, low-complexity groups. Chrome UI toggles are trivial state mutations. Eye rest and network are tiny utilities. Extract opportunistically during related refactors.

---

## Summary: Recommended Extraction Order

| Phase | Target | Lines Saved | New File Name (suggested) |
|---|---|---|---|
| **Phase 1** | Translation / Dictionary / LLM | ~832 | `ReaderTranslationController.kt` + `ReaderDictionaryHelper.kt` |
| **Phase 2** | Book Opening + Path Resolution | ~470 | `ReaderBookOpener.kt` + `ReaderContentPathResolver.kt` |
| **Phase 3** | Progress Tracking / Flush | ~334 | `ReaderProgressTracker.kt` |
| **Phase 4** | Page Loading / Rendering | ~290 | `ReaderPageLoader.kt` |
| **Phase 5** | Preference Restoration | ~240 | `ReaderPreferenceRestorer.kt` |
| **Phase 6** | Footnote Handling | ~123 | `ReaderAnchorHandler.kt` |
| **Phase 7** | Reading Mode / Orientation | ~118 | `ReaderModeController.kt` |
| **Phase 8** | TOC + Deferred Page Count | ~117 | Already partially in `DeferredPageCountPolicy.kt`; remaining orchestration → `ReaderTocController.kt` |
| **Phase 9+** | Highlights, Bookmarks, Chrome, Quotes, Eye Rest, Utility | ~280 | Smaller extractions as opportunities arise |

**Total inline code that should be extracted: ~2,804 lines** (out of ~3,643 total)

After all extractions, the ViewModel would shrink to ~800 lines: the init block, `onCleared`, thin controller delegation, `_uiState` management, and a few irreducible orchestration calls — which is a healthy size for a ViewModel.

---

## Appendix: Dependency Map (what each group reads/writes)

| Group | Reads from `_uiState` | Writes to `_uiState` | External Dependencies |
|---|---|---|---|
| Translation/Dictionary | comic, currentPage, currentHtmlContent, selectedTextTranslation, selectedTextActionSheet | selectedTextTranslation, selectedTextActionSheet, chapterTranslationProgress, translationComparison, error | languageDetector, dictionaryEngine, offlineTranslationEngine, onlineTranslationEngine, llmExplainEngine, lookupRouter, translatorEngine, translationComparisonEngine, readerPreferences |
| Book Opening | (none — initializes state) | full state reset + init | libraryRepository, importRepository, formatFactory, bookEngineRegistry, context |
| Progress Tracking | comic, currentPage, totalPages, sectionCurrentPage, tableOfContents | comic.isCompleted | libraryRepository, dailyReadingGoalStore, readerCheckpointStore, analyticsTracker, readerSessionCoordinator |
| Page Loading | comic, currentPage, totalPages, readingMode, readerRendersHtmlContent, readerContainerKind, preloadPages | currentHtmlContent, htmlAssetBasePath, textWebtoonHtml* | formatReader, pagePreloader, textReaderOrchestrator |
| Preference Restoration | (none — initializes state) | ~50 state fields | context.dataStore, PreferencesKeys |
| Footnote Handling | currentHtmlContent, readerContainerKind, readingMode, htmlAssetBasePath, currentPage | footnotePopup, footnotePresentation, pendingScrollToAnchor | formatReader, ReaderFootnoteAnchorPolicy, ReaderFootnotePopupPolicy |
| Reading Mode | currentPage, totalPages, readingMode, readerContainerKind, readerRendersHtmlContent, isLandscape, landscapeSpreadEnabled | readingMode, currentPage, readerContainerKind, pendingWebtoonSectionIndex | readerPreferences, textReaderOrchestrator |
