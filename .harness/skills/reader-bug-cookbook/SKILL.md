---
name: reader-bug-cookbook
description: |
  Symptom → cause → minimal-fix catalog for the Mr.Comic Android reader
  (Kotlin Compose + WebView). Use when the user reports a reader bug,
  asks "why does the page break here", or wants a concrete patch for a
  known failure mode in any of: pagination/last-page cutoff, footnote
  popups, reading progress 100%, DOCX tables/footnotes, MOBI/FB2/EPUB
  text artefacts, color preset transitions, archive-loading palette
  inheritance, archive text slowness, text-selection on scroll.

  Project-local skill (Mr.Comic only). Trigger phrases:
  - "почему страница пропускается / обрезается / прыгает в PAGE-режиме"
  - "сноска обрезается снизу / не подсвечивается"
  - "прогресс 100% хотя не дочитал"
  - "таблица DOCX не отображается"
  - "текст выделяется при пролистывании"
  - "экран пустой при смене пресета чтения"
  - "архив с книгой грузится вечно / тёмная палитра"
  - "вместо буквы цифра / слово разбито на слоги"
  - "маркер сноски в FB2 цифрой — не подсвечивается"

  Do NOT use for:
  - Workflow / how to reproduce a bug → use the `android-reader-qa` skill
    (evidence, smoke script, status report, classifications).
  - A real-time device-debug session → see `docs/reader_test_progress.md`
    and the existing `bugs_status_YYYYMMDD.md` snapshot, run that flow.
  - General WebView or Compose questions unrelated to the Mr.Comic reader
    module — that is generic Android help.
---

# reader-bug-cookbook — symptom → cause → minimal fix

Project-local skill for the Mr.Comic reader. Companion to `android-reader-qa`
(workflow / reproducibility). This skill is the **knowledge base**: for each
known failure mode it gives the engineer-ready file, line, root cause, and a
short patch pattern.

## Inputs to collect

Before opening any reference, capture:

| Item | Why |
| --- | --- |
| Format (FB2 / EPUB / DOCX / MOBI / RTF / HTML / Markdown / TXT / ODT) | Failure modes are format-specific; references split by format |
| Reading mode (PAGE / WEBTOON-text / WEBTOON-raster) | WEBTOON has a separate `TextWebtoonView` whose bugs do not appear in PAGE-mode code |
| Git HEAD or branch | Several references point to specific line numbers from `5b05dbb` (2026-05-23); line numbers move, but file paths and class names are stable |
| Exact symptom wording from user ("обрезается снизу", "прогресс 100% при открытии", etc.) | Map to the right reference file below |

When the symptom matches more than one reference (e.g. "text gets cut"), read
all candidates and pick the one whose file-path list overlaps the user's
mentioned surface ("PAGE-mode" → pagination.md, "WEBTOON-text" → format-text.md).

## Procedure

1. **Identify the category.** Use the user's symptom wording:
   | Symptom cluster | Reference |
   | --- | --- |
   | page skip, last page cutoff, top + bottom truncation, padding mismatch | `references/pagination.md` |
   | footnote popup overflow, footnote digit highlight, marker classes | `references/footnote.md` |
   | 100% progress on a fresh book, completion logic, scroll progress vs page | `references/progress.md` |
   | DOCX table missing, DOCX font mojibake, DOCX footnote id | `references/docx.md` |
   | FB2 / EPUB / MOBI / RTF / Markdown specific text artefacts | `references/format-text.md` |
   | screen blank on preset change, palette transition | `references/color-preset.md` |
   | slow archive loading, dark palette inherited from raster layer | `references/archive-loading.md` |
   | `mrcomic-table-scroll` CSS, font-size/lh coercion, selection handles | `references/css-hygiene.md` |
   | external reference projects (Foliate, Koodo, Komga, FBReader, Anx Reader) | `references/related-projects.md` |

2. **Open only the matching reference.** Each file is self-contained: symptom → exact file:line → root cause → minimal fix + verified-in. Do not read all references at once — most bugs land in one place.

3. **Confirm the file path is still there.** The references were written against `5b05dbb` (2026-05-23). Run:
   ```powershell
   Get-ChildItem -Path "<workspace>\android" -Recurse -Filter "*.kt" | Select-String -Pattern "<symbol from reference>"
   ```
   If the symbol moved, ask `git log -S` to find the new home before patching.

4. **Apply the minimal fix, not the rewrite.** The references deliberately do **not** propose big refactors (e.g. ripping out Kotlin-side pagination to use CSS multi-column). If the user wants a rewrite, escalate to `plan-mode` instead.

5. **Re-run the smoke test** listed in the matching reference (each has one concrete check). Acceptance = the symptom no longer reproduces on the exact build the QA doc lists.

6. **Update the next `bugs_status_YYYYMMDD.md`.** Add a row with: status FIXED/PARTIAL/OPEN/VERIFY, your commit hash, and a one-line "minimum fix" entry. The reference file already knows the prior status (e.g. `1.а чёрный экран в PAGE → ✅ FIXED`).

## Output contract

For every bug fix the skill produces, the engineer should walk away with:

| Artefact | Where |
| --- | --- |
| `git diff` of the patched `.kt`/`.js`/`.css` files | local repo |
| Updated `bugs_status_YYYYMMDD.md` row | `docs/` |
| Smoke-test output (logcat slice, screenshot, or `grep` of expected symbol) | `reader-qa-artifacts/<ts>/` |
| If a new bug class emerged, a new section in the matching reference | `references/<topic>.md` |

Do **not** ship:
- "I think this should work" patches without running the smoke step.
- Rewrites the user did not ask for (e.g. swapping `ReflowableDocument` for CSS columns without consent).
- Cosmetic-only changes (rename, reformat) — fold them into the real fix.

## Failure handling

- The reference's file:line no longer exists → likely renamed or moved. Fallback order:
  1. `git log --all -S "<symbol>" -- '*.kt'`
  2. grep for the symbol across the module: `rg "<symbol>" android/<module>`
  3. ask the user for the recent commits affecting that area before guessing

- Two references both claim the same symptom → both fixes are probably needed; apply as a batch and re-smoke together. Common pair: footnote popup overflow + footnote highlight (both touch `FootnoteTokens.kt` + `ReaderScreen.kt`).

- The user wants a fix that violates a hard invariant from `reader_test_progress.md` (e.g. "let pagination drift") → push back. The invariant exists because the rendering pipeline depends on it.

- A reference is missing for the reported class → file a new section in the matching reference rather than improvising; this skill's value is in staying current.

## Examples

**Pattern 1 — foot in the door.** User says "DOCX — таблица не видна". Open `references/docx.md`, find the symptom row, follow file:line to `DocxRenderSupport.kt:67-87`, confirm CSS class `.mrcomic-table-scroll` lacks a definition, add the CSS block from the reference to `READER_DOCUMENT_CSS`, smoke-build, observe the table rendered. Update `docs/bugs_status_<date>.md` row 5.в.

**Pattern 2 — many suspects.** User says "PAGE-режим — текст режется сверху и снизу". Both `pagination.md` (last-page cutoff) and `css-hygiene.md` (padding coercion, `coerceAtLeast(20)`) match. Open both, identify that the primary offender is `ReaderScreen.kt:1046-1047` `coerceAtLeast` blocking the user-set font size, and the secondary offender is `ReflowableDocument.kt:200-230` `splitOversizedMarkupBlock` not measuring real WebView height. Apply both fixes in one commit, rerun `android/feature-reader/src/test/.../ReaderHtmlCssJsTest`.

**Pattern 3 — verify a known fix from another project.** User says "Foliate делает это через CSS multi-column — почему не мы?". Don't refactor on the spot. Open `references/related-projects.md`, find the Foliate layout-calculator entry (`foliate-js/src/layout.js:calculate(_width, _height, _gap)`), link the user to it as future direction, file a P1 backlog row, and apply today's symptom fix from `pagination.md`.

## Pointers (read only when the named topic is in play)

- `references/pagination.md` — PAGE-mode page splitting, last-page cutoff, orphan/widow control
- `references/footnote.md` — footnote click routing, popup positioning, marker detection
- `references/progress.md` — reading-progress 100% bug, completion gating, scroll vs page
- `references/docx.md` — DOCX tables, font obfuscation, paragraph gap, footnote id mismatch
- `references/format-text.md` — FB2 / EPUB / MOBI / RTF / Markdown / HTML / TXT specific
- `references/color-preset.md` — color matrix / temperature transition, blank screen on swap
- `references/archive-loading.md` — ZIP-based formats, dark palette inheritance, slow load
- `references/css-hygiene.md` — `.mrcomic-table-scroll`, font-size coercion, selection CSS
- `references/related-projects.md` — Foliate / Koodo / Komga / FBReader / Anx Reader entry points

The project also ships `docs/bugs_status_<YYYYMMDD>.md` and
`docs/reader_test_progress.md` — those are the **state files**; this skill is
the **transition rules** (how to move a row from OPEN to FIXED).
