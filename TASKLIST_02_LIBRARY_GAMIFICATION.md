# Tasklist 02: Library, Continue, and Gamification

## Scope

- `Continue`
- `Library`
- `Mr.Comic`
- remaining gamification waves `P7-P9`

## Current Mr.Comic State

### Already completed

- Progress recap layer
- Daily goal / weekly plan / streak / grace day
- Separate `Mr.Comic` tab
- XP / stage / next unlock / quest feedback
- `Progress/Profile hub`
- Return prompt for 2-4 day reading gaps
- Discovery quests and anti-spam routing
- Analytics groundwork through `P6`

### Current UI direction

- `Continue` should stay reading-first
- `Mr.Comic` should stay analytics-first
- Library should not leak normal file lists into `Mr.Comic`

## Reference Findings

The reference app is useful here mostly for compactness:

- dense information should be grouped
- summary first, details second
- avoid turning one tab into a second full app

This supports the direction already taken in `Mr.Comic`.

## What To Adopt

### Adopt as reference

- compact summaries
- clear priority surfaces
- predictable action routing

### Do not copy

- “second bookshelf inside the analytics tab”
- huge card stacks for every metric

## Development Tasks

### G0. Stabilize Current `Mr.Comic` Surfaces

- Manual QA:
  - empty library
  - active library
  - search mode
  - goals on/off
  - mascot on/off
- verify no duplicate reading routes remain

Acceptance:
- `Mr.Comic` shows analytics and progress only
- `Continue` remains the main reading entry

### G1. P7 Seasonal Layer

- Expand the current quiet seasonal arc into a real seasonal chain
- Keep it lightweight:
  - one season card in `Mr.Comic`
  - one season section in `Progress/Profile`
- Tie to collections/genres, not grind

Acceptance:
- user sees a seasonal progression without a giant event screen

### G2. Seasonal Chain Rules

- Define:
  - season duration
  - quest types
  - unlock pacing
  - quiet-mode behavior
- Keep seasonal prompts search-aware and non-invasive

Acceptance:
- season does not fight library/search UX

### G3. P8 Social Layer

- Design as opt-in only
- Start with architecture, not UI sprawl:
  - shared challenge model
  - privacy rules
  - visibility rules
  - no default leaderboard

Acceptance:
- social has data and privacy design before UI

### G4. P9 Economy / Unlock Layer

- Define if any economy is needed at all
- If yes:
  - transparent wallet
  - explicit unlock paths
  - no dark patterns
- Keep separate from the core reading loop

Acceptance:
- economy does not contaminate reading-first UX

### G5. Analytics Completion For Gamification

- finish event coverage for:
  - seasonal chain
  - social actions
  - economy interactions
- keep guardrails from `P6`

Acceptance:
- every visible progression system has measurable events

## Dependencies

- depends on `TASKLIST_05_PLATFORM_FOUNDATION.md` for analytics/data contracts
- depends on `TASKLIST_04_SETTINGS_IA_LOCALIZATION.md` for user controls and opt-outs

## Design Rules

- `Continue` is for reading
- `Mr.Comic` is for progress and guidance
- Library is for content browsing
- no screen should try to be all three at once
