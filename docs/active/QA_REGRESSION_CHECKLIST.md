# Mr.Comic QA Regression Checklist

## Purpose

This checklist is the baseline for validating each new debug APK after UI, reader, library, import, performance, or localization changes.

Use it in two layers:

1. critical regression pass
2. short smoke pass for every debug APK

---

## 1. Critical Regression Pass

### 1.1 Library

- launch app and open `Library`
- verify the top bar title does not break into two lines
- open hamburger controls and verify the inline panel expands horizontally, not as a full-screen dropdown
- verify `Library` title remains stable when opening and closing the inline panel
- open sorting and verify the sheet height is limited and does not cover the whole screen
- verify library menus and sheets respect configured panel transparency
- verify grid/list switching works
- verify square/rectangle cover switching works
- verify card heights remain visually aligned in the grid

### 1.2 Folder Hierarchy

- add a folder with files
- verify it appears as a folder/collection, not as a plain system folder stub
- verify the cover uses the first file in the folder when available
- open the folder and verify contained files are shown
- add nested folders and verify hierarchy is preserved
- verify back navigation is shown in the folder breadcrumb row, not in the main library title row

### 1.3 Library Styling

- open `Settings -> Library`
- verify live preview stays visible while scrolling longer library settings
- verify quick presets apply visible changes:
  - `Paper`
  - `Dark Shelf`
  - `AMOLED`
  - `Comics / Neon`
- verify saved library theme slots can save, apply, and clear
- verify background image selection works
- verify shelf style changes are visible
- verify panel transparency slider changes visible menu/sheet opacity
- verify graphic cover style changes are visible for graphic content

### 1.4 Text Reader

- open EPUB or FB2
- verify reader stays in portrait even when auto-rotate is enabled
- verify rotating device does not kick user out of the current reading session
- open text settings sheet and verify it does not expand over the full screen
- verify book text remains visible above the sheet while adjusting settings
- verify `Reset to default` in text settings works
- verify page turns do not flash white in dark theme

### 1.5 Comics / Manga / Webtoon Reader

- open CBZ/CBR/folder image content
- verify reading works in:
  - `Pages`
  - `Webtoon`
- rotate to landscape and verify dual-page spread has no large gap between pages
- verify image content adapts to screen size
- verify pinch zoom works
- verify double tap zoom works
- verify zoomed image remains sharp after a moment, not permanently blurred
- verify changing page resets zoom correctly

### 1.6 PDF

- open a PDF
- verify normal page reading works
- verify pinch zoom works
- verify after zooming the page becomes sharper via high-res rerender
- verify large PDF does not crash when paging repeatedly

### 1.7 Bookmarks / TOC / Notes

- in reader, add bookmark on current page
- open TOC/bookmarks sheet and verify bookmark appears
- navigate to bookmark from sheet
- delete bookmark from sheet
- verify empty-state appears when there are no bookmarks
- verify footnote / note panel opens and closes correctly

### 1.8 Import / Clean Install

- install app fresh after uninstall
- verify old library data is not restored automatically
- import a file via `content://`
- verify content opens without unnecessary duplicate library copies
- import folder-based content and verify it still appears correctly in library

### 1.9 Splash / Startup

- cold launch app and verify startup path is correct
- rotate device after launch and verify splash video does not replay
- background app and return, verify splash does not replay
- on e-ink-like device profile, verify video splash is skipped

### 1.10 Language Switching

- switch between:
  - Russian
  - English
  - Japanese
  - Chinese
  - Korean
- verify currently open settings screen updates labels consistently
- verify library quick controls update consistently
- verify reader visible chrome strings update consistently
- verify no mixed-language UI remains in the touched surfaces

---

## 2. Debug APK Smoke Pass

Run this for every new debug APK, even after small patches.

- install APK
- open app
- open `Library`
- open hamburger panel
- open a folder if library has one
- open `Settings`
- open `Settings -> Library`
- apply one library preset
- open one text book
- open text settings sheet
- open one comic or PDF
- perform pinch zoom
- return back to library
- switch app language once
- relaunch app

If all steps above pass without crash, broken layout, or obvious wrong language, the build passes smoke.

---

## 3. Device Coverage

When possible, validate on at least:

- standard Android phone
- low-end / memory-constrained device
- large-screen / tablet-like device
- e-ink or e-ink-like profile if available

---

## 4. Notes for Future Sessions

- if a regression appears after reader work, re-check:
  - text settings sheet height
  - dual-page spread gap
  - pinch-to-zoom sharpness
  - bookmark sheet behavior
- if a regression appears after library work, re-check:
  - folder cover generation
  - panel expansion direction
  - transparency
  - grid alignment
  - saved theme slots
