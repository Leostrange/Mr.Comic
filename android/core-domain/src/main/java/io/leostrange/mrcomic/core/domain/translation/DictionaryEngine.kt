package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.DictionaryEntry

interface DictionaryEngine {
    suspend fun isLookupAvailable(
        sourceLanguage: String,
        targetLanguage: String
    ): Result<Boolean>

    suspend fun lookup(
        rawWord: String,
        sourceLanguage: String,
        targetLanguage: String
    ): Result<DictionaryEntry>
}
