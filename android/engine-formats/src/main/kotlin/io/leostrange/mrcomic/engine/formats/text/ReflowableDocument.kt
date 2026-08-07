package io.leostrange.mrcomic.engine.formats.text

import io.leostrange.mrcomic.engine.formats.base.READER_MOBI_DOCUMENT_CSS
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import io.leostrange.mrcomic.engine.formats.base.buildUnifiedReaderHtmlDocument

// ─────────────────────────────────────────────────────────────────────────────
// Lightweight model + builder facade.
// Block-reading helpers live in ReflowableBlockReader.kt;
// pagination + layout helpers live in ReflowablePagination.kt.
// ─────────────────────────────────────────────────────────────────────────────

internal data class ReflowableDocument(
    val pages: List<String>,
    val toc: List<TocEntry> = emptyList(),
    val anchorPageIndex: Map<String, Int> = emptyMap(),
    val hrefToPage: Map<String, Int> = emptyMap(),
    val footnoteMap: Map<String, String> = emptyMap()
) {
    val pageCount: Int get() = pages.size.coerceAtLeast(1)

    fun pageAt(index: Int): String? =
        pages.getOrNull(index.coerceIn(0, (pages.size - 1).coerceAtLeast(0)))
}

internal object ReflowableDocumentBuilder {

    fun fromPlainText(text: String, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument {
        val blocks = textBlocks(text)
        return ReflowableDocument(paginateBlocks(blocks, baseCss))
    }

    fun fromHtmlBlocks(blocks: List<String>, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument {
        return ReflowableDocument(paginateBlocks(blocks, baseCss))
    }

    fun fromMarkup(markup: String, baseUrl: String?, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument {
        val normalized = renderHtmlToReaderDocument(markup, baseUrl)
        return ReflowableDocument(splitReaderDocument(normalized, baseCss))
    }

    fun error(message: String, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument =
        ReflowableDocument(
            listOf(
                buildUnifiedReaderHtmlDocument(
                    body = "<p>${escapeHtml(message)}</p>",
                    baseCss = baseCss
                )
            )
        )

    // ── Private: thin wrappers around extracted helpers ─────────────────────

    private fun textBlocks(raw: String): List<String> {
        return raw
            .replace("\r\n", "\n")
            .replace('\r', '\n')
            .split(Regex("\n\\s*\n"))
            .mapNotNull { part ->
                val trimmed = part.trim()
                if (trimmed.isBlank()) null else {
                    val merged = trimmed.replace(Regex("\\s*\\n\\s*"), " ")
                    "<p>${escapeHtml(merged)}</p>"
                }
            }
            .ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") }
    }

    private fun paginateBlocks(blocks: List<String>, baseCss: String): List<String> =
        paginateInternal(blocks, baseCss, requireMinContentBeforeSectionBreak = true)

    private fun splitReaderDocument(html: String, baseCss: String): List<String> {
        val blocks = extractReaderBlocks(html)
        return if (blocks.isEmpty()) {
            listOf(html)
        } else {
            paginateMarkupBlocks(blocks, baseCss)
        }
    }

    private fun paginateMarkupBlocks(blocks: List<String>, baseCss: String): List<String> =
        paginateInternal(blocks, baseCss, requireMinContentBeforeSectionBreak = false)

    // ── Internal section builders ───────────────────────────────────────────

    internal fun sectionsFromPlainText(
        text: String,
        baseCss: String = READER_MOBI_DOCUMENT_CSS
    ): List<TextDocumentSection> =
        sectionizeBlocks(textBlocks(text), baseCss)

    internal fun sectionsFromHtmlBlocks(
        blocks: List<String>,
        baseCss: String = READER_MOBI_DOCUMENT_CSS,
        baseUrl: String? = null
    ): List<TextDocumentSection> =
        sectionizeBlocks(blocks, baseCss, baseUrl)

    internal fun sectionsFromMarkup(
        markup: String,
        baseUrl: String?,
        baseCss: String = READER_MOBI_DOCUMENT_CSS
    ): List<TextDocumentSection> {
        val normalized = renderHtmlToReaderDocument(markup, baseUrl)
        val blocks = extractReaderBlocks(normalized)
        return if (blocks.isEmpty()) {
            listOf(
                TextDocumentSection(
                    index = 0,
                    html = normalized,
                    baseUrl = baseUrl
                )
            )
        } else {
            sectionizeBlocks(blocks, baseCss, baseUrl)
        }
    }

    // ── Shared utility ─────────────────────────────────────────────────────

    private fun escapeHtml(text: String): String = text
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
}
