# Moon+ Reader — Reverse Engineering Analysis

**Source:** `reference/moonplus-re/MoonPlus.apk` (decompiled via jadx 1.5.1)  
**Package:** `com.flyersoft.moonreaderp`  
**Branch:** `test`  
**Date:** 2026-09-05  

**Purpose:** Compare Moon+ Reader's solutions to the 18 bugs identified in `BUG_TRACKER.md`.

---

## Architecture Overview

Moon+ Reader is a **Java-based** reader (not Kotlin/Compose). Key architectural differences from Mr.Comic:

| Aspect | Mr.Comic | Moon+ Reader |
|--------|----------|-------------|
| Language | Kotlin + Compose | Java + XML Views |
| Text layout | WebView + JS pagination | Custom `SoftHyphenStaticLayout` (native) |
| HTML parsing | WebView DOM | TagSoup SAX → `SpannableStringBuilder` |
| Position storage | Room + DataStore | SharedPreferences (`positions10` file) |
| Page concept | Viewport-height scroll units | Same — `ScrollView` offset / `getPageHeight()` |
| Module structure | Multi-module Gradle | Monolithic APK |

---

## BUG-01: First page requires double-tap

**Mr.Comic problem:** WebView stays at `alpha=0f` until JS metrics arrive. Taps during the 80-320ms window are lost.

**Moon+ solution:** Moon+ uses **native `MRTextView`** (not WebView) for primary reading. The text is laid out via `SoftHyphenStaticLayout` which is synchronous — no JS roundtrip. The text is visible immediately after `SpannableStringBuilder` is set on the `TextView`. There is no "invisible while loading" state.

**Key code:** `com/flyersoft/staticlayout/MRTextView.java` — the custom `TextView` renders `Spannable` content directly. No WebView, no alpha gating.

**Takeaway for Mr.Comic:** The root cause is WebView latency. Moon+ avoids this entirely by using native text layout. For Mr.Comic, the fix should show the WebView immediately (alpha=1f) and only defer precise page-boundary computation.

---

## BUG-02: FB2 wrong text splitting, gaps

**Mr.Comic problem:** `GENERATED_BLOCK_RE` regex misses many block-level elements, creating tiny inter-block sections.

**Moon+ solution:** Moon+ uses a **string-scanning parser** (`Fb2.java`) that reads the entire FB2 body into a `StringBuffer`, then uses `indexOf()`/`substring()` to navigate `<section>` tags. It converts FB2 tags to HTML equivalents via `reverseFb2Tag()`:

```java
// Fb2.java line 704
.replaceAll("<poem>", "<div class=\"poem\">")
.replaceAll("<cite>", "<div class=\"cite\">")
.replaceAll("<(|.)(emphasis)>", "<$1i>")
.replace("<empty-line/>", "<br><br>")
```

Page breaks are inserted explicitly via `MyHtml.PAGE_BREAK` (`<hr2>` tag) at section boundaries. The `CSS.PAGE_BREAK` span is detected at render time by `MRTextView.getPageBreakLine()`.

**Key difference:** Moon+ does NOT split by character budget. It splits by **section/chapter boundaries** in the XML, then lets the native layout engine handle page breaks within each section. No regex-based block splitting.

**Takeaway for Mr.Comic:** Replace the regex-based `GENERATED_BLOCK_RE` with proper XML-aware section splitting. Insert explicit page breaks at `<section>` boundaries rather than trying to split by character count.

---

## BUG-03: FB2 text cut off at bottom

**Mr.Comic problem:** Paged mode CSS zeros out bottom padding. `pageHeight` includes nav bar area.

**Moon+ solution:** Moon+ calculates `getPageHeight()` as:

```java
// A.java line 7477
public static int getPageHeight() {
    screenHeight = baseFrame.getHeight() - txtScroll.getPaddingTop();
    return screenHeight - txtScroll.getPaddingBottom();
}
```

The padding is set via `A.setTxtScrollPadding()` which accounts for system bars. The `getTopMargin()` method (A.java line 2461) calculates the effective top margin including status bar and cutout:

```java
// When fullscreen + cutout + NOT landscape:
i = getCutoutBarHeight();
// When fullscreen + fullscreenWithStatus:
i = (getSysBarHeight() * 75) / 100;  // 75% of status bar height
```

**Key difference:** Moon+ uses native `ScrollView` with proper padding, not WebView CSS hacks. The page height is computed from the actual visible area, not from `window.innerHeight`.

**Takeaway for Mr.Comic:** The `pageHeight` in the paged layout JS should subtract the system bottom inset. Pass `contentBottomInsetPx` to the JS as `pageInsetBottom`.

---

## BUG-04: Position lost on mode switch

**Mr.Comic problem:** Mode switch triggers full WebView reload, discarding scroll position.

**Moon+ solution:** Moon+ stores position as a **string compound**: `{chapter}@{splitIndex}#{position}:{percentString}`. The position is saved to SharedPreferences on every mode switch:

```java
// ActivityTxt.java line 2463
public void saveLastPostion(boolean z, boolean z2, boolean z3) {
    // ...
    edit.putString(A.lastFile.toLowerCase(),
        A.lastChapter + "@" + A.lastSplitIndex + "#" + A.lastPosition + ":" + getPercentStr2());
    edit.apply();
}
```

Moon+ has `saveLastPostion()` called at **30+ call sites** — on page scroll, chapter change, configuration change, and mode switches. The position format is mode-agnostic (it stores chapter + character offset, not page index).

**Key difference:** Moon+ uses **character offset** as the universal position metric, not page index. Character offset works across modes because it represents a position in the text content, not a visual position.

**Takeaway for Mr.Comic:** Use character offset (not page index) as the universal position metric for mode switches. Store `{chapter}:{characterOffset}` and restore by scrolling to the character position in the new mode.

---

## BUG-05: Position lost on library navigation

**Mr.Comic problem:** `onCleared()` may not execute if process killed. Periodic save is 5s.

**Moon+ solution:** Moon+ saves in `onPause()` with **synchronous commit**:

```java
// ActivityTxt.java line 1945 (onPause)
saveLastPostion(true, false, true);  // commit=true for synchronous write
A.SaveOptions(this);  // saves all options including lastPosition
```

Additionally, Moon+ saves at **every page scroll** (line 2467-2514), not just periodically. The `edit.apply()` is used for async saves during reading, but `edit.commit()` (synchronous) is used in `onPause`.

**Key difference:** Moon+ saves on every `pageScroll()` call (line 4675-4677):

```java
public void pageScroll(int i) {
    pageScroll(i, false, false);
    saveLastPostion(true);  // save immediately after every page turn
}
```

**Takeaway for Mr.Comic:** Save position synchronously in `onStop()` (not just `onCleared()`). Reduce periodic save to 1-2s. Consider saving on every page turn.

---

## BUG-06: EPUB wrong text distribution

**Mr.Comic problem:** `mediaFirstPageBottom` heuristic creates uneven pages. Heading compaction merges unrelated content.

**Moon+ solution:** Moon+ uses **native `StaticLayout`-based pagination** where each "page" is simply the viewport height of the `ScrollView`. The text flows continuously — there are no artificial page breaks within a chapter. Page boundaries are determined solely by the scroll position:

```java
// A.java line 7477
return screenHeight - txtScroll.getPaddingBottom();
```

A "page turn" is just `txtScroll.smoothScrollBy(0, getPageHeight())`. The text distribution is inherently even because it's just a scroll offset.

**Key difference:** Moon+ does NOT try to create "balanced" pages. It uses continuous scroll with virtual paging. There are no page-break heuristics, no heading compaction, no orphan control. The natural text flow determines page content.

**Takeaway for Mr.Comic:** Consider continuous scroll with virtual paging (like Moon+) instead of the complex page-balancing heuristics. If keeping the current approach, remove the `mediaFirstPageBottom` heuristic and the heading compaction passes.

---

## BUG-07: Swipe triggers text selection

**Mr.Comic problem:** Selection suppression starts after 4-12px movement. Webtoon mode has no suppression.

**Moon+ solution:** Moon+ has **three layers** of selection prevention:

1. **`ScrollView2.onRequestFocusInDescendants()`** returns `true` without requesting focus — prevents text selection from being initiated:
```java
// ScrollView2.java line 29
protected boolean onRequestFocusInDescendants(int i, Rect rect) {
    return true;  // never actually focuses children
}
```

2. **`MRBookView.touchDisabled`** flag — when touch is in edge zones, the WebView consumes all events:
```java
// MRBookView.java line 171
if (this.touchDisabled) {
    return true;  // consumes event, prevents WebView from processing
}
```

3. **`setFocusableInTouchMode(false)`** on the WebView:
```java
// ActivityTxt.java line 16610
mRBookView.setFocusableInTouchMode(false);
```

**Key difference:** Moon+ prevents selection at the **View level** (focus suppression), not at the gesture level. The `ScrollView2` never focuses its children, so text selection cannot be initiated.

**Takeaway for Mr.Comic:** Add `setFocusableInTouchMode(false)` to the WebView. Override `onRequestFocusInDescendants` in the container. Suppress selection at `ACTION_DOWN`, not after movement threshold.

---

## BUG-08: Seekbar lies, doesn't match pages

**Mr.Comic problem:** Slider uses raw `currentPage`/`totalPages` instead of effective accumulated values.

**Moon+ solution:** Moon+ calculates seekbar progress per format:

```java
// ActivityTxt.java line 4571-4653
// Plain text: j = (getAboutPosition() * 1000) / A.txtLength()
// HTML: j = (getCurrentPosition() * 1000) / getBookLength()
// PDF: progressSK.setMax(pageCount - 1); progressSK.setProgress(pdfGetCurrPageNo())
// EPUB: setSeekBarProgress(getPercentByPageNum(A.ebook.getCurPageInTotal(), totalPages) * 10)
```

The seekbar uses a **0-1000 range** (not 0-100) for precision. The `getPercentByPageNum()` method converts page numbers to percentages using the accumulated page count.

**Key difference:** Moon+ uses **position-based** progress (character offset / total length) for text formats, not page-based. This avoids the provisional-page-count problem entirely.

**Takeaway for Mr.Comic:** For text formats, use position-based progress (character offset / total character count) instead of page-based progress. This is inherently more accurate because it doesn't depend on page count estimation.

---

## BUG-09: Seekbar at 100% but unread

**Mr.Comic problem:** Provisional `totalSections` causes `estimatedTotalPages()` to return a value smaller than actual.

**Moon+ solution:** Moon+ has a **two-pass page counting** system:

```java
// BaseEBook.java line 316
getPageCountWithCache()  // First pass: approximate counts using SplitCountCache
getPageCountWithoutCache()  // Second pass: exact counts using offscreen MRTextView
```

The `Chapter.isAboutPageCount` flag (BaseEBook line 134) marks chapters with approximate counts. The seekbar display waits for exact counts before showing high percentages.

Additionally, Moon+ uses `getCurPageInTotal()` (line 209-227) which sums actual `pageCount` values from already-calculated chapters, not estimates.

**Key difference:** Moon+ distinguishes between **approximate** and **exact** page counts. The UI can show "calculating..." until exact counts are available.

**Takeaway for Mr.Comic:** Add a `isPageCountProvisional` flag. Don't show 100% or mark as complete until the deferred page count resolves. Use character-based progress as a fallback.

---

## BUG-10: Triple overlay showing 100%

**Mr.Comic problem:** Header overlay, footer overlay, and expanded bottom panel can all show simultaneously.

**Moon+ solution:** Moon+ has a **single status bar** (`statusLay`) at the top that shows page number/progress. The bottom bar (`bottomLay`) shows the seekbar. They are **mutually exclusive** — when one is visible, the other is hidden:

```java
// ActivityTxt.java line 4149
public void setBarVisible(int i) {
    // Controls topLay and bottomLay visibility together
}
```

Moon+ uses a **toggle** — tapping the screen shows/hides both bars simultaneously. There are no overlapping overlay elements.

**Key difference:** Moon+ has exactly **two** chrome elements (top status bar + bottom seekbar bar), always shown/hidden together. No triple overlay.

**Takeaway for Mr.Comic:** Ensure only one progress display is visible at a time. When chrome is expanded, hide the header/footer overlays.

---

## BUG-11: Slow file loading (5-7s)

**Mr.Comic problem:** Repeated `Jsoup.parseBodyFragment()` calls, deferred page count, WebView DOM rendering.

**Moon+ solution:** Moon+ uses **lazy chapter loading** with **caching**:

```java
// Epub.java line 1421 — getChapterText()
if (chapter.text.equals(HAS_ID_TAG)) {
    // Load specific section from HTML file
    getChapterTextWithIDTag(chapter);
} else {
    // Load entire chapter HTML from ZIP
    chapter.text = getChapterHtml(chapter);
}
```

Key performance strategies:
1. **Lazy loading:** Chapters are loaded on demand, not upfront
2. **Two-pass page counting:** First pass uses `SplitCountCache` estimates, second pass calculates exact
3. **CSS caching:** `cssCache` HashMap per chapter
4. **File text caching:** `fileTexts` HashMap per filename
5. **Memory-aware caching:** `clearMyHtmlCacheIfLowMemory()` clears caches when memory is low
6. **Native layout:** `SoftHyphenStaticLayout` is much faster than WebView DOM rendering

**Takeaway for Mr.Comic:** The main bottleneck is WebView DOM rendering + repeated Jsoup parsing. Consider:
1. Caching Jsoup parse results
2. Moving HTML generation to IO dispatcher
3. Pre-loading the first 2-3 pages before showing the reader

---

## BUG-12: HTML chapter splitting

**Mr.Comic problem:** `isReaderSectionStartBlock()` only recognizes h1-h3. `keepWholeDocument=true` bypasses pagination.

**Moon+ solution:** Moon+ uses **`<hr2>` as explicit page break marker**:

```java
// HtmlToSpannedConverter.java line 299
if (str.equals("hr2")) {
    handleP(spannableStringBuilder, null, false);
    insertPgaeBreak(spannableStringBuilder);
    return;
}
```

The `insertPgaeBreak()` method adds a `CSS.PAGE_BREAK` span. At render time, `MRTextView.getPageBreakLine()` scans for these spans and stops rendering at page boundaries.

For EPUB, Moon+ inserts `<hr2>` between chapters via `checkChapterAdditionalText()` (Epub.java line 761):

```java
// Between adjacent spine items pointing to the same file:
sb.append(MyHtml.PAGE_BREAK);  // "<hr2>"
```

**Key difference:** Moon+ uses **explicit page break markers** in the HTML, not regex-based section detection. The layout engine respects these markers at render time.

**Takeaway for Mr.Comic:** Expand `isReaderSectionStartBlock()` to recognize h4-h6. For HTML-in-archive, use `keepWholeDocument=false` and insert explicit page breaks at chapter headings.

---

## BUG-13: Landscape chrome height mismatch

**Mr.Comic problem:** Top reserve 56dp, bottom 48dp. Unification only in non-auto-hide mode.

**Moon+ solution:** Moon+ uses a **single unified status bar** (`statusLay`) at the top. There is no separate bottom chrome bar during reading — the seekbar is at the bottom but its height is fixed by the `SeekBar` widget, not a custom layout.

In landscape, Moon+ supports **dual-page mode** (`dualPageOnlyLandscape`) where the screen is split into two columns. The padding is set symmetrically:

```java
// ActivityTxt.java line 17328
txtScrollSetPadding(left, top, right, top);  // top padding mirrored to bottom
```

**Takeaway for Mr.Comic:** Move the landscape unification logic outside the auto-hide conditional. Or use equal default reserves.

---

## BUG-14: TTS panel too tall in landscape

**Mr.Comic problem:** Dialog fills entire screen with fixed 260dp artwork.

**Moon+ solution:** Moon+ uses a **ViewStub-inflated bottom panel** (not a dialog):

```java
// ActivityTxt.java line 10628
this.tts_panel = ((ViewStub) findViewById(R.id.viewStub1)).inflate();
```

The panel slides up from the bottom with a `TranslateAnimation`:

```java
// ActivityTxt.java line 11159
translateAnimation = new TranslateAnimation(0.0f, 0.0f,
    baseFrame.getHeight(), baseFrame.getHeight() - height);
translateAnimation.setDuration(400L);
```

The panel height is determined by its content (controls, seekbars), not a fixed artwork image. In landscape, the panel simply takes whatever height its content needs.

**Takeaway for Mr.Comic:** Replace the full-screen dialog with a bottom sheet or inline panel. Remove the fixed 260dp artwork in landscape.

---

## BUG-15: Crop button for wrong formats

**Mr.Comic problem:** `showCropIcon` doesn't check format.

**Moon+ solution:** Moon+ does NOT have an image-level margin crop tool. Instead, it has `trimBlankSpace` and `trimTopSpace` flags (A.java lines 901-902) that operate on **parsed text content flow**, not on rendered images. These are text-processing flags for flowable documents (EPUB, TXT, HTML), not format-specific crop.

**Takeaway for Mr.Comic:** Add format check to `showCropIcon`. Use `supportsDocumentMarginCropButton()` from `ReaderContentPolicy.kt`.

---

## BUG-16: Crop dialog landscape layout

**Mr.Comic problem:** 2-column layout groups sides non-intuitively. 0.82x height cap truncates.

**Moon+ solution:** Moon+ doesn't have a crop dialog. The `trimBlankSpace`/`trimTopSpace` toggles are simple on/off switches in settings, not a multi-sided crop UI.

**Takeaway for Mr.Comic:** Group sides by axis: [Left, Right] + [Top, Bottom]. Increase height cap to 0.88x.

---

## BUG-17: Cover preview doesn't work

**Mr.Comic problem:** Preview uses hardcoded gradients, not real cover images.

**Moon+ solution:** Moon+ has a **cover file resolution hierarchy**:

```java
// A.java line 4938
public static String getBookCoverFile(String str) {
    // 1. User-edited cover (EDITCOVER_TAG)
    // 2. Extracted cover (COVER_TAG)
    // 3. Thumbnail (THUMB_TAG)
    // 4. Downloaded cover (NETCOVER_TAG)
    return file.isFile() ? file.getAbsolutePath() : "";
}
```

Covers are generated from the first page of each format (PDF/DjVu/CBZ). The library grid uses actual cover images, not placeholders.

**Takeaway for Mr.Comic:** The preview should load actual drawable assets when a theme is selected, not use hardcoded gradients.

---

## BUG-18: Swipe inversion dead code

**Mr.Comic problem:** `GestureProfile.swipeInverted` exists but is never wired.

**Moon+ solution:** Moon+ has **fully configurable gesture actions** via integer fields:

```java
// A.java lines 447-479
public static int doSwipeBottomToTop = 0;
public static int doSwipeLeftToRight = 0;
public static int doSwipeRightToLeft = 0;
public static int doSwipeTopToBottom = 0;
public static int doTapScreenBottom = 0;
public static int doTapScreenLeft = 0;
public static int doTapScreenRight = 0;
public static int doTapScreenTop = 0;
```

Each gesture maps to an **action ID** (0=NEXT_PAGE, 1=PREV_PAGE, 15=NO_ACTION, etc.). The `PrefControl.java` settings UI has spinners for each gesture direction, allowing the user to assign any action to any gesture.

**Inversion is achieved by swapping action assignments:** setting `doSwipeLeftToRight = 1` (prev) and `doSwipeRightToLeft = 0` (next) inverts the swipe direction.

**Takeaway for Mr.Comic:** Wire `GestureProfile` end-to-end: preferences → ViewModelFlows → ReaderUiState → TouchController. Implement inversion by swapping TAP_LEFT/TAP_RIGHT actions.

---

## Summary: Moon+ Patterns Worth Adopting

| Pattern | Moon+ Approach | Mr.Comic Equivalent |
|---------|---------------|---------------------|
| **Position metric** | Character offset (universal) | Page index (mode-dependent) → change to char offset |
| **Position saving** | On every page turn + onPause (sync) | Periodic 5s + onCleared → save on every turn + onStop |
| **Page concept** | Continuous scroll, virtual paging | Complex page-balancing heuristics → simplify |
| **Text layout** | Native `StaticLayout` (sync) | WebView + JS (async) → show WebView immediately |
| **Selection prevention** | View-level focus suppression | Gesture-level threshold → add focus suppression |
| **Gesture config** | Integer action IDs per direction | Boolean `swipeInverted` → full action mapping |
| **Progress** | Position-based (char/total) | Page-based → use position-based for text formats |
| **Page counting** | Two-pass (estimate → exact) | Single deferred → add provisional flag |
| **Loading** | Lazy chapter load + caching | Blocking parse → add caching + lazy load |
| **Chrome** | Single toggle (top+bottom together) | Multiple overlays → unify visibility |
