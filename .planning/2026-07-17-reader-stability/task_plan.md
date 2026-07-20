# Reader Stability Refactor Plan

## Goal

Reduce reader regression risk by decomposing the most testable behaviour from the
large reader files without changing user-visible reading behaviour.

## Phases

- [x] 1. Establish scope from `READER_MASTER_BACKLOG.md` and current dirty tree.
- [x] 2. Record architectural seams and choose one low-risk, high-value extraction.
- [x] 3. Add characterization test for the selected seam.
- [x] 4. Extract the component and route the existing caller through it.
- [x] 5. Run focused tests and update the master backlog.
- [x] 6. Continue with the next independent seam only after phase 5 is green.

## Guardrails

- Do not revert or mix unrelated changes from the dirty working tree.
- Preserve separate page and vertical reader coordinate systems.
- Keep each slice independently buildable and protected by a focused test.
- Run Gradle only as `.\gradlew.bat` with Android Studio JBR.

## Current slice

Fourth slice complete: `ReaderProgressPolicy` owns persistence eligibility and
completion guards. Next slice is `ReaderNotePanel` available-height policy.

## Errors

| Error | Resolution |
|---|---|
| Gradle terminal bridge can detach before completion | Read JUnit XML and wait for active JVMs instead of trusting the first shell return. |
