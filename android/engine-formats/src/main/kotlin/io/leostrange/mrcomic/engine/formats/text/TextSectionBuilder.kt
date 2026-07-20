package io.leostrange.mrcomic.engine.formats.text

/**
 * Builds logical document sections (chapters/spine slices) without char-based PAGE splitting.
 * Viewport pagination is applied later via [io.leostrange.mrcomic.engine.formats.text.pagination.TextPaginator].
 */
object TextSectionBuilder {
    fun fromPlainText(text: String): List<TextDocumentSection> =
        ReflowableDocumentBuilder.sectionsFromPlainText(text)

    fun fromMarkup(markup: String, baseUrl: String? = null): List<TextDocumentSection> =
        ReflowableDocumentBuilder.sectionsFromMarkup(markup, baseUrl)
}
