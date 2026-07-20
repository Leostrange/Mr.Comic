package io.leostrange.mrcomic.engine.formats.text.pagination

import io.leostrange.mrcomic.engine.formats.text.TextDocumentSection
import io.leostrange.mrcomic.engine.formats.text.TextSectionBuilder
import org.jsoup.Jsoup

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
        var sectionIndex = 0
        while (sectionIndex < sections.size) {
            val section = sections[sectionIndex]
            val sectionPages = sectionPaginator.paginate(section.html, constraints).subPages
            val shortStandaloneSection = sectionPages.size == 1 &&
                sectionIndex + 1 < sections.size &&
                readableTextLength(sectionPages[0].html) <= SHORT_SECTION_TEXT_LIMIT &&
                isTitleOnlySection(sectionPages[0].html)
            if (shortStandaloneSection) {
                val nextSection = sections[sectionIndex + 1]
                // Re-paginate the combined source rather than appending the title to
                // an already full page from the next section.
                val mergedPages = sectionPaginator.paginate(
                    section.html + nextSection.html,
                    constraints
                ).subPages
                if (mergedPages.isNotEmpty()) {
                    mergedPages.forEach { subPage ->
                        pages += subPage.copy(index = pages.size, sectionIndex = nextSection.index)
                    }
                    sectionIndex += 2
                    continue
                }
            }
            if (sectionPages.isEmpty()) {
                pages += TextPaginationSubPage(
                    html = section.html,
                    index = pages.size,
                    sectionIndex = section.index
                )
            } else {
                sectionPages.forEach { subPage ->
                    pages += subPage.copy(index = pages.size, sectionIndex = section.index)
                }
            }
            sectionIndex++
        }
        return DocumentTextPaginationResult(
            sections = sections,
            pages = pages.ifEmpty {
                listOf(TextPaginationSubPage(html = sections.firstOrNull()?.html.orEmpty(), index = 0))
            }
        )
    }

    private fun readableTextLength(html: String): Int = runCatching {
        Jsoup.parse(html).text().trim().length
    }.getOrDefault(html.trim().length)

    private fun isTitleOnlySection(html: String): Boolean = runCatching {
        val body = Jsoup.parseBodyFragment(html).body()
        body.children().isNotEmpty() && body.children().all {
            it.normalName() in setOf("h1", "h2", "h3", "h4", "h5", "h6")
        }
    }.getOrDefault(false)

    private companion object {
        // A title-only EPUB spine item should share the following page instead of
        // producing a mostly empty page between the title and its first paragraph.
        const val SHORT_SECTION_TEXT_LIMIT = 220
    }
}

data class DocumentTextPaginationResult(
    val sections: List<TextDocumentSection>,
    val pages: List<TextPaginationSubPage>
) {
    val pageCount: Int get() = pages.size.coerceAtLeast(1)
}
