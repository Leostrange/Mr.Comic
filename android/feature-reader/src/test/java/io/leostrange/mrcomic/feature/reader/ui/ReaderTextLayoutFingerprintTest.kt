package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

class ReaderTextLayoutFingerprintTest {

    private val base = ReaderTextLayoutFingerprint(
        fontSize = 18,
        fontFamily = "serif",
        fontSourceUrl = "",
        lineHeight = 1.5f,
        letterSpacing = 0f,
        wordSpacing = 0f,
        paragraphSpacing = 0.5f,
        textAlign = "justify",
        bold = false,
        topPaddingPx = 48,
        bottomPaddingPx = 56,
        horizontalPaddingPx = 24,
        maxWidthPx = 0,
        pagedMode = true,
        viewportWidthPx = 1080,
        viewportHeightPx = 1920,
        isRtl = false
    )

    @Test
    fun signatureIsStableForSameLayout() {
        assertEquals(base.signature(), base.copy().signature())
    }

    @Test
    fun signatureChangesForEveryPaginationInput() {
        listOf(
            base.copy(fontSize = 19),
            base.copy(fontFamily = "sans-serif"),
            base.copy(fontSourceUrl = "reader-fonts/custom.ttf"),
            base.copy(lineHeight = 1.7f),
            base.copy(letterSpacing = 0.05f),
            base.copy(wordSpacing = 0.05f),
            base.copy(paragraphSpacing = 0.7f),
            base.copy(textAlign = "left"),
            base.copy(bold = true),
            base.copy(topPaddingPx = 49),
            base.copy(bottomPaddingPx = 57),
            base.copy(horizontalPaddingPx = 25),
            base.copy(maxWidthPx = 800),
            base.copy(pagedMode = false),
            base.copy(viewportWidthPx = 1079),
            base.copy(viewportHeightPx = 1919),
            base.copy(isRtl = true)
        ).forEach { changed ->
            assertNotEquals(base.signature(), changed.signature())
        }
    }
}
