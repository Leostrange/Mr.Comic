# Mr.Comic Documentation

This folder contains the working documentation for the Mr.Comic Android reader project.

## Start Here

- [Root README](../README.md) - project overview, build commands, supported formats, and demo media.
- [Reader QA checklist](active/QA_REGRESSION_CHECKLIST.md) - manual and emulator scenarios for reader regressions.
- [Format support audit](active/FORMAT_SUPPORT_AUDIT_2026-03-27.md) - supported formats and known format-specific risks.
- [Reader test progress](reader_test_progress.md) - current testing notes.

## Active Engineering Docs

- [DJVU renderer research](active/DJVU_RENDERER_RESEARCH.md)
- [EPUB/DJVU migration tasklist](active/EPUB_DJVU_MIGRATION_TASKLIST.md)
- [Readium EPUB/DJVU migration plan](active/READIUM_EPUB_DJVU_MIGRATION_PLAN.md)
- [Settings capability map](active/SETTINGS_CAPABILITY_MAP.md)
- [Localization audit](active/LOCALIZATION_AUDIT.md)
- [Translation module task](active/TRANSLATION_MODULE_TZ.md)
- [Third-party dictionaries](active/THIRD_PARTY_DICTIONARIES.md)
- [Library background generation task](active/LIBRARY_BACKGROUND_GENERATION_TZ.md)
- [Library background prompt pack](active/LIBRARY_BACKGROUND_PROMPT_PACK.md)

## Format References

- [Comic archives](reference/format-references/01-comic-archives.md)
- [PDF](reference/format-references/02-pdf.md)
- [DJVU](reference/format-references/03-djvu.md)
- [EPUB](reference/format-references/04-epub.md)
- [FB2](reference/format-references/05-fb2.md)
- [MOBI/AZW3](reference/format-references/06-mobi-azw3.md)
- [DOCX/ODT/RTF](reference/format-references/07-docx-odt-rtf.md)
- [TXT/HTML/Markdown](reference/format-references/08-txt-html-md.md)

## Feature Areas Covered

- Reader architecture and text/raster container separation.
- Text pagination, vertical feed behavior, safe insets, and reader chrome.
- CBR/CBZ/PDF/DJVU rendering.
- EPUB/FB2/MOBI/RTF/DOCX/HTML/Markdown/TXT parsing.
- OCR and scanned page workflows.
- Offline translation, online translation boundaries, and dictionaries.
- Library customization, visual presets, and settings organization.

## Archive

Historical checkpoints and older plans live under:

- `archive/checkpoints/`
- `archive/roadmaps/`

These files are kept for project history. Current work should be driven by the root README, this documentation map, and the active docs above.
