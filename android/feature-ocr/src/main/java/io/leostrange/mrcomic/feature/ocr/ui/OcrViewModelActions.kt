package io.leostrange.mrcomic.feature.ocr.ui

import android.graphics.Bitmap
import android.graphics.Rect
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.domain.translation.TranslationBackendUnavailableException
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.OcrBlock
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * Page-level OCR actions: recognition, visible-page translation, and the
 * selected-block operations. Extracted from OcrViewModel.kt to keep the
 * ViewModel file focused on state ownership.
 */

internal fun OcrViewModel.recognize() {
    val state = _uiState.value
    val bitmap = state.imageBitmap ?: return
    if (state.isInteractionLocked()) return
    viewModelScope.launch {
        detectBlocksForCurrentPage(bitmap = bitmap, clearExistingRecognition = true)
    }
}

internal fun OcrViewModel.translateVisiblePage() {
    val state = _uiState.value
    val bitmap = state.imageBitmap ?: return
    if (state.isInteractionLocked()) return
    viewModelScope.launch {
        val filterState = loadTranslationFilterState()
        val pageId = buildPageCacheId()
        val preferredTransport = _uiState.value.preferredTransport
        val cachedTranslations = ocrPageCache.getTranslatedBlocks(
            pageId = pageId,
            sourceLanguage = _uiState.value.sourceLang,
            targetLanguage = _uiState.value.targetLang,
            transport = preferredTransport.name,
            filterProfile = filterState.cacheKey
        )
        if (!cachedTranslations.isNullOrEmpty()) {
            _uiState.update {
                it.copy(
                    error = null,
                    translatedBlocks = cachedTranslations,
                    overlayEnabled = true,
                    selectedBlockId = null,
                    isTranslatingSelectedBlock = false,
                    isExplainingSelectedBlock = false,
                    isCleaningSelectedBlock = false,
                    selectedBlockCleanedText = null,
                    selectedBlockCleanupError = null,
                    selectedBlockExplanation = null,
                    selectedBlockExplanationError = null,
                    translatedText = cachedTranslations.joinToString(separator = "\n\n") { block -> block.translatedText }
                )
            }
            return@launch
        }

        val blocks = if (_uiState.value.recognizedBlocks.isNotEmpty()) {
            _uiState.value.recognizedBlocks
        } else {
            when (val detectionResult = detectBlocksForCurrentPage(bitmap = bitmap, clearExistingRecognition = true)) {
                is Result.Success -> detectionResult.data
                is Result.Error -> return@launch
                Result.Loading -> return@launch
            }
        }

        translateRecognizedBlocks(filterBlocksForPageTranslation(blocks, filterState))
    }
}

internal fun OcrViewModel.translate() {
    val state = _uiState.value
    if (state.isInteractionLocked()) return
    val text = if (state.imageBitmap != null) state.recognizedText
               else state.manualText
    if (text.isBlank()) return
    viewModelScope.launch {
        if (_uiState.value.imageBitmap != null && _uiState.value.recognizedBlocks.isNotEmpty()) {
            translateRecognizedBlocks(_uiState.value.recognizedBlocks)
        } else {
            ocrTranslateManualText()
        }
    }
}

internal fun OcrViewModel.selectBlock(blockId: String) {
    if (_uiState.value.isSelectedBlockBusy()) return
    val block = _uiState.value.recognizedBlocks.firstOrNull { it.id == blockId } ?: return
    val existingTranslation = _uiState.value.translatedBlocks.firstOrNull { it.ocrBlockId == blockId }
    if (existingTranslation != null) {
        _uiState.update {
            it.copy(
                selectedBlockId = blockId,
                isTranslatingSelectedBlock = false,
                isRetryingSelectedBlockOcr = false,
                isExplainingSelectedBlock = false,
                isCleaningSelectedBlock = false,
                selectedBlockCleanedText = null,
                selectedBlockCleanupError = null,
                selectedBlockExplanation = null,
                selectedBlockExplanationError = null
            )
        }
        return
    }

    _uiState.update {
        it.copy(
            selectedBlockId = blockId,
            isTranslatingSelectedBlock = true,
            isRetryingSelectedBlockOcr = false,
            isExplainingSelectedBlock = false,
            isCleaningSelectedBlock = false,
            selectedBlockCleanedText = null,
            selectedBlockCleanupError = null,
            selectedBlockExplanation = null,
            selectedBlockExplanationError = null,
            error = null
        )
    }

    viewModelScope.launch {
        translateSelectedBlockInternal(block = block, preferredTransport = _uiState.value.preferredTransport)
    }
}

internal fun OcrViewModel.translateSelectedBlock() {
    translateSelectedBlockWithTransport(_uiState.value.preferredTransport)
}

internal fun OcrViewModel.translateSelectedBlockWithTransport(preferredTransport: TranslationTransportPreference) {
    if (_uiState.value.isSelectedBlockBusy()) return
    val state = _uiState.value
    val blockId = state.selectedBlockId ?: return
    val block = state.recognizedBlocks.firstOrNull { it.id == blockId } ?: return
    _uiState.update {
        it.copy(
            isTranslatingSelectedBlock = true,
            error = null
        )
    }
    viewModelScope.launch {
        translateSelectedBlockInternal(block = block, preferredTransport = preferredTransport)
    }
}

internal fun OcrViewModel.rerunSelectedBlockOcr() {
    val state = _uiState.value
    if (state.isSelectedBlockBusy()) return
    val blockId = state.selectedBlockId ?: return
    val block = state.recognizedBlocks.firstOrNull { it.id == blockId } ?: return
    val bitmap = state.imageBitmap ?: return
    val sourceLanguage = block.detectedLanguage?.normalizeLanguageCode()
        ?: state.sourceLang.normalizeLanguageCode()
        ?: "en"

    viewModelScope.launch {
        val uiLanguage = currentUiLanguage()
        _uiState.update {
            it.copy(
                isRetryingSelectedBlockOcr = true,
                error = null,
                saveMessage = null
            )
        }

        val retriedText = withContext(Dispatchers.IO) {
            val croppedBitmap = cropBitmapForBlock(bitmap, block) ?: return@withContext null
            try {
                val retriedBlocks = ocrRepository
                    .detectBlocks(croppedBitmap, sourceLanguage, "${block.pageId}:${block.id}:retry")
                    .getOrNull()
                    .orEmpty()
                pickBestRetriedBlockText(retriedBlocks)
            } finally {
                if (!croppedBitmap.isRecycled) {
                    croppedBitmap.recycle()
                }
            }
        }

        if (retriedText.isNullOrBlank()) {
            _uiState.update {
                it.copy(
                    isRetryingSelectedBlockOcr = false,
                    error = ocrBlockRepeatFailedMessage(uiLanguage)
                )
            }
            return@launch
        }

        val normalizedOriginal = normalizeOcrComparisonText(block.textOriginal.ifBlank { block.textNormalized })
        val normalizedRetried = normalizeOcrComparisonText(retriedText)
        if (normalizedRetried == normalizedOriginal) {
            _uiState.update {
                it.copy(
                    isRetryingSelectedBlockOcr = false,
                    saveMessage = ocrBlockNoChangeMessage(uiLanguage)
                )
            }
            return@launch
        }

        val updatedBlock = block.copy(
            textOriginal = retriedText,
            textNormalized = retriedText.replace('\n', ' ').trim(),
            detectedLanguage = sourceLanguage
        )
        val updatedRecognizedBlocks = state.recognizedBlocks.map { existing ->
            if (existing.id == blockId) updatedBlock else existing
        }
        val updatedTranslatedBlocks = state.translatedBlocks.filterNot { it.ocrBlockId == blockId }
        val pageId = buildPageCacheId()
        val filterState = loadTranslationFilterState()
        ocrPageCache.putRecognizedBlocks(
            pageId = pageId,
            sourceLanguage = _uiState.value.sourceLang,
            blocks = updatedRecognizedBlocks
        )
        ocrPageCache.putTranslatedBlocks(
            pageId = pageId,
            sourceLanguage = _uiState.value.sourceLang,
            targetLanguage = _uiState.value.targetLang,
            transport = _uiState.value.preferredTransport.name,
            filterProfile = filterState.cacheKey,
            blocks = updatedTranslatedBlocks
        )
        _uiState.update {
            it.copy(
                isRetryingSelectedBlockOcr = false,
                recognizedBlocks = updatedRecognizedBlocks,
                translatedBlocks = updatedTranslatedBlocks,
                recognizedText = updatedRecognizedBlocks.joinToString(separator = "\n\n") { candidate -> candidate.textOriginal },
                translatedText = updatedTranslatedBlocks.joinToString(separator = "\n\n") { overlay -> overlay.translatedText },
                isCleaningSelectedBlock = false,
                selectedBlockCleanedText = null,
                selectedBlockCleanupError = null,
                isExplainingSelectedBlock = false,
                selectedBlockExplanation = null,
                selectedBlockExplanationError = null,
                saveMessage = ocrBlockUpdatedMessage(uiLanguage)
            )
        }
    }
}

internal fun OcrViewModel.dismissSelectedBlock() {
    _uiState.update {
        it.copy(
            selectedBlockId = null,
            isTranslatingSelectedBlock = false,
            isRetryingSelectedBlockOcr = false,
            isExplainingSelectedBlock = false,
            isCleaningSelectedBlock = false,
            selectedBlockCleanedText = null,
            selectedBlockCleanupError = null,
            selectedBlockExplanation = null,
            selectedBlockExplanationError = null
        )
    }
}

internal suspend fun OcrViewModel.translateRecognizedBlocks(blocks: List<OcrBlock>) {
    val pageId = buildPageCacheId()
    val filterState = loadTranslationFilterState()
    val preferredTransport = _uiState.value.preferredTransport
    if (blocks.isEmpty()) {
        val uiLanguage = currentUiLanguage()
        _uiState.update {
            it.copy(
                isTranslating = false,
                translatedBlocks = emptyList(),
                overlayEnabled = true,
                selectedBlockId = null,
                isTranslatingSelectedBlock = false,
                isExplainingSelectedBlock = false,
                isCleaningSelectedBlock = false,
                selectedBlockCleanedText = null,
                selectedBlockCleanupError = null,
                selectedBlockExplanation = null,
                selectedBlockExplanationError = null,
                translatedText = "",
                error = ocrPageTranslationNoBlocksMessage(uiLanguage)
            )
        }
        return
    }
    _uiState.update {
        it.copy(
            isTranslating = true,
            error = null,
            translatedBlocks = emptyList(),
            overlayEnabled = true,
            selectedBlockId = null,
            isTranslatingSelectedBlock = false,
            isExplainingSelectedBlock = false,
            isCleaningSelectedBlock = false,
            selectedBlockCleanedText = null,
            selectedBlockCleanupError = null,
            selectedBlockExplanation = null,
            selectedBlockExplanationError = null,
            translatedText = ""
        )
    }

    when (
        val result = comicTranslationEngine.translateBlocks(
            blocks = blocks,
            sourceLanguage = _uiState.value.sourceLang,
            targetLanguage = _uiState.value.targetLang,
            preferredTransport = preferredTransport
        )
    ) {
        is Result.Success -> {
            val translatedBlocks = result.data
            ocrPageCache.putTranslatedBlocks(
                pageId = pageId,
                sourceLanguage = _uiState.value.sourceLang,
                targetLanguage = _uiState.value.targetLang,
                transport = preferredTransport.name,
                filterProfile = filterState.cacheKey,
                blocks = translatedBlocks
            )
            _uiState.update {
                it.copy(
                    isTranslating = false,
                    translatedBlocks = translatedBlocks,
                    overlayEnabled = true,
                    isExplainingSelectedBlock = false,
                    isCleaningSelectedBlock = false,
                    selectedBlockCleanedText = null,
                    selectedBlockCleanupError = null,
                    selectedBlockExplanation = null,
                    selectedBlockExplanationError = null,
                    translatedText = translatedBlocks.joinToString(separator = "\n\n") { block -> block.translatedText }
                )
            }
        }

        is Result.Error -> {
            val uiLanguage = currentUiLanguage()
            _uiState.update {
                it.copy(
                    isTranslating = false,
                    error = when (result.exception) {
                        is TranslationBackendUnavailableException ->
                            resolveOcrTranslationUnavailableMessage(
                                language = uiLanguage,
                                preferredTransport = preferredTransport,
                                availability = _uiState.value.translationAvailability,
                                dictionaryRouteAvailable = false,
                                sourceLanguage = _uiState.value.sourceLang,
                                targetLanguage = _uiState.value.targetLang
                            )
                        else -> ocrTranslationUnavailableMessage(uiLanguage)
                    }
                )
            }
        }

        Result.Loading -> Unit
    }
}

internal suspend fun OcrViewModel.detectBlocksForCurrentPage(
    bitmap: Bitmap,
    clearExistingRecognition: Boolean
): Result<List<OcrBlock>> {
    val pageId = buildPageCacheId()
    val cachedBlocks = ocrPageCache.getRecognizedBlocks(
        pageId = pageId,
        sourceLanguage = _uiState.value.sourceLang
    )
    if (!cachedBlocks.isNullOrEmpty()) {
        _uiState.update {
            it.copy(
                isRecognizing = false,
                error = null,
                recognizedBlocks = cachedBlocks,
                overlayEnabled = true,
                selectedBlockId = null,
                isTranslatingSelectedBlock = false,
                isExplainingSelectedBlock = false,
                isCleaningSelectedBlock = false,
                selectedBlockCleanedText = null,
                selectedBlockCleanupError = null,
                selectedBlockExplanation = null,
                selectedBlockExplanationError = null,
                recognizedText = cachedBlocks.joinToString(separator = "\n\n") { block -> block.textOriginal },
                translatedText = if (clearExistingRecognition) "" else it.translatedText
            )
        }
        return Result.Success(cachedBlocks)
    }

    _uiState.update {
        it.copy(
            isRecognizing = true,
            error = null,
            recognizedBlocks = if (clearExistingRecognition) emptyList() else it.recognizedBlocks,
            translatedBlocks = emptyList(),
            overlayEnabled = true,
            selectedBlockId = null,
            isTranslatingSelectedBlock = false,
            isExplainingSelectedBlock = false,
            isCleaningSelectedBlock = false,
            selectedBlockCleanedText = null,
            selectedBlockCleanupError = null,
            selectedBlockExplanation = null,
            selectedBlockExplanationError = null,
            recognizedText = if (clearExistingRecognition) "" else it.recognizedText,
            translatedText = ""
        )
    }

    val uiLanguage = currentUiLanguage()
    return ocrRepository.detectBlocks(bitmap, _uiState.value.sourceLang, pageId).fold(
        onSuccess = { blocks ->
            ocrPageCache.putRecognizedBlocks(
                pageId = pageId,
                sourceLanguage = _uiState.value.sourceLang,
                blocks = blocks
            )
            _uiState.update {
                it.copy(
                    isRecognizing = false,
                    recognizedBlocks = blocks,
                    overlayEnabled = true,
                    selectedBlockId = null,
                    isTranslatingSelectedBlock = false,
                    isExplainingSelectedBlock = false,
                    isCleaningSelectedBlock = false,
                    selectedBlockCleanedText = null,
                    selectedBlockCleanupError = null,
                    selectedBlockExplanation = null,
                    selectedBlockExplanationError = null,
                    recognizedText = blocks.joinToString(separator = "\n\n") { block -> block.textOriginal }
                )
            }
            Result.Success(blocks)
        },
        onFailure = { error ->
            val message = ocrRecognitionFailedMessage(uiLanguage)
            _uiState.update {
                it.copy(
                    isRecognizing = false,
                    error = message
                )
            }
            Result.Error(message = message, exception = error)
        }
    )
}

internal suspend fun OcrViewModel.translateSelectedBlockInternal(
    block: OcrBlock,
    preferredTransport: TranslationTransportPreference
) {
    val uiLanguage = currentUiLanguage()
    val state = _uiState.value
    val sourceLanguage = block.detectedLanguage?.normalizeLanguageCode()
        ?: state.sourceLang.normalizeLanguageCode()
        ?: "en"
    val targetLanguage = state.targetLang.normalizeLanguageCode() ?: "ru"
    val translationInput = selectedBlockTranslationInput(block, state)
    val translationBlock = block.copy(
        textOriginal = translationInput,
        textNormalized = translationInput
    )
    when (
        val result = comicTranslationEngine.translateBlocks(
            blocks = listOf(translationBlock),
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage,
            preferredTransport = preferredTransport
        )
    ) {
        is Result.Success -> {
            val merged = mergeTranslatedBlocks(result.data)
            val filterState = loadTranslationFilterState()
            ocrPageCache.mergeTranslatedBlocks(
                pageId = buildPageCacheId(),
                sourceLanguage = state.sourceLang,
                targetLanguage = state.targetLang,
                transport = preferredTransport.name,
                filterProfile = filterState.cacheKey,
                newBlocks = result.data
            )
            _uiState.update {
                it.copy(
                    translatedBlocks = merged,
                    translatedText = merged.joinToString(separator = "\n\n") { overlay -> overlay.translatedText },
                    isTranslatingSelectedBlock = false,
                    isRetryingSelectedBlockOcr = false,
                    isExplainingSelectedBlock = false,
                    isCleaningSelectedBlock = false,
                    selectedBlockCleanedText = null,
                    selectedBlockCleanupError = null,
                    selectedBlockExplanation = null,
                    selectedBlockExplanationError = null
                )
            }
        }

        is Result.Error -> {
            _uiState.update {
                it.copy(
                    isTranslatingSelectedBlock = false,
                    error = when (result.exception) {
                        is TranslationBackendUnavailableException ->
                            resolveOcrTranslationUnavailableMessage(
                                language = uiLanguage,
                                preferredTransport = preferredTransport,
                                availability = _uiState.value.translationAvailability,
                                dictionaryRouteAvailable = false,
                                sourceLanguage = sourceLanguage,
                                targetLanguage = targetLanguage
                            )
                        else -> ocrBlockTranslationFailedMessage(uiLanguage)
                    }
                )
            }
        }

        Result.Loading -> Unit
    }
}

internal fun cropBitmapForBlock(bitmap: Bitmap, block: OcrBlock): Bitmap? {
    if (bitmap.width <= 0 || bitmap.height <= 0) return null
    val horizontalInset = (block.bboxWidth * 0.08f).coerceAtLeast(8f)
    val verticalInset = (block.bboxHeight * 0.12f).coerceAtLeast(8f)
    val left = (block.bboxLeft - horizontalInset).toInt().coerceIn(0, bitmap.width - 1)
    val top = (block.bboxTop - verticalInset).toInt().coerceIn(0, bitmap.height - 1)
    val right = (block.bboxLeft + block.bboxWidth + horizontalInset).toInt().coerceIn(left + 1, bitmap.width)
    val bottom = (block.bboxTop + block.bboxHeight + verticalInset).toInt().coerceIn(top + 1, bitmap.height)
    val cropRect = Rect(left, top, right, bottom)
    return runCatching {
        Bitmap.createBitmap(bitmap, cropRect.left, cropRect.top, cropRect.width(), cropRect.height())
    }.getOrNull()
}

internal fun pickBestRetriedBlockText(blocks: List<OcrBlock>): String? =
    blocks
        .mapNotNull { block ->
            val normalized = normalizeOcrComparisonText(block.textOriginal.ifBlank { block.textNormalized })
            normalized.takeIf { it.isNotBlank() }?.let { text ->
                Triple(text, text.count { !it.isWhitespace() }, block.bboxWidth * block.bboxHeight)
            }
        }
        .maxWithOrNull(compareBy<Triple<String, Int, Float>> { it.second }.thenBy { it.third })
        ?.first

internal fun normalizeOcrComparisonText(text: String): String =
    text.trim().replace(Regex("\\s+"), " ")
