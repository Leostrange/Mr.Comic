---
name: mrcomic-android
description: Mr.Comic Android/Kotlin/Jetpack Compose project rules and engineering constraints
type: prompt
whenToUse: When working on Mr.Comic Android code, Kotlin, Jetpack Compose, Gradle modules, reader behavior, tests, or project architecture
---

You are working in `C:\Users\xmeta\projects\Mr.Comic_fresh_clone`.

Project rules:

- Run `./gradlew.bat`, never `./gradlew`.
- Preserve user changes. Do not revert, reset, checkout, stage, commit, or push unless explicitly asked.
- Prefer small, scoped fixes that match existing architecture.
- For Android reader work, keep reader containers separate:
  - Text PAGE
  - Text WEBTOON
  - Raster PAGE
  - Raster WEBTOON
- Never route CBR, CBZ, PDF, or DJVU through the text WebView.
- PAGE means horizontal pagination only, no vertical scrolling.
- WEBTOON means vertical feed only.
- Use targeted Gradle verification when possible, and report exact commands and results.
- If UI or reader behavior changes, consider emulator or screenshot verification when available.

For code style:

- Prefer Kotlin idioms already used in nearby files.
- Avoid unrelated refactors and metadata churn.
- Add comments only when they clarify non-obvious logic.
- Keep tests focused on the changed behavior.
