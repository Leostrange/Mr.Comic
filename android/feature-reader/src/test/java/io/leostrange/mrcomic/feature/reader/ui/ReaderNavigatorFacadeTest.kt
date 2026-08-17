package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderContainerPosition
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderNavigationBounds
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderNavigatorFacadeTest {

    @Test
    fun `text mode round trip keeps semantic section and character offset`() {
        val pageLocator = ReaderNavigatorFacade.locator(
            kind = ReaderContainerKind.TEXT_PAGE,
            primaryIndex = 4,
            pageInSection = 2,
            characterOffset = 480
        )
        val bounds = ReaderNavigationBounds(sectionCount = 10, pageCount = 10)

        val webtoon = ReaderNavigatorFacade.resolve(
            pageLocator,
            ReaderContainerKind.TEXT_WEBTOON,
            bounds
        ).position as ReaderContainerPosition.TextWebtoon
        val webtoonLocator = ReaderNavigatorFacade.locator(
            kind = ReaderContainerKind.TEXT_WEBTOON,
            primaryIndex = webtoon.sectionIndex,
            characterOffset = webtoon.characterOffset
        )
        val pageAgain = ReaderNavigatorFacade.resolve(
            webtoonLocator,
            ReaderContainerKind.TEXT_PAGE,
            bounds
        ).position as ReaderContainerPosition.TextPage

        assertEquals(4, pageAgain.sectionIndex)
        assertEquals(480, pageAgain.characterOffset)
    }

    @Test
    fun `raster mode round trip keeps exact page`() {
        val locator = ReaderNavigatorFacade.locator(ReaderContainerKind.RASTER_PAGE, 17)
        val bounds = ReaderNavigationBounds(sectionCount = 0, pageCount = 30)

        val webtoon = ReaderNavigatorFacade.resolve(
            locator,
            ReaderContainerKind.RASTER_WEBTOON,
            bounds
        )

        assertEquals(17, ReaderNavigatorFacade.primaryIndex(webtoon.position))
    }

    @Test
    fun `readium epub mode round trip keeps section index`() {
        val locator = ReaderNavigatorFacade.locator(
            kind = ReaderContainerKind.READIUM_EPUB,
            primaryIndex = 3,
            pageInSection = 1,
            characterOffset = 120
        )
        val bounds = ReaderNavigationBounds(sectionCount = 10, pageCount = 10)

        val resolved = ReaderNavigatorFacade.resolve(
            locator,
            ReaderContainerKind.READIUM_EPUB,
            bounds
        )

        assertEquals(3, ReaderNavigatorFacade.primaryIndex(resolved.position))
    }
}

