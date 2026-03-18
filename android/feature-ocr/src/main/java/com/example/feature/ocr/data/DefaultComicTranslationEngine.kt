package com.example.feature.ocr.data

import com.example.core.domain.translation.ComicTranslationEngine
import com.example.core.domain.translation.OfflineTranslationEngine
import com.example.core.domain.translation.OnlineTranslationEngine
import com.example.core.domain.translation.TranslationBackendUnavailableException
import com.example.core.domain.util.Result
import com.example.core.model.OcrBlock
import com.example.core.model.OverlayBlock
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationSourceType
import com.example.core.model.TranslationTransportPreference
import java.util.UUID
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class DefaultComicTranslationEngine @Inject constructor(
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val bubbleReplacementPreviewPlanner: BubbleReplacementPreviewPlanner
) : ComicTranslationEngine {

    override suspend fun translateBlocks(
        blocks: List<OcrBlock>,
        sourceLanguage: String,
        targetLanguage: String,
        preferredTransport: TranslationTransportPreference
    ): Result<List<OverlayBlock>> {
        if (blocks.isEmpty()) {
            return Result.Success(emptyList())
        }

        val overlays = mutableListOf<OverlayBlock>()
        var lastError: Throwable? = null

        for (block in blocks) {
            val text = block.textNormalized.ifBlank { block.textOriginal }.trim()
            if (text.isBlank()) continue

            when (
                val translation = translateSingleBlock(
                    text = text,
                    sourceLanguage = block.detectedLanguage ?: sourceLanguage,
                    targetLanguage = targetLanguage,
                    preferredTransport = preferredTransport
                )
            ) {
                is Result.Success -> overlays += bubbleReplacementPreviewPlanner.buildOverlayBlock(
                    block = block,
                    translatedText = translation.data.translatedText,
                    translationMode = if (translation.data.isOffline) {
                        TranslationMode.OFFLINE_MT
                    } else {
                        TranslationMode.ONLINE_MT
                    },
                    provider = translation.data.provider,
                    isOffline = translation.data.isOffline
                )

                is Result.Error -> lastError = translation.exception
                Result.Loading -> Unit
            }
        }

        return when {
            overlays.isNotEmpty() -> Result.Success(overlays)
            lastError != null -> Result.Error(lastError!!)
            else -> Result.Success(emptyList())
        }
    }

    private suspend fun translateSingleBlock(
        text: String,
        sourceLanguage: String,
        targetLanguage: String,
        preferredTransport: TranslationTransportPreference
    ): Result<com.example.core.model.TranslationResult> {
        val requestFactory: (TranslationMode) -> TranslationRequest = { mode ->
            TranslationRequest(
                id = UUID.randomUUID().toString(),
                sourceType = TranslationSourceType.COMIC_BLOCK,
                text = text,
                sourceLanguage = sourceLanguage.lowercase(),
                targetLanguage = targetLanguage.lowercase(),
                mode = mode,
                createdAt = System.currentTimeMillis()
            )
        }

        suspend fun tryOffline(): Result<com.example.core.model.TranslationResult> {
            return when (val translation = offlineTranslationEngine.translate(requestFactory(TranslationMode.OFFLINE_MT))) {
                is Result.Error -> Result.Error(
                    translation.exception.takeIf {
                        it is TranslationBackendUnavailableException
                    } ?: TranslationBackendUnavailableException(
                        sourceLanguage = sourceLanguage,
                        targetLanguage = targetLanguage
                    )
                )
                else -> translation
            }
        }

        suspend fun tryOnline(): Result<com.example.core.model.TranslationResult> {
            return onlineTranslationEngine.translate(requestFactory(TranslationMode.ONLINE_MT))
        }

        val primary = when (preferredTransport) {
            TranslationTransportPreference.ONLINE -> tryOnline()
            TranslationTransportPreference.AUTO,
            TranslationTransportPreference.OFFLINE -> tryOffline()
        }
        if (primary is Result.Success) return primary

        val secondary = when (preferredTransport) {
            TranslationTransportPreference.ONLINE -> tryOffline()
            TranslationTransportPreference.AUTO,
            TranslationTransportPreference.OFFLINE -> tryOnline()
        }
        if (secondary is Result.Success) return secondary

        return secondary.takeIf { it is Result.Error }
            ?: primary.takeIf { it is Result.Error }
            ?: Result.Error(
                TranslationBackendUnavailableException(
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage
                )
            )
    }
}
