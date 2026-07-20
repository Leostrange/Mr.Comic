package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.OcrBlock
import io.leostrange.mrcomic.core.model.OverlayBlock
import io.leostrange.mrcomic.core.model.TranslationTransportPreference

interface ComicTranslationEngine {
    suspend fun translateBlocks(
        blocks: List<OcrBlock>,
        sourceLanguage: String,
        targetLanguage: String,
        preferredTransport: TranslationTransportPreference = TranslationTransportPreference.AUTO
    ): Result<List<OverlayBlock>>
}
