# Mr.Comic QA Regression Checklist

Use this checklist for every debug APK after reader, library, settings, OCR/translation, or startup changes. Keep the pass short and repeatable.

## 1. Fast Smoke

- install the new APK
- cold launch the app
- open `Library`
- open `Settings`
- open one text book
- open one comic or PDF
- return to `Library`
- switch app language once
- relaunch the app

If any step crashes, shows a broken layout, or leaves the app in the wrong screen, stop and fix that first.

## 2. Reader

- open a text book and verify the reader chrome stays below the status bar
- open a comic or manga and verify paging, pinch zoom, and double-tap zoom work
- open a webtoon and verify vertical scroll remains smooth
- open a PDF and verify paging and zoom still work after repeated gestures
- open `Reader -> Style` and verify font, size, line height, paragraph spacing, alignment, and preset changes apply live
- open `Reader -> Reading` and verify behavior controls stay readable and do not cover the page unexpectedly
- open `Reader -> Services` and verify TOC, bookmarks, OCR, translate, and read-aloud entries are present for the right format
- verify footnotes / notes open and close without leaving the page
- verify page turns do not flash white in dark themes
- verify zoom resets correctly when changing pages

## 3. Library

- open `Library` and verify the top bar title and action buttons keep a stable height
- open the hamburger panel and verify it expands inline instead of pushing the whole screen
- switch between grid, list, and strip / ribbon views if available
- verify folder grouping and folder-based browsing still work
- verify cover ordering and sort order changes do not break the first row
- verify theme presets apply visible changes to the background, shelves, and cards
- verify saved library theme slots can save, apply, rename, and clear
- verify `Mr.Comic` shows progress and analytics only, not a second book browser

## 4. Continue / Progress

- open `Continue` and verify the entry screen stays focused on reading continuity
- open progress/profile and verify the header does not jump when entering or exiting
- verify the continue surface still routes back into the last opened book
- verify reading streak / recap cards do not cover the actual entry action

## 5. OCR / Translation

- open the OCR or translation screen from the reader
- verify image import / selection still works
- run one OCR pass and verify the overlay appears with readable text
- run one translate pass and verify the translated overlay still returns to the reader flow
- verify language-pair / transport labels are honest for the current provider state
- verify unavailable provider flows show a clear message instead of a silent failure
- verify selection-based translation or explain actions still work from the reader

## 6. Settings

- open `Settings` and verify the main sections stay compact and readable
- verify `Reader`, `Library`, `Translation`, `AI Services`, `Read Aloud`, `Backup`, and `About` open correctly
- verify summary rows show the current state before the detailed controls
- verify import / export of reader styles works
- verify custom fonts can be added and removed without breaking the active font fallback
- verify the page for permissions, storage, and backup still makes sense after app updates
- switch app language and verify the settings labels update consistently

## 7. Release Checks

- install over an older version and verify the app opens without losing the library
- test one `content://` import from a file manager
- test one local `OpenDocument` flow if the device is on Android 12L or lower
- verify notification permission is requested on Android 13+ when background audio or TTS needs it
- verify app icons / launchers still work after update
- verify no debug or scratch documents are visible in the public app flow

## 8. DjVu Documents

- open a DjVu file (multi-page preferred)
- verify page count detected correctly
- verify bitmap rendering works for multiple pages
- verify text layer display where available
- verify reader paging (next/prev, page jump)
- verify zoom (pinch, double-tap) works
- verify reading position/bookmarks persist and restore
- verify metadata (title, page count) in Library
- verify DjVu entries show cover thumbnails in Library
- verify DjvuBookEngine is used (not legacy adapter)

## 9. Notes

- If a bug appears after reader work, re-check status-bar insets, zoom, and page-turn behavior first.
- If a bug appears after library work, re-check top-bar height, inline hamburger behavior, and saved presets first.
- If a bug appears after settings work, re-check summaries, localization, and import/export flows first.
- If a bug appears after OCR / translation work, re-check provider availability and overlay routing first.
