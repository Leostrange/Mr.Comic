# Settings Capability Map

## Purpose

This document is the `S0 Settings Map Audit` result for `Mr.Comic`.

It answers four questions:

1. What settings already exist.
2. Where they currently live.
3. Which settings are in the wrong home.
4. What the future information architecture should look like.

Primary code references:

- [SettingsScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt)
- [SettingsViewModel.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsViewModel.kt)
- [ReaderScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt)

## Current Top-Level Settings Structure

Current top-level sections:

- `Appearance`
- `Reader`
- `Library`
- `Translation`
- `Backup`
- `About`

This top-level split is already better than a single wall of preferences, but it is now overloaded by service configuration, gamification switches, and settings that belong closer to the reader itself.

## Current Capability Inventory

### Appearance

Current home:

- app language
- theme presets
- theme mode
- dynamic color
- AMOLED dark
- UI font scale
- UI density
- corner radius
- accent colors
- background and surface colors
- surface opacity
- UI sounds and volume
- mascot recap toggle
- quest prompts toggle
- app icon selection

Assessment:

- `Appearance` is mostly correct for theme, scale, and color.
- `mascot recap` and `quest prompts` do not belong to visual styling.
- `app icon` is acceptable here as a personalization surface.
- The section now also has a real `Theme Studio` overview and saved app-theme slots, so user-created looks can be stored instead of living only as live state.

Keep here:

- language
- theme
- scale
- shape
- colors
- UI sounds
- app icon

Move later:

- mascot recap
- quest prompts

### Reader

Current home:

- reader presets
- reading mode: `LTR / RTL / Webtoon`
- brightness
- keep screen on
- immersive mode
- eye-rest timer
- daily reading goal
- weekly goal progress
- streak toggle
- grace day policy
- animation mode
- page flip sound
- sound style
- preload pages

Assessment:

- Reader behavior is mixed with gamification policy.
- This section is strong, but it currently combines three separate domains:
  - reader behavior
  - reader typography
  - reading wellness
  - progress system
- The latest pass exposed `Style & typography` as a first-class settings page on top of the same live text-reader prefs used by EPUB/FB2 reading.

Keep here:

- reading mode
- brightness
- keep screen on
- immersive mode
- eye-rest
- animation
- page sound
- preload

Move later:

- daily reading goal
- streak
- grace policy

Notes:

- Text reading style controls are not here; they currently live inside the reader sheet.
- That is workable short-term, but long-term `Reader` should become a capability with second-level pages:
  - `Behavior`
  - `Style`
  - `Services`

### Library

Current home:

- default grid/list
- grid columns
- tile size
- card density
- cover scale
- thumbnail shape
- show progress
- show cover titles
- background style
- background image
- backdrop strength
- veil strength
- panel opacity
- shelf style
- shelf depth
- card shadow
- saved library themes
- sort order
- group by

Assessment:

- `Library` is structurally strong, but the old `Theme Studio` presentation still tended to look like a wall of cards.
- The latest pass fixes that by turning `Theme Studio` into a compact constructor overview with focused builder layers.

Keep here:

- all library presentation and sorting controls

Update:

- `Library` now uses real overview/subpages.
- `Theme Studio` is the dedicated home for cards, labels, background, shelves, and saved library themes.
- `Theme Studio` now splits into:
  - `Layout and spacing`
  - `Cards, covers, and labels`
  - `Shelves & canvas`
  - `Saved library themes`
- Existing library controls that were already stored but not emphasized are now surfaced more clearly, including `recent strip position` and `card shadow`.
- `Theme Studio` is no longer just a reorganized copy of the old library page:
  - background and shelf pickers are wrapped visual grids instead of the old horizontal ribbon
  - there is now a real atmosphere layer with `background blur`, `veil`, and lower-range `panel opacity`
  - newly added background families are intended to create visibly different moods:
    - `Liquid Glass`
    - `Midnight Mica`
    - `Sunset Haze`
  - newly added shelf materials are intended to read differently at a glance:
    - `Frost`
    - `Aluminum`
    - `Float`
  - manual per-card controls now affect both live library cards and the settings preview:
    - `title scale`
    - `title lines`
    - `card stroke`
    - `card corner radius`
    - `title panel opacity`
  - saved library themes now preserve those manual card-level adjustments instead of only background/shelf mood

### Translation

Current home:

- translation mode: `OFF / OCR / DICTIONARY`
- source language
- target language
- transport: `AUTO / OFFLINE / ONLINE`
- explain toggle
- OCR comic filters
- OCR overlay opacity
- OCR overlay font scale
- OCR overlay style
- OCR source language

Assessment:

- This section currently mixes:
  - user-facing translation behavior
  - OCR presentation
  - service transport
  - future AI-like controls

Keep here:

- translation mode
- source language
- target language
- OCR language
- comic filters
- overlay appearance

Move later:

- transport selection
- explain service configuration
- future provider configuration

Future split:

- `Translation & OCR`
- `AI Services`
- `Read Aloud / TTS`

### Backup

Current home:

- export progress/settings
- import progress/settings
- library access repair
- auto backup
- clear cache / maintenance actions

Assessment:

- This section is correct.
- It is operational and low-frequency.

Keep here:

- backup
- restore
- repair
- maintenance

### About

Current home:

- overview
- features
- libraries
- licenses
- developer identity
- contacts

Assessment:

- `About` is now correctly constrained.
- It reads like product and legal information rather than a dump of controls.

Keep here:

- all current `About` content

## Settings That Exist Outside Settings

These are real settings or behavior controls, but they are not discoverable from the main settings IA.

### Reader Text Style Sheet

Current home:

- inside the reader bottom sheet

Current controls:

- quick reading presets
- color scheme
- font family
- font size
- line height
- bold
- text alignment

Reference:

- [ReaderScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt)

Assessment:

- This is valid in-context UI.
- But it means the app has a split reader settings model:
  - global reader behavior in `Settings`
  - text style inside `Reader`

Future direction:

- keep in-reader quick style controls
- add a mirrored summary entry in `Settings -> Reader`
- later unify under:
  - `Reader -> Behavior`
  - `Reader -> Style`
  - `Reader -> Services`

### Progress and Mascot Toggles

Current home:

- `Appearance -> Extra`

Controls:

- mascot recap enabled
- quest prompts enabled

Assessment:

- This is not appearance.
- These are product-behavior and gamification switches.

Future home:

- `Mr.Comic & Progress`
- or `Reader & Progress`

Recommended rule:

- visual appearance controls stay in `Appearance`
- behavioral guidance and gamification controls move out

## Missing Capability Surfaces

These capabilities are either partially present in code or planned, but they do not yet have a proper settings home.

### AI Services

Already present in code foundation:

- translation transport abstraction
- explain engine
- provider-shaped model concepts

Missing as settings IA:

- provider selection
- provider status
- credentials and service health
- explain service behavior
- summary service behavior
- rate or usage policy

Future home:

- `AI Services`

### Read Aloud / TTS

Current status:

- no user-facing TTS service settings surface yet

Missing as settings IA:

- engine/provider
- voice
- language
- speed
- pitch
- playback behavior
- pause/stop policy

Future home:

- `Read Aloud / TTS`

### Reader Advanced Input / Interaction

Not currently exposed as a structured capability:

- tap zones
- volume button paging
- sleep timer
- finer webtoon interaction rules

Future home:

- `Reader -> Behavior`

## Proposed Future Information Architecture

### Top Level

Recommended compact top level:

- `Appearance`
- `Reader`
- `Library`
- `Translation & OCR`
- `AI Services`
- `Read Aloud`
- `Backup & Maintenance`
- `About`

### Second Level

#### Appearance

- Basics
- Theme
- Scale & Shape
- Colors
- Personalization

#### Reader

- Behavior
- Style
- Wellness
- Progress
- Services

#### Library

- Display
- Covers
- Style
- Sorting

#### Translation & OCR

- Translation Behavior
- OCR Input
- OCR Overlay
- Language Defaults

#### AI Services

- Providers
- Explain
- Summary
- Service Status

#### Read Aloud

- Engine
- Voice
- Playback
- Accessibility

## Rehome Plan

### Move from Appearance

- `mascot recap`
- `quest prompts`

To:

- `Reader -> Progress`
- or `Mr.Comic & Progress`

### Move from Reader

- `daily goal`
- `weekly goal context`
- `streak`
- `grace`

To:

- `Reader -> Progress`
- and later expose summary in `Mr.Comic / Progress hub`

### Move from Translation

- `transport`
- `future explain provider logic`
- `future online service status`

To:

- `AI Services`

## Priority Order

### Immediate

1. Freeze this capability map as the reference document.
2. Keep current top-level sections intact for now.
3. Start extracting second-level destinations without changing stored settings.

### Next

1. Split `Reader` into summary plus subpages.
2. Split `Translation` into user-facing `Translation & OCR` and service-facing `AI Services`.
3. Create placeholder `Read Aloud` entry even before full TTS implementation.

### Later

1. Move mascot/progress switches out of `Appearance`.
2. Add `Reader -> Style` summary bridge for settings that currently only exist in-reader.
3. Turn existing internal tabs in `Library` into true subpages if the section grows further.

## Design Rules Going Forward

- New settings must be assigned to a capability first, not to a convenient file.
- User-facing behavior and service configuration should not share the same subsection unless the connection is obvious.
- Anything that affects reading flow should live under `Reader`, even if it also feeds gamification.
- Anything that configures providers, transports, or engines should not live under a generic content section.
- `About` remains informational only.

## Outcome of S0

The app does not have a feature deficit as much as an information architecture deficit.

The next structural step should be:

1. `S1 Capability-Based Subpages`
2. `S2 Summary-First Pattern`
3. `S5 Service Separation`
