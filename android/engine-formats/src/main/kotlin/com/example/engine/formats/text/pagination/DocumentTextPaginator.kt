package com.example.engine.formats.text.pagination

import com.example.engine.formats.text.TextDocumentSection
import com.example.engine.formats.text.TextSectionBuilder

/**
 * Section-first pagination pipeline: split by chapter/spine boundaries, then layout units per section.
 */
class DocumentTextPaginator(
    private val sectionPaginator: TextPaginator = LayoutUnitTextPaginator()
) {
    suspend fun paginateMarkup(
        markup: String,
        baseUrl: String?,
        constraints: TextPaginationConstraints
    ): DocumentTextPaginationResult {
        val sections = TextSectionBuilder.fromMarkup(markup, baseUrl)
        return paginateSections(sections, constraints)
    }

    suspend fun paginatePlainText(
        text: String,
        constraints: TextPaginationConstraints
    ): DocumentTextPaginationResult {
        val sections = TextSectionBuilder.fromPlainText(text)
        return paginateSections(sections, constraints)
    }

    suspend fun paginateSections(
        sections: List<TextDocumentSection>,
        constraints: TextPaginationConstraints
    ): DocumentTextPaginationResult {
        val pages = mutableListOf<TextPaginationSubPage>()
        sections.forEach { section ->
            val sectionPages = sectionPaginator.paginate(section.html, constraints).subPages
            sectionPages.forEach { subPage ->
                pages += subPage.copy(index = pages.size, sectionIndex = section.index)
            }
            if (sectionPages.isEmpty()) {
                pages += TextPaginationSubPage(
                    html = section.html,
                    index = pages.size,
                    sectionIndex = section.index
                )
            }
        }
        return DocumentTextPaginationResult(
            sections = sections,
            pages = pages.ifEmpty {
                listOf(TextPaginationSubPage(html = sections.firstOrNull()?.html.orEmpty(), index = 0))
            }
        )
    }
}

data class DocumentTextPaginationResult(
    val sections: List<TextDocumentSection>,
    val pages: List<TextPaginationSubPage>
) {
    val pageCount: Int get() = pages.size.coerceAtLeast(1)
}
