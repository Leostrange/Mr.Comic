package io.leostrange.mrcomic.shared

import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.shared.translation.DictionaryEngine
import io.leostrange.mrcomic.shared.translation.DictionaryResult

/**
 * Wraps core-domain DictionaryEngine to satisfy shared DictionaryEngine interface.
 */
class AndroidDictionaryEngine(
    private val delegate: io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
) : DictionaryEngine {
    override suspend fun isLookupAvailable(sourceLanguage: String, targetLanguage: String): Boolean {
        val result = delegate.isLookupAvailable(sourceLanguage, targetLanguage)
        return result is io.leostrange.mrcomic.core.domain.util.Result.Success && result.data
    }

    override suspend fun lookup(rawWord: String, sourceLanguage: String, targetLanguage: String): DictionaryResult {
        val result = delegate.lookup(rawWord, sourceLanguage, targetLanguage)
        return when (result) {
            is io.leostrange.mrcomic.core.domain.util.Result.Success -> {
                val entry = result.data
                DictionaryResult(
                    lemma = entry.lemma,
                    partOfSpeech = entry.partOfSpeech,
                    translations = entry.translations,
                    glosses = entry.glosses,
                    forms = entry.forms
                )
            }
            else -> DictionaryResult(
                lemma = rawWord,
                partOfSpeech = null,
                translations = emptyList(),
                glosses = emptyList(),
                forms = emptyList()
            )
        }
    }
}
