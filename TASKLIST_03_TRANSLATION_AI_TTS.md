# Tasklist 03: Translation, AI, and TTS Services

## Scope

- OCR
- translation routing
- dictionary and explain
- AI services
- future online providers
- TTS services and voice sourcing

## Current Mr.Comic State

### Already present

- Translation routing model
- Offline translation path
- Dictionary path
- Local explain path
- OCR screen and OCR block overlay
- Reader-to-OCR handoff
- System `TTS / Read aloud` MVP:
  - native Android `TextToSpeech`
  - reader integration
  - voice / speed / pitch / volume
  - sleep timer
  - shared defaults in `Settings -> Read Aloud`

### Still open

- No real online translation provider yet
- OCR/translation package is still not fully closed
- No separate AI provider center
- No optional online TTS provider layer yet

## Reference Findings

`anx-reader` has two especially useful service patterns:

### AI provider center

- provider selection
- RPM limit
- display mode
- panel position
- summary actions
- stored built-in and custom providers

### TTS service layer

- system TTS plus online TTS providers
- per-service voice model selection
- grouped voice lists by language
- test playback
- rate / pitch / volume / timer

## What To Adopt

### Adopt as reference

- provider-center model
- capability-based service settings
- per-provider configuration
- TTS as a real service subsystem

### Do not copy

- Flutter packages
- exact provider stack
- code-level implementation details

## Libraries And Architectures

### What can be reused conceptually from `anx-reader`

- provider registry pattern
- service-specific config storage
- selected provider + enabled providers model
- TTS service abstraction
- voice grouping and preview flow

### What cannot be reused directly

- `flutter_tts`
- `langchain`, `langchain_openai`, `langchain_anthropic`, `langchain_google`
- `audio_service`

Reason:
`Mr.Comic` is native Android Kotlin, while `anx-reader` is Flutter/Dart.

### Native Android building blocks to use instead

- `TextToSpeech` for system TTS MVP
- `OkHttp` / `Retrofit` / existing network layer for online providers
- existing Room/DataStore/Hilt structure for service configs

## Where To Get TTS Voices

### System voices

From the installed Android TTS engine selected by the user.

Typical sources:

- Speech Services by Google
- Samsung TTS
- RHVoice for offline/open-source voices

### Online provider voices

From the provider’s own catalog/API:

- Azure Speech voices
- OpenAI TTS voices
- Aliyun TTS voices

## Development Tasks

### A0. Close The Current Translation Reality Gap

- Audit current UI so it never implies that a real online provider exists when it does not
- Align `Settings`, `Reader`, and `OCR`

Acceptance:
- service availability is honest everywhere

### A1. AI Services Center

- Add a dedicated `AI Services` surface
- Split from the generic `Translation & OCR` section
- Include:
  - provider list
  - selected provider
  - enabled/disabled state
  - model
  - API keys
  - RPM / rate limit

Status:
- first honest service-center slice is implemented
- `AI Services` now exposes real service-status cards for:
  - machine translation
  - Explain
  - OCR page services
  - external providers
- it no longer leans on generic roadmap banners inside the live UI
- current state is intentionally honest:
  - local/offline services are described as live
  - external providers are shown as not connected yet
  - transport and Explain controls stay editable in the same section

Acceptance:
- AI config is a proper service center, not a future toggle graveyard

### A2. Explain / Summary Service Layer

- Separate:
  - local explain
  - advanced provider-backed explain
  - summary
- Add clear copy for local vs external behavior

Status:
- first honest service-layer slice is implemented in `AI Services`
- the section now separates:
  - `Local Explain`
  - `Advanced Explain`
  - `Summary`
- current runtime truth is explicit:
  - local Explain works now
  - advanced Explain is toggleable but still waits for an external provider
  - summary is visible as a future external route, not as a fake live feature
- this separation now sits next to machine translation, OCR services, and external-provider status cards

Acceptance:
- explain and summary have explicit routing and user-facing expectations

### A3. TTS MVP

- Add system TTS first
- Voice selection
- Rate / pitch / volume
- Sleep timer
- Reader integration

Status:
- completed
- native Android `TextToSpeech` is now wired through:
  - `Settings -> Read Aloud`
  - the in-reader `Services` tab
  - shared prefs for voice / speed / pitch / volume / sleep timer
  - chunked playback for text books

Acceptance:
- text reading aloud works without any external API

### A4. TTS Provider Layer

- Add optional service abstraction for online TTS
- Candidate providers:
  - Azure
  - OpenAI
  - Aliyun only if regional strategy requires it
- Support:
  - provider config
  - voice list
  - test preview

Status:
- first provider-layer slice is implemented
- shared `TTS provider` model now exists even though only `System TTS` is live
- `Settings -> Read Aloud` now has:
  - explicit provider card
  - current system-provider state
  - disabled placeholders for external providers
  - live test playback for the selected voice / speed / pitch / volume
- reader and settings now share the same stored provider/defaults model
- no fake online voices are exposed as connected

Acceptance:
- online TTS is optional and service-based

### A5. OCR Comic Translation Completion

- Close the “big OCR / translation package”
- Finish:
  - image OCR translation
  - page-wide translation
  - honest availability UI
  - language-pair QA

Status:
- honest availability UI is now live across:
  - page translation
  - manual translation
  - selected-block translation
- unavailable-route messaging is now pair-aware:
  - active `source → target` is included in route failures like
    - missing online route
    - missing offline model
    - unsupported machine pair
    - dictionary-only fallback
- selected-block actions no longer pretend the dictionary route is available just because the dictionary exists globally:
  - block text now has to qualify as a short lookup candidate too
- the shared dictionary core now supports short phrases (`2–3` words), not only single words:
  - reader/OCR dictionary-first routes no longer promise a lookup that the engine cannot execute
  - short phrases can fall back to machine-assisted dictionary entries when a bundled entry is absent
- reader-side `translate as phrase` availability is now honest:
  - network alone no longer exposes phrase translation when no online route is configured
- OCR online availability is now network-aware too:
  - a configured provider without connectivity no longer appears as a ready online route
  - OCR now shows a dedicated `needs network` state instead of pretending the pair is unsupported
- reader selected-text actions now stop advertising dead dictionary routes:
  - `Open dictionary` is hidden when the actual short-phrase lookup did not resolve
- the shared dictionary availability source is now network-aware too:
  - `QuickDictionaryEngine.isLookupAvailable()` no longer reports machine-assisted dictionary fallback as available when only the online provider is configured but connectivity is absent
- room-dictionary availability is now pair-aware too:
  - `RoomDictionaryEngine.isLookupAvailable()` no longer reports a dictionary route as available just because the source-language database exists
  - direct target routes and English bridge routes are now checked explicitly before the room path is exposed
- room-dictionary lookup no longer falls back to raw glosses as if they were target translations for non-English pairs:
- automated regression coverage now explicitly locks the main working pairs for the current product reality:
  - `PL → RU`
  - `JA → RU`
  - `EN → RU`
  across:
  - shared quick dictionary lookup
  - OCR short-snippet dictionary-first routing
  - English glosses can still backfill English-target lookups
  - for pairs like `PL→RU` or `JA→RU`, the engine now prefers a real fallback route or fails honestly instead of surfacing the wrong language
- verified with:
  - `:core-domain:testDebugUnitTest`
  - `:feature-reader:testDebugUnitTest`
  - `:feature-ocr:testDebugUnitTest`
  - `:app:assembleDebug`
  - `:app:assembleDebug`

Remaining:
- run the explicit language-pair regression pass for the main OCR pairs in live UI
- then mark the OCR package as fully closed

Acceptance:
- OCR comic translation is no longer “started but not closed”

## External Reference Notes

- `anx-reader` README advertises:
  - AI assistant
  - translation
  - TTS with multi-voice controls
- `anx-reader` code confirms:
  - TTS providers: `system`, `aliyun`, `azure`, `openai`
  - AI provider persistence and built-in/custom provider model

## Dependencies

- depends on `TASKLIST_01_READER_EXPERIENCE.md` for in-reader service placement
- depends on `TASKLIST_04_SETTINGS_IA_LOCALIZATION.md` for service-center information architecture
- depends on `TASKLIST_05_PLATFORM_FOUNDATION.md` for analytics and config storage
