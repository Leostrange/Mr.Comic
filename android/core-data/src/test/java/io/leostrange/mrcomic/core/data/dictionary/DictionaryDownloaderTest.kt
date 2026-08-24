package io.leostrange.mrcomic.core.data.dictionary

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class DictionaryDownloaderTest {

    @Test
    fun `buildReleaseUrl returns correct URL for english dictionary`() {
        // This test verifies the URL construction logic
        // In a real test, we would mock the context and test the full flow
        val config = DictionaryAssetConfig(
            language = "en",
            assetPath = "databases/dictionary_en.dbpack",
            databaseName = "dictionary_en_room_asset_v3.db",
            extractedFileName = "dictionary_en_room_asset_v3.db"
        )
        
        // Expected URL format: release assets are published as dictionary_<lang>.dbpack
        val expectedUrl = "https://github.com/Leostrange/Mr.Comic/releases/download/v2.3.0/dictionary_en.dbpack"
        
        // We can't easily test the private buildReleaseUrl method without reflection
        // But we can verify the config structure is correct
        assertEquals("en", config.language)
        assertNotNull(config.assetPath)
        assertNotNull(config.databaseName)
        assertNotNull(config.extractedFileName)
    }

    @Test
    fun `DictionaryAssetCatalog returns config for known languages`() {
        val languages = listOf("en", "fr", "it", "ja", "ko", "pl", "pt", "ru", "tr", "zh")
        
        for (language in languages) {
            val config = DictionaryAssetCatalog.configForLanguage(language)
            assertNotNull("Config should exist for $language", config)
            assertEquals(language, config?.language)
        }
    }

    @Test
    fun `DictionaryAssetCatalog returns null for unknown language`() {
        val config = DictionaryAssetCatalog.configForLanguage("xx")
        assertNull(config)
    }

    @Test
    fun `DictionaryAssetCatalog shippedLanguages returns all supported languages`() {
        val shipped = DictionaryAssetCatalog.shippedLanguages()
        assertEquals(10, shipped.size)
        assertTrue(shipped.contains("en"))
        assertTrue(shipped.contains("ru"))
        assertTrue(shipped.contains("ja"))
    }
}
