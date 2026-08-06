package io.leostrange.mrcomic.feature.ocr.ui

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.OcrBlock
import io.leostrange.mrcomic.core.model.OverlayBlock
import io.leostrange.mrcomic.core.model.OverlayDisplayMode
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationTransportPreference

/**
 * Immutable UI state of the OCR translation screen.
 */
data class OcrUiState(
    val imagePath: String? = null,
    val comicId: String? = null,
    val page: Int = -1,
    val imageBitmap: Bitmap? = null,
    val isRecognizing: Boolean = false,
    val isTranslating: Boolean = false,
    val recognizedBlocks: List<OcrBlock> = emptyList(),
    val translatedBlocks: List<OverlayBlock> = emptyList(),
    val overlayEnabled: Boolean = true,
    val overlayDisplayMode: OverlayDisplayMode = OverlayDisplayMode.OVERLAY,
    val selectedBlockId: String? = null,
    val isTranslatingSelectedBlock: Boolean = false,
    val isRetryingSelectedBlockOcr: Boolean = false,
    val isExplainingSelectedBlock: Boolean = false,
    val isCleaningSelectedBlock: Boolean = false,
    val selectedBlockCleanedText: String? = null,
    val selectedBlockCleanupError: String? = null,
    val selectedBlockExplanation: String? = null,
    val selectedBlockExplanationError: String? = null,
    val recognizedText: String = "",
    val translatedText: String = "",
    val manualText: String = "",
    val manualResultMode: TranslationMode? = null,
    val manualDictionaryEntry: DictionaryEntry? = null,
    val isExplainingManualText: Boolean = false,
    val manualExplanation: String? = null,
    val manualExplanationError: String? = null,
    /** Source language code for OCR/manual translation. */
    val sourceLang: String = OcrViewModel.AUTO_SOURCE_LANGUAGE,
    /** Target language code for translation output. */
    val targetLang: String = "ru",
    val preferredTransport: TranslationTransportPreference = TranslationTransportPreference.AUTO,
    val overlayOpacity: Float = 0.85f,
    val overlayFontScale: Float = 1.0f,
    val overlayStyle: String = "AUTO",
    val translationAvailability: OcrTranslationAvailability = OcrTranslationAvailability(),
    val isPreparingOfflineModel: Boolean = false,
    val saveMessage: String? = null,
    val error: String? = null
)

/**
 * Snapshot of which translation backends are usable for the current language pair.
 */
data class OcrTranslationAvailability(
    val isRefreshing: Boolean = false,
    val dictionaryAvailable: Boolean = false,
    val offlinePairSupported: Boolean = false,
    val offlineModelInstalled: Boolean = false,
    val networkAvailable: Boolean = false,
    val onlineConfigured: Boolean = false,
    val explainToggleEnabled: Boolean = false
) {
    val canDownloadOfflineModel: Boolean
        get() = offlinePairSupported && !offlineModelInstalled && networkAvailable
    val canUseOnlineTranslation: Boolean
        get() = onlineConfigured && networkAvailable
    val canUseMachineTranslation: Boolean
        get() = offlineModelInstalled || canUseOnlineTranslation
}

internal fun OcrUiState.isPageOperationRunning(): Boolean =
    isRecognizing || isTranslating || isPreparingOfflineModel

internal fun OcrUiState.isManualScenarioBusy(): Boolean =
    isPageOperationRunning() || isExplainingManualText

internal fun OcrUiState.isSelectedBlockBusy(): Boolean =
    isPageOperationRunning() || isTranslatingSelectedBlock || isRetryingSelectedBlockOcr ||
        isExplainingSelectedBlock || isCleaningSelectedBlock

internal fun OcrUiState.isInteractionLocked(): Boolean =
    isManualScenarioBusy() || isSelectedBlockBusy()

internal fun OcrUiState.clearTransientFeedback(): OcrUiState =
    copy(saveMessage = null, error = null)

internal fun OcrUiState.clearSelectedBlockState(): OcrUiState =
    copy(
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

internal fun OcrUiState.clearImageScenarioState(): OcrUiState =
    clearSelectedBlockState().copy(
        isRecognizing = false,
        recognizedBlocks = emptyList(),
        translatedBlocks = emptyList(),
        overlayEnabled = true,
        overlayDisplayMode = OverlayDisplayMode.OVERLAY,
        recognizedText = ""
    )

internal fun OcrUiState.clearManualScenarioState(clearManualText: Boolean = false): OcrUiState =
    copy(
        manualText = if (clearManualText) "" else manualText,
        translatedText = "",
        manualResultMode = null,
        manualDictionaryEntry = null,
        isExplainingManualText = false,
        manualExplanation = null,
        manualExplanationError = null
    )
