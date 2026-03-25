# Tasklist 01: Reader Experience

## Scope

Everything that affects actual reading:

- in-reader controls
- global reader defaults
- text style controls
- reading behavior
- reading services
- live `TTS / read aloud`

## Current Mr.Comic State

### Already present

- Global reader settings in `feature-settings`
- Reader presets, reading mode, brightness, immersive mode, preload, page sound
- Eye-rest support
- Text style sheet inside reader:
  - preset
  - font
  - size
  - line height
  - bold
  - alignment
- OCR/translation entry points from reader
- Progress recap after chapter/title
- System `Read aloud / TTS` inside the reader services tab:
  - play / pause / stop
  - previous / next chunk
  - voice selection
  - speed / pitch / volume
  - sleep timer

### Main structural issue

Reader power is split across:

- `Settings -> Reader`
- in-reader text settings sheet
- reader chrome actions

That makes the feature set stronger than it feels.

## Reference Findings

The reference app treats Reader as three distinct layers:

1. `Reading`
- behavior, paging, tap zones, immersive, timers, automation

2. `Style`
- typography, themes, layout, text rendering

3. `Other / Services`
- service-like tools near reading, not buried in global settings

It also exposes `TTS / Narrator` as a proper reading subsystem, not a tiny afterthought.

## What To Adopt

### Adopt as reference

- A unified in-reader control center with semantic tabs
- Clear split between `behavior`, `style`, and `services`
- Compact segmented controls and short summaries
- Reader-first access to the most used options
- Separate `TTS` layer

### Do not copy directly

- Exact visual style
- The whole Flutter widget composition
- Every toggle just because it exists there

## Development Tasks

### R0. Reader Capability Audit

- List all reader-affecting settings that already exist
- Mark where each one lives today:
  - global settings
  - in-reader sheet
  - hidden/internal only
- Remove duplicate surfaces where the same behavior appears twice with different wording

Acceptance:
- one capability map exists
- no reader setting is “orphaned”

### R1. Reader Control Center

- Introduce a unified in-reader control surface with 3 tabs:
  - `Reading`
  - `Style`
  - `Services`
- Keep the current text-style sheet logic, but reorganize it into the new structure

Progress:
- implemented safe first slice in the real reader:
  - old text-only sheet was replaced with a unified in-reader control center
  - tabs now exist in runtime, not just in settings docs:
    - `Reading`
    - `Style`
    - `Services`
  - text books open directly into `Style`
  - image / comic readers open directly into `Reading`

Acceptance:
- reader controls feel like one system
- user can discover both style and behavior without leaving reading

### R2. Reading Behavior Layer

- Bring behavior options closer to reading:
  - reading mode
  - immersive
  - keep screen on
  - sleep/screen timeout mode
  - page animation
  - preload
- Add a clear behavior matrix for:
  - text
  - image/comic
  - webtoon

Progress:
- `Reading` tab in the in-reader control center now exposes live runtime controls for:
  - reading mode
  - brightness
  - keep screen on
  - immersive
  - landscape spread
  - volume-button paging
  - page animation
  - preload
- `screen timeout` now has a real shared model across:
  - global settings
  - in-reader control center
  - reader runtime
- supported timeout modes:
  - `System`
  - `30 sec`
  - `1 min`
  - `2 min`
  - `5 min`
  - `10 min`
  - `Never`

Acceptance:
- behavior settings are explicit and format-aware

### R3. Tap Zones And Navigation Behavior

- Decide whether Mr.Comic should support configurable tap zones
- If yes:
  - add simple preset layouts first
  - do not start with a fully free editor
- Evaluate:
  - volume-button page turn
  - menu reveal policy
  - gesture conflicts with OCR and selection

Acceptance:
- tap navigation behavior is configurable but not overcomplicated

### R4. Reader Services Layer

- Put reader-side OCR/translation/explain hooks into a dedicated services zone
- Reserve space for:
  - `TTS`
  - selection automation
  - summary/explain shortcuts

Progress:
- implemented first runtime services slice:
  - `Services` tab now contains quick actions for:
    - table of contents / bookmarks
    - bookmark toggle
    - OCR / translate on page images
  - text readers now show selection-tools guidance in the same services area
  - `Read aloud` now lives in the same services area as a real runtime service for text books
  - top chrome no longer exposes the OCR action for text readers

Acceptance:
- services stop feeling like scattered actions

### R5. TTS MVP

- Add native Android `TextToSpeech` service first
- Support:
  - play/pause/stop
  - next/previous chunk
  - speed
  - pitch
  - volume
  - voice selection
  - sleep timer
- Make it a reader-service, not a global-only setting

Progress:
- implemented and wired end-to-end:
  - native Android `TextToSpeech`
  - reader-side runtime controls in `Services`
  - global defaults in `Settings -> Read Aloud`
  - normalized text chunking from the current text page
  - installed system voice picker
  - speed / pitch / volume
  - sleep timer
  - play / pause / stop / previous / next
  - same prefs shared between reader runtime and settings
  - honest unavailable state for non-text formats

Acceptance:
- text books can be read aloud with system TTS
- settings are accessible from reader

## Data / Dependency Notes

- Depends on `TASKLIST_03_TRANSLATION_AI_TTS.md` for the service model
- Depends on `TASKLIST_04_SETTINGS_IA_LOCALIZATION.md` for final placement between global settings and in-reader controls

## Libraries / APIs To Consider

### Directly appropriate for native Android

- Android `android.speech.tts.TextToSpeech`
- `MediaSession` / `Media3` only if we want robust background TTS controls

### Not directly reusable from `anx-reader`

- `flutter_tts`
- `audio_service`
- `audio_session`

These are Flutter-specific, so we should borrow architecture, not packages.
