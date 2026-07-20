# Plan 001: Make AppDatabase Migration Safe

## Problem

`android/core-data/src/main/java/com/example/core/data/db/AppDatabase.kt` declares the main app database at version 8 with `exportSchema = false`. `android/core-data/src/main/java/com/example/core/data/di/DatabaseModule.kt` registers migrations but still calls `fallbackToDestructiveMigration(dropAllTables = true)`.

For Mr.Comic this database is not disposable. It contains library entries, quotes, audiobooks, EPUB caches, text highlights, and translation cache entries. A missing migration path can silently wipe user data.

## Goals

- Remove destructive fallback from the production `AppDatabase` builder.
- Export Room schemas for the main app database.
- Add migration tests that cover realistic upgrade paths.
- Keep destructive behavior only in explicit test/dev-only database builders, if needed.

## Implementation Steps

1. In `AppDatabase.kt`, change `exportSchema = false` to `exportSchema = true`.
2. Ensure `android/core-data/build.gradle.kts` keeps `room { schemaDirectory("$projectDir/schemas") }`.
3. Generate and commit Room schema JSON files for all relevant current versions, at least the current version 8.
4. In `DatabaseModule.kt`, remove `.fallbackToDestructiveMigration(dropAllTables = true)` from the production builder.
5. Add `androidTest` or JVM Robolectric migration tests for 1->8 and every adjacent migration that the project can construct.
6. If tests need a disposable DB, create a test-only provider or helper with an explicit name such as `createDestructiveTestDatabase`.

## Verification

Run:

```powershell
.\gradlew.bat --no-daemon --console=plain :core-data:testDebugUnitTest
.\gradlew.bat --no-daemon --console=plain :core-data:connectedDebugAndroidTest
```

If instrumentation is unavailable, document that and at least run schema export plus JVM unit checks.

## Boundaries

- Do not change table schemas unless a migration requires it.
- Do not delete existing migrations.
- Do not use destructive fallback in production code as a shortcut.

