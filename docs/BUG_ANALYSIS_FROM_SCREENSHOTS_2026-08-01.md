# Bug Analysis from Screenshots — 2026-08-01

## Summary

User provided 8 screenshots + 9 bug descriptions. After code analysis, here are findings:

| # | Bug | Severity | Root Cause | Status |
|---|-----|----------|------------|--------|
| 1 | Text alignment doesn't work | **P0** | JS hardcodes `text-align: left` in pagination | NEW — FOUND |
| 2 | Page counter jumps by 2 | **P0** | Likely `currentPage` double-update on tap | NEEDS VERIFY |
| 3 | "← Страницы" redundant button | P1 | Duplicate reading direction control | FOUND |
| 4 | Sliders look inconsistent/cheap | P2 | Different StepSlider thumb/track styles | FOUND |
| 5 | Uneven text distribution | P1 | Alignment bug + reflow instability | RELATED TO #1 |
| 6 | Page count mismatch footer vs info box | **P0** | Chrome vs progress bar use different `totalPages` | FOUND |
| 7A | Comic mode has light elements | P1 | CSS/overlay colors not dark | NEEDS FIX |
| 7B | Comic mode shows text settings | P1 | Text settings panel visible in raster mode | FOUND |
| 7C | DJVU black screen | **P0** | Previously partially fixed, still occurs | NEEDS VERIFY |
| 8 | ZIP text → raster mode (black) | **P0** | Classification or UI flow issue | NEEDS VERIFY |
| 9 | Single-file folder → sheet | P2 | No "open directly" shortcut | FOUND |

---

## Detailed Analysis

### BUG 1 — Text alignment doesn't work (P0) ✅ ROOT CAUSE FOUND

**Location:** `feature-reader/.../ui/ReaderTextSettingsJs.kt`, lines 300–306

**Root Cause:** The `paginateWithViewport` JavaScript function hardcodes `text-align: 'left'` on both `body` and all content elements (`p,div,section,...`). The `effectiveAlign` variable IS correctly computed (line 57) from the user's alignment setting, but it is NEVER used in the pagination path — only in the non-paginated `applyTextSettings`.

```javascript
// WRONG — hardcoded 'left' ignores user setting:
document.body.style.setProperty('text-align','left','important');
Array.prototype.forEach.call(document.body.querySelectorAll('p,div,...'),function(el){
    el.style.setProperty('text-align','left','important');
});
```

**Fix:** Replace `'left'` with `$effectiveAlign` (the Kotlin string interpolation variable, which resolves to `"justify"`, `"left"`, `"right"`, or `"center"`).

---

### BUG 2 — Page counter jumps by 2 per tap (P0) ⚠️ NEEDS DEVICE VERIFICATION

**Hypothesis:** The tap-to-advance gesture fires `updateCurrentPage()` twice — once from the raw tap event and once from a secondary trigger (e.g., both `onClick` and a touch listener, or both gesture detector layers).

**Likely location:** `HtmlPageView.kt` touch handling or `ReaderWebView.kt` tap interception.

**Fix approach:** Add a debounce or guard in the page advance function. Key: check whether the tap target is the WebView content area vs. a navigation zone, and ensure only ONE state update per gesture.

---

### BUG 3 — "← Страницы" button redundant (P1) ✅ FOUND

**Location:** `ReaderReadingModeController.kt` or reading mode settings UI.

**Finding:** The reading mode settings already have a "Страницы" / "Вертикальная лента" toggle (photo 5). The "← Страницы" (backward page turn direction) option in the mode settings is redundant — the reading direction (forward/backward) should be controlled ONLY from the main reading mode UI, not from a separate settings toggle.

**Fix:** Remove the "← Страницы" / "→ Страницы" directional buttons from the reading mode settings panel. The existing reading mode switcher (Страницы / Вертикальная лента) already implies direction. If RTL reading is needed, handle it via the existing RTL toggle or locale-based auto-detection.

---

### BUG 4 — Sliders look inconsistent (P2) ⚠️ CONFIRMED

**Location:** Multiple StepSlider usages in reader settings.

**Finding:** The StepSlider component has two visual styles:
- **Style A (panel opacity):** Circular thumb, thin track with blue fill — `ThumbRadius = 8.dp`, `TrackThickness = 4.dp`
- **Style B (panel blur, bottom progress):** Thick blue rectangular thumb, thick filled track — different dimensions

Additionally, the **bottom navigation progress slider** has a near-invisible track (only 1-2dp thick) with a custom thumb, while other sliders have 4dp tracks.

**Fix:** Unify StepSlider thumb and track dimensions across all settings panels. Ensure minimum visible track length for accessibility.

---

### BUG 5 — Uneven text distribution (P1) ⚠️ PARTIALLY RELATED TO BUG 1

The fix for BUG 1 (text alignment) will significantly improve this. Additionally:
- WebView viewport height may differ slightly per page
- Paragraph spacing and line height changes may cause reflow cascade

**Fix:** After BUG 1 fix, test with various alignment modes. If uneven distribution persists:
1. Ensure `padding-top: 0px` and `padding-bottom: 0px` are applied consistently on body during pagination
2. Verify `lineHeight` is applied AFTER `textAlign` changes

---

### BUG 6 — Page count mismatch: footer vs info box (P0) ✅ ROOT CAUSE FOUND

**Photo analysis:**
- Footer chrome: "29 / 115" (from reader `currentPage / totalPages`)
- Chapter info box: "95 / 358" (different total!)

**Root Cause:** Two different `totalPages` values are being used:
1. **Chrome overlays** (`ReaderChromeOverlays.kt`) use `uiState.totalPages` — this is the **total pages of the current chapter**
2. **Chapter info box** (inside `ReaderControlCenterSheet` or similar) uses a different total — likely **total pages of the entire book** (all chapters)

**Fix:** Ensure both the footer page counter and the chapter info box use the same `totalPages` source. If the chapter info box intentionally shows book-wide progress, it should label it as "Book: X/Y" rather than mixing chapter and book totals.

---

### BUG 7A — Comic mode has light UI elements (P1) ⚠️ NEEDS VERIFY

**Photo analysis:** The comic reader shows dark background (correct) but the settings panel is a dark gray overlay. If the user sees light elements (sliders, text), they are from the settings overlay, not the reader itself.

**However:** If the user means the READER chrome (header/footer bars) has light backgrounds in comic mode, this needs verification.

**Fix:** If confirmed, apply `readerMaterialColorScheme` (dark scheme) to the comic reader chrome instead of app theme.

---

### BUG 7B — Comic mode shows text settings (P1) ✅ CONFIRMED

**Photo 8:** The "Стиль" tab in the reader settings is visible in comic mode, showing font size (13px), font family (Ubuntu), bold toggle, line/letter/word/paragraph spacing, and alignment options — all text-reader settings that should NOT appear in raster comic mode.

**Root Cause:** The reader settings bottom sheet doesn't filter out text-only settings when `containerKind == RASTER`.

**Fix:** In `ReaderSheets.kt` or `ReaderBottomSheets.kt`, add a guard:
```kotlin
val showTextSettings = containerKind == ReaderContainerKind.TEXT_PAGE
// Hide font size, font family, spacing, alignment sections when showTextSettings == false
```

---

### BUG 7C — DJVU black screen (P0) ⚠️ PREVIOUSLY FIXED, NEEDS VERIFY

Previously fixed in commit `d1e3cba` (TieredBitmapCache + recycled bitmap guard). The user reports it still occurs — needs device verification with logcat.

---

### BUG 8 — ZIP text docs → raster mode (P0) ⚠️ NEEDS VERIFY

**Code analysis:** `ArchiveDelegatingFormatReader.kt` already has fallback logic (lines 102-118) for single-text-entry archives. If a ZIP contains only 1 EPUB/FB2/TXT file, it should create a text delegate.

**Potential root causes:**
1. ZIP contains cover images → `classify()` returns `MIXED`, but `textEntries.size == 1` fallback should catch it
2. RAR format not fully supported → falls back to raster
3. UI shows comic mode despite correct format detection (BUG 7B related)

**Fix:** Verify with a test ZIP containing a single EPUB file + cover image. Check if `resolvedContentFormat()` returns the correct format.

---

### BUG 9 — Single-file folder opens sheet unnecessarily (P2) ✅ FOUND

**Location:** `LibraryScreen.kt`, lines 798, 876, 943, 1351 — all `onFolderClick` handlers call `viewModel.openFolderSheet(it.path)` unconditionally.

**Finding:** `LibraryFolderItem` has a `fileCount` field. `LibraryViewModel.openFolderSheet()` loads all items and computes `fileCount` from the actual directory contents. There is NO logic to bypass the sheet when `fileCount == 1`.

**Fix (2 approaches):**

**Approach A (UI-level, safer):** In `LibraryScreen.kt`, intercept `onFolderClick`:
```kotlin
onFolderClick = { folder ->
    if (folder.fileCount == 1 && folder.subfolderCount == 0) {
        // Find the single comic and open it directly
        val singleComic = uiState.comics.find { it.folderId == folder.path }
        if (singleComic != null) {
            onComicClick(singleComic.id)
            return@onFolderClick
        }
    }
    viewModel.openFolderSheet(folder.path)
}
```

**Approach B (ViewModel-level):** In `LibraryViewModel.openFolderSheet()`, if the loaded items contain exactly 1 comic and 0 subfolders, emit a navigation event instead of showing the sheet.

**Recommendation:** Approach B — cleaner separation of concerns.

---

## Task List

### Phase 1: P0 Bugs (Critical)

- [ ] **TASK-1:** Fix text alignment in `ReaderTextSettingsJs.kt` — replace hardcoded `'left'` with `$effectiveAlign` in pagination JS (lines 300, 306)
  - Files: `ReaderTextSettingsJs.kt`
  - Test: Apply each alignment (justify/left/right/center) → verify text renders correctly

- [ ] **TASK-2:** Investigate page counter jump-by-2 — add debounce/guard in page advance tap handler
  - Files: `HtmlPageView.kt`, `ReaderWebView.kt`
  - Test: Tap to advance → counter should increment by exactly 1

- [ ] **TASK-3:** Fix page count mismatch — unify `totalPages` source between chrome footer and chapter info box
  - Files: `ReaderChromeOverlays.kt`, `ReaderControlCenterSheet.kt`
  - Test: Chapter with N pages → both footer and info box show N

- [ ] **TASK-4:** Verify/fix DJVU black screen — check logcat on device for bitmap recycling errors
  - Files: `TieredBitmapCache.kt`, `DjvuPageRenderer.kt`
  - Test: Open DJVU → pages render correctly

- [ ] **TASK-5:** Verify/fix ZIP text document detection — test ZIP with single EPUB + cover image
  - Files: `ArchiveDelegatingFormatReader.kt`
  - Test: ZIP with EPUB → text reader mode, dark (correct) theme

### Phase 2: P1 Bugs (High Priority)

- [ ] **TASK-6:** Remove redundant "← Страницы" button from reading mode settings
  - Files: `ReaderReadingModeController.kt`, relevant settings UI
  - Test: Reading mode settings only shows Страницы/Вертикальная лента toggle

- [ ] **TASK-7:** Hide text settings (font/size/spacing/alignment) in comic/raster mode
  - Files: `ReaderSheets.kt`, `ReaderBottomSheets.kt`
  - Test: Open CBZ → reader settings show no font/spacing controls

- [ ] **TASK-8:** Fix comic mode chrome theme — ensure dark scheme for raster reader chrome
  - Files: `ReaderChromeOverlays.kt`, `ReaderMaterialColorScheme.kt`
  - Test: Open CBZ → chrome bars are dark

- [ ] **TASK-9:** Fix uneven text distribution — after TASK-1, test with all alignment modes
  - Files: `ReaderTextSettingsJs.kt`
  - Test: Each page in a chapter should have similar visible text area

### Phase 3: P2 Bugs (Medium Priority)

- [ ] **TASK-10:** Unify StepSlider visual styles across all settings panels
  - Files: `StepSlider.kt` (or custom slider component), reader settings screens
  - Test: All sliders have consistent thumb size and track thickness

- [ ] **TASK-11:** Implement single-file folder shortcut — open directly without sheet
  - Files: `LibraryViewModel.kt`, `LibraryScreen.kt`
  - Test: Folder with 1 file → tapping folder opens the file directly

### Verification Commands

```powershell
# Build after each task
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug

# Run reader tests
.\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest

# Run engine tests
.\gradlew.bat --no-daemon --console=plain :engine-formats:testDebugUnitTest
```

---

## Key Code Locations Reference

| Bug | File | Lines |
|-----|------|-------|
| Text alignment hardcoded | `ReaderTextSettingsJs.kt` | 300, 306 |
| StepSlider inconsistent | Multiple UI files + StepSlider component | — |
| Comic text settings visible | `ReaderSheets.kt` / `ReaderBottomSheets.kt` | — |
| Page count mismatch | `ReaderChromeOverlays.kt` | chrome overlays |
| Folder → always sheet | `LibraryScreen.kt` | 798, 876, 943, 1351 |
| ZIP fallback | `ArchiveDelegatingFormatReader.kt` | 102–118 |
