package com.example.engine.formats.text.pagination

/**
 * Viewport and typography inputs for deterministic text sub-page calculation.
 */
data class TextPaginationConstraints(
    val viewportWidthPx: Int,
    val viewportHeightPx: Int,
    val contentTopInsetPx: Int = 0,
    val contentBottomInsetPx: Int = 0,
    val fontSizeSp: Int = 18,
    val lineHeight: Float = 1.6f,
    val letterSpacingEm: Float = 0f,
    val wordSpacingEm: Float = 0f,
    val paragraphSpacingEm: Float = 0.2f,
    val bold: Boolean = false
)

data class TextPaginationSubPage(
    val html: String,
    val index: Int,
    /** Source section index before viewport sub-pagination. */
    val sectionIndex: Int = 0
)

data class TextPaginationResult(
    val subPages: List<TextPaginationSubPage>
) {
    val subPageCount: Int get() = subPages.size.coerceAtLeast(1)
}

interface TextPaginator {
    suspend fun paginate(
        sectionHtml: String,
        constraints: TextPaginationConstraints
    ): TextPaginationResult
}

/**
 * Deterministic section splitter used until viewport-measured pagination is available.
 * Keeps orphan/widow protection from [ReflowableDocumentBuilder].
 */
class LayoutUnitTextPaginator : TextPaginator {
    override suspend fun paginate(
        sectionHtml: String,
        constraints: TextPaginationConstraints
    ): TextPaginationResult {
        val document = com.example.engine.formats.text.ReflowableDocumentBuilder.fromMarkup(
            markup = sectionHtml,
            baseUrl = null
        )
        val subPages = document.pages.mapIndexed { index, pageHtml ->
            TextPaginationSubPage(html = pageHtml, index = index)
        }
        return TextPaginationResult(subPages = subPages.ifEmpty {
            listOf(TextPaginationSubPage(html = sectionHtml, index = 0))
        })
    }
}
