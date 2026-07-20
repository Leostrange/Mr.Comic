# Plan 002: Clarify and Enforce Offline LLM Translation Contract

## Problem

`android/engine-llm/src/main/java/com/example/engine/llm/nllb/NllbTranslatorEngine.kt` describes NLLB-200 offline translation, but the tokenizer and language-token mapping are placeholders. `HybridLlmEngine.kt` says it prefers local inference, but local loading/unloading are TODOs and behavior falls back to OpenRouter when configured.

This is risky because UI and docs can imply offline AI/translation works when the runtime path is not real enough for production translation.

## Goals

- Prevent placeholder offline translation from being exposed as production-ready.
- Make the UI distinguish unavailable, downloadable, experimental, and ready states.
- Add tests around selection/fallback so online and offline engines do not misrepresent capability.

## Implementation Steps

1. Add an explicit capability state to the offline engine, for example `Unavailable`, `ModelMissing`, `Experimental`, `Ready`.
2. In `NllbTranslatorEngine`, keep `isLanguagePairAvailable` false unless all required runtime pieces exist: model, tokenizer, language-token mapping, and a verified inference path.
3. Replace placeholder `langToId` and character encoding with a real tokenizer integration before enabling `Ready`.
4. In `HybridLlmEngine`, rename comments and behavior so local inference is not described as preferred until implemented.
5. Update settings copy/status logic to show online OpenRouter separately from local/offline LLM.
6. Add unit tests for engine selector behavior when local model is missing, local model is partial, API key is present, and API key is absent.

## Verification

Run:

```powershell
.\gradlew.bat --no-daemon --console=plain :engine-llm:testDebugUnitTest :core-domain:testDebugUnitTest :feature-settings:testDebugUnitTest
```

Also manually verify settings status text for local/offline and OpenRouter paths.

## Boundaries

- Do not ship a fake tokenizer as real translation.
- Do not log API keys or prompt content.
- Do not download large models during tests.

