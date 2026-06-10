# Reader QA — progress log (run 2026-05-23)

Test order: from bottom of library, both PAGE and WEBTOON, verify chrome hide on tap.

## Active fixes applied this run

- `EpubFormatReader.simplifySingleImageSvgContent` — cover img `max-width` → `width:100%` (avoid breaking webtoon).
- `ReaderScreen.buildReaderTypographyJs` — unconditional `!important` `font-size`/`line-height` on `<body>`/`<p>`/`<li>`/`<blockquote>` so publisher CSS (Calibre) can't flatten text.

## Checklist per book

| # | File | Format | PAGE render | PAGE chrome hide | WEBTOON render | WEBTOON chrome hide | Notes |
|---|------|--------|-------------|------------------|----------------|--------------------|-------|
| 1 | 6177.epub | EPUB | pending | pending | pending | pending | |
| 2 | 6177.fb2 | FB2 | pending | pending | pending | pending | |
| 3 | docx_sample | DOCX | pending | pending | pending | pending | |
| 4 | html_alice_gutenberg | HTML | pending | pending | pending | pending | |
| 5 | markdown_commonmark_spec | MARKDOWN | pending | pending | pending | pending | |
| 6 | odt_libreoffice | ODT | pending | pending | pending | pending | |
| 7 | pod_sun_868805 (EPUB) | EPUB | pending | pending | pending | pending | |
| 8 | pod_sun_868805 (MOBI) | MOBI | pending | pending | pending | pending | |
| 9 | rtf_cyrillic_cp1251 | RTF | pending | pending | pending | pending | |
| 10 | S_Skott_Protiv_zerna | EPUB | pending | pending | pending | pending | |
| 11 | txt_alice_gutenberg | TXT | pending | pending | pending | pending | |
| 12 | Гарин_Михайловский | MOBI | pending | pending | pending | pending | |

## Findings
