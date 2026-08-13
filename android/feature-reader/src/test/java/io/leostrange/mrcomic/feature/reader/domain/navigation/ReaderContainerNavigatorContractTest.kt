package io.leostrange.mrcomic.feature.reader.domain.navigation

import io.leostrange.mrcomic.core.model.ReaderLocator
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderContainerNavigatorContractTest {

    private val bounds = ReaderNavigationBounds(
        sectionCount = 4,
        pageCount = 6,
        hrefToSection = mapOf("ops/chapter-2.xhtml" to 2),
        pagesPerSection = mapOf(0 to 2, 1 to 3, 2 to 2, 3 to 1)
    )

    @Test
    fun allContainersRoundTripTheirCanonicalPosition() {
        val cases = listOf(
            TextPageNavigator() to ReaderContainerPosition.TextPage(2, 1, 1, 430, 0.55, "OPS/chapter-2.xhtml", "p4"),
            TextWebtoonNavigator() to ReaderContainerPosition.TextWebtoon(2, 430, 0.55, "OPS/chapter-2.xhtml", "p4"),
            RasterPageNavigator() to ReaderContainerPosition.RasterPage(4),
            RasterWebtoonNavigator() to ReaderContainerPosition.RasterWebtoon(4)
        )

        cases.forEach { (navigator, position) ->
            val resolved = navigator.resolve(navigator.toLocator(position), bounds)
            assertEquals(position, resolved.position)
            assertEquals(ReaderNavigationResolutionSource.EXACT, resolved.source)
        }
    }

    @Test
    fun textResolutionPrefersHrefThenSectionThenProgression() {
        val navigator = TextWebtoonNavigator()

        val byHref = navigator.resolve(
            ReaderLocator(href = "OPS/chapter-2.xhtml", sectionIndex = 0, progression = 0.1),
            bounds
        )
        val bySection = navigator.resolve(ReaderLocator(sectionIndex = 3, progression = 0.1), bounds)
        val byProgression = navigator.resolve(ReaderLocator(progression = 0.75), bounds)

        assertEquals(2, (byHref.position as ReaderContainerPosition.TextWebtoon).sectionIndex)
        assertEquals(ReaderNavigationResolutionSource.HREF, byHref.source)
        assertEquals(3, (bySection.position as ReaderContainerPosition.TextWebtoon).sectionIndex)
        assertEquals(ReaderNavigationResolutionSource.SECTION, bySection.source)
        assertEquals(3, (byProgression.position as ReaderContainerPosition.TextWebtoon).sectionIndex)
        assertEquals(ReaderNavigationResolutionSource.PROGRESSION, byProgression.source)
    }

    @Test
    fun pageAndSectionCoordinatesClampToChangedDocumentBounds() {
        val raster = RasterPageNavigator().resolve(ReaderLocator(pageIndex = 99), bounds)
        val text = TextPageNavigator().resolve(
            ReaderLocator(sectionIndex = 99, splitIndex = 4, pageInSplit = 99, characterOffset = 12),
            bounds
        )

        assertEquals(5, (raster.position as ReaderContainerPosition.RasterPage).pageIndex)
        assertEquals(ReaderNavigationResolutionSource.CLAMPED, raster.source)
        assertEquals(3, (text.position as ReaderContainerPosition.TextPage).sectionIndex)
        assertEquals(0, (text.position as ReaderContainerPosition.TextPage).pageInSplit)
        assertEquals(ReaderNavigationResolutionSource.CLAMPED, text.source)
    }

    @Test
    fun nextAndPreviousCrossTextSectionBoundaryWithoutLosingDirection() {
        val navigator = TextPageNavigator()
        val lastPageInSection = ReaderContainerPosition.TextPage(sectionIndex = 1, pageInSplit = 2)

        val next = navigator.next(lastPageInSection, bounds)
        val previous = navigator.previous(next, bounds)

        assertEquals(ReaderContainerPosition.TextPage(sectionIndex = 2), next)
        assertEquals(lastPageInSection, previous)
    }

    @Test
    fun rasterNavigationStopsAtBookEdges() {
        val navigator = RasterWebtoonNavigator()

        assertEquals(
            ReaderContainerPosition.RasterWebtoon(0),
            navigator.previous(ReaderContainerPosition.RasterWebtoon(0), bounds)
        )
        assertEquals(
            ReaderContainerPosition.RasterWebtoon(5),
            navigator.next(ReaderContainerPosition.RasterWebtoon(5), bounds)
        )
    }

    @Test
    fun emptyBoundsResolveToSafeStart() {
        val empty = ReaderNavigationBounds(sectionCount = 0, pageCount = 0)
        val result = TextWebtoonNavigator().resolve(ReaderLocator(sectionIndex = 5), empty)

        assertEquals(ReaderContainerPosition.TextWebtoon(0), result.position)
        assertEquals(ReaderNavigationResolutionSource.START, result.source)
        assertTrue(result.position is ReaderContainerPosition.TextWebtoon)
    }
}
