# ReaderScreen.kt Decomposition Map

**File:** `feature-reader/src/main/java/io/leostrange/mrcomic/feature/reader/ui/ReaderScreen.kt`
**Total lines:** 3,214
**Generated:** 2025-07-16

---

## 1. Top-Level Composable Functions and Line Ranges

| Function | Lines | Size | Visibility | Description |
|---|---|---|---|---|
| `rememberReaderHtmlPageSource()` | 269–294 | 26 lines | `private` | Remembers and async-builds the HTML page source for WebView |
| `HtmlPageView()` | 1148–1825 | **678 lines** | `internal` | WebView-based text reader composable (EPUB/FB2 HTML rendering) |
| `ReaderScreen()` | 1829–3209 | **1,381 lines** | `public` | Main reader screen — the "god composable" |

**Total composable code:** ~2,085 lines (65% of the file)

---

## 2. Non-Composable Helper Functions, Classes, and Constants

### Sealed Interfaces / Enums

| Name | Lines | Description |
|---|---|---|
| `ReaderHtmlPageSource` (sealed) | 139–153 | Models inline vs file-url HTML sources for WebView |
| `ReaderSelectionAction` (enum) | 314–322 | 7 actions available on text selection (translate, dictionary, explain, etc.) |

### Classes

| Name | Lines | Size | Description |
|---|---|---|---|
| `ReaderFormatAssetPathHandler` | 158–175 | 18 lines | WebViewAssetLoader handler for format resources |
| `ReaderUserFontAssetPathHandler` | 177–216 | 40 lines | WebViewAssetLoader handler for user-imported fonts |
| `ReaderWebView` | 380–1108 | **729 lines** | Custom `WebView` subclass with paged layout, gesture, selection, and fallback logic |

### Top-Level Functions

| Name | Lines | Visibility | Description |
|---|---|---|---|
| `readerAssetDocumentBaseUrl()` | 155–156 | `private` | Builds the asset URL for a document path |
| `readerHtmlCacheFile()` | 218–222 | `private` | Returns the cache file for themed HTML |
| `buildReaderHtmlPageSource()` | 224–256 | `private suspend` | Builds inline or file-based HTML page source |
| `readerHtmlPageSourceReloadKey()` | 258–267 | `internal` | Generates a reload key for page source caching |
| `colorSchemePalette()` | 324–325 | `internal` | Delegate to `ReaderColorScheme.palette()` |
| `readerHeaderFooterReservedHeightDp()` | 327–334 | `private` | Calculates header/footer height reserve |
| `colorSchemePaletteForPreset()` | 336–339 | `internal` | Delegate to `ReaderColorScheme` |
| `normalizeReaderOverrideColor()` | 341–342 | `internal` | Delegate to `ReaderColorScheme` |
| `defaultReaderAccentColor()` | 344–345 | `internal` | Delegate to `ReaderColorScheme` |
| `readerSelectionOverlayColor()` | 347–356 | `internal` | Builds rgba color string for selection overlay |
| `readerColorOverrideHex()` | 358–359 | `private` | Formats a Long color to hex string |
| `normalizedTocTitle()` | 363–364 | `internal` | Collapses whitespace in TOC titles |
| `findReaderHardwareKeyHost()` | 366–370 | `private tailrec` | Walks Context chain to find `ReaderHardwareKeyHost` |
| `buildThemedHtmlDocument()` | 373–374 | `internal` | Delegate to `ReaderHtmlHelpers` |
| `looksLikeReaderStyleJson()` | 376–378 | `private` | Tests if a string is valid JSON object |
| `injectBodyInsetCss()` | 1115–1122 | `internal` | Delegate to `ReaderHtmlHelpers.injectBodyInsetCss()` |
| `WebView.readerCssViewportWidthPxOrNull()` | 1124–1128 | `private` | Extension: CSS viewport width |
| `WebView.readerCssViewportHeightPxOrNull()` | 1130–1134 | `private` | Extension: CSS viewport height |
| `nextReaderUiEventToken()` | 3211–3212 | `private` | Wraps an incrementing event token |

### Constants

| Name | Lines | Description |
|---|---|---|
| `JS_SELECTED_TEXT_HANDLER` | 296–303 | JS snippet to get selected text from WebView |
| `TRANSLATE_SELECTION_MENU_ID` through `COMPARE_TRANSLATIONS_MENU_ID` | 305–311 | 7 menu action ID constants |
| `MAX_INLINE_HTML_SOURCE_LENGTH` | 312 | 6MB threshold for inline vs file HTML source |

---

## 3. Components Already Extracted to Separate Files

### Confirmed extractions (referenced from ReaderScreen.kt via imports)

| Extracted File | What was extracted |
|---|---|
| `ReaderWebViewJavaScript.kt` | `JS_TAP_HANDLER`, `HTML_READER_TAG`, `HTML_READER_BASE_URL`, `HTML_READER_ASSET_PATH`, `HTML_READER_RESET_FREE_SCROLL_JS`, `HTML_READER_BLANK_CHECK_JS` |
| `ReaderChromeComponents.kt` | `ReaderMinimalBar`, `ReaderChromeIconButton`, `ReaderPanelChip`, `ReaderExpandedBar`, `ReaderExpandedActionButtons`, `ReaderBrightnessRow`, `ReaderProgressPill`, `ReaderExpandedBottomPanel`, `ReaderCompactLandscapeBottomPanel`, `SavedPageNoteCard`, `ReaderNotePanel` |
| `ReaderControlCenterSheet.kt` | `ReaderControlCenterSheet` + all tabs (reading, style, services) |
| `ReaderSheets.kt` | `SelectedTextActionSheet`, `HighlightColorPickerSheet`, `ChapterTranslationProgressBar`, `TranslationComparisonSheet`, `SelectedTextTranslationSheet`, `FootnotePopupPanel`, `TocBottomSheet`, `TextPageTranslationSheet`, `TextSettingsSheet` |
| `ReaderHeaderFooterUi.kt` | `rememberReaderClockText()`, `resolveReaderCurrentChapterTitle()`, `resolveReaderInfoOverlayLine()`, `ReaderHeaderFooterTextRow()`, all header/footer string helpers |
| `ReaderPanelSurface.kt` | `readerEffectiveToolbarOpacity()`, `readerEffectiveToolbarBlur()`, `readerPanelSurfaceColor()`, `READER_TOOLBAR_MIN_OPACITY` |
| `ReaderMaterialColorScheme.kt` | `readerMaterialColorScheme()` |
| `ReaderAudioSheet.kt` | `ReaderAudioSheet` composable |
| `ReaderColorScheme.kt` (gesture/) | `ReaderColorScheme` object — color palette logic |
| `ReaderHtmlHelpers.kt` (gesture/) | `buildThemedHtmlDocument()`, `injectBodyInsetCss()` |
| `ReaderContentPolicy.kt` | `ReaderContainerKind`, `shouldBlockReaderAssetSpineNavigation()` |
| `ReaderChromeInsetPolicy.kt` | `visibleChromeContentReservePx()` |
| `ReaderHardwareKeyHost.kt` | `ReaderHardwareKeyHost` interface |
| `ReaderInteractionPolicy.kt` | `previousReaderChapterPage()`, `nextReaderChapterPage()`, `readerModeAllowsHorizontalPageTurn()`, `readerModeLocksHtmlVerticalScroll()`, `resolveReaderHardwareKeyDecision()`, etc. |
| `ReaderStyleJsonExchange.kt` | `buildReaderTypographyExportJson()`, `readerTypographyExportFileName()` |
| `ReaderUiText.kt` | `readerUiText()` |
| `ReaderWebtoonRestorePolicy.kt` | `TEXT_WEBTOON_RESTORE_DELAY_MILLIS` |
| `ReaderTextLayoutFingerprint.kt` | `ReaderTextLayoutFingerprint` |
| `ReaderTextSettingsJs.kt` | `textSettingsJs()` |
| `PagedGesturePolicy.kt` (gesture/) | `PagedGesturePolicy`, `PagedGestureAction` |
| `components/TextContainer.kt` | `TextContainer` composable |
| `components/PageView.kt` | `PageView` composable |
| `components/WebtoonView.kt` | `WebtoonView` composable |
| `components/ReaderBottomBar.kt` | `ReaderBottomBar` composable |
| `components/ImageMessagePopup.kt` | `ImageMessagePopup` composable |
| `rsvp/RsvpOverlay.kt` | `RsvpOverlay` composable |
| `ReaderTextFontCatalog.kt` (core-ui) | `ReaderTextFontCatalog` object |

---

## 4. What's STILL Inline in ReaderScreen.kt That Could Be Extracted

### 4a. `ReaderWebView` class (lines 380–1108, 729 lines)

A massive custom `WebView` subclass containing:
- Paged layout management (apply, retry, settle, reveal-fallback)
- Inline fallback scheduling (file→inline fallback with timer)
- Free-scroll position preservation across document extensions
- Touch/gesture interception for paged + webtoon modes
- Text selection action mode management (7 custom menu items)
- Scroll lock enforcement
- Paged column turning

This is a pure Android View class — **zero Compose dependencies** — making it an ideal extraction candidate.

### 4b. `HtmlPageView` composable (lines 1148–1825, 678 lines)

A large composable that:
- Resolves color schemes, base URLs, and page sources
- Manages 30+ `rememberUpdatedState` lambdas
- Contains a `LaunchedEffect` for auto-scroll
- Contains a massive `AndroidView` factory (350 lines) with:
  - Full WebViewClient implementation (shouldInterceptRequest, onPageStarted, shouldOverrideUrlLoading, onPageFinished, onPageCommitVisible, onReceivedError, onRenderProcessGone)
  - JavascriptInterface registration (7 methods)
  - WebView settings configuration
- Contains a massive `AndroidView` update block (~180 lines) with text settings injection logic

### 4c. WebView-related helpers still inline

| Function | Lines | Description |
|---|---|---|
| `ReaderHtmlPageSource` sealed interface | 139–153 | Data model for HTML sources |
| `readerAssetDocumentBaseUrl()` | 155–156 | Asset URL builder |
| `ReaderFormatAssetPathHandler` | 158–175 | Asset path handler class |
| `ReaderUserFontAssetPathHandler` | 177–216 | Font asset path handler class |
| `readerHtmlCacheFile()` | 218–222 | Cache file helper |
| `buildReaderHtmlPageSource()` | 224–256 | Async page source builder |
| `readerHtmlPageSourceReloadKey()` | 258–267 | Reload key generator |
| `rememberReaderHtmlPageSource()` | 269–294 | Composable page source remember |
| `JS_SELECTED_TEXT_HANDLER` | 296–303 | JS constant (could move to ReaderWebViewJavaScript.kt) |
| `WebView.readerCssViewportWidthPxOrNull()` | 1124–1128 | WebView extension |
| `WebView.readerCssViewportHeightPxOrNull()` | 1130–1134 | WebView extension |
| `injectBodyInsetCss()` | 1115–1122 | Delegation wrapper (could be inlined or moved) |

### 4d. Selection-related code still inline

| Item | Lines | Description |
|---|---|---|
| Menu ID constants (7 values) | 305–311 | `TRANSLATE_SELECTION_MENU_ID` through `COMPARE_TRANSLATIONS_MENU_ID` |
| `ReaderSelectionAction` enum | 314–322 | 7-variant selection action enum |
| `readerSelectionOverlayColor()` | 347–356 | Overlay color helper |

### 4e. ReaderScreen composable internals (lines 1829–3209)

Responsibility groups within the 1,381-line `ReaderScreen`:

| Group | Lines | Approx. Size | Description |
|---|---|---|---|
| **State initialization** | 1834–1907 | 74 lines | Asset loader, font import launcher, misc state |
| **Font management** | 1908–1927 | 20 lines | Font deletion lambda |
| **Style import/export launchers** | 1929–1976 | 48 lines | `readerStyleImportLauncher`, `readerStyleExportLauncher` |
| **Color scheme resolution** | 1977–1990 | 14 lines | `readerColorScheme` computation |
| **Lifecycle effects** | 1992–2027 | 36 lines | OCR navigation, eye-rest, quote-save, orientation lock DisposableEffects |
| **Tap zone layout** | 2029–2066 | 38 lines | `tapZoneLayout`, `directionShortcutActive` computation |
| **Header/footer overlay** | 2067–2293 | **227 lines** | Clock, chapter title, overlay lines, chrome reserve measurements, inset geometry |
| **Tap zone action handler** | 2294–2321 | 28 lines | `handleTapZoneAction` lambda |
| **Hardware key handling** | 2323–2350 | 28 lines | Volume key paging, hardware key host DisposableEffect |
| **TTS integration** | 2352–2391 | 40 lines | TTS content update, text webtoon document ensure |
| **Window management effects** | 2393–2468 | 76 lines | Brightness, keep-screen-on, immersive mode DisposableEffects |
| **Main UI tree** | 2470–2937 | **468 lines** | Loading/error states, content area (reader container switch), bottom panels (notes, footnotes, progress), top chrome bar |
| **Sheet invocations** | 2940–3106 | 167 lines | TOC, text translation, RSVP, audio, control center sheets |
| **Dialog/overlay invocations** | 3107–3207 | 101 lines | Font deletion alert, text action sheets, highlight picker, translation comparison, eye rest alert |

---

## 5. Remaining Inline Content Grouped by Responsibility

### Group A: WebView Infrastructure (~1,150 lines)
The entire WebView subsystem — `ReaderWebView` class, `HtmlPageView` composable, asset path handlers, HTML page source model, and helper extensions. This is the single largest coherent unit in the file.

**Components:**
- `ReaderWebView` class (729 lines)
- `HtmlPageView` composable (678 lines)  
- `ReaderHtmlPageSource` sealed interface (15 lines)
- `ReaderFormatAssetPathHandler` (18 lines)
- `ReaderUserFontAssetPathHandler` (40 lines)
- HTML page source helpers (55 lines)
- WebView extension functions (12 lines)
- `JS_SELECTED_TEXT_HANDLER` (8 lines)
- `injectBodyInsetCss` delegate (8 lines)

### Group B: Selection Action System (~80 lines)
Selection menu IDs, the `ReaderSelectionAction` enum, overlay color helper, and the selection callback wiring in `ReaderWebView` and `HtmlPageView`.

**Components:**
- 7 menu ID constants (7 lines)
- `ReaderSelectionAction` enum (9 lines)
- `readerSelectionOverlayColor()` (10 lines)
- Selection callback wiring in ReaderWebView (50+ lines across methods)

### Group C: Chrome/Overlay Inset Geometry (~230 lines)
The massive inset calculation block in ReaderScreen that computes `textContentTopInsetPx`, `textContentBottomInsetPx`, chrome reserves, and the unified `ReaderViewportGeometry`.

**Components:**
- `readerHeaderFooterReservedHeightDp()` (8 lines)
- Chrome reserve measurement state (~20 lines)
- System inset computation (~30 lines)
- `SideEffect` for stable reserves (~32 lines)
- Auto-hide reserve computation (~30 lines)
- Final inset + CSS pixel conversion (~30 lines)
- `ReaderViewportGeometry.fromMeasured()` (~15 lines)
- Supporting state variables (~40 lines)

### Group D: Window/System Effects (~76 lines)
Three `DisposableEffect` blocks managing brightness, keep-screen-on, and immersive mode.

### Group E: Sheet/Dialog Wiring (~270 lines)
The invocation site for all bottom sheets, dialogs, and overlay composables — these are already extracted but are wired up in ReaderScreen. The wiring itself is the extraction opportunity.

**Sub-groups:**
- Sheet invocations (TOC, translation, RSVP, audio, control center): ~167 lines
- Dialog/overlay invocations (font delete, text actions, highlights, eye rest): ~101 lines

### Group F: Main Content Tree (~470 lines)
The `when` block over `ReaderContainerKind` (TEXT_WEBTOON, TEXT_PAGE, RASTER_WEBTOON, RASTER_PAGE) and the bottom/top chrome panels.

---

## 6. Extraction Candidates Ranked by Priority

### Priority 1: Extract `ReaderWebView` to its own file (~729 lines)

**Impact:** Removes the single largest class from ReaderScreen.kt. Zero Compose dependencies, pure Android View code.
**Risk:** Low — the class has no circular dependencies on ReaderScreen's local state.
**File:** `ReaderWebView.kt`
**Dependencies to break:** References `PagedGesturePolicy`, `ReaderSelectionAction`, menu ID constants, `readerHtmlSelectionActionsEnabled()`, `readerHtmlReloadResetsScroll()`, `readerHtmlModeChangeRequiresPagedLayoutTeardown()`, `readerTextWebtoonBoundaryNavigationStep()`, and JS constants from `ReaderWebViewJavaScript.kt`.
**What to include:** The `ReaderWebView` class, `ReaderSelectionAction` enum, all 7 menu ID constants, and the `JS_SELECTED_TEXT_HANDLER` constant (or move that to `ReaderWebViewJavaScript.kt`).

### Priority 2: Extract `HtmlPageView` composable to its own file (~678 lines)

**Impact:** Second-largest composable removed from ReaderScreen. Contains self-contained WebView rendering logic.
**Risk:** Medium — it references `ReaderWebView` (which must be extracted first or simultaneously), asset path handler classes, and many helper functions.
**File:** `HtmlPageView.kt`
**Dependencies to bring along:** `ReaderHtmlPageSource` sealed interface, `ReaderFormatAssetPathHandler`, `ReaderUserFontAssetPathHandler`, `readerAssetDocumentBaseUrl()`, `readerHtmlCacheFile()`, `buildReaderHtmlPageSource()`, `readerHtmlPageSourceReloadKey()`, `rememberReaderHtmlPageSource()`, `injectBodyInsetCss()`, `WebView.readerCssViewportWidthPxOrNull()`, `WebView.readerCssViewportHeightPxOrNull()`, `looksLikeReaderStyleJson()`.

### Priority 3: Extract chrome inset geometry computation (~230 lines)

**Impact:** Removes the densest and most confusing block from ReaderScreen — the ~230-line measurement/inset/reserve calculation.
**Risk:** Medium — needs access to many `uiState` fields and `density`/`configuration` locals, but these can be passed as parameters.
**File:** `ReaderChromeInsetGeometry.kt` (pure computation, not composable)
**Or:** `ReaderChromeInsetPolicy.kt` already exists — consider merging into it.

### Priority 4: Extract window/system effects to a composable helper (~76 lines)

**Impact:** Removes three `DisposableEffect` blocks for brightness, keep-screen-on, immersive mode.
**Risk:** Low — these are self-contained window-management effects.
**File:** `ReaderWindowEffects.kt`
**Signature:** `@Composable internal fun ReaderWindowEffects(brightness: Float, keepScreenOn: Boolean, immersiveMode: Boolean)`

### Priority 5: Extract content-tree composable (~470 lines)

**Impact:** Separates the main reader content area (loading, error, reader container switch, bottom panels, top chrome) into its own composable.
**Risk:** High — many local state variables and callbacks are shared between the content tree and the surrounding sheets/dialogs. Requires careful parameter design.
**File:** `ReaderContentTree.kt`
**Approach:** Extract a `ReaderContentArea` composable that takes the necessary state and callbacks as parameters.

### Priority 6: Extract selection overlay color helper

**Impact:** Tiny, but consolidates all selection-related helpers.
**Risk:** Negligible.
**File:** `ReaderSelectionHelpers.kt` or merge into `ReaderColorScheme.kt`

---

## Summary Statistics

| Metric | Value |
|---|---|
| Total lines in ReaderScreen.kt | 3,214 |
| Lines in ReaderWebView class | 729 (23%) |
| Lines in HtmlPageView composable | 678 (21%) |
| Lines in ReaderScreen composable | 1,381 (43%) |
| Lines in other helpers/constants | 426 (13%) |
| Lines that are imports | 124 (4%) |
| **Extractable with low risk** | ~1,550 lines (ReaderWebView + HtmlPageView + helpers) |
| **Extractable with medium risk** | ~300 lines (inset geometry + window effects) |
| **Extractable with high risk** | ~470 lines (content tree) |

**After Priority 1+2 extraction, ReaderScreen.kt would shrink to ~1,800 lines** — still large but containing only the ReaderScreen composable and its direct helpers.

**After all extractions, ReaderScreen.kt would shrink to ~1,000 lines** — focused purely on state orchestration and sheet/dialog wiring.
