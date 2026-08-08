package io.leostrange.mrcomic.core.interfaces.dictionary

interface DictionaryRepository {
    suspend fun isLookupAvailable(language: String): Boolean
    suspend fun hasTranslationRoute(language: String, targetLanguage: String): Boolean
    suspend fun lookup(
        surface: String,
        language: String,
        targetLanguage: String? = null,
        limit: Int = 8
    ): List<DictionaryLookupCard>
    suspend fun suggest(prefix: String, language: String, limit: Int = 12): List<String>
}

data class DictionaryLookupCard(
    val entryId: Long,
    val language: String,
    val lemma: String,
    val pos: String? = null,
    val source: String = "",
    val readings: List<String> = emptyList(),
    val meanings: List<String> = emptyList(),
    val translations: List<DictionaryLookupTranslation> = emptyList(),
    val examples: List<DictionaryLookupExample> = emptyList()
)

data class DictionaryLookupTranslation(
    val targetLanguage: String,
    val text: String
)

data class DictionaryLookupExample(
    val text: String,
    val translation: String? = null
)
