# Plan 004: Clean Repository Hygiene and Publication Boundaries

## Problem

The active workspace contains many local artifacts and 370 untracked files. Large root artifacts include `mimo.exe`, `anx-reader-develop.zip`, logs, screenshots, reference source dumps, and local analysis outputs. `.gitignore` covers many classes of junk, but the working tree still has enough untracked material to make accidental staging or publication likely.

## Goals

- Keep product source, tests, docs, and intentional samples.
- Keep public README media only under `media/`.
- Move local analysis/reference dumps outside the repo or under ignored paths.
- Make release/publish flows use a clean clone or clean worktree.

## Implementation Steps

1. Generate an inventory with `git status --short --ignored` and classify each root-level artifact.
2. Keep tracked sample archives that are used by tests, such as `samples/test-archives/*.zip`, unless tests are changed.
3. Move local binaries and reference dumps outside the repository root: `mimo.exe`, `anx-reader-develop.zip`, `android-code-studio/`, `anx-reader-analyzed/`, `re-out/`, `.re-out/`, screenshots, and session logs.
4. Extend `.gitignore` for any recurring local directories that are not intentionally tracked.
5. For publication, use a clean clone/worktree and copy only selected source, docs, media, and test fixtures.
6. Add a pre-release checklist that runs `git status --short` and fails if unexpected root artifacts remain.

## Verification

Run:

```powershell
git status --short
git ls-files local.properties *.log *.zip *.exe Screenshots/** android-code-studio/** anx-reader-analyzed/**
```

Expected result: only intentional tracked fixtures/media remain, and no private machine files are staged.

## Boundaries

- Do not delete personal or reference artifacts without explicit approval.
- Do not remove tracked test fixtures unless replacing tests.
- Do not touch Android virtual devices.

