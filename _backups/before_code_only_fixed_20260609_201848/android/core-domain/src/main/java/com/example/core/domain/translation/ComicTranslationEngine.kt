package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.OcrBlock
import com.example.core.model.OverlayBlock
import com.example.core.model.TranslationTransportPreference

interface ComicTranslationEngine {
    suspend fun translateBlocks(
        blocks: List<OcrBlock>,
        sourceLanguage: String,
        targetLanguage: String,
        preferredTransport: TranslationTransportPreference = TranslationTransportPreference.AUTO
    ): Result<List<OverlayBlock>>
}
