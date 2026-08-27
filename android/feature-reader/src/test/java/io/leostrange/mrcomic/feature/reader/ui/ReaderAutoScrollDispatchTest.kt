package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderAutoScrollDispatchTest {

    @Test
    fun `page countdown covers raster and text page containers only`() {
        assertTrue(readerUsesAutoPageCountdown(ReaderContainerKind.RASTER_PAGE))
        assertTrue(readerUsesAutoPageCountdown(ReaderContainerKind.TEXT_PAGE))
        assertFalse(readerUsesAutoPageCountdown(ReaderContainerKind.RASTER_WEBTOON))
        assertFalse(readerUsesAutoPageCountdown(ReaderContainerKind.TEXT_WEBTOON))
    }

    @Test
    fun `text page countdown turns the visual WebView page before the next section`() {
        val turns = mutableListOf<Int>()

        val advanced = requestReaderAutoPageAdvance(
            containerKind = ReaderContainerKind.TEXT_PAGE,
            currentPage = 2,
            totalPages = 5,
            sectionCurrentPage = 3,
            sectionPageCount = 8,
            pageStep = 1,
            pagedColumnTurn = { turns.add(it) },
            onRasterPageTurn = { error("raster callback must not run") },
        )

        assertTrue(advanced)
        assertEquals(listOf(1), turns)
    }

    @Test
    fun `text page countdown stops at the final visual page of the final section`() {
        var turned = false

        val advanced = requestReaderAutoPageAdvance(
            containerKind = ReaderContainerKind.TEXT_PAGE,
            currentPage = 4,
            totalPages = 5,
            sectionCurrentPage = 7,
            sectionPageCount = 8,
            pageStep = 1,
            pagedColumnTurn = { turned = true },
            onRasterPageTurn = { turned = true },
        )

        assertFalse(advanced)
        assertFalse(turned)
    }

    @Test
    fun `text webtoon receives the same calibrated pixel speed as raster webtoon`() {
        assertEquals(
            ReaderAutoScrollPrecision.webtoonPixelsPerSecond(30f),
            readerTextWebtoonPixelsPerSecond(
                containerKind = ReaderContainerKind.TEXT_WEBTOON,
                enabled = true,
                paused = false,
                speed = 30f,
            ),
            0f,
        )
        assertEquals(
            0f,
            readerTextWebtoonPixelsPerSecond(
                containerKind = ReaderContainerKind.TEXT_PAGE,
                enabled = true,
                paused = false,
                speed = 30f,
            ),
            0f,
        )
        assertEquals(
            0f,
            readerTextWebtoonPixelsPerSecond(
                containerKind = ReaderContainerKind.TEXT_WEBTOON,
                enabled = true,
                paused = true,
                speed = 30f,
            ),
            0f,
        )
    }

    @Test
    fun `subpixel text webtoon speed accumulates instead of rounding to zero`() {
        val firstFrame = accumulateReaderAutoScrollPixels(
            remainder = 0f,
            pixelsPerSecond = 45f,
            elapsedSeconds = 1f / 60f,
        )
        val secondFrame = accumulateReaderAutoScrollPixels(
            remainder = firstFrame.remainder,
            pixelsPerSecond = 45f,
            elapsedSeconds = 1f / 60f,
        )

        assertEquals(0, firstFrame.wholePixels)
        assertEquals(1, secondFrame.wholePixels)
        assertEquals(0.5f, secondFrame.remainder, 0.001f)
    }

    @Test
    fun `auto scroll dock height is always zero — page turn uses timer, not scroll`() {
        ReaderContainerKind.entries.forEach { kind ->
            listOf(true, false).forEach { chromeHidden ->
                listOf(true, false).forEach { enabled ->
                    assertEquals(
                        "kind=$kind chromeHidden=$chromeHidden enabled=$enabled",
                        0,
                        readerAutoScrollDockHeightDp(
                            containerKind = kind,
                            chromeHidden = chromeHidden,
                            enabled = enabled,
                        ),
                    )
                }
            }
        }
    }

    @Test
    fun `every supported format and reading mode resolves to an auto scroll container`() {
        ComicFormat.entries.forEach { format ->
            ReadingMode.entries.forEach { mode ->
                listOf(false, true).forEach { rendersHtml ->
                    val container = resolveReaderContainerKind(format, mode, rendersHtml)
                    assertTrue(
                        "format=$format mode=$mode html=$rendersHtml container=$container",
                        readerContainerSupportsAutoScroll(container),
                    )
                }
            }
        }
    }
}
