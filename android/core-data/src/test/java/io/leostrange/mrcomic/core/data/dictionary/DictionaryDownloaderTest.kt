package io.leostrange.mrcomic.core.data.dictionary

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class DictionaryDownloaderTest {

    @Test
    fun `buildReleaseUrl returns correct URL for english dictionary`() {
        val config = DictionaryAssetConfig(
            language = "en",
            assetPath = "databases/dictionary_en.dbpack",
            databaseName = "dictionary_en_room_asset_v3.db",
            extractedFileName = "dictionary_en_room_asset_v3.db"
        )
        
        assertEquals(
            "https://github.com/Leostrange/Mr.Comic/releases/download/" +
                "dictionary-modules-v1.0.0/dictionary_en.dbpack",
            DictionaryDownloader.dictionaryReleaseUrl(config.language)
        )
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
