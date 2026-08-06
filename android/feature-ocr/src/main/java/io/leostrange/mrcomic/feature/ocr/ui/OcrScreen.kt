package io.leostrange.mrcomic.feature.ocr.ui

import android.content.Intent
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import io.leostrange.mrcomic.core.ui.library.LibraryBackdropLayer
import io.leostrange.mrcomic.core.ui.library.RootChromeTopBarHost
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.locale.TranslationLanguageOption
import io.leostrange.mrcomic.core.ui.locale.ocrSourceLanguageOptions
import io.leostrange.mrcomic.core.ui.locale.translationLanguageShortLabel
import io.leostrange.mrcomic.core.ui.locale.translationTargetLanguageOptions
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropStrength
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropVeil
import io.leostrange.mrcomic.core.ui.library.rootChromeTopBarColors
import io.leostrange.mrcomic.feature.ocr.data.shouldAllowOcrDictionaryLookup

/**
 * OCR translation screen. The screen is split across focused files:
 * - [OcrScreenSections.kt] — the panel sections of the main column
 * - [OcrScreenBlockSheet.kt] — the selected-block bottom sheet
 * - [OcrScreenWidgets.kt] — shared panel/card/chip/button primitives
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun OcrScreen(
    imagePath: String? = null,
    onNavigateBack: () -> Unit,
    showBackButton: Boolean = false,
    backgroundStyle: String = DEFAULT_LIBRARY_BACKGROUND_STYLE,
    backgroundImageUri: String? = null,
    backdropStrength: Float = DEFAULT_LIBRARY_BACKDROP_STRENGTH,
    backgroundBlur: Float = DEFAULT_LIBRARY_BACKGROUND_BLUR,
    backgroundVeil: Float = DEFAULT_LIBRARY_BACKGROUND_VEIL,
    viewModel: OcrViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val strings = LocalStrings.current
    val text = remember(strings.languageCode) { ocrUiText(strings.languageCode) }
    val context = LocalContext.current
    val selectedBlock = remember(uiState.selectedBlockId, uiState.recognizedBlocks) {
        uiState.recognizedBlocks.firstOrNull { it.id == uiState.selectedBlockId }
    }
    val selectedBlockTranslation = remember(uiState.selectedBlockId, uiState.translatedBlocks) {
        uiState.translatedBlocks.firstOrNull { it.ocrBlockId == uiState.selectedBlockId }
    }
    val selectedBlockContext = remember(uiState.selectedBlockId, uiState.recognizedBlocks) {
        buildSelectedBlockContextPreview(
            selectedBlockId = uiState.selectedBlockId,
            recognizedBlocks = uiState.recognizedBlocks
        )
    }
    val manualTokenCount = remember(uiState.manualText) {
        uiState.manualText.countSelectionTokens()
    }

    val ocrSourceLangs = remember(strings.languageCode, text.transportAuto) {
        listOf(
            TranslationLanguageOption(
                code = OcrViewModel.AUTO_SOURCE_LANGUAGE,
                label = text.transportAuto,
                shortLabel = text.transportAuto
            )
        ) + ocrSourceLanguageOptions(strings.languageCode)
    }
    val targetLangs = remember(strings.languageCode) { translationTargetLanguageOptions(strings.languageCode) }
    val manualSourceLangs = remember(targetLangs, text.transportAuto) {
        listOf(
            TranslationLanguageOption(
                code = OcrViewModel.AUTO_SOURCE_LANGUAGE,
                label = text.transportAuto,
                shortLabel = text.transportAuto
            )
        ) + targetLangs
    }
    val sourceLangs = if (uiState.imageBitmap != null) ocrSourceLangs else manualSourceLangs
    val manualModeLabel = remember(uiState.manualResultMode, strings.languageCode) {
        ocrTranslationModeLabel(uiState.manualResultMode, strings.languageCode)
    }
    val sameLanguagePair = remember(uiState.sourceLang, uiState.targetLang) {
        uiState.sourceLang == uiState.targetLang
    }
    val machineTranslationAvailable = remember(uiState.translationAvailability, sameLanguagePair) {
        !sameLanguagePair && uiState.translationAvailability.canUseMachineTranslation
    }
    val activeLanguagePairLabel = remember(uiState.sourceLang, uiState.targetLang) {
        "${translationLanguageShortLabel(uiState.sourceLang)} → ${translationLanguageShortLabel(uiState.targetLang)}"
    }
    val isImageMode = uiState.imageBitmap != null
    val isPageBusy = uiState.isRecognizing || uiState.isTranslating
    val isManualBusy = isPageBusy || uiState.isExplainingManualText
    val isSelectedBlockBusy = isPageBusy || uiState.isTranslatingSelectedBlock || uiState.isExplainingSelectedBlock || uiState.isCleaningSelectedBlock
    val isInteractionLocked = isManualBusy || isSelectedBlockBusy
    val currentModeTitle = if (isImageMode) text.imageModeTitle else text.textModeTitle
    val currentModeHint = if (isImageMode) text.imageModeHint else text.textModeHint
    val sourceLanguageLabel = if (isImageMode) text.ocrLanguage else text.sourceLanguage
    val manualDictionaryRouteAvailable = remember(
        uiState.manualText,
        uiState.sourceLang,
        sameLanguagePair,
        uiState.translationAvailability.dictionaryAvailable
    ) {
        !sameLanguagePair &&
            shouldAllowOcrDictionaryLookup(uiState.manualText, uiState.sourceLang) &&
            uiState.translationAvailability.dictionaryAvailable
    }
    val selectedBlockSourceLanguage = remember(selectedBlock, uiState.sourceLang) {
        selectedBlock?.detectedLanguage ?: uiState.sourceLang
    }
    val selectedBlockTextForTranslation = remember(
        selectedBlock,
        uiState.selectedBlockCleanedText
    ) {
        selectedBlock?.let { block ->
            uiState.selectedBlockCleanedText
                ?.takeIf { it.isNotBlank() }
                ?: block.textNormalized.ifBlank { block.textOriginal }
                    .trim()
                    .replace(Regex("\\s+"), " ")
        }.orEmpty()
    }
    val selectedBlockSameLanguagePair = remember(selectedBlockSourceLanguage, uiState.targetLang) {
        selectedBlockSourceLanguage == uiState.targetLang
    }
    val selectedBlockDictionaryRouteAvailable = remember(
        selectedBlockTextForTranslation,
        selectedBlockSourceLanguage,
        selectedBlockSameLanguagePair,
        uiState.translationAvailability.dictionaryAvailable
    ) {
        selectedBlockTextForTranslation.isNotBlank() &&
            !selectedBlockSameLanguagePair &&
            shouldAllowOcrDictionaryLookup(
                rawText = selectedBlockTextForTranslation,
                sourceLanguage = selectedBlockSourceLanguage
            ) &&
            uiState.translationAvailability.dictionaryAvailable
    }
    val selectedBlockMachineTranslationAvailable = remember(
        selectedBlockSameLanguagePair,
        uiState.translationAvailability
    ) {
        !selectedBlockSameLanguagePair && uiState.translationAvailability.canUseMachineTranslation
    }
    val selectedBlockTranslateAvailable = remember(
        selectedBlockMachineTranslationAvailable,
        selectedBlockDictionaryRouteAvailable
    ) {
        selectedBlockMachineTranslationAvailable || selectedBlockDictionaryRouteAvailable
    }
    val manualTranslateAvailable = remember(machineTranslationAvailable, manualDictionaryRouteAvailable) {
        machineTranslationAvailable || manualDictionaryRouteAvailable
    }
    val translationBlockedMessage = remember(
        strings.languageCode,
        uiState.sourceLang,
        uiState.targetLang,
        sameLanguagePair,
        isImageMode,
        machineTranslationAvailable,
        manualTranslateAvailable,
        uiState.preferredTransport,
        uiState.translationAvailability
    ) {
        when {
            sameLanguagePair -> ocrAvailabilitySameLanguage(strings.languageCode)
            isImageMode && !machineTranslationAvailable -> resolveOcrTranslationUnavailableMessage(
                language = strings.languageCode,
                preferredTransport = uiState.preferredTransport,
                availability = uiState.translationAvailability,
                dictionaryRouteAvailable = false,
                sourceLanguage = uiState.sourceLang,
                targetLanguage = uiState.targetLang
            )
            !isImageMode && !manualTranslateAvailable -> resolveOcrTranslationUnavailableMessage(
                language = strings.languageCode,
                preferredTransport = uiState.preferredTransport,
                availability = uiState.translationAvailability,
                dictionaryRouteAvailable = manualDictionaryRouteAvailable,
                sourceLanguage = uiState.sourceLang,
                targetLanguage = uiState.targetLang
            )
            else -> null
        }
    }
    val selectedBlockTranslationBlockedMessage = remember(
        strings.languageCode,
        selectedBlockSourceLanguage,
        uiState.targetLang,
        selectedBlockSameLanguagePair,
        selectedBlockTranslateAvailable,
        selectedBlockDictionaryRouteAvailable,
        uiState.preferredTransport,
        uiState.translationAvailability
    ) {
        when {
            selectedBlock == null -> null
            selectedBlockSameLanguagePair -> ocrAvailabilitySameLanguage(strings.languageCode)
            !selectedBlockTranslateAvailable -> resolveOcrTranslationUnavailableMessage(
                language = strings.languageCode,
                preferredTransport = uiState.preferredTransport,
                availability = uiState.translationAvailability,
                dictionaryRouteAvailable = selectedBlockDictionaryRouteAvailable,
                sourceLanguage = selectedBlockSourceLanguage,
                targetLanguage = uiState.targetLang
            )
            else -> null
        }
    }
    val imageActionsHint = when {
        uiState.translatedBlocks.isNotEmpty() -> text.imageActionsTranslatedHint
        uiState.recognizedBlocks.isNotEmpty() -> text.imageActionsRecognizedHint
        else -> text.imageActionsInitialHint
    }
    val transportLabel = when (uiState.preferredTransport) {
        TranslationTransportPreference.AUTO -> text.transportAuto
        TranslationTransportPreference.OFFLINE -> text.transportOffline
        TranslationTransportPreference.ONLINE -> text.transportOnline
    }
    val activeOperationMessage = when {
        uiState.isPreparingOfflineModel -> ocrPreparingOfflineModelMessage(strings.languageCode)
        uiState.isRecognizing -> text.recognizingPage
        uiState.isTranslatingSelectedBlock -> text.translatingBlock
        uiState.isRetryingSelectedBlockOcr -> ocrRerunningBlockOcr(strings.languageCode)
        uiState.isCleaningSelectedBlock -> text.cleaningOcr
        uiState.isExplainingSelectedBlock || uiState.isExplainingManualText -> text.preparingExplanation
        uiState.isTranslating -> if (isImageMode) text.translatingPage else text.translating
        else -> null
    }
    val imagePicker = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        try {
            context.contentResolver.takePersistableUriPermission(
                uri,
                Intent.FLAG_GRANT_READ_URI_PERMISSION
            )
        } catch (_: Exception) {
        }
        viewModel.loadStandaloneImage(uri)
    }
    val onPickImage: () -> Unit = { imagePicker.launch(arrayOf("image/*")) }

    Scaffold(
        containerColor = Color.Transparent,
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        topBar = {
            RootChromeTopBarHost {
                TopAppBar(
                    title = { Text(text.screenTitle) },
                    colors = rootChromeTopBarColors(),
                    windowInsets = WindowInsets(0, 0, 0, 0),
                    navigationIcon = {
                        if (showBackButton) {
                            IconButton(onClick = onNavigateBack) {
                                Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = text.back)
                            }
                        }
                    }
                )
            }
        }
    ) { padding ->
        Box(modifier = Modifier.fillMaxSize()) {
            LibraryBackdropLayer(
                backgroundStyle = backgroundStyle,
                backgroundImageUri = backgroundImageUri,
                colorScheme = MaterialTheme.colorScheme,
                backdropStrength = rootChromeBackdropStrength(backdropStrength),
                backgroundBlur = backgroundBlur,
                imageVeil = rootChromeBackdropVeil(backgroundVeil),
                modifier = Modifier.fillMaxSize()
            )

            Column(
                modifier = Modifier
                    .padding(padding)
                    .fillMaxSize()
                    .verticalScroll(rememberScrollState())
                    .padding(horizontal = 16.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                OcrTranslationProfilePanel(
                    uiState = uiState,
                    viewModel = viewModel,
                    text = text,
                    languageCode = strings.languageCode,
                    currentModeTitle = currentModeTitle,
                    currentModeHint = currentModeHint,
                    activeLanguagePairLabel = activeLanguagePairLabel,
                    sourceLanguageLabel = sourceLanguageLabel,
                    sourceLangs = sourceLangs,
                    targetLangs = targetLangs,
                    transportLabel = transportLabel,
                    isImageMode = isImageMode,
                    isInteractionLocked = isInteractionLocked,
                    onPickImage = onPickImage
                )

                OcrActiveOperationCard(activeOperationMessage = activeOperationMessage)

                if (isImageMode) {
                    OcrImageModeContent(
                        uiState = uiState,
                        viewModel = viewModel,
                        text = text,
                        languageCode = strings.languageCode,
                        isInteractionLocked = isInteractionLocked,
                        machineTranslationAvailable = machineTranslationAvailable,
                        translationBlockedMessage = translationBlockedMessage,
                        imageActionsHint = imageActionsHint
                    )
                } else {
                    OcrManualInputField(
                        uiState = uiState,
                        viewModel = viewModel,
                        text = text,
                        isManualBusy = isManualBusy
                    )
                }

                OcrManualActionsPanel(
                    uiState = uiState,
                    viewModel = viewModel,
                    text = text,
                    languageCode = strings.languageCode,
                    isManualBusy = isManualBusy,
                    manualTranslateAvailable = manualTranslateAvailable,
                    translationBlockedMessage = translationBlockedMessage,
                    manualTokenCount = manualTokenCount
                )

                OcrTranslatedTextCard(
                    uiState = uiState,
                    viewModel = viewModel,
                    text = text,
                    languageCode = strings.languageCode,
                    isInteractionLocked = isInteractionLocked,
                    manualModeLabel = manualModeLabel,
                    activeLanguagePairLabel = activeLanguagePairLabel
                )

                OcrDictionaryEntryCard(
                    uiState = uiState,
                    text = text,
                    languageCode = strings.languageCode
                )

                OcrManualExplanationCard(
                    uiState = uiState,
                    text = text
                )

                OcrTranslatedBlocksCard(
                    uiState = uiState,
                    viewModel = viewModel,
                    text = text,
                    isInteractionLocked = isInteractionLocked
                )

                OcrSaveMessageCard(
                    uiState = uiState,
                    viewModel = viewModel,
                    text = text
                )

                OcrErrorCard(
                    uiState = uiState,
                    viewModel = viewModel,
                    text = text
                )
            }
        }
    }

    if (selectedBlock != null) {
        OcrBlockActionsSheet(
            block = selectedBlock,
            uiState = uiState,
            viewModel = viewModel,
            text = text,
            languageCode = strings.languageCode,
            isSelectedBlockBusy = isSelectedBlockBusy,
            selectedBlockTranslateAvailable = selectedBlockTranslateAvailable,
            selectedBlockTranslationBlockedMessage = selectedBlockTranslationBlockedMessage,
            selectedBlockTranslation = selectedBlockTranslation,
            selectedBlockContext = selectedBlockContext,
            selectedBlockSourceLanguage = selectedBlockSourceLanguage,
            onDismiss = viewModel::dismissSelectedBlock
        )
    }
}
