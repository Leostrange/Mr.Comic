# Code REUSE Review — Mr.Comic commit bfb11e3

**Scope:** `android/feature-reader/.../ReaderScreen.kt` and `android/engine-formats/.../UnifiedReaderCssBuilder.kt`
**Method:** Located the four patterns called out in the diff (footnote regex tokens, CSS injection, lang attribute, renderer recovery) and grep'd the tree for prior art.

---

## Finding 1 — Footnote-marker regex duplicated across 4+ sites (HIGH)

The token set `footnote|note|notebody|rearnote|endnote|fnote|noteref|…` lives in **at least four** places and now differs slightly between them. Diff enlarged the WebView-side regexes by adding `fnt|backnote|supnote|text-fn|pagenote|annref|annotation`, but the corresponding Kotlin-side list was extended in a **different** commit and **is not in sync**:

```
ReaderScreen.kt:319           /\b(footnote|note|notebody|rearnote|endnote|fnote|fbautid|fnt|backnote|supnote|text-fn|pagenote|annref|annotation)\b/i   ← new (in JS)
ReaderScreen.kt:332-335       same family in 4 separate inline regexes (role / href / epubType / cls)  ← new
ReaderScreen.kt:376-381       same family in 4 more inline regexes (isFootnoteLink)                    ← new
ReaderViewModel.kt:120        \b(footnote|note|notebody|rearnote|endnote|fnote|noteref|fnt|backnote|supnote|text-fn|pagenote|annref|annotation)\b  ← Kotlin mirror (old)
ReaderViewModel.kt:2008       ^(?:fn|fnt|note|footnote|endnote|rearnote|back|sup|text-fn|pn|ann|annotation|FbAutId|id)[-_]?\d+$                     ← Kotlin ID regex
EpubFootnoteParser.kt:26      ^FbAutId_\d+|id\d+|fn\d+|fnt[-_]*\d+|note[-_]*\d+|footnote[-_]*\d+|back[-_]*\d+|sup[-_]*\d+|text-fn[-_]*\d+|pn[-_]*\d+|ann[-_]*\d+|annotation[-_]*\d+$
EpubFootnoteParser.kt:34      same prefix set duplicated again inside spanNoteRe
FootnotePatternTest.kt:13,18  copy-pasted a third time
MobiFormatReader.kt:325       \b(footnote|note|notebody|rearnote|endnote|fn|mobi-filepos)\b   (Mobi-flavoured variant)
```

Specific bugs already visible because of the split:
- `EpubFootnoteParser.noteIdRe` accepts `id\d+` (no separator). `ReaderViewModel.looksLikeReaderFootnoteAnchor` accepts `id[-_]?\d+` — **the Kotlin reader viewmodel and the EPUB parser disagree on what an "id" anchor looks like**, and neither one updated when the other did.
- `ReaderScreen.kt:161` and `:162` (the `isInlineSpineChapterLink` *non*-footnote gate) were **NOT** updated in this commit, so a `<a class="fnt">` link will now be treated as a footnote by the new regex at `:335` while still being treated as a navigable chapter link by the unrevised gate at `:161` — a direct consequence of the duplication.

**Suggested fix:** introduce a single `FootnoteRecognizer` (e.g. in `engine-formats/.../base/`) exposing the canonical prefix list, the marker regex, and an `isMarkerToken(String)`, then have the JS_TAP_HANDLER, `looksLikeReaderFootnoteAnchor`, `EpubFootnoteParser`, and the test all reference it. JS-side this can be done by emitting the token list as a top-of-script constant and joining it into each pattern. confidence: **high**.

---

## Finding 2 — `isFootnoteTocEntry` in `EpubFormatReader.kt` was also not updated (MEDIUM)

`EpubFormatReader.kt:1943-1961` is a hand-rolled list of footnote prefixes (`#fn`, `#footnote`, `#note`, `#endnote`, `#rearnote`, `#noteref`) used to filter them out of the chapter TOC. The diff added the same tokens to the WebView detector but **not here**, so `backnote`, `supnote`, `text-fn`, `pn`, `ann`, `annotation` chapter entries will still leak into the TOC. Same fix as Finding 1 (single token source). confidence: **high**.

---

## Finding 3 — `injectBodyInsetCss` now duplicates work that `textSettingsJs` already does (HIGH)

`ReaderScreen.kt:2083-2098` (the new `injectBodyInsetCss`) emits:

```
body{padding-top:…;padding-bottom:…;padding-left:…;padding-right:…;max-width:…;margin-left:auto;margin-right:auto;}
```

But the very same property set is already being applied at load time by `themeStyle` (lines 1004-1005) and at runtime by `textSettingsJs` (lines 1283-1291) — and those three call sites must stay in lockstep (otherwise the JS runtime will overwrite the inline style and the initial-paint flash returns). The diff grows the contract by 2 fields and now **three** functions have to be kept in sync.

Concretely:
- `textSettingsJs` lines 1283-1286 / 1288-1291 already set `paddingLeft/Right/Top/Bottom` on `document.body.style`.
- `textSettingsJs` lines 1292-1296 set `width/maxWidth/minWidth/overflowWrap/wordBreak` for non-paged mode.
- The new `injectBodyInsetCss` horizontal/max-width CSS is just a subset of what those two emit.

**Suggested fix:** either (a) delete the new horizontal/maxWidth args from `injectBodyInsetCss` and accept that the first-paint flash is fixed only for the vertical padding that the JS still doesn't pre-set, or (b) make `textSettingsJs` and `injectBodyInsetCss` both go through a single helper `buildBodyInsetCss(top, bottom, horizontal, maxWidth)` so they cannot drift. confidence: **high**.

---

## Finding 4 — `buildUnifiedReaderHtmlDocument`'s `lang` parameter bypasses `buildReaderDocumentHead` (MEDIUM)

`UnifiedReaderCssBuilder.kt:308-321` now wires `lang` into the `<html>` tag directly, but `buildReaderDocumentHead` (line 270) is the sibling helper that owns the rest of the head and is also called by `EpubFormatReader.kt:672` (`CSS_INJECT = buildReaderDocumentHead(...)`) for a *different* path. None of the EPUB/FB2/MOBI readers that build HTML via `buildUnifiedReaderHtmlDocument` pass `lang` — so hyphenation is now `auto` (per the CSS change) but the document has no `lang` for any container that doesn't update its caller. `TextWebtoonDocumentBuilder.kt`, `TextFormatReader.kt:241`, `ReflowableFormatReaders.kt:275`, `ReflowableDocument.kt:73/590`, `Fb2FormatReader.kt:650` are all callers of `buildUnifiedReaderHtmlDocument` and none of them now propagate a language.

**Suggested fix:** pick the language from `TextFormatReader.bookLanguage`/`ReflowableDocument.metadata.language` and pass it through, or hoist the lang into a shared `ReaderHtmlContext` parameter object so the 5 call sites don't each need updating. confidence: **high** (this is a partial-implementation bug, not a "duplication" bug — but the new parameter is currently only honoured by code paths that have not yet been migrated).

---

## Finding 5 — `useWideViewPort` / `loadWithOverviewMode` is now set in two opposing ways (MEDIUM)

`ReaderScreen.kt:2877-2878` explicitly sets them to `false` for paged reflowable HTML ("…Wide/overview mode turns book text into a clipped horizontal canvas on phones."). The diff at `:3171-3172` flips them to `!pagedMode` (i.e. `true` in webtoon mode) — fine, **except** `WebtoonView.kt:191-192` already does:

```kotlin
settings.loadWithOverviewMode = true
settings.useWideViewPort     = true
```

…unconditionally, and is itself a webtoon-mode WebView. The two implementations are using the same `pagedMode` flag in opposite ways, and `HtmlPageView` is the third place this is configured. There is no shared `configureWebViewForMode(webView, pagedMode)` helper.

**Suggested fix:** a single `WebViewSettings.forMode(pagedMode, isWebtoon)` (or similar) used by `HtmlPageView`, the paged-mode initialiser at `:2877`, and `WebtoonView` — so the three sites can't disagree about which mode enables wide-viewport. confidence: **medium** (the behaviour is correct today, but the next person to touch one of the three will likely break the other two).

---

## Finding 6 — `onRenderProcessGone` handler inlined in `HtmlPageView` (LOW)

`ReaderScreen.kt:3148-3160` adds a renderer-crash recovery handler that does nothing but log and return `true`. The comment says "let the reader framework handle recovery" — so this is essentially a no-op that exists only to suppress the default destroy. That's fine, but: there's no shared `WebViewClient` base in the codebase that the various `WebViewClient` overrides (e.g. `WebtoonView.kt:194`, the paged-mode client at `:2840-ish`, the HtmlPageView client) inherit from. If another WebView is later added that also wants the same protection, it will re-implement the same 12-line block.

**Suggested fix:** a `SafeWebViewClient : WebViewClient()` in `feature-reader` (or `core-ui`) that provides the default `onRenderProcessGone = true` behaviour. Not blocking for this commit. confidence: **low** (single instance so far, and the comment makes the intent clear).

---

## Finding 7 — `favicon.ico` filter is a one-liner and not worth extracting (LOW)

`ReaderScreen.kt:3136-3140` is a 4-line `if (request.url.lastPathSegment == "favicon.ico") return`. No duplication risk; flagged only because the prompt asked about render-process patterns. No action.

---

## Summary table

| # | Location | Problem | Confidence |
|---|---|---|---|
| 1 | `ReaderScreen.kt:319,332-335,376-381` vs `ReaderViewModel.kt:120,2008` vs `EpubFootnoteParser.kt:26,34` vs `FootnotePatternTest.kt:13,18` vs `MobiFormatReader.kt:325` | Footnote-prefix token list duplicated 5+ times; JS and Kotlin copies now drift | **high** |
| 2 | `EpubFormatReader.kt:1943-1961` `isFootnoteTocEntry` | Same prefix set; not updated in this commit; new tokens will leak into TOC | **high** |
| 3 | `ReaderScreen.kt:2083-2098` new `injectBodyInsetCss(horizontalPx, maxWidthPx)` | Duplicates CSS that `themeStyle` (lines 1004-1005) and `textSettingsJs` (1283-1291) already emit; 3 sites must stay in sync | **high** |
| 4 | `UnifiedReaderCssBuilder.kt:308-321` new `lang` parameter | Honoured only by callers that pass it — none of the 5 production call sites do | **high** |
| 5 | `ReaderScreen.kt:2877-2878` vs `:3171-3172` vs `WebtoonView.kt:191-192` | Wide-viewport / overview-mode set in three places with different policies; no shared `forMode()` helper | **medium** |
| 6 | `ReaderScreen.kt:3148-3160` `onRenderProcessGone` | Could move to a `SafeWebViewClient` base for future WebViews | **low** |
| 7 | `ReaderScreen.kt:3136-3140` favicon filter | No duplication, no action | **low** |

**Top three to fix:** #1 (extract a single `FootnoteRecognizer`), #3 (single `buildBodyInsetCss` helper), #4 (propagate `lang` to the 5 `buildUnifiedReaderHtmlDocument` callers).
