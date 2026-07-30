package io.leostrange.mrcomic.feature.ocr.ui

import android.content.Intent
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import io.leostrange.mrcomic.core.model.OverlayDisplayMode
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import io.leostrange.mrcomic.core.ui.library.LibraryBackdropLayer
import io.leostrange.mrcomic.core.ui.library.RootChromeDensePillShape
import io.leostrange.mrcomic.core.ui.library.RootChromePanelShape
import io.leostrange.mrcomic.core.ui.library.RootChromePillShape
import io.leostrange.mrcomic.core.ui.library.RootChromeTone
import io.leostrange.mrcomic.core.ui.library.RootChromeTopBarHost
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.locale.TranslationLanguageOption
import io.leostrange.mrcomic.core.ui.locale.ocrSourceLanguageOptions
import io.leostrange.mrcomic.core.ui.locale.translationLanguageShortLabel
import io.leostrange.mrcomic.core.ui.locale.translationTargetLanguageOptions
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropStrength
import io.leostrange.mrcomic.core.ui.library.rootChromeBackdropVeil
import io.leostrange.mrcomic.core.ui.library.rootChromePanelColor
import io.leostrange.mrcomic.core.ui.library.rootChromePillBorder
import io.leostrange.mrcomic.core.ui.library.rootChromePillContainerColor
import io.leostrange.mrcomic.core.ui.library.rootChromePillContentColor
import io.leostrange.mrcomic.core.ui.library.rootChromeTextFieldColors
import io.leostrange.mrcomic.core.ui.library.rootChromeTopBarColors
import io.leostrange.mrcomic.feature.ocr.data.shouldAllowOcrDictionaryLookup

@OptIn(ExperimentalLayoutApi::class, ExperimentalMaterial3Api::class)
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
    val clipboardManager = LocalClipboardManager.current
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
        Regex("[\\p{L}\\p{N}]+").findAll(uiState.manualText).count()
            .coerceAtLeast(if (uiState.manualText.isBlank()) 0 else 1)
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
        io.leostrange.mrcomic.core.model.TranslationTransportPreference.AUTO -> text.transportAuto
        io.leostrange.mrcomic.core.model.TranslationTransportPreference.OFFLINE -> text.transportOffline
        io.leostrange.mrcomic.core.model.TranslationTransportPreference.ONLINE -> text.transportOnline
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
                OcrPanelCard(tone = OcrPanelTone.SOFT) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                    Text(
                        text = text.translationProfileTitle,
                        style = MaterialTheme.typography.titleSmall
                    )
                    Text(
                        text = currentModeHint,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        AssistChip(
                            onClick = {},
                            enabled = false,
                            label = { Text(currentModeTitle) }
                        )
                        AssistChip(
                            onClick = {},
                            enabled = false,
                            label = { Text(activeLanguagePairLabel) }
                        )
                        AssistChip(
                            onClick = {},
                            enabled = false,
                            label = { Text("${text.translationMode}: $transportLabel") }
                        )
                    }
                    HorizontalDivider()
                    Text(
                        text = sourceLanguageLabel,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        sourceLangs.forEach { option ->
                            FilterChip(
                                selected = uiState.sourceLang == option.code,
                                onClick = { viewModel.setSourceLang(option.code) },
                                enabled = !isInteractionLocked,
                                label = { Text(option.shortLabel) }
                            )
                        }
                    }
                    Text(
                        text = text.targetLanguage,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        targetLangs.forEach { option ->
                            FilterChip(
                                selected = uiState.targetLang == option.code,
                                onClick = { viewModel.setTargetLang(option.code) },
                                enabled = !isInteractionLocked,
                                label = { Text(option.shortLabel) }
                            )
                        }
                    }
                    Text(
                        text = text.transportPrefix,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    OcrPanelCard(
                        modifier = Modifier.fillMaxWidth(),
                    ) {
                        Column(
                            modifier = Modifier.padding(10.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Text(
                                text = ocrAvailabilityTitle(strings.languageCode),
                                style = MaterialTheme.typography.labelLarge,
                                color = MaterialTheme.colorScheme.primary
                            )
                            if (uiState.translationAvailability.isRefreshing) {
                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                                ) {
                                    CircularProgressIndicator(
                                        modifier = Modifier.size(16.dp),
                                        strokeWidth = 2.dp
                                    )
                                    Text(
                                        text = ocrAvailabilityChecking(strings.languageCode),
                                        style = MaterialTheme.typography.bodySmall
                                    )
                                }
                            } else {
                                FlowRow(
                                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                                    verticalArrangement = Arrangement.spacedBy(8.dp)
                                ) {
                                    if (uiState.sourceLang == uiState.targetLang) {
                                        AssistChip(
                                            onClick = {},
                                            enabled = false,
                                            label = { Text(ocrAvailabilitySameLanguage(strings.languageCode)) }
                                        )
                                    } else {
                                        AssistChip(
                                            onClick = {},
                                            enabled = false,
                                            label = {
                                                Text(
                                                    if (uiState.translationAvailability.dictionaryAvailable) {
                                                        ocrAvailabilityDictionaryReady(strings.languageCode)
                                                    } else {
                                                        ocrAvailabilityDictionaryMissing(strings.languageCode)
                                                    }
                                                )
                                            }
                                        )
                                        AssistChip(
                                            onClick = {},
                                            enabled = false,
                                            label = {
                                                Text(
                                                    when {
                                                        uiState.translationAvailability.offlineModelInstalled ->
                                                            ocrAvailabilityOfflineReady(strings.languageCode)
                                                        uiState.translationAvailability.canDownloadOfflineModel ->
                                                            ocrAvailabilityOfflineCanDownload(strings.languageCode)
                                                        uiState.translationAvailability.offlinePairSupported ->
                                                            ocrAvailabilityOfflineNeedsNetwork(strings.languageCode)
                                                        else ->
                                                            ocrAvailabilityOfflineUnsupported(strings.languageCode)
                                                    }
                                                )
                                            }
                                        )
                                        AssistChip(
                                            onClick = {},
                                            enabled = false,
                                            label = {
                                                Text(
                                                    if (uiState.translationAvailability.canUseOnlineTranslation) {
                                                        ocrAvailabilityOnlineReady(strings.languageCode)
                                                    } else if (uiState.translationAvailability.onlineConfigured) {
                                                        ocrAvailabilityOnlineNeedsNetwork(strings.languageCode)
                                                    } else {
                                                        ocrAvailabilityOnlineMissing(strings.languageCode)
                                                    }
                                                )
                                            }
                                        )
                                    }
                                    AssistChip(
                                        onClick = {},
                                        enabled = false,
                                        label = { Text(ocrAvailabilityExplainWord(strings.languageCode)) }
                                    )
                                    AssistChip(
                                        onClick = {},
                                        enabled = false,
                                        label = {
                                            Text(
                                                if (uiState.translationAvailability.explainToggleEnabled) {
                                                    ocrAvailabilityExplainPhraseEnabled(strings.languageCode)
                                                } else {
                                                    ocrAvailabilityExplainPhraseDisabled(strings.languageCode)
                                                }
                                            )
                                        }
                                    )
                                }
                                if (
                                    uiState.sourceLang != uiState.targetLang &&
                                    uiState.translationAvailability.canDownloadOfflineModel
                                ) {
                                    OutlinedButton(
                                        onClick = viewModel::prepareOfflineLanguagePair,
                                        enabled = !isInteractionLocked,
                                        modifier = Modifier.fillMaxWidth()
                                    ) {
                                        Text(ocrDownloadOfflineModelAction(strings.languageCode))
                                    }
                                }
                            }
                        }
                    }
                    if (isImageMode) {
                        if (uiState.comicId == null) {
                            FlowRow(
                                horizontalArrangement = Arrangement.spacedBy(8.dp),
                                verticalArrangement = Arrangement.spacedBy(8.dp)
                            ) {
                                OutlinedButton(
                                    onClick = { imagePicker.launch(arrayOf("image/*")) },
                                    enabled = !isInteractionLocked
                                ) {
                                    Text(text.pickOtherImage)
                                }
                                OutlinedButton(
                                    onClick = viewModel::clearStandaloneImage,
                                    enabled = !isInteractionLocked
                                ) {
                                    Text(text.manualMode)
                                }
                            }
                        }
                    } else {
                        OutlinedButton(
                            onClick = { imagePicker.launch(arrayOf("image/*")) },
                            enabled = !isInteractionLocked,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text(text.pickPageImage)
                        }
                    }
                }
            }

                if (activeOperationMessage != null) {
                    OcrPanelCard(
                    modifier = Modifier.fillMaxWidth(),
                    tone = OcrPanelTone.ACCENT
                ) {
                    Row(
                        modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(10.dp)
                    ) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(18.dp),
                            strokeWidth = 2.dp
                        )
                        Text(
                            text = activeOperationMessage,
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSecondaryContainer
                        )
                    }
                }
            }

            // ── Image mode (page from reader) ─────────────────────────────
                if (isImageMode) {
                    OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(12.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        OverlayRenderer(
                            bitmap = uiState.imageBitmap!!,
                            sourceBlocks = uiState.recognizedBlocks,
                            translatedBlocks = uiState.translatedBlocks,
                            showOverlay = uiState.overlayEnabled,
                            overlayDisplayMode = uiState.overlayDisplayMode,
                            overlayOpacity = uiState.overlayOpacity,
                            overlayFontScale = uiState.overlayFontScale,
                            overlayStyle = uiState.overlayStyle,
                            onBlockClick = { blockId ->
                                if (!isInteractionLocked) {
                                    viewModel.selectBlock(blockId)
                                }
                            },
                            pageContentDescription = text.pagePreviewDescription
                        )
                    }
                }

                    OcrPanelCard(
                    modifier = Modifier.fillMaxWidth(),
                    tone = OcrPanelTone.SOFT
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text(
                            text.imageActionsTitle,
                            style = MaterialTheme.typography.titleSmall
                        )
                        Text(
                            text = imageActionsHint,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        FlowRow(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            if (uiState.recognizedBlocks.isNotEmpty()) {
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = { Text("${text.textBlocksPrefix}: ${uiState.recognizedBlocks.size}") }
                                )
                            }
                            if (uiState.translatedBlocks.isNotEmpty()) {
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = { Text("${text.translatedBlocksPrefix}: ${uiState.translatedBlocks.size}") }
                                )
                            }
                        }
                        Button(
                            onClick = viewModel::translateVisiblePage,
                            enabled = !isInteractionLocked && machineTranslationAvailable,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            if (uiState.isRecognizing || uiState.isTranslating) {
                                CircularProgressIndicator(
                                    modifier = Modifier.size(16.dp),
                                    strokeWidth = 2.dp,
                                    color = MaterialTheme.colorScheme.onPrimary
                                )
                                Spacer(Modifier.width(8.dp))
                                Text(if (uiState.isRecognizing) text.recognizingPage else text.translatingPage)
                            } else {
                                Icon(Icons.Default.Translate, contentDescription = null)
                                Spacer(Modifier.width(8.dp))
                                Text(text.translateVisiblePage)
                            }
                        }
                        if (!machineTranslationAvailable) {
                            Text(
                                text = translationBlockedMessage ?: ocrTranslationBackendUnavailableMessage(
                                    language = strings.languageCode,
                                    sourceLanguage = uiState.sourceLang,
                                    targetLanguage = uiState.targetLang
                                ),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }

                        OutlinedButton(
                            onClick = viewModel::recognize,
                            enabled = !isInteractionLocked,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text(text.recognizeOnly)
                        }
                    }
                }

                    if (uiState.recognizedText.isNotBlank()) {
                        OcrPanelCard(
                        modifier = Modifier.fillMaxWidth(),
                        tone = OcrPanelTone.SOFT
                    ) {
                        Column(modifier = Modifier.padding(12.dp)) {
                            Text(
                                text.recognizedText,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.primary
                            )
                            Spacer(Modifier.height(4.dp))
                            Text(
                                uiState.recognizedText,
                                style = MaterialTheme.typography.bodyMedium
                            )
                        }
                    }
                }

                    if (uiState.recognizedBlocks.isNotEmpty()) {
                        OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                        Column(
                            modifier = Modifier.padding(12.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Text(
                                text = "${text.textBlocksPrefix}: ${uiState.recognizedBlocks.size}",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.primary
                            )
                            uiState.recognizedBlocks.forEachIndexed { index, block ->
                                Surface(
                                    modifier = Modifier.clickable(enabled = !isInteractionLocked) {
                                        viewModel.selectBlock(block.id)
                                    },
                                    shape = MaterialTheme.shapes.medium,
                                    color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.55f)
                                ) {
                                    Column(
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .padding(horizontal = 10.dp, vertical = 8.dp),
                                        verticalArrangement = Arrangement.spacedBy(4.dp)
                                    ) {
                                        Text(
                                            text = "${text.blockPrefix} ${index + 1}",
                                            style = MaterialTheme.typography.labelSmall,
                                            color = MaterialTheme.colorScheme.primary
                                        )
                                        AssistChip(
                                            onClick = {},
                                            enabled = false,
                                            label = { Text(text = ocrBlockTypeLabel(block.blockType, strings.languageCode)) }
                                        )
                                        Text(
                                            text = block.textOriginal,
                                            style = MaterialTheme.typography.bodySmall
                                        )
                                        Text(
                                            text = text.tapForBlockCard,
                                            style = MaterialTheme.typography.labelSmall,
                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                        )
                                    }
                                }
                            }
                        }
                    }
                }

            } else {
                OutlinedTextField(
                    value = uiState.manualText,
                    onValueChange = viewModel::setManualText,
                    label = { Text(text.manualInputLabel) },
                    placeholder = { Text(text.manualInputPlaceholder) },
                    modifier = Modifier
                        .fillMaxWidth()
                        .heightIn(min = 120.dp),
                    maxLines = 8,
                    enabled = !isManualBusy,
                    shape = RootChromePanelShape,
                    colors = rootChromeTextFieldColors()
                )
            }

            val hasTextToTranslate = uiState.imageBitmap == null && uiState.manualText.isNotBlank()
            if (uiState.imageBitmap == null) {
                    OcrPanelCard(
                    modifier = Modifier.fillMaxWidth(),
                    tone = OcrPanelTone.SOFT
                ) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text(
                            text.manualActionsTitle,
                            style = MaterialTheme.typography.titleSmall
                        )
                        Text(
                            text = if (uiState.manualText.isBlank()) {
                                text.textModeHint
                            } else if (manualTokenCount == 1) {
                                text.manualActionsWordHint
                            } else {
                                text.manualActionsPhraseHint
                            },
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Button(
                            onClick = viewModel::translate,
                            enabled = hasTextToTranslate && !isManualBusy && manualTranslateAvailable,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            if (uiState.isTranslating) {
                                CircularProgressIndicator(
                                    modifier = Modifier.size(16.dp),
                                    strokeWidth = 2.dp,
                                    color = MaterialTheme.colorScheme.onPrimary
                                )
                                Spacer(Modifier.width(8.dp))
                                Text(text.translating)
                            } else {
                                Text(text.translate)
                            }
                        }
                        if (hasTextToTranslate && !manualTranslateAvailable) {
                            Text(
                                text = translationBlockedMessage ?: ocrTranslationBackendUnavailableMessage(
                                    language = strings.languageCode,
                                    sourceLanguage = uiState.sourceLang,
                                    targetLanguage = uiState.targetLang
                                ),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }

                        if (uiState.manualText.isNotBlank()) {
                            FlowRow(
                                horizontalArrangement = Arrangement.spacedBy(8.dp),
                                verticalArrangement = Arrangement.spacedBy(8.dp)
                            ) {
                                if (manualTokenCount == 1) {
                                    OutlinedButton(
                                        onClick = viewModel::openDictionaryForManualText,
                                        enabled = !isManualBusy
                                    ) {
                                        Text(text.dictionary)
                                    }
                                }
                                OutlinedButton(
                                    onClick = viewModel::explainManualText,
                                    enabled = !isManualBusy
                                ) {
                                    Text(text.explain)
                                }
                                if (uiState.translatedText.isNotBlank()) {
                                    OutlinedButton(
                                        onClick = {
                                            clipboardManager.setText(AnnotatedString(uiState.translatedText))
                                        }
                                    ) {
                                        Text(text.copyTranslation)
                                    }
                                }
                            }
                        }
                    }
                }
            }

                if (uiState.translatedText.isNotBlank()) {
                    OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                    Column(modifier = Modifier.padding(12.dp)) {
                        Text(
                            text.translation,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        Spacer(Modifier.height(4.dp))
                        if (uiState.imageBitmap == null) {
                            FlowRow(
                                horizontalArrangement = Arrangement.spacedBy(8.dp),
                                verticalArrangement = Arrangement.spacedBy(8.dp)
                            ) {
                                manualModeLabel?.let { modeLabel ->
                                    AssistChip(
                                        onClick = {},
                                        enabled = false,
                                        label = { Text(modeLabel) }
                                    )
                                }
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = { Text(activeLanguagePairLabel) }
                                )
                            }
                            Spacer(Modifier.height(8.dp))
                        }
                        Text(
                            uiState.translatedText,
                            style = MaterialTheme.typography.bodyMedium
                        )
                        Spacer(Modifier.height(12.dp))
                        FlowRow(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            OutlinedButton(
                                onClick = {
                                    clipboardManager.setText(AnnotatedString(uiState.translatedText))
                                }
                            ) {
                                Text(text.copyTranslation)
                            }
                        }
                        if (uiState.comicId != null && uiState.page >= 0) {
                            Spacer(Modifier.height(12.dp))
                            OutlinedButton(
                                onClick = viewModel::saveTranslationNote,
                                enabled = !isInteractionLocked
                            ) {
                                Text(text.saveNote)
                            }
                        }
                        if (uiState.translatedBlocks.isNotEmpty()) {
                            Spacer(Modifier.height(12.dp))
                            FlowRow(
                                horizontalArrangement = Arrangement.spacedBy(8.dp),
                                verticalArrangement = Arrangement.spacedBy(8.dp)
                            ) {
                                FilterChip(
                                    selected = uiState.overlayEnabled,
                                    onClick = { viewModel.setOverlayEnabled(!uiState.overlayEnabled) },
                                    enabled = !isInteractionLocked,
                                    label = {
                                        Text(if (uiState.overlayEnabled) text.hideOverlay else text.showOverlay)
                                    }
                                )
                                FilterChip(
                                    selected = uiState.overlayDisplayMode == OverlayDisplayMode.BUBBLE_PREVIEW,
                                    onClick = {
                                        viewModel.setOverlayDisplayMode(
                                            if (uiState.overlayDisplayMode == OverlayDisplayMode.BUBBLE_PREVIEW) {
                                                OverlayDisplayMode.OVERLAY
                                            } else {
                                                OverlayDisplayMode.BUBBLE_PREVIEW
                                            }
                                        )
                                    },
                                    enabled = !isInteractionLocked,
                                    label = {
                                        Text(
                                            if (uiState.overlayDisplayMode == OverlayDisplayMode.BUBBLE_PREVIEW) {
                                                text.bubblePreview
                                            } else {
                                                text.overlayMode
                                            }
                                        )
                                    }
                                )
                            }
                        }
                    }
                }
            }

                if (uiState.imageBitmap == null && uiState.manualDictionaryEntry != null) {
                val entry = uiState.manualDictionaryEntry!!
                    OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Text(
                            text.dictionary,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        Text(
                            "${text.dictionaryLemma}: ${entry.lemma}",
                            style = MaterialTheme.typography.bodyMedium
                        )
                        entry.partOfSpeech?.takeIf { it.isNotBlank() }?.let { partOfSpeech ->
                            Text(
                                "${text.dictionaryPartOfSpeech}: ${ocrLocalizePartOfSpeech(partOfSpeech, strings.languageCode) ?: partOfSpeech}",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                        val meanings = entry.translations
                            .map { it.trim() }
                            .filter { it.isNotBlank() }
                            .take(5)
                        if (meanings.isNotEmpty()) {
                            Text(
                                "${text.dictionaryMeanings}: ${meanings.joinToString("; ")}",
                                style = MaterialTheme.typography.bodySmall
                            )
                        }
                        val forms = entry.forms
                            .map { it.trim() }
                            .filter { it.isNotBlank() }
                            .take(4)
                        if (forms.isNotEmpty()) {
                            Text(
                                "${text.dictionaryForms}: ${forms.joinToString(", ")}",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
            }

                if (
                    uiState.imageBitmap == null &&
                    (uiState.isExplainingManualText ||
                        !uiState.manualExplanation.isNullOrBlank() ||
                        !uiState.manualExplanationError.isNullOrBlank())
                ) {
                    OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Text(
                            text.explanation,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        when {
                            uiState.isExplainingManualText -> {
                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                                ) {
                                    CircularProgressIndicator(
                                        modifier = Modifier.size(16.dp),
                                        strokeWidth = 2.dp
                                    )
                                    Text(text.preparingExplanation)
                                }
                            }

                            !uiState.manualExplanation.isNullOrBlank() -> {
                                Text(
                                    uiState.manualExplanation!!,
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }

                            !uiState.manualExplanationError.isNullOrBlank() -> {
                                Text(
                                    uiState.manualExplanationError!!,
                                    style = MaterialTheme.typography.bodySmall,
                                    color = MaterialTheme.colorScheme.error
                                )
                            }
                        }
                    }
                }
            }

                if (uiState.translatedBlocks.isNotEmpty()) {
                    OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text(
                            text = "${text.translatedBlocksPrefix}: ${uiState.translatedBlocks.size}",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        uiState.translatedBlocks.forEachIndexed { index, block ->
                            Surface(
                                modifier = Modifier.clickable(enabled = !isInteractionLocked) {
                                    viewModel.selectBlock(block.ocrBlockId)
                                },
                                shape = MaterialTheme.shapes.medium,
                                color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.5f)
                            ) {
                                Column(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(horizontal = 10.dp, vertical = 8.dp),
                                    verticalArrangement = Arrangement.spacedBy(4.dp)
                                ) {
                                    Text(
                                        text = "${text.translatedBlockPrefix} ${index + 1}",
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.primary
                                    )
                                        Text(
                                            text = block.translatedText,
                                            style = MaterialTheme.typography.bodySmall
                                        )
                                    }
                            }
                        }
                    }
                }
            }

                uiState.saveMessage?.let { saveMessage ->
                    OcrPanelCard(
                    modifier = Modifier.fillMaxWidth(),
                    tone = OcrPanelTone.ACCENT
                ) {
                    Row(
                        modifier = Modifier.padding(12.dp),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = saveMessage,
                            modifier = Modifier.weight(1f),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSecondaryContainer
                        )
                        TextButton(onClick = viewModel::clearError) { Text(text.dismissMessage) }
                    }
                }
            }

            // ── Error ─────────────────────────────────────────────────────
                if (uiState.error != null) {
                    OcrPanelCard(
                    modifier = Modifier.fillMaxWidth(),
                    tone = OcrPanelTone.ERROR
                ) {
                    Row(
                        modifier = Modifier.padding(12.dp),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            uiState.error!!,
                            modifier = Modifier.weight(1f),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onErrorContainer
                        )
                        TextButton(onClick = viewModel::clearError) { Text(text.dismissMessage) }
                    }
                }
            }
            }
        }
    }

    if (selectedBlock != null) {
        ModalBottomSheet(
            onDismissRequest = viewModel::dismissSelectedBlock,
            shape = RoundedCornerShape(topStart = 28.dp, topEnd = 28.dp),
            containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.97f),
            scrimColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.24f),
            dragHandle = {
                BottomSheetDefaults.DragHandle(
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.45f)
                )
            }
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Text(
                    text = text.translationBlockTitle,
                    style = MaterialTheme.typography.titleMedium
                )
                OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Text(
                            text = text.original,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        FlowRow(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            AssistChip(
                                onClick = {},
                                enabled = false,
                                label = { Text(text = ocrBlockTypeLabel(selectedBlock.blockType, strings.languageCode)) }
                            )
                            ocrDetectedLanguageChipLabel(
                                detectedLanguage = selectedBlock.detectedLanguage ?: uiState.sourceLang,
                                language = strings.languageCode
                            )?.let { label ->
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = { Text(label) }
                                )
                            }
                            ocrConfidenceChipLabel(
                                confidence = selectedBlock.confidence,
                                language = strings.languageCode
                            )?.let { label ->
                                AssistChip(
                                    onClick = {},
                                    enabled = false,
                                    label = { Text(label) }
                                )
                            }
                        }
                        Text(
                            text = selectedBlock.textOriginal,
                            style = MaterialTheme.typography.bodyMedium
                        )
                    }
                }

                if (selectedBlockContext.first != null || selectedBlockContext.second != null) {
                    OcrPanelCard(modifier = Modifier.fillMaxWidth(), tone = OcrPanelTone.SOFT) {
                        Column(
                            modifier = Modifier.padding(12.dp),
                            verticalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Text(
                                text = text.contextTitle,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.primary
                            )
                            selectedBlockContext.first?.let { contextBefore ->
                                Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                                    Text(
                                        text = text.contextBefore,
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                    Text(
                                        text = contextBefore,
                                        style = MaterialTheme.typography.bodyMedium
                                    )
                                }
                            }
                            selectedBlockContext.second?.let { contextAfter ->
                                Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                                    Text(
                                        text = text.contextAfter,
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                    Text(
                                        text = contextAfter,
                                        style = MaterialTheme.typography.bodyMedium
                                    )
                                }
                            }
                        }
                    }
                }

                OcrPanelCard(modifier = Modifier.fillMaxWidth()) {
                    Column(
                        modifier = Modifier.padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Text(
                            text = text.translation,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                        when {
                            uiState.isTranslatingSelectedBlock -> {
                                Row(
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                                ) {
                                    CircularProgressIndicator(
                                        modifier = Modifier.size(16.dp),
                                        strokeWidth = 2.dp
                                    )
                                    Text(text.translatingBlock)
                                }
                            }

                            selectedBlockTranslation != null -> {
                                ocrOverlayTranslationMetaLabel(
                                    mode = selectedBlockTranslation.translationMode,
                                    provider = selectedBlockTranslation.provider,
                                    isOffline = selectedBlockTranslation.isOffline,
                                    language = strings.languageCode
                                )?.let { meta ->
                                    AssistChip(
                                        onClick = {},
                                        enabled = false,
                                        label = { Text(meta) }
                                    )
                                    Spacer(Modifier.height(6.dp))
                                }
                                Text(
                                    text = selectedBlockTranslation.translatedText,
                                    style = MaterialTheme.typography.bodyMedium
                                )
                            }

                            else -> {
                                Text(
                                    text = text.blockTranslationPending,
                                    style = MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                        }
                    }
                }

                if (
                    uiState.isCleaningSelectedBlock ||
                    !uiState.selectedBlockCleanedText.isNullOrBlank() ||
                    !uiState.selectedBlockCleanupError.isNullOrBlank()
                ) {
                    OcrPanelCard(modifier = Modifier.fillMaxWidth(), tone = OcrPanelTone.SOFT) {
                        Column(
                            modifier = Modifier.padding(12.dp),
                            verticalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            Text(
                                text = text.cleanedOcr,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.primary
                            )
                            when {
                                uiState.isCleaningSelectedBlock -> {
                                    Row(
                                        verticalAlignment = Alignment.CenterVertically,
                                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                                    ) {
                                        CircularProgressIndicator(
                                            modifier = Modifier.size(16.dp),
                                            strokeWidth = 2.dp
                                        )
                                        Text(text.cleaningOcr)
                                    }
                                }

                                !uiState.selectedBlockCleanedText.isNullOrBlank() -> {
                                    Text(
                                        text = uiState.selectedBlockCleanedText!!,
                                        style = MaterialTheme.typography.bodyMedium
                                    )
                                }

                                !uiState.selectedBlockCleanupError.isNullOrBlank() -> {
                                    Text(
                                        text = uiState.selectedBlockCleanupError!!,
                                        style = MaterialTheme.typography.bodyMedium,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                }
                            }
                        }
                    }
                }

                if (
                    uiState.isExplainingSelectedBlock ||
                    !uiState.selectedBlockExplanation.isNullOrBlank() ||
                    !uiState.selectedBlockExplanationError.isNullOrBlank()
                ) {
                    OcrPanelCard(modifier = Modifier.fillMaxWidth(), tone = OcrPanelTone.SOFT) {
                        Column(
                            modifier = Modifier.padding(12.dp),
                            verticalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            Text(
                                text = text.explanation,
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.primary
                            )
                            when {
                                uiState.isExplainingSelectedBlock -> {
                                    Row(
                                        verticalAlignment = Alignment.CenterVertically,
                                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                                    ) {
                                        CircularProgressIndicator(
                                            modifier = Modifier.size(16.dp),
                                            strokeWidth = 2.dp
                                        )
                                        Text(text.preparingExplanation)
                                    }
                                }

                                !uiState.selectedBlockExplanation.isNullOrBlank() -> {
                                    Text(
                                        text = uiState.selectedBlockExplanation!!,
                                        style = MaterialTheme.typography.bodyMedium
                                    )
                                }

                                !uiState.selectedBlockExplanationError.isNullOrBlank() -> {
                                    Text(
                                        text = uiState.selectedBlockExplanationError!!,
                                        style = MaterialTheme.typography.bodyMedium,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                }
                            }
                        }
                    }
                }

                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Button(
                            onClick = viewModel::translateSelectedBlock,
                            enabled = !isSelectedBlockBusy && selectedBlockTranslateAvailable
                        ) {
                            Text(
                                ocrTranslateBlockAction(
                                    language = strings.languageCode,
                                    hasTranslation = selectedBlockTranslation != null
                                )
                            )
                        }
                        OutlinedButton(
                            onClick = {
                                viewModel.translateSelectedBlockWithTransport(
                                    io.leostrange.mrcomic.core.model.TranslationTransportPreference.AUTO
                                )
                            },
                            enabled = !isSelectedBlockBusy && selectedBlockTranslateAvailable
                        ) {
                            Text(text.transportAuto)
                        }
                        OutlinedButton(
                            onClick = {
                                viewModel.translateSelectedBlockWithTransport(
                                    io.leostrange.mrcomic.core.model.TranslationTransportPreference.OFFLINE
                                )
                            },
                            enabled = !isSelectedBlockBusy && uiState.translationAvailability.offlineModelInstalled
                        ) {
                            Text(text.transportOffline)
                        }
                        OutlinedButton(
                            onClick = {
                                viewModel.translateSelectedBlockWithTransport(
                                    io.leostrange.mrcomic.core.model.TranslationTransportPreference.ONLINE
                                )
                            },
                            enabled = !isSelectedBlockBusy && uiState.translationAvailability.canUseOnlineTranslation
                        ) {
                            Text(text.transportOnline)
                        }
                        OutlinedButton(
                            onClick = viewModel::rerunSelectedBlockOcr,
                            enabled = !isSelectedBlockBusy
                        ) {
                            Text(ocrRepeatBlockOcrAction(strings.languageCode))
                        }
                        OutlinedButton(
                            onClick = viewModel::cleanupSelectedBlockText,
                            enabled = !isSelectedBlockBusy
                        ) {
                            Text(text.cleanupOcr)
                        }
                        OutlinedButton(
                            onClick = viewModel::explainSelectedBlock,
                            enabled = !isSelectedBlockBusy
                        ) {
                            Text(text.explain)
                        }
                    }
                    if (!selectedBlockTranslateAvailable) {
                        Text(
                            text = selectedBlockTranslationBlockedMessage ?: ocrTranslationBackendUnavailableMessage(
                                language = strings.languageCode,
                                sourceLanguage = selectedBlockSourceLanguage,
                                targetLanguage = uiState.targetLang
                            ),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    FlowRow(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        OutlinedButton(
                            onClick = {
                                clipboardManager.setText(AnnotatedString(selectedBlock.textOriginal))
                            }
                        ) {
                            Text(text.copyOriginal)
                        }
                        if (!uiState.selectedBlockCleanedText.isNullOrBlank()) {
                            OutlinedButton(
                                onClick = {
                                    clipboardManager.setText(AnnotatedString(uiState.selectedBlockCleanedText!!))
                                }
                            ) {
                                Text(text.copyCleaned)
                            }
                        }
                        if (selectedBlockTranslation != null) {
                            OutlinedButton(
                                onClick = {
                                    clipboardManager.setText(AnnotatedString(selectedBlockTranslation.translatedText))
                                }
                            ) {
                                Text(text.copyTranslation)
                            }
                        }
                    }
                }

                Spacer(Modifier.height(8.dp))
            }
        }
    }
}

private fun buildSelectedBlockContextPreview(
    selectedBlockId: String?,
    recognizedBlocks: List<io.leostrange.mrcomic.core.model.OcrBlock>
): Pair<String?, String?> {
    if (selectedBlockId == null) return null to null
    val orderedBlocks = recognizedBlocks.sortedWith(
        compareBy<io.leostrange.mrcomic.core.model.OcrBlock> { it.bboxTop }
            .thenBy { it.bboxLeft }
            .thenByDescending { it.bboxWidth * it.bboxHeight }
    )
    val index = orderedBlocks.indexOfFirst { it.id == selectedBlockId }
    if (index == -1) return null to null

    val before = orderedBlocks
        .subList(0, index)
        .asReversed()
        .asSequence()
        .mapNotNull(::contextSnippet)
        .firstOrNull()
    val after = orderedBlocks
        .subList((index + 1).coerceAtMost(orderedBlocks.size), orderedBlocks.size)
        .asSequence()
        .mapNotNull(::contextSnippet)
        .firstOrNull()
    return before to after
}

private enum class OcrPanelTone {
    NORMAL,
    SOFT,
    ACCENT,
    ERROR
}

@Composable
private fun OcrPanelCard(
    modifier: Modifier = Modifier,
    tone: OcrPanelTone = OcrPanelTone.NORMAL,
    content: @Composable ColumnScope.() -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val containerColor = when (tone) {
        OcrPanelTone.NORMAL -> rootChromePanelColor(colorScheme)
        OcrPanelTone.SOFT -> rootChromePanelColor(colorScheme, RootChromeTone.SOFT)
        OcrPanelTone.ACCENT -> rootChromePanelColor(colorScheme, RootChromeTone.ACCENT)
        OcrPanelTone.ERROR -> MaterialTheme.colorScheme.errorContainer.copy(alpha = 0.94f)
    }
    Card(
        modifier = modifier,
        shape = RootChromePanelShape,
        colors = CardDefaults.cardColors(containerColor = containerColor),
        elevation = CardDefaults.cardElevation(
            defaultElevation = if (tone == OcrPanelTone.NORMAL) 4.dp else 2.dp
        ),
        content = content
    )
}

@Composable
private fun AssistChip(
    onClick: () -> Unit,
    label: @Composable () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    leadingIcon: (@Composable () -> Unit)? = null
) {
    RootChromeChip(
        modifier = modifier,
        selected = false,
        enabled = enabled,
        onClick = onClick,
        label = label,
        leadingIcon = leadingIcon
    )
}

@Composable
private fun FilterChip(
    selected: Boolean,
    onClick: () -> Unit,
    label: @Composable () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    leadingIcon: (@Composable () -> Unit)? = null
) {
    RootChromeChip(
        modifier = modifier,
        selected = selected,
        enabled = enabled,
        onClick = onClick,
        label = label,
        leadingIcon = leadingIcon
    )
}

@Composable
private fun RootChromeChip(
    modifier: Modifier = Modifier,
    selected: Boolean,
    enabled: Boolean,
    onClick: () -> Unit,
    label: @Composable () -> Unit,
    leadingIcon: (@Composable () -> Unit)? = null
) {
    val colorScheme = MaterialTheme.colorScheme
    val containerColor = rootChromePillContainerColor(colorScheme, selected).let {
        if (enabled) it else it.copy(alpha = 0.72f)
    }
    val contentColor = rootChromePillContentColor(colorScheme, selected).let {
        if (enabled) it else it.copy(alpha = 0.58f)
    }
    Surface(
        modifier = modifier,
        shape = RootChromeDensePillShape,
        color = containerColor,
        border = rootChromePillBorder(colorScheme, selected)
    ) {
        Row(
            modifier = Modifier
                .clickable(enabled = enabled, onClick = onClick)
                .defaultMinSize(minHeight = 36.dp)
                .padding(horizontal = 12.dp, vertical = 8.dp),
            horizontalArrangement = Arrangement.spacedBy(6.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            leadingIcon?.let {
                CompositionLocalProvider(LocalContentColor provides contentColor) {
                    it()
                }
            }
            CompositionLocalProvider(LocalContentColor provides contentColor) {
                ProvideTextStyle(MaterialTheme.typography.labelMedium) {
                    label()
                }
            }
        }
    }
}

@Composable
private fun Button(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    content: @Composable RowScope.() -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val containerColor = if (enabled) colorScheme.primary else colorScheme.primary.copy(alpha = 0.55f)
    val contentColor = if (enabled) colorScheme.onPrimary else colorScheme.onPrimary.copy(alpha = 0.72f)
    Surface(
        modifier = modifier,
        shape = RootChromePillShape,
        color = containerColor
    ) {
        Box(
            modifier = Modifier
                .clickable(enabled = enabled, onClick = onClick)
                .fillMaxWidth()
                .defaultMinSize(minHeight = 44.dp)
                .padding(horizontal = 14.dp, vertical = 10.dp)
        ) {
            Row(
                modifier = Modifier.align(Alignment.Center),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                CompositionLocalProvider(LocalContentColor provides contentColor) {
                    ProvideTextStyle(MaterialTheme.typography.labelLarge) {
                        content()
                    }
                }
            }
        }
    }
}

@Composable
private fun OutlinedButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    content: @Composable RowScope.() -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val containerColor = rootChromePanelColor(colorScheme, RootChromeTone.SOFT).let {
        if (enabled) it else it.copy(alpha = 0.72f)
    }
    val contentColor = colorScheme.onSurface.let {
        if (enabled) it else it.copy(alpha = 0.58f)
    }
    Surface(
        modifier = modifier,
        shape = RootChromePillShape,
        color = containerColor,
        border = rootChromePillBorder(colorScheme, selected = false)
    ) {
        Box(
            modifier = Modifier
                .clickable(enabled = enabled, onClick = onClick)
                .fillMaxWidth()
                .defaultMinSize(minHeight = 42.dp)
                .padding(horizontal = 14.dp, vertical = 10.dp)
        ) {
            Row(
                modifier = Modifier.align(Alignment.Center),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                CompositionLocalProvider(LocalContentColor provides contentColor) {
                    ProvideTextStyle(MaterialTheme.typography.labelLarge) {
                        content()
                    }
                }
            }
        }
    }
}

private fun contextSnippet(block: io.leostrange.mrcomic.core.model.OcrBlock): String? {
    val normalized = block.textNormalized
        .ifBlank { block.textOriginal }
        .trim()
        .replace(Regex("\\s+"), " ")
    if (normalized.isBlank()) return null
    return if (normalized.length <= 96) normalized else normalized.take(93).trimEnd() + "..."
}
