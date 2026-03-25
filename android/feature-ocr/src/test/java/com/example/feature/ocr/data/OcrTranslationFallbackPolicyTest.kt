package com.example.feature.ocr.data

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class OcrTranslationFallbackPolicyTest {

    @Test
    fun `polish single word stays dictionary-sized`() {
        assertTrue(shouldUseOcrDictionaryFallback("kot", "pl"))
        assertTrue(shouldAllowOcrDictionaryLookup("kot", "pl"))
    }

    @Test
    fun `polish multi word snippet skips single-word fallback but keeps short dictionary lookup`() {
        assertFalse(shouldUseOcrDictionaryFallback("dzień dobry", "pl"))
        assertTrue(shouldAllowOcrDictionaryLookup("dzień dobry", "pl"))
    }

    @Test
    fun `polish sentence-sized snippet still skips dictionary lookup`() {
        assertFalse(shouldUseOcrDictionaryFallback("dzień dobry, jak się masz", "pl"))
        assertFalse(shouldAllowOcrDictionaryLookup("dzień dobry, jak się masz", "pl"))
    }

    @Test
    fun `short japanese snippet can use dictionary fallback`() {
        assertTrue(shouldUseOcrDictionaryFallback("猫", "ja"))
        assertTrue(shouldUseOcrDictionaryFallback("ありがとう", "ja"))
        assertTrue(shouldAllowOcrDictionaryLookup("猫", "ja"))
        assertTrue(shouldAllowOcrDictionaryLookup("ありがとう", "ja"))
    }

    @Test
    fun `sentence-sized japanese snippet skips dictionary fallback`() {
        assertFalse(shouldUseOcrDictionaryFallback("今日はとても寒いですね", "ja"))
        assertFalse(shouldUseOcrDictionaryFallback("今日は寒い。", "ja"))
        assertFalse(shouldAllowOcrDictionaryLookup("今日はとても寒いですね", "ja"))
        assertFalse(shouldAllowOcrDictionaryLookup("今日は寒い。", "ja"))
    }
}
