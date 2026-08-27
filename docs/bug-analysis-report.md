# Mr.Comic Bug Analysis Report

**Date:** 2026-08-19
**Scope:** 17 active bugs from video analysis, bug tracker, and APK static analysis
**Excluded:** Autoscroller viewport defect (fixed), black bar during autoscroller (fixed), Settings → Translation → Dictionaries crash (excluded by owner)

---

## Executive Summary

After thorough codebase analysis, I've identified root causes and current implementation state for all 17 bugs. The most critical issues are:

1. **P0/P1 bugs (7):** Position persistence, progress synchronization, TOC navigation, footnotes vs gestures, quote navigation
2. **P2 bugs (7):** Text selection, padding consistency, reading mode/theme coupling, UI consistency, preview component
3. **P3 bugs (2):** HTML title overflow, seekbar desync

The codebase shows a well-structured reader architecture with separate rendering paths for raster/vertical/text content, but several state synchronization issues remain unresolved.

---

## Detailed Bug Analysis

### Reader / Vertical Mode

#### BUG-VERTICAL-01 — Seekbar/Position Desync
**Priority:** P1 | **Area:** Reader State / Scroll / Progress

**Root Cause Analysis:**
The seekbar (Slider) in `ReaderBottomBar.kt` uses `currentPage` from `_uiState`, while the actual scroll position in vertical mode is tracked separately by:
- `freeScrollProgression` (0..1) for text webtoon
- `freeScrollCharacterOffset` for character-based positioning
- `sectionCharacterOffset` for paged text

The seekbar value is NOT derived from the scroll state directly—it's a separate `currentPage` integer that gets updated via `navigationController` callbacks. In vertical mode, the WebView's scroll position may update without properly syncing back to the seekbar.

**Current Implementation:**
```kotlin
// ReaderBottomBar.kt:142
Slider(
    value = freeScrollProgression.toFloat().coerceIn(0f, 1f),
    onValueChange = { onProgressionChange?.invoke(it) },
    ...
)
```

The seekbar has two paths:
1. Text webtoon: uses `freeScrollProgression` (continuous 0..1)
2. Paged mode: uses `currentPage` integer

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/components/ReaderBottomBar.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderChromeBottomPanel.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderViewModel.kt` (onFreeScrollPositionChanged)

**Suggested Fix:**
Unify position state: DocumentPosition → ScrollPosition → ReadingProgress → SeekBar. The seekbar should derive its value from a single source of truth (either the scroll fraction or the normalized progress), not maintain independent state.

---

### Reader / Paged Mode

#### BUG-PAGED-01 — Random Text Selection on Swipe
**Priority:** P2 | **Area:** Gesture / Text Selection

**Root Cause Analysis:**
`PagedGesturePolicy.classifyPagedGesture()` prioritizes selection over page turns when `hasActiveSelection` is true. However, the WebView may initiate selection on a slight finger movement before the gesture is classified as a swipe.

The policy checks:
```kotlin
if (hasActiveSelection) return PagedGestureAction.PASS_THROUGH
```

This means once selection starts, ALL subsequent events pass through to WebView, preventing page turns.

**Current Implementation:**
- Selection suppression on move: `shouldSuppressSelectionOnMove` checks `hasMoved && !hasActiveSelection`
- Move interception: `shouldInterceptMove` has different thresholds for vertical (8px) and horizontal (48px)

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/gesture/PagedGesturePolicy.kt`
- WebView JavaScript bridge (selection detection)

**Suggested Fix:**
Add a selection initiation delay or require long-press before allowing selection. The gesture policy should have a "selection lockout" period after touch start (e.g., 300ms) to differentiate tap/swipe from intentional selection.

---

#### BUG-PAGED-02 — Uneven Top/Bottom Padding
**Priority:** P2 | **Area:** Layout / Pagination / Insets

**Root Cause Analysis:**
The viewport calculation for paged text uses:
```
Screen height − System Insets − Reader Insets − Reader Padding = Page Viewport
```

However, `ChromeInsetsPlan.kt` and `ReaderViewportGeometry.kt` may calculate insets differently depending on:
1. Whether system bars are visible
2. Whether the reader chrome is shown
3. Display cutout handling

The padding is not centralized—it's applied at multiple levels (Compose layout, WebView padding, CSS margins).

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ChromeInsetsPlan.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderViewportGeometry.kt`
- `android/feature-reader/src/main/java/.../ui/PagedLayoutParams.kt`
- `android/feature-reader/src/main/java/.../ui/PagedViewportContract.kt`

**Suggested Fix:**
Centralize viewport calculation in a single `ViewportCalculator` that takes all inputs (screen, system insets, reader insets, padding) and returns a consistent viewport rect. Apply this rect uniformly across all rendering paths.

---

#### BUG-PAGED-03 — Footnotes Conflict with Page Gesture Zones
**Priority:** P1 | **Area:** Gesture / Hit Testing / Footnotes

**Root Cause Analysis:**
The footnote controller (`ReaderFootnoteController.kt`) handles anchor clicks via JavaScript bridge:
```kotlin
fun onAnchorClick(href: String) { ... }
```

However, the paged gesture policy intercepts touches BEFORE the WebView can process them as clicks. The policy's priority is:
1. Active selection → PASS_THROUGH
2. Touch on link → PASS_THROUGH
3. Edge tap → TAP_LEFT/TAP_RIGHT

The issue is that footnotes near screen edges fall into the "edge tap" zone (12% from each side), so they get consumed as page turns instead of footnote clicks.

**Current Implementation:**
```kotlin
// ReaderWebViewJavaScript.kt:195
// checks this flag to avoid consuming footnote clicks as page turns.
```

The WebView JavaScript sets a flag when a footnote is detected, but this happens AFTER the touch event is already consumed by the gesture policy.

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/gesture/PagedGesturePolicy.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderFootnoteController.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderWebViewJavaScript.kt`

**Suggested Fix:**
Implement a hit-test priority system:
1. Footnote/Link detection (via JavaScript hit test)
2. Interactive content
3. Selection
4. Page navigation

The gesture policy should query the WebView for link/footnote presence BEFORE classifying the gesture as a page turn.

---

### Reader State / Pagination / Navigation

#### BUG-READER-01 — Incorrect Page Count
**Priority:** P1 | **Area:** Pagination Engine

**Root Cause Analysis:**
Page counts are tracked at multiple levels:
1. `_uiState.totalPages` — raw page count from format reader
2. `sectionPageCounts` — EPUB section page counts (`EpubSectionPageCountStore`)
3. `epubAccumulatedTotalPages` — estimated total visual pages
4. `progressController.totalBookSections` — spine section count

These values can diverge because:
- EPUB pages are calculated dynamically as sections are paginated
- The deferred page count policy (`DeferredPageCountPolicy`) uses provisional values
- Raster formats count images, text formats count visual pages

**Current Implementation:**
```kotlin
// ReaderProgressController.kt
fun accumulatedTotalPagesForEpub(): Int {
    return EpubProgressCalculator.estimatedTotalPages(
        sectionPageCounts = sectionPageCounts.snapshot(),
        totalSections = totalBookSections
    )
}
```

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ReaderProgressController.kt`
- `android/feature-reader/src/main/java/.../domain/progress/EpubSectionPageCountStore.kt`
- `android/feature-reader/src/main/java/.../domain/progress/EpubProgressCalculator.kt`
- `android/feature-reader/src/main/java/.../ui/DeferredPageCountPolicy.kt`

**Suggested Fix:**
Separate logical position from visual page count. Create a unified `PaginationState` that:
1. Tracks spine sections (stable)
2. Tracks visual pages per section (dynamic)
3. Computes progress as a fraction (0..1)
4. Never mixes chapter/section/document page counts

---

#### BUG-READER-02 — Reading Mode Not Persisted
**Priority:** P1 | **Area:** Persistence / Reader Preferences

**Root Cause Analysis:**
The reading mode is saved in `setReadingMode()`:
```kotlin
viewModelScope.launch {
    readerPreferences.set(PreferencesKeys.READING_MODE, mode.name)
}
```

But the restore logic in `configureOpening()` prefers the mode from the structured position:
```kotlin
val openingMode = restoredPosition?.mode?.takeIf { mode ->
    !readerRendersHtmlContent || mode != ReadingMode.DUAL_PAGE
} ?: configuredOpeningMode
```

If the structured position has a different mode than the user's preference, the position's mode wins.

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ReaderReadingModeController.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderBookOpeningController.kt`
- `android/core-data/src/main/java/.../preferences/UserPreferences.kt`

**Suggested Fix:**
Persist reading mode per-book (not globally). When opening a book:
1. Check per-book saved mode
2. If no per-book mode, use the structured position's mode
3. If neither, use the global preference
4. Always save the mode back to per-book storage on change

---

#### BUG-READER-03 — Position Not Restored (P0)
**Priority:** P0 | **Area:** Persistence / Reading Position

**Root Cause Analysis:**
The position saving has a dedup guard:
```kotlin
if (pending == pendingProgressSave ||
    isSamePersistedPosition(lastPersistedPositionJson, positionJson)
) return
```

During rapid exit, the WebView may not have reported its latest scroll position, so the snapshot appears identical to the last persisted value. The fix (`forceSavePositionOnClose`) bypasses this check:
```kotlin
// BUG-READER-03: use forceSavePositionOnClose instead of savePositionSnapshot
private fun forceSavePositionOnClose() { ... }
```

**Current State:** The fix is IMPLEMENTED but may not cover all edge cases:
- Process kill without proper close
- WebView not reporting scroll position before close
- Race condition between scroll callback and close

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ReaderProgressController.kt`
- `android/feature-reader/src/main/java/.../domain/progress/ReaderPosition.kt`
- `android/feature-reader/src/main/java/.../domain/progress/ReaderPositionCodec.kt`

**Suggested Fix:**
1. Add periodic position snapshots (every 5 seconds during active reading)
2. Save position on every page turn (not just on close)
3. Use `onPause` lifecycle callback to force save
4. Consider using WorkManager for reliable persistence

---

#### BUG-READER-04 — Global Progress Desync (P0/P1)
**Priority:** P0/P1 | **Area:** Reader State / Progress

**Root Cause Analysis:**
Progress is displayed in multiple places:
1. Chrome toolbar (page counter)
2. Bottom bar (slider + percentage)
3. File info sheet
4. Library card (reading progress badge)

Each uses different calculation:
- Chrome: `currentPage / totalPages`
- Bottom bar: `effectiveCurrentPage / effectiveTotalPages` (with EPUB accumulation)
- Library: `comic.readingProgress` (0..1 float from database)

These diverge because:
- EPUB pages are calculated dynamically
- The database stores a snapshot that may be stale
- Different components read from different state sources

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ReaderProgressController.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderBottomBar.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderChromeComponents.kt`
- `android/core-data/src/main/java/.../repository/LibraryRepository.kt`

**Suggested Fix:**
Create a unified `ReadingProgressModel` that:
1. Computes progress from the same source (DocumentPosition)
2. Updates all consumers atomically
3. Separates display progress from persistence progress
4. Never mixes different page count sources

---

#### BUG-READER-05 — Mode Change Resets Theme Preset
**Priority:** P2 | **Area:** State Isolation / Theme

**Root Cause Analysis:**
The reading mode controller and theme preset controller are separate, but they share state through `_uiState`. When switching modes, the `applyReadingMode()` function updates multiple state fields, and the theme preset may get reset if:
1. The preset depends on the reading mode
2. The state update triggers a recomposition that resets the preset

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ReaderReadingModeController.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderStylePresetStorage.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderSettingsController.kt`

**Suggested Fix:**
Ensure ReadingMode and ReaderTheme are completely independent state. The theme preset should be persisted separately and restored independently of the reading mode.

---

#### BUG-READER-06 — HTML Title Overflow
**Priority:** P3 | **Area:** HTML Reader / Layout

**Root Cause Analysis:**
The title in `ReaderMinimalBar` and `ReaderExpandedBar` uses:
```kotlin
Text(
    text = title,
    maxLines = 1,
    overflow = TextOverflow.Ellipsis,
    ...
)
```

This should handle overflow, but the issue may be:
1. The title is set before the layout is measured
2. The parent container doesn't constrain width properly
3. HTML titles may contain special characters that break layout

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ReaderChromeComponents.kt`

**Suggested Fix:**
Verify the parent container constrains width. Add `fillMaxWidth()` modifier and ensure the title text is truncated properly.

---

#### BUG-READER-07 — TOC Not Working in Some Formats
**Priority:** P1 | **Area:** TOC / Document Navigation

**Root Cause Analysis:**
TOC entries are loaded via `pageCacheController.loadToc()` and stored in `_uiState.tableOfContents`. Navigation uses:
```kotlin
navigateTo(pageIdx, ReaderNavigationProgressSource.JUMP)
```

The issue is that `formatReader()?.resolveHrefToPage()` may return null or incorrect page indices for:
- EPUB files with complex spine structures
- FB2 files with non-linear chapter organization
- HTML files with fragment-based navigation

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ReaderPageCacheController.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderFootnoteController.kt`
- `android/engine-api/src/main/java/.../FormatReader.kt` (interface)
- `android/engine-formats/src/main/kotlin/.../formats/` (implementations)

**Suggested Fix:**
Unify TOC resolution across formats:
1. EPUB: Use Readium's locator API
2. FB2: Map chapter IDs to page indices
3. HTML: Resolve fragment anchors to scroll positions
4. All: Support both page-based and anchor-based navigation

---

### Library / Visual System

#### BUG-UI-01 — Inconsistent Library Card Badges
**Priority:** P2 | **Area:** Design System / Library

**Root Cause Analysis:**
Format badges use `MrComicFormatBadge` from `core-ui`, but the implementation may:
1. Use different corner radius for different formats
2. Apply different alpha values for contrast
3. Not account for cover image brightness

**Files Involved:**
- `android/core-ui/src/main/java/.../designsystem/MrComicFormatBadge.kt`
- `android/feature-library/src/main/java/.../components/LibraryContentDecor.kt`
- `android/feature-library/src/main/java/.../components/ComicGridItem.kt`

**Suggested Fix:**
Standardize badge design tokens:
- Fixed corner radius (e.g., 4.dp)
- Guaranteed contrast ratio (4.5:1 minimum)
- Consistent padding and typography
- Background blur for readability over covers

---

#### BUG-UI-02 — Day Preset Incorrect in Graphic Reader
**Priority:** P2 | **Area:** Graphic Reader / Theme

**Root Cause Analysis:**
The `ReaderColorScheme.paletteForPreset()` function maps presets to colors:
```kotlin
scheme == "DAY" && readerPreset == ReadingPreset.NEWSPAPER -> "#f1eee7" to "#202020"
scheme == "DAY" && readerPreset == ReadingPreset.PAPER -> "#f6f1e7" to "#2b2118"
```

The default "DAY" falls through to:
```kotlin
else -> palette(scheme) // returns "#fafafa" to "#1a1a1a"
```

If the preset isn't properly saved or restored, the Day preset may show as default white instead of the intended warm tone.

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/gesture/ReaderColorScheme.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderStylePresetStorage.kt`

**Suggested Fix:**
Verify preset persistence and ensure the Day preset maps to the correct color palette. Add logging to track which preset is being applied.

---

#### BUG-UI-04 — Inconsistent Background/Surface Colors
**Priority:** P1 | **Area:** Theme / Library / Contrast

**Root Cause Analysis:**
The theme token pipeline is fragmented:
1. Reader uses `ReaderColorScheme` for content
2. Library uses Material 3 `colorScheme`
3. Chrome surfaces use custom colors

When the user changes the background, not all surfaces update because they use different color sources.

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ReaderScreen.kt`
- `android/feature-library/src/main/java/.../ui/LibraryScreen.kt`
- `android/core-ui/src/main/java/.../theme/`

**Suggested Fix:**
Create a unified theme token pipeline:
1. Define all surface colors in one place
2. Propagate changes through MaterialTheme
3. Ensure reader, library, and chrome all use the same source

---

#### BUG-UI-05 — Broken Customization Preview
**Priority:** P2 | **Area:** Customization / Preview

**Root Cause Analysis:**
The preview component may show a warning icon instead of the actual component when:
1. The component fails to render
2. The preview uses placeholder data that doesn't match the real component
3. The theme tokens aren't applied to the preview

**Files Involved:**
- `android/feature-reader/src/main/java/.../ui/ReaderStyleTab.kt`
- `android/feature-reader/src/main/java/.../ui/ReaderStylePresetUiStateMapper.kt`

**Suggested Fix:**
Ensure the preview component uses the same rendering logic as the actual component. Apply theme tokens consistently.

---

### Additional Bugs from Video

#### BUG-CANDIDATE-01 — Quote Navigation Broken
**Priority:** P1 | **Area:** Quotes / Document Location / Navigation

**Root Cause Analysis:**
Quotes are saved with:
```kotlin
data class SavedQuote(
    val comicId: String,
    val page: Int, // This is the ONLY position data
    val text: String,
    ...
)
```

When navigating to a quote:
```kotlin
onClick = { onQuoteClick(quote.comicId, quote.page) }
```

The issue is that `page` is a raw integer that may not correspond to the actual document location:
- EPUB pages change as font/layout changes
- The page number may be from a different reading mode
- No anchor/offset data is stored

**Files Involved:**
- `android/core-data/src/main/java/.../db/entity/SavedQuote.kt`
- `android/core-data/src/main/java/.../repository/QuoteRepository.kt`
- `android/feature-library/src/main/java/.../LibraryScreenContent.kt`

**Suggested Fix:**
Store structured location with quotes:
1. Add `positionJson` field (using ReaderPositionCodec)
2. Add `characterOffset` for text-based relocation
3. Add `domAnchor` for fragment-based navigation
4. Use page number only as legacy fallback

---

#### BUG-CANDIDATE-02 — CBR Displayed as RAR
**Priority:** P2 | **Area:** Format Detection / Library Metadata

**Root Cause Analysis:**
The format detection has TWO separate detectors:
1. `FormatDetector` (engine-api): Maps "cbr" → `ComicFormat.CBR`
2. `ComicFormatDetector` (core-data): Maps "cbr" → `ComicFormat.RAR`

```kotlin
// ComicFormatDetector.kt:83
"cbr" -> ComicFormat.RAR // BUG: Should be CBR
```

This means files imported via different paths get different format labels.

**Files Involved:**
- `android/engine-api/src/main/java/.../FormatDetector.kt`
- `android/core-data/src/main/java/.../repository/ComicFormatDetector.kt`
- `android/core-data/src/main/java/.../repository/ComicSourceResolver.kt`

**Suggested Fix:**
Unify format detection:
1. Use `FormatDetector` as the single source of truth
2. Remove duplicate detection logic from `ComicFormatDetector`
3. Ensure CBR files always map to `ComicFormat.CBR`
4. Update UI to show "Comic Book" instead of "RAR"

---

## Summary Table

| Bug ID | Priority | Status | Root Cause | Fix Complexity |
|--------|----------|--------|------------|----------------|
| BUG-VERTICAL-01 | P1 | Open | Seekbar uses independent state | Medium |
| BUG-PAGED-01 | P2 | Open | Selection starts before gesture classification | Medium |
| BUG-PAGED-02 | P2 | Open | Viewport calculation not centralized | High |
| BUG-PAGED-03 | P1 | Open | Gesture policy doesn't check for footnotes | Medium |
| BUG-READER-01 | P1 | Open | Multiple page count sources | High |
| BUG-READER-02 | P1 | Open | Position mode overrides preference | Low |
| BUG-READER-03 | P0 | Partial | Dedup guard loses position on rapid exit | Medium |
| BUG-READER-04 | P0/P1 | Open | Progress computed differently per component | High |
| BUG-READER-05 | P2 | Open | State coupling between mode and theme | Low |
| BUG-READER-06 | P3 | Open | Title layout constraint issue | Low |
| BUG-READER-07 | P1 | Open | TOC resolution varies by format | High |
| BUG-UI-01 | P2 | Open | Badge design tokens inconsistent | Medium |
| BUG-UI-02 | P2 | Open | Preset not properly restored | Low |
| BUG-UI-04 | P1 | Open | Theme token pipeline fragmented | High |
| BUG-UI-05 | P2 | Open | Preview doesn't match real component | Medium |
| BUG-CANDIDATE-01 | P1 | Open | Quote stores only page number | Medium |
| BUG-CANDIDATE-02 | P2 | Open | Two format detectors disagree | Low |

---

## Recommendations

### Immediate Actions (P0/P1)
1. **BUG-READER-03:** Verify `forceSavePositionOnClose` covers all exit scenarios
2. **BUG-READER-04:** Create unified `ReadingProgressModel`
3. **BUG-PAGED-03:** Add footnote hit-test before gesture classification
4. **BUG-CANDIDATE-01:** Add structured position to quote storage

### Short-term (P1/P2)
1. **BUG-READER-01:** Centralize pagination state
2. **BUG-READER-07:** Unify TOC resolution across formats
3. **BUG-UI-04:** Unify theme token pipeline
4. **BUG-CANDIDATE-02:** Fix format detection inconsistency

### Long-term (P2/P3)
1. **BUG-VERTICAL-01:** Unify seekbar position source
2. **BUG-PAGED-01:** Add selection initiation delay
3. **BUG-PAGED-02:** Centralize viewport calculation
4. **BUG-UI-01:** Standardize badge design tokens

---

*Report generated by codebase analysis on 2026-08-19T18:54:45.537Z*
