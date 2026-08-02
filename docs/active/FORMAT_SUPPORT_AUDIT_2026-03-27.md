# Format Support Audit — 2026-03-27

## Current compatibility matrix

### Confirmed working in current app tests
- `PDF`
- `CBR`
- `CBZ`
- `MOBI`
- `FB2`

### Requires rework
- `EPUB`
- `TXT`
- `HTML`
- `Markdown`
- `DOCX`
- `ODT`
- `RTF`

## Why the matrix changed

The previous `samples/format-test-books` set is too synthetic and does not reflect the structure of real user files. A more realistic corpus now lives in:

- `samples/format-real-corpus/`

Current corpus contents:

- `docx_footnotes_tika.docx`
- `docx_numbered_list_tika.docx`
- `epub_test_tika.epub`
- `html_big_preamble_tika.html`
- `html_utf8_tika.html`
- `markdown_commonmark_spec.md`
- `odt_footer_tika.odt`
- `odt_libreoffice_writer_1_3_tika.odt`
- `rtf_hyperlink_styles_tika.rtf`
- `rtf_regular_images_tika.rtf`
- `txt_welsh_corpus_tika.txt`
- `txt_win1252_tika.txt`

Sources are open-source test documents from Apache Tika and CommonMark.

## What the code currently does

Format routing is defined in:

- `android/engine-formats/src/main/kotlin/com/example/engine/formats/base/FormatFactory.kt`

Important observation:

- `EPUB` has a dedicated reader.
- `FB2` has a dedicated reader.
- `PDF`, archives, and `DJVU` have dedicated readers.
- `TXT`, `HTML`, `Markdown`, `RTF`, `DOCX`, `ODT`, `MOBI`, `AZW3` are partly or fully routed through one shared fallback reader:
  - `android/engine-formats/src/main/kotlin/com/example/engine/formats/text/TextFormatReader.kt`

That means several formats are currently "supported" by text extraction rather than by real format-aware rendering.

## Per-format status

### EPUB

Reader:

- `android/engine-formats/src/main/kotlin/com/example/engine/formats/epub/EpubFormatReader.kt`

Status:

- Dedicated pipeline exists.
- Real-world EPUBs still fail on rendering, resource loading, or DOM integrity.
- Current risk points are XHTML chunking, HTML rewriting, and WebView loading strategy.

Recommended direction:

- Stop regex-based body chunking as the primary mechanism.
- Move toward same-origin resource serving for EPUB resources.
- Prefer full spine-item rendering and DOM-aware transforms over string slicing.

### TXT

Reader path:

- `TextFormatReader`

Status:

- Currently BOM-aware for `UTF-8`, `UTF-16LE`, `UTF-16BE`.
- BOM-less files fall back to raw `UTF-8`.
- This is too weak for real files with `windows-1251`, `windows-1252`, `KOI8-R`, `IBM866`, and similar encodings.

Recommended direction:

- Add charset detection or at least strong heuristics for common BOM-less encodings.
- Prioritize Cyrillic and Western single-byte encodings.

### HTML

Reader path:

- `TextFormatReader.normalizeHtmlDocument`
- `TextFormatReader.htmlBlocks`

Status:

- Minimal cleanup and simple block extraction.
- No true DOM parsing or robust sanitization.
- Real files with large `<head>`, embedded styles, and nontrivial layout can degrade badly.

Recommended direction:

- Parse DOM instead of extracting blocks with regex.
- Preserve semantic structure and base URLs safely.

### Markdown

Reader path:

- `TextFormatReader.markdownBlocks`

Status:

- Very small custom parser.
- Handles only headings, plain lists, blockquotes, and paragraphs.
- Does not cover the CommonMark feature set.

Recommended direction:

- Replace with a real Markdown parser.
- Keep output HTML simple and themeable for reader integration.

### DOCX

Reader path:

- `TextFormatReader.docxBlocks`

Status:

- Reads only `word/document.xml`.
- Extracts paragraphs/headings by regex.
- Ignores much of OOXML structure, numbering, notes, relationships, media, and style semantics.

Recommended direction:

- Move toward a dedicated OOXML extractor.
- Properly resolve numbering, footnotes/endnotes, and images.

### ODT

Reader path:

- `TextFormatReader.odtBlocks`

Status:

- Reads only `content.xml`.
- Extracts plain paragraphs/headings by regex.
- Ignores richer ODF semantics, styles, notes, frames, and media.

Recommended direction:

- Add a dedicated ODT extractor instead of flattening raw XML.

### RTF

Reader path:

- `TextFormatReader.rtfToPlainText`

Status:

- Converts a subset of control words to plain text.
- Drops rich formatting and images.
- Not a real RTF reader.

Recommended direction:

- Add a dedicated RTF parser path.
- At minimum, preserve paragraphs, links, and common inline styling.

## What similar projects do

### Readium Kotlin Toolkit

Useful for:

- `EPUB` architecture
- resource fetching
- navigator separation

Takeaway:

- Treat EPUB as a structured publication with resource resolution, not as sliced HTML strings.

### EPUB3Reader

Useful for:

- basic Android `EPUB` rendering model

Takeaway:

- Render spine items as intact resources instead of regex-chunked fragments.

### LibreraReader

Useful for:

- dedicated extractors for `DOCX`, `ODT`, `RTF`, and `TXT`

Takeaway:

- Real-world support improves when each document family gets its own extraction path instead of a shared fallback.

## Recommended implementation order

1. `TXT`
   - low-risk improvement with immediate gain for real books
2. `Markdown`
   - replace mini parser with a real one
3. `HTML`
   - move to DOM-aware cleanup
4. `DOCX` / `ODT`
   - dedicated structured extraction
5. `RTF`
   - dedicated parser path
6. `EPUB`
   - larger architectural fix across reader + WebView resource loading

## Immediate next step

The first practical change should be stronger `TXT` decoding for BOM-less files from the new corpus, because:

- it is isolated,
- it improves multiple text-like formats indirectly,
- and it does not interfere with the already fragile `EPUB` rendering pipeline.
