package io.leostrange.mrcomic.feature.ocr.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.model.OverlayDisplayMode
import io.leostrange.mrcomic.feature.ocr.data.shouldAllowOcrDictionaryLookup
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Small user actions and state setters. Extracted from OcrViewModel.kt as
 * extension functions.
 */

internal fun OcrViewModel.setSourceLang(lang: String) =
    _uiState.update {
        if (it.isInteractionLocked()) return@update it
        it.clearImageScenarioState()
            .clearManualScenarioState()
            .clearTransientFeedback()
            .copy(sourceLang = lang)
    }.also { refreshTranslationAvailabilityAsync() }

internal fun OcrViewModel.setTargetLang(lang: String) =
    _uiState.update {
        if (it.isInteractionLocked()) return@update it
        it.clearSelectedBlockState()
            .copy(
                targetLang = lang,
                translatedBlocks = emptyList(),
                overlayEnabled = true
            )
            .clearManualScenarioState()
            .clearTransientFeedback()
    }.also { refreshTranslationAvailabilityAsync() }

internal fun OcrViewModel.setManualText(text: String) =
    _uiState.update {
        if (it.isManualScenarioBusy()) return@update it
        it.clearImageScenarioState()
            .clearManualScenarioState()
            .clearTransientFeedback()
            .copy(manualText = text)
    }

internal fun OcrViewModel.setOverlayEnabled(enabled: Boolean) =
    _uiState.update { it.copy(overlayEnabled = enabled) }

internal fun OcrViewModel.setOverlayDisplayMode(mode: OverlayDisplayMode) =
    _uiState.update { it.copy(overlayDisplayMode = mode) }

internal fun OcrViewModel.clearError() = _uiState.update { it.copy(error = null, saveMessage = null) }

internal fun OcrViewModel.saveTranslationNote() {
    if (_uiState.value.isInteractionLocked()) return
    val comicId = _uiState.value.comicId ?: return
    val page = _uiState.value.page
    val translatedText = _uiState.value.translatedText.ifBlank { return }
    if (page < 0) return
    viewModelScope.launch {
        val uiLanguage = currentUiLanguage()
        preferences.set(PreferencesKeys.translationNote(comicId, page), translatedText)
        _uiState.update { it.copy(saveMessage = ocrNoteSavedMessage(page, uiLanguage)) }
    }
}

internal fun OcrViewModel.openDictionaryForManualText() {
    if (_uiState.value.isManualScenarioBusy()) return
    val normalizedText = _uiState.value.manualText.trim().replace(Regex("\\s+"), " ")
    if (normalizedText.isBlank()) return

    viewModelScope.launch {
        val targetLanguage = _uiState.value.targetLang.normalizeLanguageCode() ?: "ru"
        val uiLanguage = currentUiLanguage()
        val manualSourceResolution = resolveManualSourceLanguage(normalizedText)
        val sourceLanguage = manualSourceResolution.sourceLanguage
        if (!shouldAllowOcrDictionaryLookup(normalizedText, sourceLanguage)) return@launch
        _uiState.update {
            it.clearManualScenarioState()
                .clearTransientFeedback()
                .copy(isTranslating = true)
        }
        if (sourceLanguage == null) {
            _uiState.update {
                it.copy(
                    isTranslating = false,
                    error = ocrDictionaryUnavailableMessage(uiLanguage)
                )
            }
            return@launch
        }
        val success = applyManualDictionaryFallback(
            normalizedText = normalizedText,
            preferredSourceLanguage = sourceLanguage,
            detectedLanguage = manualSourceResolution.detectionResult?.languageCode,
            detectedCandidates = manualSourceResolution.detectionResult?.candidates
                ?.map { it.languageCode }
                .orEmpty(),
            targetLanguage = targetLanguage,
            uiLanguage = uiLanguage
        )
        if (!success && _uiState.value.error == null) {
            _uiState.update {
                it.copy(
                    isTranslating = false,
                    error = ocrDictionaryUnavailableMessage(uiLanguage)
                )
            }
        }
    }
}
