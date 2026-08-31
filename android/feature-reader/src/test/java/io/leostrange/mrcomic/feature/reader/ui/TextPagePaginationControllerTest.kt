package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

class TextPagePaginationControllerTest {

    @Test
    fun textPagePaginationKeyChangesWithTypography() {
        val base = ReaderUiState(textFontSize = 18, textLineHeight = 1.6f)
        val changed = base.copy(textFontSize = 20)
        val keyBase = base.textPagePaginationKey(viewportWidthPx = 1080, viewportHeightPx = 1920)
        val keyChanged = changed.textPagePaginationKey(viewportWidthPx = 1080, viewportHeightPx = 1920)
        assertNotEquals(keyBase, keyChanged)
    }

    @Test
    fun toTextPaginationConstraintsUsesViewportAndTypography() {
        val state = ReaderUiState(textFontSize = 22, textLineHeight = 1.8f, textBold = true)
        val constraints = state.toTextPaginationConstraints(
            viewportWidthPx = 720,
            viewportHeightPx = 1280
        )
        assertEquals(720, constraints.viewportWidthPx)
        assertEquals(1280, constraints.viewportHeightPx)
        assertEquals(22, constraints.fontSizeSp)
        assertEquals(1.8f, constraints.lineHeight)
        assertEquals(true, constraints.bold)
    }

    @Test
    fun landscapeConstraintsDoNotGrowBeyondMeasuredViewport() {
        val constraints = ReaderUiState().toTextPaginationConstraints(
            viewportWidthPx = 800,
            viewportHeightPx = 360,
        )

        assertEquals(360, constraints.viewportHeightPx)
    }
}
