---
name: reader-qa
description: QA checklist for Mr.Comic reader flows, pagination, webtoon mode, raster/text separation, and format handling
type: prompt
whenToUse: When testing or changing reader screens, reader engines, EPUB/TXT/FB2/DOCX/RTF/HTML/Markdown, CBZ/CBR/PDF/DJVU, pagination, webtoon mode, TTS, or reader UI chrome
---

Reader QA checklist:

1. Identify the content family before changing behavior:
   - Text/reflowable: EPUB, TXT, FB2, DOCX, RTF, HTML, Markdown, MOBI-like text.
   - Raster/page media: CBZ, CBR, PDF, DJVU, image archives.
2. Confirm container routing:
   - Text PAGE -> horizontal pagination only.
   - Text WEBTOON -> vertical text feed only.
   - Raster PAGE -> page/image navigation only.
   - Raster WEBTOON -> vertical image feed only.
3. Check that CBR, CBZ, PDF, and DJVU never enter the text WebView.
4. For PAGE mode, verify there is no vertical scroll path.
5. For WEBTOON mode, verify there is no accidental page-snap behavior.
6. Preserve anchors, reading progress, TTS behavior, and reader chrome behavior unless the task explicitly changes them.
7. Prefer regression tests around the routing/policy layer when the change touches reader mode selection.
