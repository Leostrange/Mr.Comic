# Document Retention Audit

Date: 2026-03-23
Project: `Mr.Comic`

This audit reviews the project documents other than `TASKLIST_01` to `TASKLIST_05`.
Goal: keep the root understandable, avoid duplicate roadmaps, and separate active docs from reference/archive material.

## Keep Active

These are still part of the live working set and should remain easy to find.

- [TASKLIST_00_MASTER_STRUCTURE.md](C:/Users/xmeta/projects/Mr.Comic/TASKLIST_00_MASTER_STRUCTURE.md)
  Why: entry point for the split planning system and the main map between tracks.

- [PROJECT_CONTEXT_HANDOFF.md](C:/Users/xmeta/projects/Mr.Comic/PROJECT_CONTEXT_HANDOFF.md)
  Why: the main operational handoff and current-stop-point log.

- [SETTINGS_CAPABILITY_MAP.md](C:/Users/xmeta/projects/Mr.Comic/docs/active/SETTINGS_CAPABILITY_MAP.md)
  Why: the strongest architecture note for the settings restructure.

- [LOCALIZATION_AUDIT.md](C:/Users/xmeta/projects/Mr.Comic/docs/active/LOCALIZATION_AUDIT.md)
  Why: live QA/audit reference for runtime localization.

- [QA_REGRESSION_CHECKLIST.md](C:/Users/xmeta/projects/Mr.Comic/docs/active/QA_REGRESSION_CHECKLIST.md)
  Why: active release and smoke-test checklist.

- [TRANSLATION_MODULE_TZ.md](C:/Users/xmeta/projects/Mr.Comic/docs/active/TRANSLATION_MODULE_TZ.md)
  Why: still the primary implementation spec for translation/OCR.

- [THIRD_PARTY_DICTIONARIES.md](C:/Users/xmeta/projects/Mr.Comic/docs/active/THIRD_PARTY_DICTIONARIES.md)
  Why: active licensing/source-of-truth note for bundled dictionary data.

- [DJVU_RENDERER_RESEARCH.md](C:/Users/xmeta/projects/Mr.Comic/docs/active/DJVU_RENDERER_RESEARCH.md)
  Why: still relevant while `DjVu` remains unfinished.

## Keep, But Treat As Reference

These are useful, but they should not compete with the active roadmap set.

- [Геймификация приложения для чтения книг и комиксов с маскотом.md](C:/Users/xmeta/projects/Mr.Comic/docs/reference/%D0%93%D0%B5%D0%B9%D0%BC%D0%B8%D1%84%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BF%D1%80%D0%B8%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%B4%D0%BB%D1%8F%20%D1%87%D1%82%D0%B5%D0%BD%D0%B8%D1%8F%20%D0%BA%D0%BD%D0%B8%D0%B3%20%D0%B8%20%D0%BA%D0%BE%D0%BC%D0%B8%D0%BA%D1%81%D0%BE%D0%B2%20%D1%81%20%D0%BC%D0%B0%D1%81%D0%BA%D0%BE%D1%82%D0%BE%D0%BC.md)
  Role: the original long-form concept/reference paper.
  Recommendation: keep, but use as source material rather than an active tracker.

- [Mr.Comic_gameficator.txt](C:/Users/xmeta/projects/Mr.Comic/Mr.Comic_gameficator.txt)
  Role: alternate concept brief for the mascot/gamification layer.
  Recommendation: keep, but treat as reference alongside the main gamification concept document.

- [CLAUDE.md](C:/Users/xmeta/projects/Mr.Comic/docs/reference/CLAUDE.md)
  Role: collaborator/onboarding guide for external coding assistants.
  Recommendation: keep only if you still use multi-agent/assistant workflows; otherwise move to `docs/reference/`.

- [Ocr update/updated_TZ.md](C:/Users/xmeta/projects/Mr.Comic/Ocr%20update/updated_TZ.md)
  Role: delta spec for the OCR/dictionary direction.
  Recommendation: keep until translation/OCR is fully re-specified or merged back into the main translation tasklist/spec.

- [Ocr update/dictionary_optimization_guide.md](C:/Users/xmeta/projects/Mr.Comic/Ocr%20update/dictionary_optimization_guide.md)
  Role: technical optimization note for dictionary generation.
  Recommendation: keep as implementation reference, not as a product roadmap.

- [Ocr update/README_build_dictionary_full.md](C:/Users/xmeta/projects/Mr.Comic/Ocr%20update/README_build_dictionary_full.md)
  Role: build process note for dictionary generation.
  Recommendation: keep as tooling reference; move under a future `docs/build/` or `scripts/docs/` folder if desired.

- [Packt.Mastering.Kotlin.for.Android.14.1837631719.pdf](C:/Users/xmeta/projects/Mr.Comic/docs/reference/books/Packt.Mastering.Kotlin.for.Android.14.1837631719.pdf)
  Role: general Kotlin/Android book reference.
  Recommendation: not needed in the root working set. Better moved to `docs/reference/books/` or out of the repo workspace entirely.

## Already Archived

- [docs/archive/roadmaps/TASKLIST.md](C:/Users/xmeta/projects/Mr.Comic/docs/archive/roadmaps/TASKLIST.md)
- [docs/archive/roadmaps/GAMIFICATION_TASKLIST.md](C:/Users/xmeta/projects/Mr.Comic/docs/archive/roadmaps/GAMIFICATION_TASKLIST.md)

These were the old monolithic roadmaps. They are still useful as historical context, but should no longer drive active work.

## Current Recommendation For Root Hygiene

Root should mainly contain:

- active planning docs
- active specs
- active QA/audit docs
- the live handoff

Now that the cleanup has been performed, most secondary specs and audits should live under `docs/active/` or `docs/reference/`, not in the root.

Root should not be crowded by:

- old monolithic roadmaps
- generic external reference books
- transient build caches

## Suggested Next Cleanup Wave

1. Keep [Packt.Mastering.Kotlin.for.Android.14.1837631719.pdf](C:/Users/xmeta/projects/Mr.Comic/docs/reference/books/Packt.Mastering.Kotlin.for.Android.14.1837631719.pdf) in `docs/reference/books/`, not in the root.
2. Keep [CLAUDE.md](C:/Users/xmeta/projects/Mr.Comic/docs/reference/CLAUDE.md) as a reference/onboarding artifact unless it becomes active workflow again.
3. Later, regroup the OCR notes from [Ocr update/updated_TZ.md](C:/Users/xmeta/projects/Mr.Comic/Ocr%20update/updated_TZ.md), [Ocr update/dictionary_optimization_guide.md](C:/Users/xmeta/projects/Mr.Comic/Ocr%20update/dictionary_optimization_guide.md), and [Ocr update/README_build_dictionary_full.md](C:/Users/xmeta/projects/Mr.Comic/Ocr%20update/README_build_dictionary_full.md) under one cleaner OCR docs area.
