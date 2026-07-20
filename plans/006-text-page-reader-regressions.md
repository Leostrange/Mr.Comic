# Plan 006: Reproduce and Fix Text PAGE Reader Regressions

## Problem

User-reported regressions cluster around text formats in PAGE mode. WEBTOON mode displays text normally, so the likely fault area is not only parsing. The strongest suspects are page slicing, WebView viewport/insets, chrome overlay state, gesture/selection policy, and progress persistence.

## Reported Symptoms

- Pages can be skipped.
- Text page height and top/bottom padding are inconsistent, except the final page where a shorter remainder is expected.
- Text can be cut at both top and bottom.
- Footnote popup text does not fully fit when the popup appears at the bottom after a non-center tap.
- If the user taps center while the footnote is open and top/bottom chrome appears, the same footnote text fits fully.
- Some footnote markers are clickable but not visually highlighted like FB2/EPUB footnotes.
- Frontispiece/front matter still behaves incorrectly and needs a focused reproduction note.
- Library cover can show 100% progress for a book that has not been read.
- Some words contain a digit instead of a letter.
- Some words are split into syllables even though they should be joined, both in body text and footnotes.
- During PAGE swipes, text sometimes selects itself.
- Changing reader preset blanks the screen for a few seconds before applying colors/temperature.
- Text formats inside archives open very slowly.
- Text formats inside archives can inherit the dark graphic/comic palette instead of the text reader palette.
- DOCX tables are not rendered.

## Likely Code Areas

- Page model and slicing:
  - `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/pagination/TextPaginator.kt`
  - `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/pagination/DocumentTextPaginator.kt`
  - `android/feature-reader/src/main/java/com/example/feature/reader/ui/EpubProgressCalculator.kt`
- WebView/page rendering and chrome/insets:
  - `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt`
  - `android/feature-reader/src/main/java/com/example/feature/reader/ui/TextReaderController.kt`
  - `android/feature-reader/src/main/java/com/example/feature/reader/ui/TextContainer.kt`
  - `android/feature-reader/src/main/java/com/example/feature/reader/ui/TextWebtoonDocumentBuilder.kt`
- Gesture and selection policy:
  - `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderInteractionPolicy.kt`
  - `android/feature-reader/src/test/java/com/example/feature/reader/ui/ReaderInteractionPolicyTest.kt`
- Footnote extraction, highlighting, and CSS:
  - `android/engine-formats/src/main/kotlin/com/example/engine/formats/epub/EpubFootnoteParser.kt`
  - `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/UnifiedReaderCssBuilder.kt`
  - `android/feature-reader/src/test/java/com/example/feature/reader/ui/FootnotePatternTest.kt`
  - `android/engine-formats/src/test/kotlin/com/example/engine/formats/epub/EpubFootnoteParserTest.kt`
- Archive text routing and palette:
  - `android/engine-formats/src/main/kotlin/com/example/engine/formats/archive/ArchiveDelegatingFormatReader.kt`
  - `android/engine-formats/src/test/kotlin/com/example/engine/formats/archive/ArchiveFormatSupportTest.kt`
  - `android/core-model/src/main/java/com/example/core/model/ReaderFormatCatalog.kt`
- DOCX extraction:
  - `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/RichTextFormatReaders.kt`
  - `android/engine-formats/src/test/kotlin/com/example/engine/formats/text/DocxSupportTest.kt`
- Library progress:
  - `android/core-model/src/main/java/com/example/core/model/Comic.kt`
  - `android/core-data/src/main/java/com/example/core/data/repository/ComicRepository.kt`
  - `android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt`

## Reproduction Matrix

Use the same book in PAGE and WEBTOON mode. Treat WEBTOON as the control case because the user reports it is normal there.

| Case | Format | Container | Mode | Expected evidence |
| --- | --- | --- | --- | --- |
| TXT page slicing | TXT | direct file | PAGE vs WEBTOON | Same text order, no skipped or clipped content in PAGE |
| EPUB footnotes | EPUB | direct file | PAGE | Clickable markers are visually highlighted and popup fits with chrome hidden or visible |
| FB2 footnotes | FB2 | direct file | PAGE | Marker highlighting matches EPUB/FB2 expectations |
| Archive text routing | TXT/EPUB/FB2 | ZIP/7Z/RAR if available | PAGE | Opens through text reader palette, not graphic palette; opening time recorded |
| DOCX table | DOCX | direct file | PAGE/WEBTOON | Table content and row/column structure remain visible |
| Progress persistence | Any text book | direct file and archive | Library | New/unread book never shows 100% until real completion |
| Preset switch | TXT/EPUB | direct file | PAGE | No multi-second blank WebView while changing preset |
| Swipe gesture | TXT/EPUB | direct file | PAGE | Page turn does not select text |

## Implementation Steps

1. Create a QA artifact bundle with screenshots, UI XML, and filtered logcat for at least TXT, EPUB with footnotes, archive text, and DOCX table cases.
2. Add deterministic unit tests for page slicing: no skipped text, no duplicate cut boundaries, and stable top/bottom padding metadata for non-final pages.
3. Add a WebView/insets test or instrumentation probe for PAGE mode: content viewport must subtract chrome and footnote popup insets consistently whether chrome is visible or hidden.
4. Fix footnote popup measurement so bottom-positioned popups have a max height and internal scroll when content is long.
5. Extend footnote marker normalization so every marker that opens a popup also receives the visible footnote styling class.
6. Disable text selection during PAGE swipe gestures, while preserving intentional long-press/select behavior if that feature is required.
7. Fix preset changes so color/theme updates mutate CSS/theme state without forcing a blank full reload unless the document itself changed.
8. Audit archive delegation so single text documents inside archives set text-reader container/palette metadata and avoid raster/comic defaults.
9. Add DOCX table conversion tests. Preserve table text at minimum; preserve table structure if the parser can expose it.
10. Fix progress derivation so unread books with `currentPage = 0`, missing locator, or newly imported metadata cannot render as 100%.

## Verification

Run unit checks first:

```powershell
.\gradlew.bat --no-daemon --console=plain :core-model:testDebugUnitTest :engine-formats:testDebugUnitTest :feature-reader:testDebugUnitTest :feature-library:testDebugUnitTest
```

Then build and run an emulator/device smoke:

```powershell
.\gradlew.bat --no-daemon --console=plain :app:assembleDebug
powershell -ExecutionPolicy Bypass -File C:\Users\xmeta\.codex\skills\android-reader-qa\scripts\reader_emulator_smoke.ps1 `
  -ApkPath android\app\build\outputs\apk\debug\Mr.Comic-debug.apk `
  -Package com.example.mrcomic.debug `
  -SamplePath samples\format-real-corpus\txt_alice_gutenberg.txt `
  -OpenSample `
  -ProbeReaderGestures
```

Manual smoke must include:

- PAGE and WEBTOON mode comparison.
- Footnote popup with chrome hidden.
- Footnote popup after center tap shows chrome.
- Reader preset switch.
- Archive-contained text file.
- Library cover progress after fresh import.
- DOCX file with a table.

## Acceptance Criteria

- PAGE mode never skips, duplicates, or clips body text on non-final pages.
- Non-final text pages have stable visual top/bottom spacing for the same preset and viewport.
- Long footnote popups remain readable in every anchor position.
- Footnote markers that open popups are visibly styled.
- PAGE swipes do not trigger accidental text selection.
- Preset changes do not blank the document for multiple seconds.
- Archive-contained text opens with text reader theme and acceptable latency.
- New/unread books do not show 100% progress.
- DOCX tables render content, and preferably table structure.

## Boundaries

- Do not judge parser correctness from WEBTOON alone; PAGE mode has separate slicing and viewport risks.
- Do not claim the bug fixed without runtime evidence from WebView.
- Do not run broad destructive cleanup or delete user samples while collecting evidence.

