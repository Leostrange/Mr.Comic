# EpubFormatReader.kt — Decomposition Map

Generated: 2026-07-19  
File: `android/engine-formats/src/main/kotlin/io/leostrange/mrcomic/engine/formats/epub/EpubFormatReader.kt`  
Size: **2 384 lines**, ~108 KB

---

## 1. Top-level structure and line ranges

### File-level (outside class)

| Symbol | Lines | Description |
|--------|-------|-------------|
| `perfPhase()` | 48–53 | Inline perf instrumentation helper |

### class EpubFormatReader (66–2384)

| Section | Lines | Symbols |
|---------|-------|---------|
| **Imports** | 1–42 | 35 imports |
| **Companion constants** | 75–125 | TAG, cache versions, flavor constants, `CHARS_PER_PAGE`, `HTML_TAG_RE`, IMAGE_EXTENSIONS, XHTML_EXTENSIONS, EPUB_CHUNK_BOUNDARY_TAGS, EPUB_CHUNK_CONTAINER_TAGS, EPUB_ATOMIC_CHUNK_TAGS, `IMG_SRC_RE`, `XLINK_HREF_RE`, `CSS_LINK_RE`, `CSS_INJECT` |
| **ZIP lifecycle & caches** | 127–155 | `lock`, `tempFile`, `zipFile`, `htmlCache` (LRU 8), `textEntryCache` (LRU 16), `pageHtmlCache` (LRU 12), `notesTitlePageCache`, `footnotePageCache`, `titleOnlySpinePageCache` (ConcurrentHashMap) |
| **Lazy manifest/pages/toc/footnotes** | 156–263 | `manifestBlueprint` (156–209), `parsed` (211–241), `pages`, `lazyTocEntries` (244–253), `footnoteMap` (254–263) |
| **FormatReader interface** | 265–684 | `getPageCount()` (267), `getPage()` (274), `getHtmlPage()` (289–364), `htmlAssetBasePath()` (366), `textSectionPages` (379), `textDocumentSections` (390), `buildTextDocumentSections()` (402–448), `renderImageSpineItemHtml()` (450–470), `renderFullSpineItemHtml()` (472–492), `renderSpineSectionHtml()` (495–526), `openHtmlAsset()` (528–571), `extractBodyContent()` (574), `extractWrappedBodyContent()` (581), `getTableOfContents()` (599), `getFootnoteText()` (601), `resolveHrefToPage()` (615–647), `mapLegacyPageIndexToSectionIndex()` (650), `close()` (669) |
| **Page list construction** | 686–1063 | `buildPagesFromBlueprint()` (686–708), `buildTocFromBlueprint()` (710–718), `currentCacheKey()` (720–736), `loadManifestFromCache()` (738–752), `storeManifestInCache()` (754–777), `loadParsedFromCache()` (779–792), `storeParsedInCache()` (794–817), `serializeManifestBlueprint()` (819–829), `deserializeManifestBlueprint()` (831–846), `serializeParsedEpub()` (848–853), `deserializeParsedEpub()` (855–865), **`buildPagesFromOpf()`** (869–1063, **~195 lines**) |
| **Front-matter repair** | 1066–1108 | `hasExpectedFb2FrontMatter()` (1066), `shouldRepairFrontMatter()` (1072), `detectPublisherEpub()` (1093) |
| **OPF parsing** | 1110–1178 | `findOpfEntry()` (1110–1122), `parseOpf()` (1128–1132), `parseOpfFallback()` (1134–1170), `parseOpfRegexFallback()` (1172–1178) |
| **TOC parsing** | 1180–1279 | `parseToc()` (1184–1205), `parseNcx()` (1208–1244), `parseNavXhtml()` (1247–1271), `isFootnoteTocEntry()` (1278) |
| **Page index resolution** | 1281–1460 | `srcToPageIndex()` (1285), `pageContainsEntry()` (1300), `resolveFileNameToPageIndex()` (1319), `resolveAnchorHrefToPage()` (1326–1349), `pageMatchesEntryCandidates()` (1351), `pageContainsAnyAnchor()` (1366), `readTextEntryForPageChunk()` (1384), `htmlContainsAnyAnchor()` (1394), `buildEntryCandidates()` (1405–1427), `findPageIndexByEntryCandidates()` (1429–1460) |
| **Content analysis helpers** | 1462–1607 | `NAV_FILE_RE`, `FRONT_MATTER_ENTRY_RE` (1462–1466), `fallbackContentPages()` (1468–1484), `isProtectedFrontMatterEntry()` (1486), `shouldIncludeFallbackHtml()` (1495), `readTextEntry()` (1514–1529), `isHeadingOnlySpinePage()` (1531), `isTitleOnlySpinePage()` (1548), `isNotesTitlePage()` (1569), `isFootnotePage()` (1575), `buildFootnoteMap()` (1580–1599), `epubFootnoteLookupCandidates()` (1601), `extractFootnoteItems()` (1604) |
| **Synthetic footnote pages** | 1609–1689 | `buildSyntheticNotePages()` (1609–1669), `buildSyntheticHtml()` (1671), `escapeHtml()` (1676) |
| **HTML image + CSS inlining** | 1691–1767 | `inlineImages()` (1693–1767, **~75 lines**) |
| **Content estimation & chunking** | 1769–2280 | `estimateContent()` (1780–1809), `estimateChunkCount()` (1811–1834), `splitEstimatedCharCount()` (1836), `extractChunk()` (1852–1879), `extractChunkBlocks()` (1881–1906), `extractEstimatedChunkBlocks()` (1908–1974), `visibleTextCharCount()` (1976), `hasRenderableMedia()` (1987), `canSplitEstimatedBlock()` (1995), `extractDomChunkBlocks()` (2005–2076), `shouldRecurseIntoEpubChunkContainer()` (2078), `hasNestedEpubChunkBoundary()` (2085), `isEpubChunkBoundaryElement()` (2091), `wrapInChunkAncestors()` (2097), `extractParagraphFallbackChunkBlocks()` (2110–2134), `splitOversizedEpubBlock()` (2136–2166), `splitTextForEpubBlocks()` (2168–2187), `partitionChunkBlocks()` (2189–2216), `rebalanceTrailingChunkPair()` (2218–2263), `isEpubSectionStartBlock()` (2265), `escapeHtmlText()` (2273), `escapeHtmlAttr()` (2278) |
| **Utility delegates** | 2282–2384 | `detectCharset()` (2282), `findHeader()` (2284), `epubMimeTypeFor()` (2287), `epubTextEncodingFor()` (2290), `ensureReadableZipPath()` (2293), `ensureCachedExternalFile()` (2300), `ensureZip()` (2306–2332), `ensureCachedContentUriFile()` (2334–2381), `normalizePath()` (2383) |

---

## 2. Already extracted files

| File | Lines | What's in it |
|------|-------|-------------|
| `EpubTypes.kt` | 136 | Data classes: `EpubContentEstimate`, `EpubHtmlChunkBlock`, `EpubEstimatedChunkBlock`, `EpubPage` (sealed: Image/Html/SyntheticHtml), `ParsedEpub`, `ManifestBlueprint`, `EpubCacheKey`, `CachedParsedEpubPayload`, `CachedPage`, `CachedManifestPayload`; conversion functions `toCachedPage()`, `toEpubPage()` |
| `EpubReadablePath.kt` | 121 | `EpubReadablePath`: `ensureLocal()`, `ensureLocalFromContentUri()`, `cacheToAppDir()`, `cacheContentUriToAppDir()` — content-URI and file-path caching into app cache |
| `EpubManifestParser.kt` | 147 | `EpubManifestParser`: `parseOpfRegex()` (regex fallback), `detectPublisherEpub()`, `shouldRepairFrontMatter()`, `extractOpfPathFromContainer()` — **only regex-based parsing**, Jsoup XML parsing is still inline |
| `EpubInlineSvgNormalizer.kt` | 21 | `simplifySingleImageSvgContent()` — replaces single-image `<svg>` blocks with `<img>` |
| `EpubHtmlNormalizer.kt` | 155 | `normalizeInlinedEpubMarkup()`, `extractEpubBodyInnerHtmlByTag()`, `extractEpubBodyAttributesByTag()`, `rebuildNormalizedInlinedEpubDocument()`, `sanitizeInlineEpubCss()`, `sanitizeAssetBackedEpubCss()`, `prepareAssetBackedEpubDocument()` |
| `EpubHtmlChunker.kt` | 96 | `resolveEpubHtmlChunkCount()`, `shouldKeepWholeEpubHtmlBody()` — **only 2 pure functions**, all DOM chunking is still inline |
| `EpubFootnoteResolver.kt` | 83 | `EpubFootnoteResolver`: `lookupCandidates()`, `isFootnoteTocEntry()` |
| `EpubFootnoteParser.kt` | 310 | `EpubFootnoteParser`: `hasNotesTitle()`, `extractItems()`, `extractAndRemoveFromDom()` — DOM + regex extraction |
| `EpubCssSanitizer.kt` | 131 | `EpubCssSanitizer`: `sanitizeInline()`, `sanitizeAssetBacked()`, `isSafeAssetBackedCssUrl()`, `normalizeAssetPath()` |
| `EpubCharsetDetector.kt` | 168 | `decodeEpubText()`, `detectEpubTextCharset()`, `declaredEpubCharset()`, `chooseReadableEpubFallbackCharset()`, `charsetOrNull()`, `scoreEpubDecodedText()` |
| `EpubArchiveAccess.kt` | 70 | `EpubArchiveAccess`: `mimeTypeFor()`, `textEncodingFor()`, `normalizePath()`, `findHeader()` |

**Total extracted: ~1 337 lines across 11 files.**

---

## 3. What's STILL inline vs. the REFACTORING_CONTINUATION_GUIDE

The guide (`REFACTORING_CONTINUATION_GUIDE.md`, section "EpubFormatReader — превратить в координатор") lists 6 extraction steps. Status:

### 3a. HTML/CSS preparation → ✅ mostly done

Extracted: `EpubInlineSvgNormalizer`, `EpubHtmlNormalizer`, `EpubCssSanitizer`.

**Still inline:**
- `inlineImages()` (L1693–1767, ~75 lines) — CSS `<link>` inlining, `<img src>` / `<image xlink:href>` base64 encoding. Calls into `EpubHtmlNormalizer` and `EpubInlineSvgNormalizer` but the main orchestration loop is here.

### 3b. OPF/TOC parsing → ⚠️ partially done

Extracted: `EpubManifestParser` (regex fallback only, + detection helpers).

**Still inline (~170 lines):**
- `findOpfEntry()` (L1110–1122) — reads `META-INF/container.xml`, delegates to `EpubManifestParser.extractOpfPathFromContainer()`
- `parseOpf()` (L1128–1132) — charset detection wrapper
- `parseOpfFallback()` (L1134–1170) — **Jsoup XML parser** for OPF `<manifest>` / `<spine>` — the *primary* parser, not the fallback
- `parseToc()` (L1184–1205) — dispatches to NCX or nav.xhtml
- `parseNcx()` (L1208–1244) — EPUB2 NCX with Jsoup
- `parseNavXhtml()` (L1247–1271) — EPUB3 nav.xhtml with regex

### 3c. Chunking → ⚠️ skeleton only

Extracted: `EpubHtmlChunker` has 2 pure helpers (96 lines).

**Still inline (~500 lines, the largest group):**
- `estimateContent()` (L1780–1809)
- `estimateChunkCount()` (L1811–1834)
- `splitEstimatedCharCount()` (L1836–1845)
- `extractChunk()` (L1852–1879)
- `extractChunkBlocks()` (L1881–1906)
- `extractEstimatedChunkBlocks()` (L1908–1974)
- `extractDomChunkBlocks()` (L2005–2076)
- `shouldRecurseIntoEpubChunkContainer()` (L2078–2083)
- `hasNestedEpubChunkBoundary()` (L2085–2089)
- `isEpubChunkBoundaryElement()` (L2091–2095)
- `wrapInChunkAncestors()` (L2097–2108)
- `extractParagraphFallbackChunkBlocks()` (L2110–2134)
- `splitOversizedEpubBlock()` (L2136–2166)
- `splitTextForEpubBlocks()` (L2168–2187)
- `partitionChunkBlocks()` (L2189–2216)
- `rebalanceTrailingChunkPair()` (L2218–2263)
- `isEpubSectionStartBlock()` (L2265–2271)
- `visibleTextCharCount()` (L1976–1985)
- `hasRenderableMedia()` (L1987–1993)
- `canSplitEstimatedBlock()` (L1995–2003)
- `escapeHtmlText()` (L2273–2276)
- `escapeHtmlAttr()` (L2278–2280)

### 3d. Footnotes → ✅ mostly done

Extracted: `EpubFootnoteParser` (310 lines), `EpubFootnoteResolver` (83 lines).

**Still inline (~110 lines):**
- `buildFootnoteMap()` (L1580–1599) — iterates spine, calls `extractFootnoteItems()`
- `buildSyntheticNotePages()` (L1609–1669) — builds SyntheticHtml pages from footnote items
- `buildSyntheticHtml()` (L1671–1674)
- `escapeHtml()` (L1676–1689)
- `epubFootnoteLookupCandidates()` (L1601–1602) — thin delegate
- `extractFootnoteItems()` (L1604–1607) — thin delegate

### 3e. Cache serialization → ❌ not done

**Still inline (~146 lines):**
- `currentCacheKey()` (L720–736)
- `loadManifestFromCache()` (L738–752)
- `storeManifestInCache()` (L754–777)
- `loadParsedFromCache()` (L779–792)
- `storeParsedInCache()` (L794–817)
- `serializeManifestBlueprint()` (L819–829)
- `deserializeManifestBlueprint()` (L831–846)
- `serializeParsedEpub()` (L848–853)
- `deserializeParsedEpub()` (L855–865)

### 3f. ZIP/resource access → ⚠️ partially done

Extracted: `EpubArchiveAccess` (70 lines), `EpubReadablePath` (121 lines).

**Still inline (~105 lines):**
- `ensureZip()` (L2306–2332) — ZIP lifecycle, synchronized
- `ensureReadableZipPath()` (L2293–2298)
- `ensureCachedExternalFile()` (L2300–2304)
- `ensureCachedContentUriFile()` (L2334–2381) — **48 lines** of content-URI caching logic (duplicate of `EpubReadablePath.cacheContentUriToAppDir`)
- `readTextEntry()` (L1514–1529) — reads ZIP entry with LRU cache

---

## 4. Remaining inline groups ranked by extraction priority

### P0 — Chunking algorithms (~500 lines) → complete `EpubHtmlChunker.kt`

**Lines:** 1780–2280  
**Target file:** `EpubHtmlChunker.kt` (currently 96 lines)  
**Impact:** Largest remaining group. ~500 lines of pure algorithmic code.  
**Testability:** Excellent — almost all functions are pure (take HTML string, return blocks/chunks).  
**Dependencies:** Only `Jsoup`, `EpubHtmlChunkBlock`/`EpubEstimatedChunkBlock` (already in `EpubTypes`), and companion set constants (`EPUB_CHUNK_BOUNDARY_TAGS`, etc.). One function (`estimateContent`) reads from ZIP — should keep that thin call in the reader and pass the HTML string down.

**Functions to move:**

```
estimateChunkCount()            — orchestration
splitEstimatedCharCount()       — pure
extractChunk()                  — pure (takes html string)
extractChunkBlocks()            — pure
extractEstimatedChunkBlocks()   — pure
extractDomChunkBlocks()         — pure
shouldRecurseIntoEpubChunkContainer() — pure
hasNestedEpubChunkBoundary()    — pure
isEpubChunkBoundaryElement()    — pure
wrapInChunkAncestors()          — pure
extractParagraphFallbackChunkBlocks() — pure
splitOversizedEpubBlock()       — pure
splitTextForEpubBlocks()        — pure
partitionChunkBlocks()          — pure
rebalanceTrailingChunkPair()    — pure
isEpubSectionStartBlock()       — pure (extension on EpubHtmlChunkBlock)
visibleTextCharCount()          — pure
hasRenderableMedia()            — pure
canSplitEstimatedBlock()        — pure
escapeHtmlText()                — pure
escapeHtmlAttr()                — pure
```

**Move the companion constants too:**
`EPUB_CHUNK_BOUNDARY_TAGS`, `EPUB_CHUNK_CONTAINER_TAGS`, `EPUB_ATOMIC_CHUNK_TAGS`, `HTML_TAG_RE`

---

### P1 — OPF/TOC parsing (~170 lines) → complete `EpubManifestParser.kt`

**Lines:** 1110–1279  
**Target file:** `EpubManifestParser.kt` (currently 147 lines)  
**Impact:** Completes the OPF/TOC extraction the guide calls for.  
**Testability:** Good — the Jsoup OPF parser and TOC parsers take raw strings/InputStream.  
**Dependencies:** `Jsoup`, `FileHeader` (zip4j), charset detection. The `findOpfEntry()` function needs a `ZipFile` — keep as thin delegate in the reader.

**Functions to move:**
- `parseOpf()` / `parseOpfFallback()` (Jsoup XML parser, ~40 lines)
- `parseToc()` / `parseNcx()` / `parseNavXhtml()` (~90 lines)
- `hasExpectedFb2FrontMatter()` / `shouldRepairFrontMatter()` / `detectPublisherEpub()` (~45 lines)
- Move `CHARS_PER_PAGE` usage references → pass as parameter

**Note:** `parseOpfRegexFallback()` is already a delegate to `EpubManifestParser.parseOpfRegex()` — keep the call in the reader.

---

### P2 — Cache serialization (~146 lines) → new `EpubCacheSerializer.kt`

**Lines:** 720–865  
**Target file:** New `EpubCacheSerializer.kt`  
**Impact:** Self-contained I/O concern.  
**Testability:** Excellent — pure Gson serialization/deserialization with no Android deps except `EpubCacheStore` interface.  
**Dependencies:** `Gson`, `EpubCacheStore` (from `engine-api`), types from `EpubTypes`.

**Functions to move:**
- `currentCacheKey()`
- `loadManifestFromCache()` / `storeManifestInCache()`
- `loadParsedFromCache()` / `storeParsedInCache()`
- `serializeManifestBlueprint()` / `deserializeManifestBlueprint()`
- `serializeParsedEpub()` / `deserializeParsedEpub()`

**Also move:** `CACHE_GSON`, `EPUB_STRUCTURE_CACHE_VERSION`, `EPUB_MANIFEST_CACHE_VERSION`, `EPUB_STRUCTURE_CACHE_MAX_AGE_MS`

---

### P3 — Page index resolution (~180 lines) → new `EpubPageResolver.kt`

**Lines:** 1281–1460  
**Target file:** New `EpubPageResolver.kt`  
**Impact:** Pure navigation logic, easily unit-testable.  
**Testability:** Excellent — all functions take `pages: List<EpubPage>` + string arguments, return `Int?`.  
**Dependencies:** Only `EpubPage` types, `EpubArchiveAccess.normalizePath`.

**Functions to move:**
- `srcToPageIndex()`
- `pageContainsEntry()`
- `resolveFileNameToPageIndex()`
- `resolveAnchorHrefToPage()`
- `pageMatchesEntryCandidates()`
- `pageContainsAnyAnchor()`
- `readTextEntryForPageChunk()` (needs thin ZIP delegate)
- `htmlContainsAnyAnchor()`
- `buildEntryCandidates()`
- `findPageIndexByEntryCandidates()`

---

### P4 — Content analysis helpers (~145 lines) → new `EpubContentAnalyzer.kt`

**Lines:** 1462–1607  
**Target file:** New `EpubContentAnalyzer.kt`  
**Impact:** Scattered content classification logic.  
**Testability:** Moderate — some functions read from ZIP (`readTextEntry`), but the analysis logic (once given raw HTML) is pure.  
**Dependencies:** `Jsoup`, `EpubFootnoteParser`, `FileHeader` (zip4j).

**Functions to move:**
- `fallbackContentPages()`
- `isProtectedFrontMatterEntry()`
- `shouldIncludeFallbackHtml()`
- `readTextEntry()` (or share via `EpubArchiveAccess`)
- `isHeadingOnlySpinePage()`
- `isTitleOnlySpinePage()`
- `isNotesTitlePage()`
- `isFootnotePage()`

**Also move:** `NAV_FILE_RE`, `FRONT_MATTER_ENTRY_RE`, `CHAPTER_TITLE_RE`

---

### P5 — buildPagesFromOpf merge logic (~200 lines)

**Lines:** 869–1063  
**Impact:** The single largest function (`buildPagesFromOpf`, 195 lines).  
**Testability:** Moderate — depends on class caches (`notesTitlePageCache`, etc.) and constants.  
**Dependencies:** ZIP access, content analysis helpers (P4), chunking (P0).

**Recommendation:** Extract **after** P0 and P4, since those are its dependencies. Once `estimateContent`, `isNotesTitlePage`, etc. are in their own files, this function can be decomposed into:
1. `classifySpineItem()` — first-pass per-item classification
2. `normalizeNoteSections()` — second-pass note detection
3. `mergeTinyPages()` — third-pass merge logic

---

### P6 — Synthetic footnote pages (~110 lines)

**Lines:** 1580–1689  
**Testability:** Good — takes `List<EpubFootnoteItem>`, returns `List<EpubPage>`.  
**Dependencies:** `EpubFootnoteParser`, `CHARS_PER_PAGE`.

**Functions to move:**
- `buildFootnoteMap()`
- `buildSyntheticNotePages()`
- `buildSyntheticHtml()`
- `escapeHtml()`

**Recommendation:** Can be folded into `EpubFootnoteResolver.kt` or a new `EpubFootnotePageBuilder.kt`.

---

### P7 — HTML rendering helpers (~195 lines)

**Lines:** 390–597  
**Testability:** Low — tightly coupled to class state (caches, ZIP lifecycle).  
**Dependencies:** `htmlCache`, `textEntryCache`, `pageHtmlCache`, `ensureZip()`, `findHeader()`, `prepareAssetBackedEpubDocument()`, `extractChunk()`.

**Functions:**
- `buildTextDocumentSections()` (402–448)
- `renderImageSpineItemHtml()` (450–470)
- `renderFullSpineItemHtml()` (472–492)
- `renderSpineSectionHtml()` (495–526)
- `extractBodyContent()` (574)
- `extractWrappedBodyContent()` (581)

**Recommendation:** Extract **last**. These become a thin rendering coordinator that delegates to the already-extracted modules. Could move to a new `EpubHtmlRenderer.kt` that receives the caches + ZIP accessor as constructor params.

---

### P8 — ZIP lifecycle (~105 lines)

**Lines:** 2293–2384 + 1514–1529  
**Testability:** Requires Android context.  
**Dependencies:** `Context`, `Uri`, `ZipFile`, `EpubReadablePath`.

**Functions:**
- `ensureZip()` (2306–2332)
- `ensureReadableZipPath()` (2293–2298)
- `ensureCachedExternalFile()` (2300–2304)
- `ensureCachedContentUriFile()` (2334–2381) — **duplicates** `EpubReadablePath.cacheContentUriToAppDir()`
- `readTextEntry()` (1514–1529)

**Recommendation:** `ensureCachedContentUriFile` is nearly identical to `EpubReadablePath.cacheContentUriToAppDir` — deduplicate first, then fold `ensureZip` into `EpubArchiveAccess` or keep as the last thing in the reader (it's the lifecycle glue).

---

### P9 — HTML inlining orchestration (~75 lines)

**Lines:** 1693–1767  
**Testability:** Requires ZIP access for asset resolution.  
**Dependencies:** `EpubHtmlNormalizer`, `EpubInlineSvgNormalizer`, `EpubCssSanitizer`, ZIP.

**Recommendation:** Move to `EpubHtmlNormalizer.kt` as `inlineImages(html, xhtmlEntry, resolveAndEncode)`, passing the asset resolver as a lambda.

---

## 5. Extraction order summary

```
Priority  Lines  Group                      Target file                   Difficulty
────────  ─────  ─────────────────────────  ────────────────────────────  ──────────
P0        ~500   Chunking algorithms        EpubHtmlChunker.kt (expand)  Low
P1        ~170   OPF/TOC parsing            EpubManifestParser.kt (expand) Medium
P2        ~146   Cache serialization        EpubCacheSerializer.kt (new) Low
P3        ~180   Page index resolution       EpubPageResolver.kt (new)    Low
P4        ~145   Content analysis helpers    EpubContentAnalyzer.kt (new) Medium
P5        ~200   buildPagesFromOpf merge    (decompose after P0+P4)       High
P6        ~110   Synthetic footnote pages   EpubFootnoteResolver.kt (expand) Low
P7        ~195   HTML rendering helpers     EpubHtmlRenderer.kt (new)    High
P8        ~105   ZIP lifecycle              EpubArchiveAccess.kt (expand) Medium
P9         ~75   HTML inlining orchestration EpubHtmlNormalizer.kt (expand) Low
```

**If all P0–P6 are completed, EpubFormatReader.kt drops from ~2 384 lines to ~600 lines** — a thin coordinator owning only ZIP lifecycle, cache wiring, and the top-level `FormatReader` interface methods.

---

## 6. Quick wins (low risk, immediate reduction)

1. **P0 — Move 22 pure chunking functions into `EpubHtmlChunker.kt`** — no behavioral change, no new deps. Move the companion constants (`EPUB_CHUNK_BOUNDARY_TAGS`, etc.) along with them.  
2. **P2 — Move 9 cache serialization functions into `EpubCacheSerializer.kt`** — pure Gson, no Android APIs except `EpubCacheStore` interface.  
3. **P3 — Move 10 page-index resolution functions into `EpubPageResolver.kt`** — pure string matching, no ZIP access needed.

These three alone remove **~826 lines** (~35% of the file) with zero risk of behavioral regression.
