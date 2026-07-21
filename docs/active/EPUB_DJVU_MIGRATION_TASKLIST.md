# EPUB / DjVu Migration Tasklist

Status legend:
- `[x]` done
- `[~]` in progress
- `[ ]` todo

This tasklist is the working queue for the migration described in [READIUM_EPUB_DJVU_MIGRATION_PLAN.md](./READIUM_EPUB_DJVU_MIGRATION_PLAN.md).

## Phase 0. Foundation

Dependencies: `engine-api`, `engine-registry`, `core-model`, `core-domain`, `engine-formats`, `engine-epub-readium`.

- [x] Add shared engine contracts: `BookEngine`, `BookSession`, `OpenBookRequest`.
- [x] Add shared engine-facing models: `BookSource`, `BookMetadata`, `ReaderLocator`, `BookTocItem`, `BookSearchHit`, `ReaderPreferenceSnapshot`, `ReaderRendererKey`.
- [x] Route the open flow through `BookEngineRegistry` while keeping the legacy adapter alive.
- [x] Add `LegacyFormatBookEngine` as a non-breaking adapter over the current `FormatReader` path.
- [x] Create a dedicated `ReadiumEpubEngine` boundary for `EPUB`.
- [x] Open a real `Readium Publication` and map metadata / TOC / search to domain models.
- [x] Persist locator-backed reader state for `EPUB` basics: current locator, bookmarks, quotes, highlights, resume.
- [x] Add policy tests for the main `Readium` startup and locator invariants.

## Phase 1. EPUB Cutover

Dependencies: Phase 0 complete, `feature-reader` shell policies, `Readium` publication/session bridge.

- [x] Reduce the `Readium EPUB` open path to a failure-only safety fallback; keep hybrid rendering as an explicit renderer boundary instead of an implicit open-path tail.
- [x] Keep `Readium` as the first-choice state for `TOC`, `search`, `currentLocator`, and resume.
- [x] Keep startup locator resolution locator-backed first, with page-only behavior only as a supplement.
- [x] Remove remaining page-only assumptions from `ReaderViewModel` for `EPUB` startup and resume.
- [x] Keep `Reader` route arguments fully aligned with locator-backed `EPUB` opens.
- [x] Keep `feature-reader` on renderer-family policy helpers instead of scattered `READIUM_EPUB` branching for the active EPUB path.
- [x] Keep user-facing EPUB rendering on the hybrid legacy HTML path until `Readium` reaches cover/front-matter visual parity.
- [x] Stop eagerly materializing the hybrid legacy EPUB session during a successful `Readium` open; keep it lazy until the legacy render path actually needs it.
- [x] Decide the final boundary for the legacy EPUB renderer fallback: `Readium` owns publication/locator/search/TOC state, while user-facing EPUB rendering stays on `HYBRID_EPUB_LEGACY_RENDER` until a separate visual-parity project replaces it.
- [x] Keep `Readium` shell targeting isolated from legacy HTML asset path handling.

## Phase 2. Renderer Family Split

Dependencies: Phase 1 stable, reader shell can distinguish `READIUM_EPUB` from legacy text / paged paths.

- [x] Split the active EPUB path by renderer family instead of format-specific branching.
- [x] Keep the pure `READIUM_EPUB` renderer isolated behind its own renderer path inside `feature-reader`, while the default EPUB experience stays on `HYBRID_EPUB_LEGACY_RENDER`.
- [x] Keep legacy text / bitmap / paged paths behind explicit policy helpers.
- [x] Remove residual `when(format)`-style routing from the active EPUB reader shell path.
- [x] Make active EPUB chrome, TOC, search, and startup/resume behavior depend on renderer family.

## Phase 3. DjVu Isolation

Dependencies: Phase 1 stable, renderer-family split in place or near-complete.

- [x] Define `engine-djvu-api` for the isolated `DjVu` contract.
- [x] Choose the `DjVu` strategy: optional runtime backend or import-only pipeline.
- [x] Add the isolated `DjVu` implementation or import entry point without touching the shell.
- [x] Wire `DjVu` into the engine registry through the same shared contracts.
- [x] Keep `DjVu` render/search/TOC behavior separate from EPUB and legacy text paths.
- [x] Add focused `DjVu` regression tests and corpus coverage.

## Phase 4. Regression And QA

Dependencies: Phase 1 and Phase 3 stable enough for repeatable verification.

- [x] Run EPUB smoke tests on real books after each migration slice.
- [x] Run reader startup, resume, TOC, search, bookmark, quote, and highlight checks after each slice.
- [x] Run a `DjVu` real-file pass once the isolated path exists.
- [x] Rebuild the debug APK after each meaningful migration packet.
- [x] Keep the QA checklist aligned with the current EPUB/DjVu state.

## Current Focus

- [x] EPUB open/navigation cleanup.
- [x] Reader shell policy cleanup around locator-backed `EPUB`.
- [x] DjVu isolation: `DjvuBookEngine` wired into registry, DJVU removed from legacy adapter.
- [x] Final regression pass: all 5 module test suites green (engine-formats, engine-epub-readium, feature-reader, core-model, core-data).
