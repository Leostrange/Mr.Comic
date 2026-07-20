# Mr.Comic Project Analysis

Status: created from a read-only audit on 2026-06-26.

## Scope

This audit focused on the Android product code under `android/`, root Gradle configuration, repository hygiene, current docs, and active translation/reader work. The working tree already contains many modified and untracked files; do not assume these plans describe only committed code.

Use Windows Gradle commands in this checkout:

```powershell
.\gradlew.bat --no-daemon --console=plain <tasks>
```

## Prioritized Findings

| Priority | Finding | Why it matters | Plan |
| --- | --- | --- | --- |
| P0 | Main Room database can still destructively migrate | User library, quotes, highlights, progress, and translation cache can be dropped if a migration path is missing. | [001-room-migration-safety.md](001-room-migration-safety.md) |
| P0 | Offline NLLB/LLM path is advertised but not production-real | `NllbTranslatorEngine` uses placeholder tokenization/lang ids; `HybridLlmEngine` says local-first but falls back to online-only behavior. | [002-llm-offline-contract.md](002-llm-offline-contract.md) |
| P1 | Massive UI/ViewModel files are blocking safe change | Settings, library, reader screen, and reader VM are thousands of lines each, making regressions likely. | [003-split-oversized-ui-surfaces.md](003-split-oversized-ui-surfaces.md) |
| P1 | Repository hygiene is weak in the active workspace | The root contains local binaries, logs, references, screenshots, and 370 untracked files, increasing accidental publish risk. | [004-repository-hygiene.md](004-repository-hygiene.md) |
| P1 | Text PAGE reader has multiple user-visible regressions | Page mode skips/overlaps text, footnote popup layout depends on chrome state, text can auto-select, presets blank the screen, archive text opens slowly, and library progress can show 100% incorrectly. | [006-text-page-reader-regressions.md](006-text-page-reader-regressions.md) |
| P2 | Format catalog is a good start but not yet the single source of truth | Manifest intent filters, import policy, docs, and format engine support can still drift apart. | [005-format-support-single-source.md](005-format-support-single-source.md) |

## Verified Facts

- Root settings include 16 Gradle modules, including `:engine-llm`.
- The root README says to use `.\gradlew.bat` on Windows.
- The app database is version 8 with `exportSchema = false`.
- The production database builder registers migrations but still calls `fallbackToDestructiveMigration(dropAllTables = true)`.
- The current working tree has 967 tracked files and 370 untracked files according to git.
- Large top-level local artifacts include `mimo.exe` and `anx-reader-develop.zip`.
- Top oversized files by line count include `SettingsScreen.kt` (11426), `LibraryScreen.kt` (6581), `ReaderScreen.kt` (5863), `ReaderViewModel.kt` (4366), and `EpubFormatReader.kt` (2883).

## Suggested Execution Order

1. Fix database migration safety before adding more persisted reader/translation state.
2. Clarify and enforce LLM/offline translation contracts before presenting offline AI as available.
3. Stabilize repository hygiene before publication, release, or broad refactors.
4. Reproduce and fix the text PAGE reader regressions as one QA package, using WEBTOON mode as the control case.
5. Split the highest-churn UI files along already visible component boundaries.
6. Promote `ReaderFormatCatalog` into the shared source for picker, manifest generation/checks, docs, and engine tests.
