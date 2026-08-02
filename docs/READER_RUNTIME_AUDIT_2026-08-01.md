# Reader Runtime Audit — 2026-08-01

## Summary

7 bugs reported from device testing. After code analysis:

| # | Bug | Severity | Root Cause | Status |
|---|-----|----------|------------|--------|
| 1 | PDF/DJVU black screen | **P0** | `TieredBitmapCache` recycling race | NEEDS INVESTIGATION |
| 2 | RTL volume buttons not working | **P0** | `readerVolumePagingStep()` ignores reading mode | ROOT CAUSE FOUND |
| 3 | Page counter jump-by-2 (text reader) | **P0** | Bottom bar uses wrong counter source | ROOT CAUSE FOUND |
| 4 | Uneven text distribution | P1 | Pagination engine not distributing evenly | NEEDS INVESTIGATION |
| 5 | Dark theme text contrast | P1 | Text color too close to background | NEEDS INVESTIGATION |
| 6 | Volume buttons skip pages (text reader) | P1 | Debounce too aggressive for text reader | ROOT CAUSE FOUND |
| 7 | Theme switch preview flash | P2 | Preview shows mixed old/new theme | NEEDS INVESTIGATION |

---

## Detailed Analysis

### BUG 1 — PDF/DJVU black screen (P0) ⚠️ NEEDS FURTHER INVESTIGATION

**Location:** `TieredBitmapCache.kt`, `ReaderPageLoader.kt`

**Previous Fix:** Commit `124ada2` added `if (bitmap.isRecycled) return@Canvas` guard. Commit `d1e3cba` made `entryRemoved()` recycle evicted bitmaps.

**Current Status:** The black screen may be caused by:
1. Race condition between bitmap recycling and rendering
2. Page loader not detecting recycled bitmaps before drawing
3. WebView rendering black before bitmap is ready

**Investigation Needed:** Need logcat from device to see if bitmap recycling errors occur.

---

### BUG 2 — RTL volume buttons not working (P0) ✅ ROOT CAUSE FOUND

**Location:** `ReaderInteractionPolicy.kt:40-44`

**Root Cause:** `readerVolumePagingStep()` always returns -1 for UP and +1 for DOWN, regardless of reading mode. In RTL mode, the direction should be reversed.

**Current Code:**
```kotlin
fun readerVolumePagingStep(keyCode: Int): Int? = when (keyCode) {
    KeyEvent.KEYCODE_VOLUME_UP -> -1
    KeyEvent.KEYCODE_VOLUME_DOWN -> 1
    else -> null
}
```

**Problem:** In `ReaderScreen.kt:520-523`, the handler calls `prevPage()` for negative steps and `nextPage()` for positive steps. In RTL mode, `prevPage()` and `nextPage()` are reversed (manga reads right-to-left), so volume buttons move in the wrong direction.

**Fix:** Add reading mode parameter and reverse direction for RTL:

```kotlin
fun readerVolumePagingStep(keyCode: Int, readingMode: ReadingMode): Int? = when (keyCode) {
    KeyEvent.KEYCODE_VOLUME_UP -> if (readingMode == ReadingMode.PAGE_RTL) 1 else -1
    KeyEvent.KEYCODE_VOLUME_DOWN -> if (readingMode == ReadingMode.PAGE_RTL) -1 else 1
    else -> null
}
```

**Callers to update:**
- `ReaderInteractionPolicyTest.kt:41-42` — update test expectations
- `ReaderScreen.kt:528` — pass `uiState.readingMode` to `resolveReaderHardwareKeyDecision()`
- `ReaderInteractionPolicy.kt:186` — add `readingMode` parameter to `resolveReaderHardwareKeyDecision()`

---

### BUG 3 — Page counter jump-by-2 in text reader (P0) ✅ ROOT CAUSE FOUND

**Location:** `ReaderChromeComponents.kt:550-566`, `ReaderBottomBar.kt:42-44`

**Root Cause:** The bottom bar uses `uiState.currentPage` which is the **chapter-local** page index. But the bottom bar also has `epubAccumulatedCurrentPage` and `epubAccumulatedTotalPages` which are **book-wide** counters.

**Current Code (ReaderBottomBar.kt:42-44):**
```kotlin
val effectiveTotalPages = if (epubAccumulatedTotalPages > 0) epubAccumulatedTotalPages else totalPages
val effectiveCurrentPage = if (epubAccumulatedTotalPages > 0) epubAccumulatedCurrentPage else currentPage
val bookProgress = if (effectiveTotalPages > 0) ((effectiveCurrentPage + 1) * 100f / effectiveTotalPages).toInt() else 0
```

**Problem:** When `epubAccumulatedTotalPages > 0`, the bottom bar shows book-wide progress (e.g., "95/358"). But the **slider** at line 132-145 uses `currentPage` and `totalPages` which are chapter-local (e.g., "29/115").

**User's Report:** "3/115 → need to press twice to get 4/115" — This suggests the slider is using chapter-local values while the text display shows book-wide values. When the user taps to advance, the chapter-local counter increments by 1, but the display shows a different number.

**Fix:** Unify the counter source. The bottom bar should use either chapter-local OR book-wide consistently. Since the user expects chapter-local behavior (tap to advance 1 page), use chapter-local values:

```kotlin
// ReaderBottomBar.kt — use chapter-local for display
val effectiveTotalPages = totalPages
val effectiveCurrentPage = currentPage
```

Or keep book-wide for display but don't show it in the slider.

---

### BUG 4 — Uneven text distribution (P1) ⚠️ NEEDS INVESTIGATION

**Location:** `TextPagePaginationController.kt`, `DocumentTextPaginator`

**Description:** Some pages have correct height, next page has different height, then next page is correct again. Last page of chapter has residual text (truncated lines).

**Possible Causes:**
1. Pagination engine uses inconsistent viewport height per page
2. CSS `line-height` and `text-align` changes cause reflow cascade
3. Images or embedded content affect page height calculation

**Investigation Needed:** Need device screenshots showing the uneven distribution pattern.

---

### BUG 5 — Dark theme text contrast (P1) ⚠️ NEEDS INVESTIGATION

**Location:** `ReaderMaterialColorScheme.kt`

**Description:** In dark text reader mode, text color is too close to background color, making it hard to read.

**Possible Causes:**
1. `onSurface` color has too low contrast against `surface` color
2. Text uses `onSurfaceVariant` instead of `onSurface`
3. Custom font color overrides theme colors

**Investigation Needed:** Need screenshots showing the contrast issue.

---

### BUG 6 — Volume buttons skip pages in text reader (P1) ✅ ROOT CAUSE FOUND

**Location:** `ReaderScreen.kt:516-524`

**Root Cause:** The debounce logic uses a 280ms threshold:

```kotlin
val latestHandleHardwarePageTurn by rememberUpdatedState<(Int) -> Unit> { step ->
    val now = android.os.SystemClock.uptimeMillis()
    if (now - lastHardwarePageTurnMs < 280L) return@rememberUpdatedState
    lastHardwarePageTurnMs = now
    when {
        step < 0 -> viewModel.navigationController.prevPage()
        step > 0 -> viewModel.navigationController.nextPage()
    }
}
```

**Problem:** In text reader mode, `prevPage()` and `nextPage()` may trigger multiple page changes due to:
1. Text pagination recalculates pages on each navigation
2. The debounce prevents rapid presses but doesn't prevent the first press from causing multiple page changes

**Additionally:** The `readerVolumePagingStep` returns -1/+1, but in text reader mode, the page step might need to be larger to match the actual page count.

**Fix:** 
1. Increase debounce threshold for text reader (e.g., 400ms)
2. Or investigate why a single volume button press causes multiple page changes

---

### BUG 7 — Theme switch preview flash (P2) ⚠️ NEEDS INVESTIGATION

**Location:** `SettingsScreen.kt` — Theme preview cards

**Description:** When switching themes, the preview shows a mix of old and new theme colors. After a few seconds, it stabilizes to the correct theme.

**Possible Causes:**
1. Preview cards use `remember` with stale color values
2. Theme recomposition happens asynchronously
3. Preview cards don't have proper `key` or `snapshotFlow` to detect theme changes

**Investigation Needed:** Need screenshots showing the flash.

---

## Task List

### Phase 1: P0 Bugs (Critical)

- [ ] **BUG-2:** Fix RTL volume buttons — add `readingMode` parameter to `readerVolumePagingStep()` and reverse direction for RTL
  - Files: `ReaderInteractionPolicy.kt:40-44`, `ReaderInteractionPolicy.kt:186`, `ReaderScreen.kt:528`, `ReaderInteractionPolicyTest.kt:41-42`
  - Test: In RTL mode, volume UP should advance to next page, volume DOWN should go to previous page

- [ ] **BUG-3:** Fix page counter jump-by-2 — unify counter source in bottom bar
  - Files: `ReaderBottomBar.kt:42-44`
  - Test: Tap to advance page → counter should increment by exactly 1

### Phase 2: P1 Bugs (High Priority)

- [ ] **BUG-6:** Fix volume button page skipping — investigate why single press causes multiple page changes
  - Files: `ReaderScreen.kt:516-524`
  - Test: Press volume button once → page should change by exactly 1

- [ ] **BUG-1:** PDF/DJVU black screen — need device logcat to diagnose
  - Files: `TieredBitmapCache.kt`, `ReaderPageLoader.kt`
  - Test: Open PDF/DJVU → pages render correctly

- [ ] **BUG-4:** Uneven text distribution — need device screenshots
  - Files: `TextPagePaginationController.kt`, `DocumentTextPaginator`
  - Test: Text pages should have consistent height

- [ ] **BUG-5:** Dark theme text contrast — need screenshots
  - Files: `ReaderMaterialColorScheme.kt`
  - Test: Text should be readable against dark background

### Phase 3: P2 Bugs (Medium Priority)

- [ ] **BUG-7:** Theme switch preview flash — need screenshots
  - Files: `SettingsScreen.kt`
  - Test: Switch theme → preview should update immediately without flash

---

## Verification Commands

```powershell
# Build after each task
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug

# Run reader tests
.\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest

# Run interaction policy tests
.\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest --tests "*ReaderInteractionPolicyTest*"
```

---

## Key Code Locations Reference

| Bug | File | Lines |
|-----|------|-------|
| Volume paging step | `ReaderInteractionPolicy.kt` | 40-44 |
| Volume handler | `ReaderScreen.kt` | 516-524 |
| Bottom bar counter | `ReaderBottomBar.kt` | 42-44, 132-145 |
| Native tap consumption | `ReaderWebView.kt` | 307-313 |
| Reader bottom chrome | `ReaderChromeComponents.kt` | 550-566 |
| Text pagination | `TextPagePaginationController.kt` | — |
| Theme preview | `SettingsScreen.kt` | — |
