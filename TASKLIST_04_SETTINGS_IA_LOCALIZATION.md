# Tasklist 04: Settings, Information Architecture, and Localization

## Scope

- global settings structure
- section hierarchy
- compact summaries
- About / Legal / Licenses
- localization discipline across the whole app

## Current Mr.Comic State

### Already present

- Large modular settings screen
- `Appearance`, `Reader`, `Library`, `Translation`, `Backup`, `About`
- Many real controls already implemented
- Localization pass already improved live Compose surfaces

### Main structural issue

Capabilities exist, but discoverability still lags behind the raw feature set.

## Reference Findings

The reference app’s biggest UI strength is information architecture:

- large capability sets are split into understandable groups
- related options are kept together
- dense settings use compact pickers and short summaries
- service-heavy features like `AI` and `TTS` are not hidden inside unrelated sections

## What To Adopt

### Adopt as reference

- capability-based second-level sections
- compact summary rows before detail controls
- modal or sheet-based pickers for dense option sets
- short state summaries near the top of complex sections

### Do not copy

- every single option count
- exact card styling
- giant scrolling preference walls without prioritization

## Development Tasks

### S0. Settings Map Audit

- Build a settings inventory by capability
- Mark:
  - user-facing
  - advanced
  - service-config
  - debug/legacy

Status:
- completed in [SETTINGS_CAPABILITY_MAP.md](C:/Users/xmeta/projects/Mr.Comic/SETTINGS_CAPABILITY_MAP.md)

Acceptance:
- every setting has a clear home

### S1. Capability-Based Subpages

- Keep top-level sections compact
- Introduce second-level subpages where needed:
  - Reader
  - Translation & OCR
  - AI Services
  - Read Aloud / TTS
  - Library Appearance

Status:
- in progress
- first slice implemented:
  - `Reader` split into `Behavior & screen`, `Style & typography`, `Wellness`, `Reading goals`, `Motion & sound`
  - `Translation` split into `Behavior & languages`, `OCR input`, `Overlay`, `Services`
- second slice implemented:
  - separate top-level `AI Services` entry for transport and explain controls
  - separate top-level `Read Aloud / TTS` entry as the live home for voice-reading defaults
- third slice implemented:
  - `Appearance` now has overview + real subpages instead of one tab wall
  - `Library` now has overview + real subpages
  - `Appearance Theme Studio` is now a real constructor overview for palette, surfaces, density, service elements, and saved app themes
  - `Library Theme Studio` is now a real constructor overview with compact builder sections instead of one long wall of cards
  - `Library Theme Studio` splits into focused layers:
    - `Layout and spacing`
    - `Cards, covers, and labels`
    - `Shelves & canvas`
    - `Saved library themes`
  - `Library` overview now focuses on `Theme Studio` + `Sorting`, while visual controls live behind the constructor layers
- fourth slice implemented:
  - old horizontal style ribbons in `Theme Studio` were replaced with wrapped grid-style pickers
  - `Library Theme Studio` now has real atmosphere controls instead of only style names:
    - `background blur`
    - `background veil`
    - `panel opacity`
  - new background families were added for visibly different looks:
    - `Liquid Glass`
    - `Midnight Mica`
    - `Sunset Haze`
  - new shelf material families were added:
    - `Frost`
    - `Aluminum`
    - `Float`
  - `Appearance Theme Studio` now has stronger manual range control for:
    - `surface opacity`
    - `UI density`
    - `corner radius`
  - a new global `Glass` app preset was added as a base for Apple-like translucent styling
  - `Reader` now also has a true `Style & typography` page wired to live text-reader prefs:
    - text presets
    - color scheme
    - font family
    - font size
    - line height
    - text alignment
    - bold text
    - reset text style
- latest slice implemented:
  - `Library Theme Studio` now reaches beyond background/shelves and exposes manual card controls that affect the real library UI, preview, and saved theme slots:
    - `title scale`
    - `title lines`
    - `card stroke`
    - `card corner radius`
    - `title panel opacity`
  - these values are now stored in library theme presets, so saved themes preserve manual card tuning instead of only mood/background choices
- newest IA slice implemented:
  - top-level settings now include `Sync`, `Storage`, and `Advanced` as real sections instead of one mixed backup bucket
  - `Appearance` now owns the visual library controls through a dedicated `Covers and library` subpage
  - `Library` was cut back to logic-first behavior:
    - default sorting
    - grouping
    - a clear note that visual styling moved to `Appearance`
  - old library visual subpages are no longer reachable from the `Library` section
- newest reader IA slice implemented:
  - `Reading` is no longer presented as `behavior / wellness / goals / effects`
  - it now opens as a real hub with:
    - `Text appearance`
    - `Page layout`
    - `Headers and footers`
    - `Paging`
    - `Behavior`
  - `Text appearance` now has a compact live preview
  - `Headers and footers` now have a calm structural preview instead of being absent from IA
  - `Paging` now has a tap-zone preview and explicit current interaction model card
- latest reading-settings slice implemented:
  - `Headers and footers` are no longer just structural placeholders
  - they now have real stored settings for:
    - left / center / right slots
    - font size
    - vertical padding
    - left / right insets
  - `Paging` now has a real three-zone editor backed by prefs:
    - `Simple / Custom` mode
    - swap left / right in simple mode
    - explicit left / center / right actions in custom mode
  - the same tap-zone model is now wired into the real reader runtime instead of only the settings preview
  - calm header / footer overlays are now rendered in the reader when chrome is hidden
- newest paging slice implemented:
  - `Paging` now also supports real hardware paging with volume buttons
  - a dedicated `Volume buttons paging` toggle was added to the paging page
  - the setting is stored in prefs and wired through `MainActivity` into the active reader session
  - volume up now turns to the previous page, volume down goes forward
- newest page-layout slice implemented:
  - `Page layout` is no longer just an info card
  - it now has a real compact preview for current reading mode and preload behavior
  - it exposes real layout controls the reader already supports:
    - page direction / reading mode
    - landscape spread toggle for wide screens
    - preload pages
  - landscape spread is now backed by a real preference and wired into reader runtime instead of being hardcoded
- newest behavior slice implemented:
  - `Behavior` is no longer just `screen + wellness + goals`
  - it now includes a real `Selection and translation` bridge card:
    - current source -> target summary
    - current transport summary
    - live `Explain` toggle used by the reader
    - direct jump into the dedicated `Translation` section for deeper language / OCR controls
  - screen subtitles were rewritten in the reader behavior page so they explain user-facing behavior instead of technical `FLAG_*` details
- current slice keeps existing stored preferences intact and leaves deeper provider/TTS controls as the next extraction step
- newest service slice implemented:
  - `Read Aloud` is no longer a placeholder section
  - it now exposes live system-TTS defaults:
    - installed voice picker
    - speed
    - pitch
    - volume
    - sleep timer
  - section summaries now reflect the active TTS defaults instead of roadmap-only copy

Acceptance:
- top-level settings stop being one giant destination

### S2. Summary-First Pattern

- Add compact summary rows for large sections:
  - active reading preset
  - current translation mode
  - active TTS service
  - selected AI provider

Status:
- in progress
- main settings menu now shows compact live summaries for:
  - `Appearance`
  - `Reader`
  - `Library`
  - `Translation`
  - `AI Services`
  - `Read Aloud`
  - `Backup`
- overview screens for `Reader`, `Translation`, `AI Services`, and `Read Aloud` now start with compact state summaries before detailed controls
- `Read Aloud` summaries now show the real TTS state:
  - selected voice
  - playback speed / pitch
  - sleep timer
- `Appearance` and `Library` now follow the same overview-first pattern instead of chip-only navigation
- `Appearance` now has saved app-theme slots so user-created themes can be stored and re-applied
- `Theme Studio` pages now use compact summary rows and builder-entry navigation instead of large stacked card walls
- `Theme Studio` summaries now reflect actual visual-impact controls like blur/material instead of only naming a section
- main menu and second-level IA now match the newer product split more honestly:
  - `Appearance` for visuals
  - `Reading` for reader behavior
  - `Library` for collection logic
  - `Sync / Storage / Advanced` for service and maintenance concerns

Acceptance:
- users can understand current state without opening every subsection

### S3. About / Legal / Libraries

- Keep `About` limited to:
  - app description
  - major features
  - developer identity
  - contact channels
  - core libraries
  - licenses
- Move all unrelated controls out

Acceptance:
- `About` reads like product/legal info, not another settings dump

### S4. Localization Discipline

- Enforce no new hard-coded user-facing strings in live UI
- Keep language packs synchronized across:
  - Settings
  - Reader
  - OCR
  - `Mr.Comic`
- Add a short localization QA checklist to future feature work

Acceptance:
- no mixed-language runtime strings on active surfaces

### S5. Service Separation

- Move service-specific settings out of generic translation section:
  - AI providers
  - TTS providers
  - advanced explain/summary settings

Status:
- in progress
- `AI Services` is no longer just a transport/explain placeholder:
  - machine translation now has its own live status card
  - `Local Explain` now has its own live status card
  - `Advanced Explain` now has its own explicit waiting-state card
  - `Summary` now has its own explicit unavailable-state card
  - OCR page services now have their own live status card
  - external providers are shown as a separate not-connected service bucket instead of being implied to exist
- `Read Aloud` is now a real live settings surface for system TTS defaults
- `Read Aloud` now also has the first real provider layer:
  - explicit provider card
  - live voice preview
  - shared provider/defaults state with the reader
  - external provider slots shown honestly as not connected

Acceptance:
- service configuration has its own logic and copy

## Dependencies

- drives `TASKLIST_01_READER_EXPERIENCE.md`
- drives `TASKLIST_03_TRANSLATION_AI_TTS.md`

## Notes

This tasklist should be treated as the app’s information-architecture spine.
Without it, new features will keep landing in the wrong places even if the features themselves work.
