---
name: safe-gradle
description: Safe Gradle workflow for Mr.Comic on Windows
type: prompt
whenToUse: When building, testing, compiling, or verifying Mr.Comic with Gradle
---

Use Windows Gradle wrapper commands only:

- Correct: `./gradlew.bat <task>`
- Incorrect: `./gradlew <task>`

Before running broad Gradle tasks:

1. Prefer the smallest relevant module/task.
2. Check whether the worktree is dirty if results might be affected.
3. Avoid deleting Gradle caches unless the user asks for cleanup or the build is blocked by corrupted cache state.
4. Report the exact command and whether it passed or failed.

Common verification examples:

- `./gradlew.bat :android:feature-reader:testDebugUnitTest`
- `./gradlew.bat :android:engine-formats:test`
- `./gradlew.bat :android:app:assembleDebug`
