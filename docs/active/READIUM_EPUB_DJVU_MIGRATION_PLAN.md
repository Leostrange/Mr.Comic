# Readium EPUB / DjVu Migration Plan

## Goal

Move `EPUB` away from the current long-lived `WebView`-first path and prepare the project for:

- `Readium` as the main `EPUB` backend
- isolated `DjVu` runtime/import strategy
- one reader shell in `feature-reader`
- backend-specific rendering hidden behind shared contracts

Work tracking:

- [EPUB / DjVu Migration Tasklist](./EPUB_DJVU_MIGRATION_TASKLIST.md)

## First Safe Step

The project now has a non-breaking foundation for this migration:

- `:engine-api`
  Shared contracts:
  - `BookEngine`
  - `BookSession`
  - `OpenBookRequest`
- `:engine-registry`
  - `BookEngineRegistry`
- `core-model`
  Shared engine-facing models:
  - `BookSource`
  - `BookMetadata`
  - `ReaderLocator`
  - `BookTocItem`
  - `BookSearchHit`
  - `ReaderPreferenceSnapshot`
  - `ReaderRendererKey`
- `:engine-formats`
  - `LegacyFormatBookEngine` adapter over the current `FormatReader` path
- `:engine-epub-readium`
  - dedicated `EPUB` engine boundary
  - real `Readium Publication` opening
  - maps publication metadata and TOC to domain models
  - still uses legacy renderer fallback while `feature-reader` stays stable

## Why This Order

This keeps the current app behavior alive while we separate:

- book opening / metadata / TOC / search
- renderer selection
- reader UI shell

That lets us introduce `Readium` for `EPUB` without rewriting `feature-reader` first.

## Target Architecture

### Shared Contracts

- `BookEngine`
- `BookSession`
- `BookEngineRegistry`
- `ReaderLocator`
- `ReaderPreferenceSnapshot`

### Planned Engines

- `LegacyFormatBookEngine`
  Temporary adapter over today’s `FormatReader` implementations.
- `ReadiumEpubEngine`
  Future primary backend for `EPUB`.
- `DjvuBookEngine`
  Future isolated `DjVu` engine or import pipeline entry point.

### Planned Renderer Families

- `LEGACY_TEXT_WEB`
- `LEGACY_PAGED_BITMAP`
- `READIUM_EPUB`
- `PAGED_DOCUMENT`

## Phase Plan

### Phase 1

Create shared engine contracts and registry.

Status: done.

### Phase 2

Route current opening flow through `BookEngineRegistry` while still using the legacy adapter.

Target:

- `feature-reader` opens `BookSession`
- old `FormatReader` path still works through the adapter

Status: done.

### Phase 3

Introduce `engine-epub-readium`.

Target:

- `EPUB` opens a real `Readium Publication`
- locator persistence uses our own `ReaderLocator`
- `EPUB` metadata / TOC / search come from `BookSession` instead of the legacy parser
- `feature-reader` still keeps the same shell UI

Status: `Publication` open, `Navigator` bridge, TOC loading and TOC navigation now use `ReaderLocator`, locator persistence is done, search service is routed through `Readium BookSession`, reader-side search UI is wired to session-backed results and locator navigation, bookmarks now persist exact `ReaderLocator` data for `Readium EPUB`, selected text now bridges into the existing reader action sheet through `SelectableNavigator`, saved highlights are persisted as locator-backed `Readium` decorations with reader-side management UI and note editing, saved quotes now store domain `ReaderLocator` metadata, quote-driven opens can pass locator-aware targets into `ReaderViewModel`, `Library / Continue / Progress` resume routes now prefer stored locators when the user is resuming a book rather than jumping to an explicit checkpoint page, `ReadiumEpubEngine` now keeps TOC/search/current locator state on the `Publication` path first and only falls back to the legacy session when `Readium` is unavailable or throws, TOC loading in `ReaderViewModel` no longer treats an empty `BookSession` TOC as a reason to re-enter the legacy parser, `READIUM_EPUB` no longer runs legacy `loadPage/html prewarm/high-quality warmup` hooks during open or normal position sync, the open path no longer eagerly loads `legacyReader` for a successful `Readium` session just to estimate startup state, startup page resolution now prefers `Publication.resolveReaderPageIndex(...)` over page-only fallback when a locator already points to a concrete reading-order resource, the `Readium` shell no longer relies on `htmlAssetBasePath` as a backup navigation target, and initial `totalPages` estimation now prefers `Publication.readingOrder.size` over pure locator/page heuristics.

Visual parity note:

- While `Readium` owns `Publication`, `TOC`, `search`, and locator state, the user-facing EPUB render remains on the hybrid legacy HTML pipeline for now.
- This is intentional until the pure `Readium` render path reaches parity for cover images, front matter, and publisher-specific opening pages.

Final EPUB boundary:

- `ReadiumEpubEngine` is the primary EPUB backend for opening, publication state, TOC, search, and locator persistence.
- The default user-facing EPUB renderer key is `HYBRID_EPUB_LEGACY_RENDER`.
- `READIUM_EPUB` remains a renderer-family slot for future pure-Readium parity work, but it is no longer the default migration target in the current app.
- This means the EPUB migration is considered complete for the current product boundary: structure/state/search/locators are `Readium`-backed, while visible page rendering stays on the proven legacy HTML path.

Primary-path invariant:

- The `Readium` publication/session is the first choice for open-path state.
- `Readium` owns `TOC`, `search`, and `locator` state whenever a publication is available.
- Legacy parsing/session code may be used only when `Readium` is unavailable or throws.
- An empty `Readium` TOC or empty search result is not, by itself, a fallback signal.
- When a `Readium Publication` is already open, startup locator resolution must not consult `legacySession.currentLocator()`.
- `Readium` open success should not trigger any legacy locator-recovery callback just because the publication locator is temporarily missing.
- Locator persistence should continue from the primary `Readium` session without re-entering legacy parsing.
- Readium startup positioning must honor locator-backed state first, including `ReaderLocator.position`, and must not collapse back to page-only state when a publication locator is already available.
- `Readium EPUB` should not eagerly materialize the legacy fallback reader/session unless a true legacy-only path is actually requested.
- A successful `Readium` EPUB open should keep the hybrid legacy render session lazy; the legacy session may be materialized later by the hybrid renderer, but not inside the primary `Readium` open step itself.
- `Readium` startup and restore flows must not synthesize a fake "first readingOrder item" locator when no real locator exists yet.
- `Readium` shell targeting should come from locator-backed session state, not from the legacy HTML asset path.
- `Readium` open-state estimation should prefer `Publication.readingOrder` when it is available, and use locator/page heuristics only as a supplement.
- `Readium` navigation should keep the last valid locator when the publication cannot resolve a new target, instead of collapsing back to a synthetic page-only locator.
- `Readium` open/goTo/currentLocator flow should reject bare page-only locators as publication navigation targets; those are only supplemental shell hints.
- Reader-side `READIUM_EPUB` checks should keep moving toward renderer-family policy helpers instead of scattered direct enum comparisons.
- Reader shell policy should prefer one central renderer-family mapping over repeated direct enum checks, even while the public renderer keys stay unchanged.
- A hybrid EPUB renderer may still use the legacy HTML page pipeline for user-facing rendering, but it must not treat that renderer family alone as a reason to fall back to legacy `TOC/search` structure.
- A hybrid EPUB renderer may still use stored page resume as a supplement when no locator survives startup, because its user-facing render path is still legacy HTML.
- Locator anchoring for `bookmarks / quotes / progress / resume` should stay centralized through one helper, so `Readium EPUB` does not drift back into multiple page-only code paths.
- `ReaderViewModel` should keep locator/page anchoring in one helper so bookmarks, quotes, progress, and startup resume all stay aligned while `Readium` migrates away from page-only state.
- Renderer-family policy should distinguish `legacy reader`, `bitmap preload`, and future `paged document` paths instead of treating every non-Readium renderer as the same pipeline.

Regression focus:

- `ReadiumEpubEnginePolicyTest` keeps the startup-locator contract explicit: `Readium` first, requested locator second, legacy current locator only when `Readium` is unavailable.
- The startup-locator policy should also keep the "no legacy reconsult on successful `Readium` open" contract explicit.
- The startup-locator policy should also keep the "no synthetic first reading-order locator when `Readium` has no target yet" contract explicit.
- Any new fallback behavior must preserve the "unavailable or failure only" boundary.

### Phase 4

Split reader rendering by renderer family instead of format-specific branching.

### Phase 5

Move `DjVu` to an isolated runtime or import-only path.

Status: `engine-djvu-api` contract defined, `DjvuBookEngine` implements `BookEngine` with dedicated `DjvuBookSession`, DJVU removed from `LegacyFormatBookEngine`, wired into `BookEngineRegistry` via Hilt `@IntoSet`. Strategy: runtime backend with existing `StructuredDjvuBackend`; import-only path scaffolded but not active. Focused regression tests remain.

Tasklist:

- `docs/active/EPUB_DJVU_MIGRATION_TASKLIST.md`

## Rules For Next Steps

- Do not inject `Readium` types directly into `feature-reader` state.
- Do not persist raw backend-specific locator objects.
- Keep `feature-reader` responsible only for shell UI and orchestration.
- Migrate `EPUB` first, then revisit `DjVu`.
