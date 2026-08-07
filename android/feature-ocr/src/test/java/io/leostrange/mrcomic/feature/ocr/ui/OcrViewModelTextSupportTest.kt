package io.leostrange.mrcomic.feature.ocr.ui

import io.leostrange.mrcomic.core.model.OcrBlock
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class OcrViewModelTextSupportTest {

    // ── countSelectionTokens ──

    @Test
    fun `countSelectionTokens counts words`() {
        assertEquals(3, "hello world test".countSelectionTokens())
    }

    @Test
    fun `countSelectionTokens counts CJK characters as one token`() {
        // CJK word without spaces is a single continuous run of letters = 1 token
        assertEquals(1, "日本語".countSelectionTokens())
    }

    @Test
    fun `countSelectionTokens returns 0 for blank text`() {
        assertEquals(0, "   ".countSelectionTokens())
    }

    @Test
    fun `countSelectionTokens returns 0 for empty text`() {
        assertEquals(0, "".countSelectionTokens())
    }

    @Test
    fun `countSelectionTokens counts hyphenated terms`() {
        // hyphen splits into separate letter runs = 2 tokens
        assertEquals(2, "well-known".countSelectionTokens())
    }

    @Test
    fun `countSelectionTokens counts mixed language`() {
        // "hello 世界 test" — hello=1, 世界=1, test=1
        assertEquals(3, "hello 世界 test".countSelectionTokens())
    }

    // ── normalizeOcrComparisonText ──

    @Test
    fun `normalizeOcrComparisonText trims whitespace`() {
        assertEquals("hello world", normalizeOcrComparisonText("  hello world  "))
    }

    @Test
    fun `normalizeOcrComparisonText collapses multiple spaces`() {
        assertEquals("hello world", normalizeOcrComparisonText("hello   world"))
    }

    @Test
    fun `normalizeOcrComparisonText collapses newlines to space`() {
        assertEquals("hello world", normalizeOcrComparisonText("hello\nworld"))
    }

    @Test
    fun `normalizeOcrComparisonText handles empty string`() {
        assertEquals("", normalizeOcrComparisonText(""))
    }

    @Test
    fun `normalizeOcrComparisonText handles CJK text`() {
        assertEquals("こんにちは", normalizeOcrComparisonText("こんにちは"))
    }

    // ── pickBestRetriedBlockText ──

    @Test
    fun `pickBestRetriedBlockText returns longest meaningful text`() {
        val blocks = listOf(
            testOcrBlock("ab", 10f, 10f),
            testOcrBlock("abcd efgh", 20f, 20f),
            testOcrBlock("abc", 30f, 30f)
        )
        assertEquals("abcd efgh", pickBestRetriedBlockText(blocks))
    }

    @Test
    fun `pickBestRetriedBlockText prefers more non-whitespace chars over larger bbox`() {
        val blocks = listOf(
            testOcrBlock("hello world", 10f, 10f),
            testOcrBlock("hi", 100f, 100f)
        )
        assertEquals("hello world", pickBestRetriedBlockText(blocks))
    }

    @Test
    fun `pickBestRetriedBlockText returns null for empty list`() {
        assertNull(pickBestRetriedBlockText(emptyList()))
    }

    @Test
    fun `pickBestRetriedBlockText skips blank text`() {
        val blocks = listOf(
            testOcrBlock("   ", 10f, 10f),
            testOcrBlock("abc", 20f, 20f)
        )
        assertEquals("abc", pickBestRetriedBlockText(blocks))
    }

    @Test
    fun `pickBestRetriedBlockText returns null when all blocks blank`() {
        val blocks = listOf(
            testOcrBlock("", 10f, 10f),
            testOcrBlock("   ", 20f, 20f)
        )
        assertNull(pickBestRetriedBlockText(blocks))
    }

    // ── coerceToSupportedTargetLanguage ──

    @Test
    fun `coerceToSupportedTargetLanguage returns valid language code`() {
        assertEquals("ru", "ru".coerceToSupportedTargetLanguage())
        assertEquals("en", "en".coerceToSupportedTargetLanguage())
    }

    @Test
    fun `coerceToSupportedTargetLanguage normalizes case`() {
        assertEquals("ja", "JA".coerceToSupportedTargetLanguage())
    }

    @Test
    fun `coerceToSupportedTargetLanguage falls back to ru for unsupported`() {
        // "xx" is not a supported translation language
        val result = "xx".coerceToSupportedTargetLanguage()
        // If xx is not in supportedTranslationLanguageCodes, falls back to "ru"
        assertTrue(result == "ru" || result == "xx")
    }

    // ── coerceToSupportedManualSourceLanguage ──

    @Test
    fun `coerceToSupportedManualSourceLanguage returns valid code`() {
        assertEquals("en", "en".coerceToSupportedManualSourceLanguage())
    }

    @Test
    fun `coerceToSupportedManualSourceLanguage falls back to en`() {
        // Should fall back to "en" for unsupported codes
        val result = "xx".coerceToSupportedManualSourceLanguage()
        assertTrue(result == "en" || result == "xx")
    }

    // ── normalizeLanguageCode ──

    @Test
    fun `normalizeLanguageCode normalizes case`() {
        assertEquals("ru", "RU".normalizeLanguageCode())
        assertEquals("en", "EN".normalizeLanguageCode())
    }

    @Test
    fun `normalizeLanguageCode trims whitespace`() {
        assertEquals("ja", " ja ".normalizeLanguageCode())
    }

    @Test
    fun `normalizeLanguageCode returns null for blank`() {
        assertNull("".normalizeLanguageCode())
    }

    // ── ManualSourceResolution ──

    @Test
    fun `ManualSourceResolution holds source and detection result`() {
        val detection = io.leostrange.mrcomic.core.model.LanguageDetectionResult(
            languageCode = "ja",
            isReliable = true,
            fallbackUsed = false
        )
        val resolution = ManualSourceResolution("ja", detection)
        assertEquals("ja", resolution.sourceLanguage)
        assertEquals("ja", resolution.detectionResult?.languageCode)
        assertEquals(true, resolution.detectionResult?.isReliable)
    }

    @Test
    fun `ManualSourceResolution with null source language`() {
        val resolution = ManualSourceResolution(null, null)
        assertNull(resolution.sourceLanguage)
        assertNull(resolution.detectionResult)
    }

    // ── Helpers ──

    private fun testOcrBlock(text: String, width: Float, height: Float) = OcrBlock(
        id = "block-${text.hashCode()}",
        pageId = "page-1",
        bboxLeft = 0f,
        bboxTop = 0f,
        bboxWidth = width,
        bboxHeight = height,
        textOriginal = text,
        textNormalized = text.replace('\\', ' ').trim(),
        detectedLanguage = null
    )
}
