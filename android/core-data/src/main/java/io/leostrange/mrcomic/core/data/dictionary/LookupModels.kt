package io.leostrange.mrcomic.core.data.dictionary

data class DictionaryLookupTranslation(
    val targetLanguage: String,
    val text: String,
)

data class DictionaryLookupExample(
    val text: String,
    val translation: String?,
)

data class DictionaryLookupCard(
    val entryId: Long,
    val language: String,
    val lemma: String,
    val pos: String?,
    val source: String,
    val readings: List<String>,
    val meanings: List<String>,
    val translations: List<DictionaryLookupTranslation>,
    val examples: List<DictionaryLookupExample>,
)
