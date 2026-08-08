package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import org.junit.Assert.assertEquals
import org.junit.Test

class TextReaderNavigationTest {

    private fun paginationController(): TextPagePaginationController =
        TextPagePaginationController(
            object : io.leostrange.mrcomic.engine.api.SectionPaginator {
                override suspend fun paginateSections(
                    sections: List<io.leostrange.mrcomic.engine.api.TextDocumentSection>,
                    constraints: io.leostrange.mrcomic.engine.api.TextPaginationConstraints
                ): io.leostrange.mrcomic.engine.api.SectionPaginationResult =
                    io.leostrange.mrcomic.engine.api.SectionPaginationResult(
                        sections = sections,
                        pages = sections.mapIndexed { index, section ->
                            io.leostrange.mrcomic.engine.api.TextPaginationSubPage(section.html, index, index)
                        }
                    )
            }
        )

    @Test
    fun resolveTextPosition_clampsNegativeValues() {
        val resolved = TextReaderNavigation.resolveTextPosition(
            enginePage = -1,
            splitIndex = -2,
            pageInSplit = -3
        )
        assertEquals(0, resolved.enginePage)
        assertEquals(0, resolved.splitIndex)
        assertEquals(0, resolved.pageInSplit)
    }

    @Test
    fun resolveNavigationPagePassthroughWhenPaginationNotReady() {
        val controller = TextReaderController(
            TextWebtoonSessionController(
                scope = kotlinx.coroutines.CoroutineScope(kotlinx.coroutines.Dispatchers.Unconfined),
                builder = WebtoonDocumentBuilder { pages ->
                    TextWebtoonCachedDocument(html = pages.joinToString { it.html }, assetBasePath = null)
                }
            ),
            paginationController()
        )
        val state = ReaderUiState(
            readerContainerKind = ReaderContainerKind.TEXT_PAGE,
            readerRendersHtmlContent = true
        )
        assertEquals(
            5,
            TextReaderNavigation.resolveNavigationPage(
                state = state,
                controller = controller,
                page = 5,
                progressSource = ReaderNavigationProgressSource.JUMP
            )
        )
    }

    @Test
    fun enginePageForUiPagePassthroughWhenPaginationNotReady() {
        val controller = TextReaderController(
            TextWebtoonSessionController(
                scope = kotlinx.coroutines.CoroutineScope(kotlinx.coroutines.Dispatchers.Unconfined),
                builder = WebtoonDocumentBuilder { pages ->
                    TextWebtoonCachedDocument(html = pages.joinToString { it.html }, assetBasePath = null)
                }
            ),
            paginationController()
        )
        val state = ReaderUiState(
            readerContainerKind = ReaderContainerKind.TEXT_PAGE,
            readerRendersHtmlContent = true
        )
        assertEquals(
            3,
            TextReaderNavigation.enginePageForUiPage(state, controller, page = 3)
        )
    }
}
