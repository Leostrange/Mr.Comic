# Tasklist 05: Platform Foundation, Data, Analytics, and Cleanup

## Scope

- architecture boundaries
- service/data contracts
- analytics structure
- repo hygiene
- build stability
- technical debt and feature isolation

## Current Mr.Comic State

### Strong parts

- Modular Android architecture
- Hilt, Room, DataStore, Compose already in place
- Feature separation is mostly healthy
- Engine layer is already separated from UI

### Weak parts

- Long-lived dirty working tree
- Historical backup and scratch files can accumulate
- Some large packages were advanced faster than their contracts were formalized
- OCR/translation and DjVu still need clearer final boundaries

## Cleanup Policy

### Safe junk to remove when found

- generated contact sheets
- project-local Gradle/Kotlin caches
- stale `.backup` source files
- one-off diff dumps and root scratch files

### Not “junk” by default

- user test files
- sample books/PDFs if actively used
- work-in-progress design docs
- historical handoff docs

## Development Tasks

### F0. Repo Hygiene Rules

- Define what is allowed in root
- Move scratch artifacts into a dedicated `scratch/` or stop creating them
- Keep generated analysis artifacts out of the repo tree

Acceptance:
- root stops growing random temporary files

### F1. Data Contracts

- Formalize contracts for:
  - achievement state
  - quest state
  - seasonal state
  - provider config
  - TTS config
- Keep the contracts versionable and testable

Progress:
- shared `TranslationServiceConfig` and `ReaderTtsConfig` are now formalized in `core-model`
- `SettingsUiState` no longer keeps translation/TTS only as ad-hoc raw flags
- `ReaderViewModel` now resolves translation settings through the shared contract instead of a private duplicate type

Acceptance:
- feature state is not hidden in ad-hoc flags

### F2. Analytics Schema

- Consolidate gamification analytics:
  - quest
  - stage
  - goal
  - return prompt
  - novelty window
- Add explicit schema notes for downstream dashboards

Acceptance:
- analytics events are documented and stable

### F3. Service Boundaries

- Keep `AI`, `TTS`, `Translation`, `OCR` separate at the domain/service level
- Avoid folding service config into feature UI state classes

Progress:
- translation/TTS contracts are now shared between settings and reader code paths
- next step is to move remaining OCR/provider availability snapshots onto the same boundary layer

Acceptance:
- new provider logic does not bloat reader/library view models

### F4. Format Engine Boundaries

- Keep `DjVu` on its own track
- Avoid mixing format-engine experiments with product-surface work

Acceptance:
- format R&D stays isolated from UI roadmaps

### F5. QA And Release Discipline

- Keep short regression checklists for:
  - Reader
  - Library
  - Continue
  - OCR/Translation
  - Settings
- Tie each large package to a checklist before calling it complete

Acceptance:
- fewer “it exists in code but is not actually closed” situations

## Libraries And Reuse Notes

### From `anx-reader`, use as references only

- provider registry concept
- service abstraction concept
- compact settings structure
- analytics heatmap idea

### Not directly reusable

- Flutter-specific packages and widget code

## Suggested Technical Priorities

1. Finalize service/data contracts before P8/P9
2. Keep analytics schema stable before external dashboards
3. Isolate TTS and AI as first-class modules
4. Keep repo root clean during each wave, not only at the end
