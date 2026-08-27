
# Key Findings Summary

## Critical Issues (P0/P1)

### 1. Position Persistence (BUG-READER-03)
**Status:** Partially fixed
**Issue:** Dedup guard loses position on rapid exit
**Fix:** `forceSavePositionOnClose` bypasses the check, but may not cover all edge cases
**Recommendation:** Add periodic snapshots and lifecycle-based saves

### 2. Progress Desync (BUG-READER-04)
**Status:** Open
**Issue:** Chrome, toolbar, file info, and library show different progress values
**Root Cause:** Different calculation methods for EPUB vs raster formats
**Recommendation:** Create unified ReadingProgressModel

### 3. Footnote Gesture Conflict (BUG-PAGED-03)
**Status:** Open
**Issue:** Footnotes near screen edges get consumed as page turns
**Root Cause:** Gesture policy doesn't check for footnote presence before classifying
**Recommendation:** Add hit-test priority: Footnote → Interactive → Selection → Navigation

### 4. Quote Navigation (BUG-CANDIDATE-01)
**Status:** Open
**Issue:** Clicking a quote doesn't return to the exact location
**Root Cause:** Only page number is stored, no anchor/offset data
**Recommendation:** Store structured ReaderPosition with quotes

## Moderate Issues (P2)

### 5. Text Selection on Swipe (BUG-PAGED-01)
**Issue:** Swipe gestures sometimes trigger text selection
**Root Cause:** Selection starts before gesture is classified as swipe
**Fix:** Add selection initiation delay (300ms lockout)

### 6. Reading Mode Not Persisted (BUG-READER-02)
**Issue:** Mode resets to default after reopening book
**Root Cause:** Position's mode overrides user preference
**Fix:** Save mode per-book, prioritize over position mode

### 7. CBR Format Detection (BUG-CANDIDATE-02)
**Issue:** CBR files shown as RAR
**Root Cause:** Two detectors disagree: FormatDetector→CBR, ComicFormatDetector→RAR
**Fix:** Unify to use FormatDetector as single source of truth

## Architecture Issues

### State Fragmentation
The reader has multiple state sources:
- `_uiState` (MutableStateFlow)
- `progressController` (persistent state)
- `sectionPageCounts` (dynamic pagination)
- `lastPersistedProgress` (database snapshot)

These can diverge, causing the desync issues.

### Missing Centralization
Several calculations are duplicated:
- Viewport geometry (ChromeInsetsPlan, ReaderViewportGeometry, PagedLayoutParams)
- Page count (EpubSectionPageCountStore, EpubProgressCalculator, DeferredPageCountPolicy)
- Theme colors (ReaderColorScheme, MaterialTheme, custom surfaces)

## Files to Watch

1. `ReaderProgressController.kt` — Position saving/loading
2. `PagedGesturePolicy.kt` — Gesture classification
3. `ReaderBookOpeningController.kt` — Position restoration
4. `ReaderBottomBar.kt` — Seekbar implementation
5. `ComicFormatDetector.kt` — Format detection

## Next Steps

1. Verify BUG-READER-03 fix covers all scenarios
2. Create unified ReadingProgressModel
3. Add footnote hit-test to gesture policy
4. Fix format detection inconsistency
5. Add structured position to quote storage
