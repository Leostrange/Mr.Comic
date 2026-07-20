# Plan 005: Make ReaderFormatCatalog the Single Source of Truth

## Problem

`ReaderFormatCatalog` centralizes supported reader extensions and mime types, and it already has tests. That is good. But Android manifest intent filters, import policy, README support lists, file picker mime arrays, and engine support can still drift.

## Goals

- Treat `ReaderFormatCatalog` as the canonical product support matrix.
- Add tests that compare manifest/import behavior against the catalog.
- Make unsupported or placeholder formats explicit in code and docs.

## Implementation Steps

1. Add tests that assert every catalog mime type used for open/import has a matching policy path.
2. Add a manifest verification test or build-time check that compares `AndroidManifest.xml` VIEW filters against catalog mime types/extensions.
3. Add support-state metadata to catalog descriptors, for example `Ready`, `Placeholder`, `Experimental`, or `ImportOnly`.
4. Mark DjVu according to the real runtime state: placeholder if rendering is intentionally unavailable.
5. Update README and docs to render supported/experimental/placeholder states from the same matrix, or add a test that catches mismatches.
6. Ensure archive delegation tests cover single-book text archives and raster archives separately.

## Verification

Run:

```powershell
.\gradlew.bat --no-daemon --console=plain :core-model:testDebugUnitTest :app:testDebugUnitTest :engine-formats:testDebugUnitTest
```

Also manually inspect Android "Open with" behavior for PDF, EPUB, ZIP/CBZ, MOBI/AZW3, DOCX/ODT, and DjVu.

## Boundaries

- Do not claim a format is fully supported if runtime only shows a placeholder.
- Do not remove aliases users may already rely on without migration/release notes.
- Do not duplicate format lists in new locations.

