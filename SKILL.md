---
name: mrcomic-long-horizon-swe
description: Operational control policy for Claude 4.8 working on the Mr.Comic repository (Leostrange/Mr.Comic) — a modular Kotlin/Compose Android reader for comics, books, audio, OCR and translation. Defines executable phase gates, module-boundary rules, format-routing invariants, Gradle verification gates, and a completion procedure that prevents false success reports. Use for any multi-file change, bug fix, or feature work in this repo.
---

# Mr.Comic Long-Horizon Engineering Control Policy (Claude 4.8)

This skill is a control policy, not advice. Each phase has an entry condition, exit condition, and stop conditions. Do not skip a gate. Do not add ceremony beyond what a gate requires.

Terminology:

- **Evidence** = observable output external to your own edits: file contents actually read, Gradle output, test results, logcat, diffs. Your own generated code is never evidence of behavior.
- **Deterministic check** = a machine-produced pass/fail outcome. In this repo, primarily: `gradlew` compilation, module unit tests, lint, and (when an emulator is available) runtime behavior.
- **Change surface** = modified files/symbols plus every caller, implementer, DI binding, Room entity/migration consumer, format-catalog reference, and test that depends on them.

## Claude 4.8 Behavioral Overrides

These rules counteract known Claude-class failure tendencies. They take precedence over default habits in every phase.

1. **No scope inflation.** Do not add features, defensive code, extra configuration options, "while I'm here" improvements, or speculative abstractions the task did not request. If you notice an adjacent problem, record it in the final report — do not fix it.
2. **No premature agreement.** Do not accept the user's stated diagnosis as the root cause without evidence. The user's framing defines the *symptom*, not the *cause*. Verify the cause via Phase 3 before implementing the user's proposed fix.
3. **No hedged completion.** A report either classifies every criterion as VERIFIED / INFERRED / NOT VERIFIED or the task is not done. Phrases like "this should work" or "everything looks good" are prohibited as completion statements.
4. **No mid-task permission-seeking for in-scope work.** If the action is inside the approved scope and reversible, do it. Ask only at Phase 0 blocking unknowns and Phase 5 specification conflicts.
5. **No early stopping on long tasks.** A multi-unit plan is finished when all units pass their verification methods — not when the largest unit passes, not when you have written a good summary. If context is running long, compress your own notes, never the remaining work.
6. **Batch tool calls.** Independent file reads, greps, and per-module Gradle targets are issued together. Serialize only for genuine data dependencies.
7. **Terse working notes.** Intermediate narration is limited to decisions and evidence. Do not restate file contents you just read; do not summarize progress until a phase gate or the final report.
8. **No apology loops.** When evidence invalidates your approach, state the invalidated assumption in one sentence and re-enter the relevant phase. Do not re-litigate or apologize.

---

## Repo Ground Truth (fixed facts — do not rediscover each task)

**Architecture layers, with a strict dependency direction:**

```
feature-*  →  core-domain / core-data / core-ui / engine-api  →  core-model
engine-*   →  engine-api / core-model (engines must NOT depend on feature-* modules)
app        →  wires everything: navigation, DI root
```

| Module | Owns |
|---|---|
| `android/core-model` | Shared models, format catalog, enums |
| `android/core-data` | Room, DataStore, repositories, migrations |
| `android/core-domain` | Domain logic, translation, dictionary, analytics |
| `android/core-ui` | Theme, design primitives, shared Compose UI |
| `android/engine-api` | Reader engine boundary interfaces (the contract layer) |
| `android/engine-formats` | Format readers: archives, EPUB, FB2, text, PDF, DJVU, images; text pagination (`text/pagination/`) |
| `android/engine-epub-readium` | EPUB/Readium integration (Readium Navigator is already a dependency) |
| `android/engine-rendering` | Bitmap cache, preloading, page rendering |
| `android/engine-registry` | Engine registration |
| `android/feature-library` | Library, import flows, audiobook player, progress UI |
| `android/feature-reader` | Reader screen (`ReaderScreen.kt`, ~2000-line monolith with inline JS/CSS), text/raster containers, `TextPagePaginationController`, TTS, controls |
| `android/feature-settings`, `feature-ocr`, `feature-onboarding` | Their named features |

**Stack:** Kotlin, JDK 17, Jetpack Compose + Material 3, Hilt, Room + DataStore, Media3, Coil, Retrofit/OkHttp, Zip4j/Junrar/Commons Compress, Gradle wrapper. On Windows use `.\gradlew.bat`; on Linux/macOS `./gradlew` (run from `android/`).

**Canonical verification commands** (scope to the touched module first, `--no-daemon --console=plain`):

```
:engine-formats:testDebugUnitTest
:feature-reader:testDebugUnitTest
:app:testDebugUnitTest
:<touched-module>:compileDebugKotlin      # cheapest compile gate
:app:assembleDebug                        # full build gate
```

**Architectural invariants (violating any = specification conflict, Phase 5):**

1. **Reader-path separation.** Raster pages, raster vertical feeds, text pages, and text vertical feeds are separate containers. Never route reflowable text formats through the raster page loader or vice versa.
2. **Archive classification before rendering.** ZIP/RAR/7Z/TAR are classified first: image sequences → raster containers; single-book text archives → the matching text reader.
3. **Engine boundary.** Engines are consumed only through `engine-api` interfaces and `engine-registry`. Features never import engine implementation modules directly.
4. **Format catalog is single-sourced** in `core-model`.
5. **Persistence contracts.** Room schema changes require migrations in `core-data`; DataStore keys must remain backward-readable. Never silently break stored library/progress data.
6. **Repo hygiene.** Never commit APKs, build outputs, logs, or analysis dumps. Docs and task plans live in `docs/active/`.

**Known defect ledger — text reading pipeline** (verified against source; consult before any text-reader task):

- `LayoutUnitTextPaginator` estimates pages by character count (`fontSizePx * 0.56f`, fudge factor `0.75`) instead of measuring text; sp is treated as px; horizontal WebView padding and typography params (`letterSpacingEm`, `wordSpacingEm`, `bold`) are ignored; oversized blocks are never split; vertical insets are not passed through `toTextPaginationConstraints`.
- Two competing pagination sources exist: the Kotlin character estimate and the WebView CSS-column paged viewport (`onPagedLayoutPageCountChanged`). They disagree by design. Any pagination fix must converge on ONE source of truth (the actual WebView layout, or Readium Navigator for EPUB) — do not patch the character estimate.
- `ReaderScreen.kt` forces `hyphens:none !important` and `overflow-wrap:normal !important`, and silently downgrades `justify` → `left` in paged mode.
- `EpubFootnoteParser` matches footnotes by id heuristics and regex only; EPUB3 semantic footnotes (`epub:type="footnote"`, `role="doc-footnote"`) are not recognized; the noteref CSS selector over-matches any titled internal link.
- The pagination cache key omits `fontFamily`, `textAlign`, and horizontal padding; default `lineHeight` differs between `TextContainer` (1.8) and `TextPaginationConstraints` (1.6).

---

## Phase 0 — Task Framing

Entry: any new task.

Produce, before any edit:

1. **Acceptance criteria** — concrete, checkable statements. For reader bugs, include the triggering format(s) and reading mode (page vs vertical feed, raster vs text) — most Mr.Comic bugs are format×mode specific.
2. **Scope statement** — which modules are in scope; for ambiguous tasks, which are explicitly out.
3. **Unknowns list**, each tagged:
   - `REPO-DISCOVERABLE`: answerable from code, tests, `docs/active/`, git history, or Gradle runs.
   - `USER-ONLY`: product intent, sample files the repo lacks, device-specific behavior, licensing decisions.

Rules:

- IF an unknown is `REPO-DISCOVERABLE`, resolve it via investigation. Never ask for information the repository contains.
- IF a `USER-ONLY` unknown materially changes the implementation (e.g., which formats a behavior applies to, whether stored data may be reset), ask before implementing.
- IF `USER-ONLY` but low-impact, follow existing repository conventions, record the assumption, report it at completion as INFERRED.
- IF the task concerns a defect in a specific format, check the Known Defect Ledger above, then `docs/active/` and `RELEASE_NOTES.md` — recent releases document reader-policy changes that often explain "regressions."

Exit: acceptance criteria exist; no blocking `USER-ONLY` unknown remains open.

---

## Phase 1 — Discovery

Entry: Phase 0 complete. Goal: reconstruct enough of the affected subsystem to predict the effects of a change — not to map the whole app.

Priorities (batch independent reads/searches per Behavioral Override 6):

1. **Locate the owning module** using the Ground Truth table before file-level search. A rendering bug lives in `engine-rendering`/`engine-formats` far more often than in `feature-reader`; a progress bug in `core-data`/`feature-library`.
2. **Trace the dependency flow across module boundaries.** For a reader-path change, trace end to end: import/open routing (`feature-library`) → format classification (`engine-formats` / format catalog) → engine selection (`engine-registry` via `engine-api`) → container choice (`feature-reader`) → rendering (`engine-rendering` or text pipeline). Never reason from a single file; identify who calls into it, what it calls, and where its output is consumed — including Hilt bindings, since call sites are often wired through DI, not direct imports.
3. **Sources of truth**, ranked; higher rank wins on conflict:
   1. Executed behavior (module unit tests — reader policy, CSS, formats, pagination, and import/open routing have substantial tests that encode the intended contracts)
   2. Code as written
   3. `engine-api` interfaces, Room entities/schemas, format catalog enums
   4. Gradle/build config
   5. Docs and comments (lowest; `docs/active/` may describe plans not yet implemented)
4. **Existing abstractions.** Before designing anything, search for the mechanism that already owns the responsibility: format detection, archive extraction, encoding recovery, footnote parsing, pagination, bitmap caching, TTS, translation providers. IF one owns the responsibility being modified, extend it; a parallel mechanism requires stated evidence that the existing one cannot serve. This includes the already-integrated Readium Navigator — prefer activating it over reimplementing EPUB layout.

Discovery stop conditions — advance when ANY holds:

- You can state the affected contract and cross-module flow well enough to predict your change's impact.
- The last two investigation actions produced no new task-relevant information.
- Remaining unknowns require execution (a Gradle test run, a sample file) — advance and resolve by running, not more reading.

Anti-loop rule: do not re-read a file or re-run a search already seen unless it changed or you are extracting a different, named fact. Repeated inspection without a new question = advance phases.

Exit: intended change surface identified per module; verification commands per module identified.

---

## Phase 2 — Decomposition and Impact Surface

Entry: Phase 1 exit. Keep proportional — a single-module fix needs a few sentences.

1. **Decompose by module and contract boundaries, not files.** Units follow the dependency direction: `core-model` (catalog/enums) → `engine-api` (interfaces) → engine implementations → `engine-registry` → features → `app` wiring. Independent modules may be worked in any interleaving; do not artificially serialize.
2. **Impact surface before any edit.** For each unit enumerate:
   - direct dependents: callers, interface implementers across all `engine-*` modules, Hilt modules, tests;
   - **contract exposure** — contracts here are: `engine-api` interfaces, `core-model` format catalog, Room schemas/migrations, DataStore keys, navigation routes in `app`, and user-visible reading behavior (progress, bookmarks, per-format routing). IF touched: default is preservation; changing one requires explicit task instruction or recorded justification plus a compatibility plan (Room migration, fallback read path). Never silently change these.
   - IF an `engine-api` interface changes, EVERY engine module implementing it is in scope — enumerate them before editing.
3. **Per-unit verification method**: the cheapest sufficient Gradle target (module compile → module unit test → `:app:assembleDebug`), plus new/updated unit tests when the change alters routing, pagination, parsing, or policy logic — those subsystems are test-covered by convention here.

Planning stop condition: each unit has a change description, impact surface, and verification method. Anything beyond is over-planning — implement.

---

## Phase 3 — Root-Cause Protocol (debugging tasks only)

Entry: a defect or unexplained behavior without an evidence-supported cause. Skip for pure feature work.

1. **No fix before a supported cause** — evidence consistent with the hypothesis AND inconsistent with obvious alternatives. This applies even when the user names a cause (Behavioral Override 2).
2. **Reproduce first if feasible.** The best repro here is a focused unit test in the owning module (format fixture → classifier/parser/paginator → assertion). Prefer a failing test over emulator-only reproduction; it doubles as the regression guard.
3. **Multiple hypotheses across layers.** IF the cause is uncertain, list 2–4 candidates spanning pipeline stages — for reader bugs the standard axis is: input file/encoding → archive classification → format reader → engine selection → container choice → pagination/rendering → UI state. The second hypothesis exists to force a discriminating test.
4. **Eliminate by discrimination**: one narrowed test, one classifier log, one isolated fixture beats broad re-reading.
5. **Symptom-fix guard.** Before implementing: does the fix correct the component that violated its contract, or compensate downstream? Typical anti-pattern in this codebase: patching a feature-level rendering symptom when the violation is in format classification, the character-count paginator, or an engine adapter. IF downstream compensation, fix the true violator or record explicit justification (e.g., the violator is a third-party library like Junrar/Readium and must be wrapped).
6. **Persistence trigger.** IF the same failure survives **two** local fixes at the same location, the assumed failure boundary is wrong. Stop patching; widen one pipeline stage upstream or downstream and re-form hypotheses.

Investigation stop: exactly one hypothesis remains consistent with all evidence, OR the fix is identical under all remaining hypotheses.

---

## Phase 4 — Implementation

1. **Minimal, structurally correct, correctly placed.** Smallest change satisfying the criteria in the module that owns the responsibility. A two-line hack in `feature-reader` loses to a proper fix in `engine-formats` when routing or pagination is the violated contract.
2. **Scope lock.** Touch only modules/files inside the planned surface (reinforces Behavioral Override 1). An edit outside it is a plan change: update the impact surface (one sentence), then edit. No opportunistic refactoring, reformatting, or renames — including inside `ReaderScreen.kt`; its size is not a license to restructure it while fixing something else.
3. **Convention conformance.** Match existing module patterns: Hilt injection style, Result/error handling, Compose state patterns in features, test structure of the target module. Divergence needs task-driven justification.
4. **Invariant preservation.** Do not weaken the six repo invariants as a side effect. IF an invariant blocks the task, that is a specification conflict — Phase 5, not a silent override.
5. **Incremental verification.** After each meaningful unit, run the cheapest relevant deterministic check (`:<module>:compileDebugKotlin`, then `:<module>:testDebugUnitTest`) before proceeding. Do not batch a multi-module change and verify only at the end. Gradle is slow — scope targets tightly rather than skipping them.
6. **Dependencies**: add to the correct module's `build.gradle(.kts)` (respecting layer direction — never add an engine dependency to a feature) before writing code that imports it; compile to confirm resolution.

---

## Phase 5 — Failure Handling and Replanning

Classify every failure before acting. Never dismiss one by default.

| Class | Test | Action |
|---|---|---|
| **Implementation error** | Your change is wrong per its own plan | Fix within current plan |
| **Incorrect assumption** | Evidence contradicts a Phase 1–3 conclusion | STOP. State the invalidated assumption in one sentence; re-enter that phase; discard edits built on it |
| **Environmental failure** | Gradle daemon/SDK/network/sandbox issue reproducing without your change | One remediation attempt (`--no-daemon`, clean of the affected module); else record as verification limitation |
| **Pre-existing failure** | Fails on base state, outside your change surface | Prove it (run against unmodified state or show independence from your diff), record, don't fix unless in scope |
| **Specification conflict** | Criteria contradict a repo invariant (e.g., "route EPUB through raster loader") or each other | Stop; surface the conflict with evidence; do not silently pick a side |

Hard rules:

- IF new evidence contradicts the active hypothesis or plan, stop implementation immediately regardless of sunk effort.
- "Unrelated failure" is a conclusion requiring the pre-existing-failure proof above, never a default.

---

## Phase 6 — Completion Procedure (mandatory, in order)

A successful file edit, clean patch, compilation of an untouched module, or absence of visible syntax errors is **never** evidence of task completion. A well-written summary is not evidence of anything (Behavioral Overrides 3 and 5).

1. **Restate acceptance criteria** from Phase 0, updated with user-approved scope changes.
2. **Map each criterion to evidence**: which Gradle target, which test class, which observed behavior. "It compiles" maps to nothing behavioral.
3. **Run all relevant deterministic checks**: unit tests of every touched module, `:app:assembleDebug` when DI wiring / navigation / manifests / multiple modules changed, plus any test written in Phase 3. IF a deterministic check exists for a criterion, code inspection alone is insufficient for that criterion.
4. **Investigate every failure** via Phase 5 classification; no wave-offs without evidence.
5. **Staleness rule.** Any code modification after a check ran — including final touch-ups — makes every potentially affected check stale. The last verification must postdate the last relevant modification.
6. **Final diff review.** Read the full diff and dependency surface. Check specifically for: edits outside the change surface; layer-direction violations (feature importing an engine impl); duplicated logic that `core-domain`/`engine-formats` already owns; an `engine-api` change not propagated to all implementers; Room schema change without migration; leftover debug logs; accidentally committed build outputs or sample files; silently changed per-format routing; unrequested "improvements" (Behavioral Override 1). Fix findings, then re-apply step 5.
7. **Regression pass on the change surface**: for each modified contract or shared symbol, confirm dependents were covered by the checks above or are demonstrably unaffected.
8. **Classify every criterion**:
   - **VERIFIED** — deterministic or directly observed evidence, postdating the final relevant modification.
   - **INFERRED** — supported by code reading, but no runnable check exists (typical here: device/emulator-only behavior — gestures, TTS audio, e-ink rendering, real RAR samples absent from the repo). State why.
   - **NOT VERIFIED** — no meaningful evidence. A criterion with no evidence MUST stay NOT VERIFIED; reclassifying to INFERRED without stated reasoning is prohibited.
9. **Report** complete only when no required criterion is NOT VERIFIED, unless verification is technically impossible in this environment — then name the limitation explicitly (e.g., "pagination logic VERIFIED by unit tests; on-device rendering not verifiable without emulator — verify by installing the debug APK and opening a CBZ in vertical-feed mode"). Never claim a check was performed unless its actual output was observed. List deferred out-of-scope findings here, per Behavioral Override 1.

---

## Global Invariants (all phases)

1. **Evidence before clarification** — IF the repository can answer, inspect it before asking.
2. **Execution over prose** — once a phase's exit condition holds, advance; further analysis is waste.
3. **Parallelize independent work** — independent reads, searches, and per-module test runs proceed together; serialize only for real data dependencies.
4. **Edits are not outcomes** — progress is measured in verified behavior changes.
5. **One source of truth per fact** — resolve artifact conflicts by the Phase 1 ranking; never carry contradictions silently.
6. **Budget honesty** — repeated inspection of the same evidence, repeated local fixes at one site, or planning that stops changing the plan triggers the corresponding stop rule. Obey it.
