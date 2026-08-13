# Reader runtime QA matrix

## Contract

Runtime status is reported as `PASS`, `FAIL`, or `PASS-with-risk`. Unit tests alone never close a WebView, gesture, lifecycle, or visual regression.

Every executed row records:

- Git revision and dirty-worktree marker;
- device model, API and WebView package/version;
- fixture id and SHA-256 from `android/feature-reader/src/androidTest/assets/reader-corpus/manifest.json`;
- reading mode and exact action sequence;
- runtime event trace, screenshot and UI dump paths;
- observed locator before and after mode switch/reopen;
- result and remaining risk.

## Runtime invariants

1. One active load generation per document identity.
2. A stale generation may appear in the trace but may not replace active content or progress.
3. Content is ready only after a non-empty DOM/layout observation; `onPageFinished` alone is insufficient.
4. PAGE to WEBTOON to PAGE returns to the same semantic section with text progression delta at most `0.02`.
5. Raster reopen returns to the exact page.
6. Blank primary content permits one bounded fallback; a second failure is terminal.
7. Reader disposal releases WebView/session ownership and ignores delayed callbacks.

## Corpus

| Fixture | Source | Formats represented | Purpose |
|---|---|---|---|
| `txt-basic` | Static, project test source | TXT | Text readiness and chapter marker restore. |
| `html-basic` | Static, project test source | HTML | Stable anchors and two stitched sections. |
| `fb2-basic` | Static, project test source | FB2 | Structured sections without external assets. |
| `epub-generated-basic` | Deterministic generator | EPUB | Two-spine mode-switch characterization. |
| `docx-generated-basic` | Deterministic generator | DOCX | Minimal OOXML text route. |
| `cbz-generated-basic` | Deterministic generator | CBZ | Two-page raster representative. |
| `text-archive-generated-basic` | Deterministic generator | Text in ZIP | Archive delegation into the TXT reader. |
| `cbr-generated-basic` | WinRAR store archive of two project PNGs | CBR | Real RAR container and raster page ordering. |
| `pdf-generated-basic` | Deterministic generator | PDF | Minimal two-page PDF raster route. |
| `djvu-reference-basic` | Unchanged copy of `reference/formats/*.djvu` | DJVU | Real structured DJVU open and rendering. |
| `image-folder-generated-basic` | Deterministic generator | Image folder | Directory-backed raster ordering and restore. |

Static fixtures are original project test material. Generated fixtures contain no third-party text or images. Every source is checksum-pinned; `ReaderFormatMatrixTest` materializes each row and opens it through the production `FormatFactory`.

## Required matrix

`NOT RUN` means the row is defined but has no current device evidence.

| Format | PAGE cold/open/turn | WEBTOON cold/scroll | PAGE to WEBTOON to PAGE | Reopen | Boundary/footnote/RTL | Current status |
|---|---|---|---|---|---|---|
| EPUB | Required | Required | Required | Required | Chapter, footnote, RTL | NOT RUN |
| FB2 | Required | Required | Required | Required | Chapter, footnote | NOT RUN |
| HTML | Required | Required | Required | Required | Anchor, relative asset | NOT RUN |
| TXT | Required | Required | Required | Required | Long paragraph | NOT RUN |
| DOCX | Required | Required | Required | Required | Paragraph boundary | NOT RUN |
| Text archive | Required | Required | Required | Required | Delegate routing | NOT RUN |
| CBZ | Required | Required | Required | Required | First/last page | NOT RUN |
| CBR | Required | Required | Required | Required | First/last page | NOT RUN |
| PDF | Required | Required | Required | Required | Rotation/textless page | NOT RUN |
| DJVU | Required | Required | Required | Required | Text layer/no text layer | NOT RUN |
| Image folder | Required | Required | Required | Required | Natural filename order | NOT RUN |

## Device tiers

| Tier | Purpose | Gate |
|---|---|---|
| Representative min SDK | Compatibility and constrained renderer behavior | Release |
| Primary target API | PR smoke and routine development evidence | PR |
| API 37 | Forward compatibility after the System UI ANR test stand is restored | Release, currently blocked by environment |
| Physical device | Performance and final memory/latency claims | Release |

## Characterization runner

`WebViewTestRunner` emits an ordered trace through `ReaderRuntimeEventProbe`:

```text
sequence|generation|event|elapsedMillis|redactedDetail
```

The trace intentionally records late callbacks from old generations. Assertions compare them with `activeGeneration`; the probe does not hide races by filtering evidence.

## Evidence log

| Date | Revision | Device/API | Fixture/scenario | Result | Evidence | Notes |
|---|---|---|---|---|---|---|
| 2026-08-11 | dirty worktree | none | U1 harness and corpus definition | PASS-with-risk | Instrumentation sources only | Compilation/device execution still required; no runtime behavior is claimed. |
| 2026-08-12 | dirty worktree | host compile only | U6 complete 11-format corpus and production-reader matrix | PASS-with-risk | `:feature-reader:compileDebugAndroidTestKotlin` BUILD SUCCESSFUL | Both ADB transports are listed as `device`, but even `shell getprop sys.boot_completed` timed out; all runtime rows remain NOT RUN. |
