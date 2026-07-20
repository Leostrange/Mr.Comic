package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderOpeningModePolicyTest {

    @Test
    fun resolve_keepsVerticalModeForHtmlTextContent() {
        assertEquals(
            ReadingMode.WEBTOON,
            ReaderOpeningModePolicy.resolve(
                readerRendersHtmlContent = true,
                currentMode = ReadingMode.WEBTOON,
                portraitMode = ReadingMode.PAGE_LTR,
                portraitPagedMode = ReadingMode.PAGE_RTL,
                isLandscape = true,
                landscapeSpreadEnabled = true
            )
        )
    }

    @Test
    fun resolve_restoresPortraitPagedModeForHtmlContentFromSpread() {
        assertEquals(
            ReadingMode.PAGE_RTL,
            ReaderOpeningModePolicy.resolve(
                readerRendersHtmlContent = true,
                currentMode = ReadingMode.DUAL_PAGE,
                portraitMode = ReadingMode.PAGE_RTL,
                portraitPagedMode = ReadingMode.PAGE_RTL,
                isLandscape = true,
                landscapeSpreadEnabled = true
            )
        )
    }

    @Test
    fun resolve_usesLandscapeSpreadOnlyForPagedPortraitModes() {
        assertEquals(
            ReadingMode.DUAL_PAGE,
            ReaderOpeningModePolicy.resolve(
                readerRendersHtmlContent = false,
                currentMode = ReadingMode.PAGE_LTR,
                portraitMode = ReadingMode.PAGE_LTR,
                portraitPagedMode = ReadingMode.PAGE_LTR,
                isLandscape = true,
                landscapeSpreadEnabled = true
            )
        )
        assertEquals(
            ReadingMode.WEBTOON,
            ReaderOpeningModePolicy.resolve(
                readerRendersHtmlContent = false,
                currentMode = ReadingMode.WEBTOON,
                portraitMode = ReadingMode.WEBTOON,
                portraitPagedMode = ReadingMode.PAGE_LTR,
                isLandscape = true,
                landscapeSpreadEnabled = true
            )
        )
    }

    @Test
    fun resolve_restoresPortraitModeWhenSpreadIsNoLongerApplicable() {
        assertEquals(
            ReadingMode.PAGE_LTR,
            ReaderOpeningModePolicy.resolve(
                readerRendersHtmlContent = false,
                currentMode = ReadingMode.DUAL_PAGE,
                portraitMode = ReadingMode.PAGE_LTR,
                portraitPagedMode = ReadingMode.PAGE_RTL,
                isLandscape = false,
                landscapeSpreadEnabled = true
            )
        )
    }
}
