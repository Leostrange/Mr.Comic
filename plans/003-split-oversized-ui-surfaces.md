# Plan 003: Split Oversized UI and ViewModel Surfaces

## Problem

Several files are too large for safe iteration:

- `SettingsScreen.kt`: 11426 lines
- `LibraryScreen.kt`: 6581 lines
- `ReaderScreen.kt`: 5863 lines
- `ReaderViewModel.kt`: 4366 lines
- `EpubFormatReader.kt`: 2883 lines

Large files make reviews slower, increase merge conflicts, and hide repeated logic. This is especially costly in reader and settings flows, where regressions are user-visible.

## Goals

- Split by existing product boundaries without changing behavior.
- Preserve public APIs while moving private components into smaller files.
- Add focused tests for extracted policy/state logic.

## Implementation Steps

1. Start with `SettingsScreen.kt` because it is the largest and already has provider cards, import UI, reader controls, and localization blocks.
2. Move translation provider cards into a `settings/translation` UI file.
3. Move pure text/copy mapping into small policy or strings files where possible.
4. Extract reader chrome and text-reader policy helpers from `ReaderScreen.kt` only after tests cover the current behavior.
5. Split `ReaderViewModel.kt` by state reducers/actions where dependencies allow it; prefer pure reducers over new service layers.
6. Keep each extraction behavior-preserving: move code, fix imports, run tests, then continue.

## Verification

Run narrow checks after each extraction:

```powershell
.\gradlew.bat --no-daemon --console=plain :feature-settings:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :feature-reader:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :engine-formats:testDebugUnitTest
```

For UI-heavy moves, also launch the app and smoke-test settings, reader open, reader chrome, and translation settings.

## Boundaries

- Do not redesign UI while extracting.
- Do not rename user-visible strings unless a test requires it.
- Do not introduce broad architecture rewrites during the first split.

