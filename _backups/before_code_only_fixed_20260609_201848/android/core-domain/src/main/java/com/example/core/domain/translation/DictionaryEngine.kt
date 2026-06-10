package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.DictionaryEntry

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
