package io.leostrange.mrcomic.core.model

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderLocatorPersistenceTest {

    @Test
    fun storedLegacyCharacterPositionBecomesExplicitCanonicalCoordinates() {
        val locator = Comic(
            currentPage = 3,
            readerLocatorPosition = 450,
            readerLocatorHref = "OPS/chapter.xhtml"
        ).storedReaderLocator()

        assertEquals(3, locator?.sectionIndex)
        assertEquals(450, locator?.characterOffset)
        assertEquals(450, locator?.position)
    }

    @Test
    fun explicitCharacterOffsetWinsWhenWritingLegacyDatabaseColumn() {
        val stored = Comic().withStoredReaderLocator(
            ReaderLocator(position = 7, sectionIndex = 2, characterOffset = 900)
        )

        assertEquals(900, stored.readerLocatorPosition)
    }

    @Test
    fun rasterPositionStillUsesLegacyPositionFallback() {
        val stored = Comic().withStoredReaderLocator(ReaderLocator(position = 4, pageIndex = 4))

        assertEquals(4, stored.readerLocatorPosition)
    }
}
