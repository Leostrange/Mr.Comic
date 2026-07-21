package io.leostrange.mrcomic.shared.translation

/**
 * Dictionary lookup for single words.
 * Platform-agnostic — implementations live in platform source sets.
 */
interface DictionaryEngine {
    suspend fun isLookupAvailable(sourceLanguage: String, targetLanguage: String): Boolean
    suspend fun lookup(rawWord: String, sourceLanguage: String, targetLanguage: String): DictionaryResult
}

/** Result of a dictionary lookup. */
data class DictionaryResult(
    val lemma: String,
    val partOfSpeech: String?,
    val translations: List<String>,
    val glosses: List<String>,
    val forms: List<String>
)
