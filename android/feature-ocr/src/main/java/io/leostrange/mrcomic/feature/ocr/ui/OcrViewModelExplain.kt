package io.leostrange.mrcomic.feature.ocr.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.ExplainRequest
import io.leostrange.mrcomic.core.model.TranslationSourceType
import io.leostrange.mrcomic.feature.ocr.data.shouldUseOcrDictionaryFallback
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * LLM explanations (manual text and selected OCR block) and OCR text cleanup.
 * Extracted from OcrViewModel.kt as extension functions.
 */

internal fun OcrViewModel.explainManualText() {
    if (_uiState.value.isManualScenarioBusy()) return
    val normalizedText = _uiState.value.manualText.trim().replace(Regex("\\s+"), " ")
    if (normalizedText.isBlank()) return

    viewModelScope.launch {
        val targetLanguage = _uiState.value.targetLang.normalizeLanguageCode() ?: "ru"
        val appLanguage = preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first().normalizeLanguageCode() ?: "ru"
        val manualSourceResolution = resolveManualSourceLanguage(normalizedText)
        val shouldUseDictionaryFallback = shouldUseOcrDictionaryFallback(
            rawText = normalizedText,
            sourceLanguage = manualSourceResolution.sourceLanguage
                ?: manualSourceResolution.detectionResult?.languageCode
        )
        val singleWordDictionaryMatch = if (shouldUseDictionaryFallback) {
            resolveOcrSingleWordDictionaryMatch(
                rawWord = normalizedText,
                preferredSourceLanguage = manualSourceResolution.sourceLanguage,
                detectedLanguage = manualSourceResolution.detectionResult?.languageCode,
                detectedCandidates = manualSourceResolution.detectionResult?.candidates
                    ?.map { it.languageCode }
                    .orEmpty(),
                targetLanguage = targetLanguage
            )
        } else {
            null
        }
        val sourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: manualSourceResolution.sourceLanguage

        _uiState.update {
            it.clearTransientFeedback().copy(
                isExplainingManualText = true,
                manualExplanation = null,
                manualExplanationError = null
            )
        }

        val dictionaryAvailable = singleWordDictionaryMatch != null || sourceLanguage?.let { resolvedSourceLanguage ->
            when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }
        } == true

        if (shouldUseDictionaryFallback && dictionaryAvailable) {
            when (val match = singleWordDictionaryMatch) {
                null -> Unit
                else -> {
                    _uiState.update {
                        it.copy(
                            isExplainingManualText = false,
                            manualExplanation = ocrDictionaryExplanation(
                                entry = match.entry,
                                language = appLanguage
                            ),
                            manualExplanationError = null
                        )
                    }
                    return@launch
                }
            }
        }
        if (sourceLanguage == null) {
            _uiState.update {
                it.copy(
                    isExplainingManualText = false,
                    manualExplanation = null,
                    manualExplanationError = ocrExplainUnavailableMessage(appLanguage)
                )
            }
            return@launch
        }

        when (
            val explainResult = llmExplainEngine.explain(
                ExplainRequest(
                    id = "ocr-manual-explain-${System.currentTimeMillis()}",
                    sourceType = TranslationSourceType.OCR_TEXT,
                    text = normalizedText,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    translatedText = _uiState.value.translatedText.takeIf { it.isNotBlank() },
                    createdAt = System.currentTimeMillis()
                )
            )
        ) {
            is Result.Success -> {
                _uiState.update {
                    it.copy(
                        isExplainingManualText = false,
                        manualExplanation = explainResult.data.explanation,
                        manualExplanationError = null
                    )
                }
            }

            is Result.Error -> {
                _uiState.update {
                    it.copy(
                        isExplainingManualText = false,
                        manualExplanation = null,
                        manualExplanationError = ocrExplainUnavailableMessage(appLanguage)
                    )
                }
            }

            Result.Loading -> Unit
        }
    }
}

internal fun OcrViewModel.explainSelectedBlock() {
    if (_uiState.value.isSelectedBlockBusy()) return
    val state = _uiState.value
    val blockId = state.selectedBlockId ?: return
    val block = state.recognizedBlocks.firstOrNull { it.id == blockId } ?: return
    val sourceLanguage = block.detectedLanguage?.normalizeLanguageCode()
        ?: state.sourceLang.normalizeLanguageCode()
        ?: "en"
    val targetLanguage = state.targetLang.normalizeLanguageCode() ?: "ru"

    viewModelScope.launch {
        val appLanguage = preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first().normalizeLanguageCode() ?: "ru"

        _uiState.update {
            it.copy(
                isExplainingSelectedBlock = true,
                selectedBlockExplanation = null,
                selectedBlockExplanationError = null,
                error = null
            )
        }

        val normalizedText = state.selectedBlockCleanedText
            ?.takeIf { it.isNotBlank() }
            ?: selectedBlockTranslationInput(block, state)
        val explainContext = buildSelectedBlockExplainContext(block.id, state)
        val shouldUseDictionaryFallback = shouldUseOcrDictionaryFallback(normalizedText, sourceLanguage)
        val singleWordDictionaryMatch = if (shouldUseDictionaryFallback) {
            resolveOcrSingleWordDictionaryMatch(
                rawWord = normalizedText,
                preferredSourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        } else {
            null
        }
        val dictionaryAvailable = singleWordDictionaryMatch != null || when (
            val availability = dictionaryEngine.isLookupAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }

        if (shouldUseDictionaryFallback && dictionaryAvailable) {
            when (val match = singleWordDictionaryMatch) {
                null -> Unit
                else -> {
                    _uiState.update {
                        it.copy(
                            isExplainingSelectedBlock = false,
                            selectedBlockExplanation = ocrDictionaryExplanation(
                                entry = match.entry,
                                language = appLanguage
                            ),
                            selectedBlockExplanationError = null
                        )
                    }
                    return@launch
                }
            }
        }

        when (
            val explainResult = llmExplainEngine.explain(
                ExplainRequest(
                    id = "ocr-explain-${System.currentTimeMillis()}",
                    sourceType = TranslationSourceType.COMIC_BLOCK,
                    text = normalizedText,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    translatedText = state.translatedBlocks
                        .firstOrNull { it.ocrBlockId == blockId }
                        ?.translatedText
                        ?.takeIf { it.isNotBlank() },
                    contextBefore = explainContext.first,
                    contextAfter = explainContext.second,
                    ocrConfidence = block.confidence,
                    createdAt = System.currentTimeMillis()
                )
            )
        ) {
            is Result.Success -> {
                _uiState.update {
                    it.copy(
                        isExplainingSelectedBlock = false,
                        selectedBlockExplanation = explainResult.data.explanation,
                        selectedBlockExplanationError = null
                    )
                }
            }

            is Result.Error -> {
                _uiState.update {
                    it.copy(
                        isExplainingSelectedBlock = false,
                        selectedBlockExplanation = null,
                        selectedBlockExplanationError = ocrExplainUnavailableMessage(appLanguage)
                    )
                }
            }

            Result.Loading -> Unit
        }
    }
}

internal fun OcrViewModel.cleanupSelectedBlockText() {
    if (_uiState.value.isSelectedBlockBusy()) return
    val state = _uiState.value
    val blockId = state.selectedBlockId ?: return
    val block = state.recognizedBlocks.firstOrNull { it.id == blockId } ?: return
    val sourceLanguage = block.detectedLanguage?.normalizeLanguageCode()
        ?: state.sourceLang.normalizeLanguageCode()
        ?: "en"

    viewModelScope.launch {
        val uiLanguage = currentUiLanguage()
        _uiState.update {
            it.copy(
                isCleaningSelectedBlock = true,
                selectedBlockCleanedText = null,
                selectedBlockCleanupError = null,
                error = null
            )
        }

        val originalText = block.textOriginal.ifBlank { block.textNormalized }
        val cleanedText = cleanupOcrText(
            rawText = originalText,
            sourceLanguage = sourceLanguage
        )

        _uiState.update {
            it.copy(
                isCleaningSelectedBlock = false,
                selectedBlockCleanedText = if (cleanedText == originalText.trim()) {
                    null
                } else {
                    cleanedText
                },
                selectedBlockCleanupError = if (cleanedText == originalText.trim()) {
                    ocrCleanupNoChangeMessage(uiLanguage)
                } else {
                    null
                }
            )
        }
    }
}

internal fun cleanupOcrText(
    rawText: String,
    sourceLanguage: String
): String {
    var text = rawText
        .replace("\r\n", "\n")
        .replace('\r', '\n')
        .trim()

    text = text.replace(Regex("([\\p{L}\\p{N}])[\\-‐‑‒–—]\\s*\\n\\s*([\\p{L}\\p{N}])"), "$1$2")
    text = text.replace(Regex("[ \\t]*\\n[ \\t]*"), "\n")
    text = text.replace(Regex("[ \\t]{2,}"), " ")

    text = when (sourceLanguage) {
        "ja", "zh" -> {
            text
                .replace(Regex("(?<=[\\p{IsHan}\\p{IsHiragana}\\p{IsKatakana}])\\s+(?=[\\p{IsHan}\\p{IsHiragana}\\p{IsKatakana}])"), "")
                .replace(Regex("\\n{2,}"), "\n")
        }
        else -> {
            text
                .replace(Regex("(?<=[\\p{L}\\p{N},;:])\\n(?=[\\p{L}\\p{N}])"), " ")
                .replace(Regex("\\n{3,}"), "\n\n")
        }
    }

    text = text
        .replace(Regex("\\s+([,.;:!?])"), "$1")
        .replace(Regex("([“«(\\[{])\\s+"), "$1")
        .replace(Regex("\\s+([”»)\\]}])"), "$1")
        .replace(Regex("[|¦]{2,}"), "|")
        .replace(Regex("^[|¦•·]+\\s*"), "")
        .replace(Regex("\\s*[|¦•·]+$"), "")
        .replace(Regex("[!?.,]{4,}")) { match ->
            match.value.take(3)
        }
        .replace(Regex("…{2,}"), "…")
        .replace(Regex("[ \\t]{2,}"), " ")
        .replace(Regex("\\n{3,}"), "\n\n")
        .trim()

    return text
}

internal fun OcrViewModel.buildSelectedBlockExplainContext(
    blockId: String,
    state: OcrUiState
): Pair<String?, String?> =
    buildSelectedBlockContextPreview(blockId, state.recognizedBlocks)
