# Localization Audit

Date: 2026-03-23

## Scope

Manual review plus code search across the active runtime surfaces:

- `android/feature-reader`
- `android/feature-ocr`
- `android/feature-settings`
- `android/app`
- `android/feature-library`
- `android/feature-onboarding`
- `android/core-ui`

Main focus of this pass:

- `Reader`
- `OCR / translation`
- `Settings`
- `Continue`
- `Mr.Comic / Progress/Profile`
- `Onboarding`
- app-shell helpers like splash

## Fixed In This Pass

### Onboarding

- Localized the whole visible onboarding surface in
  [OnboardingScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-onboarding/src/main/java/com/example/feature/onboarding/OnboardingScreen.kt)
- Removed hardcoded runtime strings for:
  - skip/start actions
  - hero copy
  - feature rows
  - preset titles and descriptions

### Splash

- Localized the skip button in
  [VideoSplashScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/core-ui/src/main/java/com/example/core/ui/splash/VideoSplashScreen.kt)

### Reader

- Removed hardcoded page accessibility labels in:
  - [PageView.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/components/PageView.kt)
  - [WebtoonView.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-reader/src/main/java/com/example/feature/reader/ui/components/WebtoonView.kt)

### OCR

- Cleaned mixed-language fallback/provider labels in
  [OcrUiText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrUiText.kt)
- Fixed Korean OCR runtime copy typo in
  [OcrRuntimeText.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-ocr/src/main/java/com/example/feature/ocr/ui/OcrRuntimeText.kt)

### Settings

- Removed mixed-language copy in translation settings in
  [SettingsScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-settings/src/main/java/com/example/feature/settings/ui/SettingsScreen.kt)
- Cleaned:
  - `explain-provider` wording in `ja/zh/ko`
  - Russian `explain / overlay / narration` wording
  - Chinese and Korean mascot recap copy
  - Russian mixed `action-элементы` and `overlay`

### Mr.Comic / Progress

- Cleaned mixed-language strings in:
  - [MrComicProgressScreen.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/MrComicProgressScreen.kt)
  - [MrComicProgressCopy.kt](C:/Users/xmeta/projects/Mr.Comic/android/feature-library/src/main/java/com/example/feature/library/MrComicProgressCopy.kt)
- Fixed:
  - duplicated stage wording in profile summary
  - `Settings` references inside non-English strings
  - non-English `Stage` wording in runway/archive strings
  - search-context copy that mixed localized text with English `stage`

## Runtime Result

After the audit pass, the active Compose UI checked in this sweep no longer contains the previously found mixed-language runtime strings on:

- `Reader`
- `OCR`
- `Settings`
- `Continue`
- `Mr.Comic`
- `Progress/Profile`
- `Onboarding`
- splash skip surface

## Known Non-Runtime / Legacy Notes

### Unused legacy XML translation screen

File:

- [activity_translation.xml](C:/Users/xmeta/projects/Mr.Comic/android/app/src/main/res/layout/activity_translation.xml)

Status:

- contains hardcoded English strings
- current search did not find an activity or runtime route using this layout
- only `tools:context` remains

Conclusion:

- this file looks like dead legacy UI, not part of the active app flow
- if desired, it can be removed or migrated later, but it is not part of the current Compose runtime localization surface

### Removed backup files

Status:

- historical backup source files were removed during project cleanup
- they were not part of the app runtime

## Verification

Recommended verification for this audit:

1. `Reader` page surfaces and accessibility labels
2. `OCR` translation settings and provider labels
3. `Settings` translation section and mascot toggle copy
4. `Onboarding`
5. `Continue`
6. `Mr.Comic / Progress/Profile`

Build verification for this pass should include:

- `:feature-onboarding:compileDebugKotlin`
- `:core-ui:compileDebugKotlin`
- `:feature-reader:compileDebugKotlin`
- `:feature-ocr:compileDebugKotlin`
- `:feature-settings:compileDebugKotlin`
- `:feature-library:compileDebugKotlin`
- `:app:assembleDebug`
