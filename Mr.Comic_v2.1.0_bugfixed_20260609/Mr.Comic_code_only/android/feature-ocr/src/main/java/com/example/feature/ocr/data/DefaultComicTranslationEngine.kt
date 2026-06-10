package com.example.feature.ocr.data

import com.example.core.domain.translation.ComicTranslationEngine
import com.example.core.domain.translation.DictionaryEngine
import com.example.core.domain.translation.OfflineTranslationEngine
import com.example.core.domain.translation.OnlineTranslationEngine
import com.example.core.domain.translation.TranslationBackendUnavailableException
import com.example.core.domain.translation.hasMeaningfulTranslationFor
import com.example.core.domain.translation.resolveBestSingleWordDictionaryMatch
import com.example.core.domain.util.Result
import com.example.core.model.DictionaryEntry
import com.example.core.model.OcrBlock
import com.example.core.model.OverlayBlock
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationProviderType
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationSourceType
import com.example.core.model.TranslationTransportPreference
import com.example.core.model.TranslationResult
import com.example.core.ui.locale.supportedTranslationLanguageCodes
import java.util.UUID
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class DefaultComicTranslationEngine @Inject constructor(
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val dictionaryEngine: DictionaryEngine,
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
                    translationMode = when (translation.data.provider) {
                        TranslationProviderType.LOCAL_DICTIONARY -> TranslationMode.DICTIONARY
                        else -> if (translation.data.isOffline) {
                            TranslationMode.OFFLINE_MT
                        } else {
                            TranslationMode.ONLINE_MT
                        }
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
    ): Result<TranslationResult> {
        val normalizedText = text.trim().replace(Regex("\\s+"), " ")
        val normalizedSourceLanguage = sourceLanguage.normalizeLanguageCode() ?: sourceLanguage.lowercase()
        val normalizedTargetLanguage = targetLanguage.normalizeLanguageCode() ?: targetLanguage.lowercase()

        if (shouldAllowOcrDictionaryLookup(normalizedText, normalizedSourceLanguage)) {
            translateDictionarySnippet(
                text = normalizedText,
                sourceLanguage = normalizedSourceLanguage,
                targetLanguage = normalizedTargetLanguage
            )?.let { dictionaryResult ->
                return Result.Success(dictionaryResult)
            }
        }

        val requestFactory: (TranslationMode) -> TranslationRequest = { mode ->
            TranslationRequest(
                id = UUID.randomUUID().toString(),
                sourceType = TranslationSourceType.COMIC_BLOCK,
                text = normalizedText,
                sourceLanguage = normalizedSourceLanguage,
                targetLanguage = normalizedTargetLanguage,
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

    private suspend fun translateDictionarySnippet(
        text: String,
        sourceLanguage: String,
        targetLanguage: String
    ): TranslationResult? {
        val entry = if (shouldUseOcrDictionaryFallback(text, sourceLanguage)) {
            val dictionaryMatch = resolveBestSingleWordDictionaryMatch(
                rawWord = text,
                targetLanguage = targetLanguage,
                dictionaryEngine = dictionaryEngine,
                preferredSourceLanguage = sourceLanguage,
                detectedLanguage = sourceLanguage,
                fallbackSourceLanguages = supportedTranslationLanguageCodes.filter {
                    it != targetLanguage && it != sourceLanguage
                }
            )
            dictionaryMatch?.entry ?: lookupDictionaryEntry(
                text = text,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        } else {
            lookupDictionaryEntry(
                text = text,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        }

        val resolvedTranslation = entry?.firstMeaningfulTranslationFor(text)
            ?: entry?.glosses?.firstOrNull { it.isNotBlank() }?.trim()

        if (resolvedTranslation.isNullOrBlank()) {
            return null
        }

        return TranslationResult(
            requestId = UUID.randomUUID().toString(),
            translatedText = resolvedTranslation,
            provider = TranslationProviderType.LOCAL_DICTIONARY,
            isOffline = true,
            cached = false
        )
    }

    private suspend fun lookupDictionaryEntry(
        text: String,
        sourceLanguage: String,
        targetLanguage: String
    ): DictionaryEntry? = when (
        val lookup = dictionaryEngine.lookup(
            rawWord = text,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage
        )
    ) {
        is Result.Success -> lookup.data
        is Result.Error -> null
        Result.Loading -> null
    }

    private fun DictionaryEntry.firstMeaningfulTranslationFor(rawWord: String): String? {
        val cleanedTranslations = translations
            .map { it.trim() }
            .filter { it.isNotBlank() }
        if (hasMeaningfulTranslationFor(rawWord)) {
            return cleanedTranslations.firstOrNull()
        }
        return null
    }

    private fun String.normalizeLanguageCode(): String? =
        trim()
            .replace('_', '-')
            .lowercase()
            .substringBefore('-')
            .takeIf { it.isNotBlank() && it != "und" }
}
