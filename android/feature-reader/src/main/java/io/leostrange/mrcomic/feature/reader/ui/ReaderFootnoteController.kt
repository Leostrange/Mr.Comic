package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.feature.reader.domain.enums.FootnotePresentation
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.engine.api.FormatReader
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update

/**
 * Handles footnote detection, extraction, and display for the reader.
 *
 * Extracted from ReaderViewModel to reduce its size.
 * Manages footnote popup state and anchor click handling.
 */
internal class ReaderFootnoteController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val formatReader: () -> FormatReader?,
    private val navigateTo: (Int, ReaderNavigationProgressSource) -> Unit,
    private val enginePageForUiPage: (Int) -> Int,
    private val shouldBlockInlineHtmlChapterNavigation: (containerKind: ReaderContainerKind?, readingMode: ReadingMode?, hrefFilePart: String, currentAssetBasePath: String?) -> Boolean
) {
    /**
     * Called by the WebView JS bridge when the user taps an anchor link.
     *
     * [href] may be:
     *  - a bare anchor id (`FbAutId_1`, `note_42`) — footnote lookup
     *  - `#fragment` — footnote lookup by fragment
     *  - `chapter.xhtml` — navigate to the page for that file
     *  - `chapter.xhtml#fragment` — navigate to page for that file; footnote lookup for fragment
     */
    fun onAnchorClick(href: String) {
        val rawHref = href.trim()
        val explicitlyFootnote = rawHref.startsWith("noteref://", ignoreCase = true) ||
            rawHref.startsWith("noteref:", ignoreCase = true)
        val cleanHref = normalizeReaderAnchorHref(rawHref).trimStart('/')
        val hashIdx = cleanHref.indexOf('#')
        val filePart = if (hashIdx >= 0) cleanHref.substring(0, hashIdx) else cleanHref
        val fragPart = if (hashIdx >= 0) cleanHref.substring(hashIdx + 1) else cleanHref

        if (explicitlyFootnote || looksLikeReaderFootnoteAnchor(fragPart.ifBlank { cleanHref })) {
            val footnoteCandidates = readerFootnoteCandidates(cleanHref, fragPart)
            val footnoteText = footnoteCandidates.firstNotNullOfOrNull { candidate ->
                formatReader()?.getFootnoteText(candidate)
            } ?: extractCurrentHtmlFootnote(fragPart.ifBlank { cleanHref }, cleanHref)
            if (!footnoteText.isNullOrBlank()) {
                showFootnotePopup(footnoteText)
                return
            }
            if (explicitlyFootnote) return
        }

        // 2. Try page navigation for cross-file links and internal document anchors.
        // For bare "#fragment" links inside the current page we avoid reloading the same
        // page so the WebView can keep its native in-page scroll behaviour.
        if ((filePart.isNotBlank() && filePart.contains('.')) || cleanHref.startsWith("#") || cleanHref.contains("#")) {
            if (shouldBlockInlineHtmlChapterNavigation(
                    containerKind = _uiState.value.readerContainerKind,
                    readingMode = _uiState.value.readingMode,
                    hrefFilePart = filePart,
                    currentAssetBasePath = _uiState.value.htmlAssetBasePath
                )
            ) {
                return
            }
             val pageIdx = formatReader()?.resolveHrefToPage(cleanHref)
             if (pageIdx != null && pageIdx >= 0) {
                 if (pageIdx != enginePageForUiPage(_uiState.value.currentPage)) {
                     if (fragPart.isNotBlank()) {
                         _uiState.update { it.copy(pendingScrollToAnchor = fragPart) }
                     }
                     navigateTo(pageIdx, ReaderNavigationProgressSource.JUMP)
                 }
                 return
             }
        }

        // 3. Last-resort HTML fallback: look for the anchor inside the current page HTML.
        // Only treat elements with footnote-like id/class patterns as popups; plain headings
        // and chapter anchors are skipped so they don't produce false footnote popups.
        val anchorId = fragPart.ifBlank { cleanHref }
        val text = formatReader()?.getFootnoteText(anchorId)
            ?: extractCurrentHtmlFootnote(anchorId, cleanHref)
            ?: return
        if (text.isBlank()) return
        showFootnotePopup(text)
    }

    private fun readerFootnoteCandidates(cleanHref: String, fragPart: String): List<String> {
        return ReaderFootnoteAnchorPolicy.lookupCandidates(cleanHref, fragPart)
    }

    private fun looksLikeReaderFootnoteAnchor(anchor: String): Boolean {
        return ReaderFootnoteAnchorPolicy.isFootnoteAnchor(anchor)
    }

    private fun extractCurrentHtmlFootnote(anchorId: String, href: String): String? {
        val currentHtml = _uiState.value.currentHtmlContent ?: return null
        val fragment = href.substringAfter('#', "")
            .trim()
            .ifBlank { anchorId.trimStart('#').trim() }
        if (fragment.isBlank()) return null

        // Only treat elements as footnotes if the anchor ID looks like a footnote/note,
        // not a chapter heading (e.g. "txt-chapter-1", "chapter_1" etc.)
        val isFootnoteAnchor = FOOTNOTE_MARKER_RE.containsMatchIn(fragment) ||
            fragment.matches(Regex("""^fn[-_]?\d+$""", RegexOption.IGNORE_CASE)) ||
            fragment.matches(Regex("""^\d+$"""))
        if (!isFootnoteAnchor) return null

        val escapedFragment = Regex.escape(fragment)
        val directBlock = Regex(
            """<([a-z0-9:_-]+)\b(?=[^>]*(?:id|name)\s*=\s*["']$escapedFragment["'])[^>]*>(.*?)</\1>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        ).find(currentHtml)?.groupValues?.getOrNull(2)?.trim()
        if (!directBlock.isNullOrBlank()) {
            return directBlock
        }

        val anchoredParagraph = Regex(
            """<a\b(?=[^>]*(?:id|name)\s*=\s*["']$escapedFragment["'])[^>]*>\s*</a>\s*(.*?)</(p|div|li|aside|blockquote|section)>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        ).find(currentHtml)?.groupValues?.getOrNull(1)?.trim()
        return anchoredParagraph?.takeIf { it.isNotBlank() }
    }

    private fun showFootnotePopup(html: String) {
        val plain = ReaderFootnotePopupPolicy.toPopupText(html) ?: return
        _uiState.update {
            it.copy(
                footnotePopup = FootnotePopup(plain),
                footnotePresentation = FootnotePresentation.PEEK
            )
        }
    }

    /** Shows a footnote popup directly from inline EPUB metadata like anchor title="...". */
    fun showInlineFootnote(text: String) {
        val plain = ReaderFootnotePopupPolicy.toPopupText(text) ?: return
        _uiState.update {
            it.copy(
                footnotePopup = FootnotePopup(plain),
                footnotePresentation = FootnotePresentation.PEEK
            )
        }
    }

    /** Dismisses the footnote popup without navigating anywhere. */
    fun dismissFootnote() = _uiState.update {
        it.copy(footnotePopup = null, footnotePresentation = FootnotePresentation.PEEK)
    }

    fun expandFootnote() = _uiState.update {
        it.copy(footnotePresentation = FootnotePresentation.EXPANDED)
    }

    fun collapseFootnote() = _uiState.update {
        it.copy(footnotePresentation = FootnotePresentation.PEEK)
    }

    companion object {
        private val FOOTNOTE_MARKER_RE = Regex(
            """(?:^|[-_])(?:fn|footnote|note|endnote|ref|annotation)(?:[-_]|$|\d)""",
            RegexOption.IGNORE_CASE
        )

        /** Normalizes noteref:// and bare anchor hrefs to a consistent form. */
        private fun normalizeReaderAnchorHref(href: String): String {
            val h = href.trim()
            if (h.startsWith("noteref://", ignoreCase = true)) {
                return h.removePrefix("noteref://")
            }
            if (h.startsWith("noteref:", ignoreCase = true)) {
                return h.removePrefix("noteref:")
            }
            return h
        }
    }
}
