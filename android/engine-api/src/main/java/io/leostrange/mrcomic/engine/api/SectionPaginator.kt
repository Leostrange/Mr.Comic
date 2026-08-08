package io.leostrange.mrcomic.engine.api

/**
 * A single paginated display page produced by a [SectionPaginator].
 */
data class TextPaginationSubPage(
    val html: String,
    val index: Int,
    /** Source section index before viewport sub-pagination. */
    val sectionIndex: Int = 0
)

/**
 * Result of paginating a list of logical [TextDocumentSection]s into
 * display pages.
 */
data class SectionPaginationResult(
    val sections: List<TextDocumentSection>,
    val pages: List<TextPaginationSubPage>
) {
    val pageCount: Int get() = pages.size.coerceAtLeast(1)
}

/**
 * Section-first pagination contract: splits documents by chapter/spine
 * boundaries, then lays out viewport-aware pages per section.
 *
 * Implemented by engine-formats (DocumentTextPaginator); UI features depend
 * on this interface via engine-api.
 */
interface SectionPaginator {
    suspend fun paginateSections(
        sections: List<TextDocumentSection>,
        constraints: TextPaginationConstraints
    ): SectionPaginationResult
}
