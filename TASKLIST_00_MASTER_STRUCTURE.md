# Mr.Comic Structure Master Plan

## Purpose

This file is the entry point for the next restructuring wave of `Mr.Comic`.
It groups the already collected context into focused tasklists so development can continue without re-auditing the whole project every time.

## Source Pack

- Split master tasklists: `TASKLIST_01_READER_EXPERIENCE.md` to `TASKLIST_05_PLATFORM_FOUNDATION.md`
- Archived legacy roadmaps: `docs/archive/roadmaps/`
- Handoff log: `PROJECT_CONTEXT_HANDOFF.md`
- Localization audit: `docs/active/LOCALIZATION_AUDIT.md`
- Translation requirements: `docs/active/TRANSLATION_MODULE_TZ.md`
- Dictionaries and licensing notes: `docs/active/THIRD_PARTY_DICTIONARIES.md`
- OCR update notes: `Ocr update/updated_TZ.md`
- UI reference screenshots: `Сравнение интерфейса/`
- External code reference: `https://github.com/Anxcye/anx-reader`

## Key Findings

### Current Mr.Comic strengths

- Strong native Android modular structure: `app`, `feature-*`, `core-*`, `engine-*`
- Reader already has real text-style controls, OCR entry points, progress recap, bookmarks, quotes
- Library and `Mr.Comic` hub already cover progress, achievements, goals, streaks, return prompts
- Translation domain already has routing, offline fallback, dictionary path, explain path

### Current Mr.Comic gaps

- Reader controls are powerful but split between global settings and in-reader sheet
- No separate `AI services / provider center` yet
- Translation/OCR package is still not fully closed
- P7-P9 gamification packages still need architecture, not only polish

### Newly closed gap

- System `TTS / read aloud` MVP now exists:
  - native Android `TextToSpeech`
  - settings surface in `Read Aloud`
  - reader-side runtime controls in `Services`
  - voice / speed / pitch / volume / sleep timer

### What the reference app does better

- Treats big capabilities as separate systems
- Keeps reading behavior, reading style, and reading services clearly separated
- Gives `AI` its own provider/configuration surface
- Gives `TTS` its own service and voice model layer
- Uses compact state summaries before drilling into full configuration

## Track Map

1. `TASKLIST_01_READER_EXPERIENCE.md`
Reader runtime, in-reader controls, behavior/style/services split, TTS entry architecture.

2. `TASKLIST_02_LIBRARY_GAMIFICATION.md`
Library UX, `Continue`, `Mr.Comic`, and the next gamification waves `P7-P9`.

3. `TASKLIST_03_TRANSLATION_AI_TTS.md`
OCR, translation, explain, AI provider center, TTS service architecture, voice source strategy.

4. `TASKLIST_04_SETTINGS_IA_LOCALIZATION.md`
Settings information architecture, compact summaries, localization discipline, About/Legal structure.

5. `TASKLIST_05_PLATFORM_FOUNDATION.md`
Architecture, analytics, data contracts, repository hygiene, build stability, format-engine boundaries.

## Recommended Execution Order

### Wave A

- `TASKLIST_04_SETTINGS_IA_LOCALIZATION.md`
- `TASKLIST_01_READER_EXPERIENCE.md`

Reason:
The reference app’s biggest advantage is structure and discoverability. We should fix where settings and reader controls live before adding more major systems.

### Wave B

- `TASKLIST_03_TRANSLATION_AI_TTS.md`

Reason:
AI/TTS should be introduced as proper service layers, not scattered toggles.

### Wave C

- `TASKLIST_02_LIBRARY_GAMIFICATION.md`

Reason:
P7-P9 will be cleaner after Reader and Settings architecture are stabilized.

### Wave D

- `TASKLIST_05_PLATFORM_FOUNDATION.md`

Reason:
Keep technical debt and data contracts aligned while the other waves move.

## Rules For This Restructure

- Do not copy `anx-reader` screens 1:1.
- Do not copy Flutter packages into a Kotlin app.
- Reuse ideas and architecture, not implementation details.
- Prefer capability-based structure over one giant settings page.
- Keep `Continue` reading-focused.
- Keep `Mr.Comic` analytics-focused instead of turning it into a second library.
- Treat `AI` and `TTS` as service systems, not decorative extras.

## Cleanup Performed Before This Plan

- Removed generated `_contact_sheets` from `Сравнение интерфейса`
- Removed project cache folders `.gradle` and `.kotlin`
- Removed stale backup files:
  - `android/feature-library/src/main/java/com/example/feature/library/LibraryScreen.kt.backup`
  - `android/core-ui/src/main/java/com/example/core/ui/library/LibraryVisualStyle.kt.backup`
- Removed loose root leftovers:
  - `old_ComicGridItem.kt`
  - `test.diff`

## Root Hygiene

- Legacy root roadmaps should not live in the project root anymore.
- Current active planning files are the split `TASKLIST_0x_*.md` documents.
- Old monolithic roadmaps belong in `docs/archive/roadmaps/`.

## Notes On `anx-reader`

- Useful as an architecture reference
- Not directly reusable as code because it is a Flutter/Dart project
- Best reference areas:
  - Reader control structure
  - AI provider center
  - TTS service and voice management
  - Compact settings patterns
