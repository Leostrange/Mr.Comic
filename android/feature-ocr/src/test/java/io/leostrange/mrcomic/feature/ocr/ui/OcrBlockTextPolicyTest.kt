package io.leostrange.mrcomic.feature.ocr.ui

import io.leostrange.mrcomic.core.model.OcrBlock
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class OcrBlockTextPolicyTest {

    @Test
    fun `cleaned selected text takes precedence over raw OCR text`() {
        assertEquals(
            "cleaned text",
            selectedBlockTranslationInput(block("raw   OCR"), OcrUiState(selectedBlockCleanedText = "cleaned text"))
        )
    }

    @Test
    fun `fallback translation input normalizes OCR whitespace`() {
        assertEquals(
            "raw OCR text",
            selectedBlockTranslationInput(block("raw\n OCR   text"), OcrUiState())
        )
    }

    @Test
    fun `cleanup joins latin wrapped lines and removes punctuation whitespace`() {
        assertEquals("wellformed, text!", cleanupOcrText(" well-\nformed ,  text ! ", "en"))
    }

    @Test
    fun `cleanup removes CJK inter-character whitespace`() {
        assertEquals("日本語テキスト", cleanupOcrText("日本 語\nテキスト", "ja"))
    }

    @Test
    fun `context preview uses visual order and ignores blank neighbours`() {
        val context = buildSelectedBlockContextPreview(
            selectedBlockId = "selected",
            recognizedBlocks = listOf(
                block("after", id = "after", top = 30f),
                block("", id = "blank", top = 10f),
                block("before", id = "before", top = 5f),
                block("selected", id = "selected", top = 20f)
            )
        )

        assertEquals("before", context.first)
        assertEquals("after", context.second)
    }

    @Test
    fun `context preview is empty for unknown selected id`() {
        val context = buildSelectedBlockContextPreview("missing", listOf(block("text")))

        assertNull(context.first)
        assertNull(context.second)
    }

    private fun block(text: String, id: String = "block", top: Float = 0f): OcrBlock = OcrBlock(
        id = id,
        pageId = "page",
        bboxLeft = 0f,
        bboxTop = top,
        bboxWidth = 10f,
        bboxHeight = 10f,
        textOriginal = text,
        textNormalized = text
    )
}
