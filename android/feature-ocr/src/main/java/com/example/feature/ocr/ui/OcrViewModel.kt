package com.example.feature.ocr.ui

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Rect
import android.net.Uri
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.provider.OpenableColumns
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.domain.translation.ComicTranslationEngine
import com.example.core.domain.translation.DictionaryEngine
import com.example.core.domain.translation.LlmExplainEngine
import com.example.core.domain.translation.LookupRouter
import com.example.core.domain.translation.OfflineTranslationEngine
import com.example.core.domain.translation.OnlineTranslationEngine
import com.example.core.domain.translation.TranslationBackendUnavailableException
import com.example.core.domain.util.Result
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.data.repository.ComicRepository
import com.example.core.model.Comic
import com.example.core.model.DictionaryEntry
import com.example.core.model.ExplainRequest
import com.example.core.model.LookupRouteKind
import com.example.core.model.OcrBlock
import com.example.core.model.OverlayBlock
import com.example.core.model.OverlayDisplayMode
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationRoutingFailureReason
import com.example.core.model.TranslationRoutingRequest
import com.example.core.model.TranslationSourceType
import com.example.core.model.TranslationTransportPreference
import com.example.feature.ocr.data.MlKitTranslationSupport
import com.example.feature.ocr.data.OcrPageCache
import com.example.feature.ocr.data.OcrRepository
import com.example.core.ui.locale.isSupportedOcrSourceLanguageCode
import com.example.core.ui.locale.isSupportedTranslationLanguageCode
import com.example.core.ui.locale.normalizeTranslationLanguageCode
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.util.LinkedHashMap
import javax.inject.Inject

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
    val sourceLang: String = "ja",
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

data class OcrTranslationAvailability(
    val isRefreshing: Boolean = false,
    val dictionaryAvailable: Boolean = false,
    val offlinePairSupported: Boolean = false,
    val offlineModelInstalled: Boolean = false,
    val networkAvailable: Boolean = false,
    val explainToggleEnabled: Boolean = false
) {
    val canDownloadOfflineModel: Boolean
        get() = offlinePairSupported && !offlineModelInstalled && networkAvailable
}

@HiltViewModel
class OcrViewModel @Inject constructor(
    private val ocrRepository: OcrRepository,
    private val comicTranslationEngine: ComicTranslationEngine,
    private val dictionaryEngine: DictionaryEngine,
    private val llmExplainEngine: LlmExplainEngine,
    private val lookupRouter: LookupRouter,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val ocrPageCache: OcrPageCache,
    private val comicRepository: ComicRepository,
    @ApplicationContext private val context: Context,
    private val savedStateHandle: SavedStateHandle
) : ViewModel() {

    private data class OcrTranslationFilterState(
        val dialoguesOnly: Boolean,
        val includeSfx: Boolean
    ) {
        val cacheKey: String get() = "dialogues=$dialoguesOnly;sfx=$includeSfx"
    }

    private val preferences = UserPreferences(context.dataStore)
    private val _uiState = MutableStateFlow(
        OcrUiState(
            imagePath = savedStateHandle["imagePath"],
            comicId = savedStateHandle["comicId"],
            page = savedStateHandle["page"] ?: -1
        )
    )
    val uiState: StateFlow<OcrUiState> = _uiState.asStateFlow()

    init {
        viewModelScope.launch {
            ocrPageCache.pruneExpiredEntries()
            applyStoredTranslationDefaults()
            refreshTranslationAvailability()
        }
        val path = _uiState.value.imagePath
        if (!path.isNullOrBlank()) {
            viewModelScope.launch {
                val bitmap = withContext(Dispatchers.IO) {
                    runCatching { BitmapFactory.decodeFile(path) }.getOrNull()
                }
                _uiState.update { it.copy(imageBitmap = bitmap) }
            }
        }
    }

    fun recognize() {
        val state = _uiState.value
        val bitmap = state.imageBitmap ?: return
        if (state.isInteractionLocked()) return
        viewModelScope.launch {
            detectBlocksForCurrentPage(bitmap = bitmap, clearExistingRecognition = true)
        }
    }

    private suspend fun applyStoredTranslationDefaults() {
        val appLanguage = preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first().normalizeLanguageCode() ?: "ru"
        val ocrLanguage = preferences.get(PreferencesKeys.OCR_LANGUAGE, "JA").first().normalizeLanguageCode() ?: "ja"
        val storedSourceLanguage = normalizeTranslationLanguageCode(
            preferences.get(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, "AUTO").first()
        )
        val storedTargetLanguage = normalizeTranslationLanguageCode(
            preferences.get(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, "APP").first()
        )
        val storedTransport = preferences.get(
            PreferencesKeys.TRANSLATION_TRANSPORT,
            TranslationTransportPreference.AUTO.name
        ).first()
        val overlayOpacity = preferences.get(PreferencesKeys.OCR_OVERLAY_OPACITY, 0.85f).first().coerceIn(0.45f, 1.0f)
        val overlayFontScale = preferences.get(PreferencesKeys.OCR_OVERLAY_FONT_SCALE, 1.0f).first().coerceIn(0.85f, 1.3f)
        val overlayStyle = preferences.get(PreferencesKeys.OCR_OVERLAY_STYLE, "AUTO").first()
        val prefersImagePipeline = !_uiState.value.imagePath.isNullOrBlank() || !_uiState.value.comicId.isNullOrBlank()

        _uiState.update {
            it.copy(
                sourceLang = when {
                    prefersImagePipeline -> storedSourceLanguage
                        ?.takeIf(::isSupportedOcrSourceLanguageCode)
                        ?: ocrLanguage.coerceToSupportedOcrSourceLanguage()
                    else -> storedSourceLanguage
                        ?.takeIf(::isSupportedTranslationLanguageCode)
                        ?: appLanguage.coerceToSupportedManualSourceLanguage()
                },
                targetLang = (storedTargetLanguage ?: appLanguage).coerceToSupportedTargetLanguage(),
                preferredTransport = runCatching { TranslationTransportPreference.valueOf(storedTransport) }
                    .getOrDefault(TranslationTransportPreference.AUTO),
                overlayOpacity = overlayOpacity,
                overlayFontScale = overlayFontScale,
                overlayStyle = overlayStyle.uppercase()
            )
        }
    }

    fun translateVisiblePage() {
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

    fun translate() {
        val state = _uiState.value
        if (state.isInteractionLocked()) return
        val text = if (state.imageBitmap != null) state.recognizedText
                   else state.manualText
        if (text.isBlank()) return
        viewModelScope.launch {
            val uiLanguage = currentUiLanguage()
            if (_uiState.value.imageBitmap != null && _uiState.value.recognizedBlocks.isNotEmpty()) {
                translateRecognizedBlocks(_uiState.value.recognizedBlocks)
            } else {
                _uiState.update {
                    it.clearSelectedBlockState()
                        .clearManualScenarioState()
                        .clearTransientFeedback()
                        .copy(
                            isTranslating = true,
                            translatedBlocks = emptyList(),
                            overlayEnabled = true
                        )
                }

                val sourceLanguage = _uiState.value.sourceLang.normalizeLanguageCode()
                    ?.takeIf(::isSupportedTranslationLanguageCode)
                    ?: "en"
                val targetLanguage = _uiState.value.targetLang.normalizeLanguageCode() ?: "ru"
                val normalizedText = text.trim().replace(Regex("\\s+"), " ")
                val tokenCount = normalizedText.countSelectionTokens()
                val canTranslateAsPhrase = tokenCount <= 3
                val preferredTransport = _uiState.value.preferredTransport
                if (sourceLanguage == targetLanguage) {
                    _uiState.update {
                        it.copy(
                            isTranslating = false,
                            translatedText = normalizedText,
                            manualResultMode = null,
                            manualDictionaryEntry = null,
                            manualExplanation = null,
                            manualExplanationError = null
                        )
                    }
                    return@launch
                }

                val dictionaryAvailable = when (
                    val availability = dictionaryEngine.isLookupAvailable(
                        sourceLanguage = sourceLanguage,
                        targetLanguage = targetLanguage
                    )
                ) {
                    is Result.Success -> availability.data
                    is Result.Error -> false
                    Result.Loading -> false
                }
                val offlineAvailable = when (
                    val availability = offlineTranslationEngine.isLanguagePairAvailable(
                        sourceLanguage = sourceLanguage,
                        targetLanguage = targetLanguage
                    )
                ) {
                    is Result.Success -> availability.data
                    is Result.Error -> false
                    Result.Loading -> false
                }
                val networkAvailable = isNetworkAvailable()

                val routingDecision = when (
                    val routing = lookupRouter.route(
                        TranslationRoutingRequest(
                            text = normalizedText,
                            sourceType = TranslationSourceType.OCR_TEXT,
                            sourceLanguageHint = sourceLanguage,
                            fallbackLanguage = sourceLanguage,
                            preferredTransport = preferredTransport,
                            networkAvailable = networkAvailable,
                            offlineModelAvailable = offlineAvailable,
                            dictionaryAvailable = false,
                            llmAvailable = false
                        )
                    )
                ) {
                    is Result.Success -> routing.data
                    is Result.Error -> null
                    Result.Loading -> null
                }

                val translationMode = when {
                    routingDecision == null -> null
                    routingDecision.primaryMode == TranslationMode.DICTIONARY && tokenCount > 1 ->
                        routingDecision.secondaryModes.firstOrNull {
                            it == TranslationMode.OFFLINE_MT || it == TranslationMode.ONLINE_MT
                        }
                    else -> routingDecision.primaryMode
                }

                if (translationMode == TranslationMode.DICTIONARY) {
                    val usedDictionary = applyManualDictionaryFallback(
                        normalizedText = normalizedText,
                        sourceLanguage = sourceLanguage,
                        targetLanguage = targetLanguage,
                        uiLanguage = uiLanguage
                    )
                    if (usedDictionary) return@launch
                }

                if (routingDecision == null || routingDecision.routeKind == LookupRouteKind.UNAVAILABLE || translationMode == null) {
                    if (tokenCount == 1 && dictionaryAvailable) {
                        val usedDictionary = applyManualDictionaryFallback(
                            normalizedText = normalizedText,
                            sourceLanguage = sourceLanguage,
                            targetLanguage = targetLanguage,
                            uiLanguage = uiLanguage
                        )
                        if (usedDictionary) return@launch
                    }
                    val error = when (routingDecision?.unavailableReason) {
                        TranslationRoutingFailureReason.NO_TRANSLATION_BACKEND ->
                            ocrTranslationBackendUnavailableMessage(uiLanguage)
                        else -> ocrTranslationUnavailableMessage(uiLanguage)
                    }
                    _uiState.update { it.copy(isTranslating = false, error = error) }
                    return@launch
                }

                val request = TranslationRequest(
                    id = "ocr-manual-${System.currentTimeMillis()}",
                    sourceType = TranslationSourceType.OCR_TEXT,
                    text = normalizedText,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    mode = translationMode,
                    createdAt = System.currentTimeMillis()
                )

                val result = when (translationMode) {
                    TranslationMode.OFFLINE_MT -> offlineTranslationEngine.translate(request)
                    TranslationMode.ONLINE_MT -> onlineTranslationEngine.translate(request)
                    else -> Result.Error(IllegalStateException())
                }

                when (result) {
                    is Result.Success -> {
                        _uiState.update {
                            it.copy(
                                isTranslating = false,
                                translatedText = result.data.translatedText,
                                manualResultMode = if (result.data.isOffline) {
                                    TranslationMode.OFFLINE_MT
                                } else {
                                    translationMode
                                },
                                manualDictionaryEntry = null,
                                manualExplanation = null,
                                manualExplanationError = null
                            )
                        }
                    }

                    is Result.Error -> {
                        if (tokenCount == 1 && dictionaryAvailable) {
                            val usedDictionary = applyManualDictionaryFallback(
                                normalizedText = normalizedText,
                                sourceLanguage = sourceLanguage,
                                targetLanguage = targetLanguage,
                                uiLanguage = uiLanguage
                            )
                            if (usedDictionary) return@launch
                        }
                        _uiState.update {
                            it.copy(
                                isTranslating = false,
                                error = when (result.exception) {
                                    is TranslationBackendUnavailableException ->
                                        ocrTranslationBackendUnavailableMessage(uiLanguage)
                                    else -> ocrTranslationUnavailableMessage(uiLanguage)
                                }
                            )
                        }
                    }

                    Result.Loading -> Unit
                }
            }
        }
    }

    fun setSourceLang(lang: String) =
        _uiState.update {
            if (it.isInteractionLocked()) return@update it
            it.clearImageScenarioState()
                .clearManualScenarioState()
                .clearTransientFeedback()
                .copy(sourceLang = lang)
        }.also { refreshTranslationAvailabilityAsync() }

    fun setTargetLang(lang: String) =
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

    fun setManualText(text: String) =
        _uiState.update {
            if (it.isManualScenarioBusy()) return@update it
            it.clearImageScenarioState()
                .clearManualScenarioState()
                .clearTransientFeedback()
                .copy(manualText = text)
        }

    fun loadStandaloneImage(uri: Uri) {
        if (_uiState.value.isInteractionLocked()) return
        viewModelScope.launch {
            val uiLanguage = currentUiLanguage()
            val copiedFile = withContext(Dispatchers.IO) {
                copyStandaloneImageToStorage(uri)
            }
            if (copiedFile == null) {
                _uiState.update { it.copy(error = ocrImageOpenFailedMessage(uiLanguage)) }
                return@launch
            }

            val bitmap = withContext(Dispatchers.IO) {
                runCatching { BitmapFactory.decodeFile(copiedFile.absolutePath) }.getOrNull()
            }
            if (bitmap == null) {
                _uiState.update { it.copy(error = ocrImageDecodeFailedMessage(uiLanguage)) }
                return@launch
            }

            savedStateHandle["imagePath"] = copiedFile.absolutePath
            savedStateHandle["comicId"] = null
            savedStateHandle["page"] = -1

            _uiState.update {
                it.clearImageScenarioState()
                    .clearManualScenarioState(clearManualText = true)
                    .clearTransientFeedback()
                    .copy(
                        imagePath = copiedFile.absolutePath,
                        comicId = null,
                        page = -1,
                        imageBitmap = bitmap,
                        sourceLang = it.sourceLang.coerceToSupportedOcrSourceLanguage(),
                        isTranslating = false
                    )
            }
            refreshTranslationAvailability()
        }
    }

    fun clearStandaloneImage() {
        if (_uiState.value.isInteractionLocked()) return
        val currentPath = _uiState.value.imagePath
        if (_uiState.value.comicId != null) return
        if (!currentPath.isNullOrBlank()) {
            runCatching {
                val file = File(currentPath)
                if (file.exists() && file.isFile && file.parentFile?.name == "ocr_imports") {
                    file.delete()
                }
            }
        }
        savedStateHandle["imagePath"] = null
        savedStateHandle["comicId"] = null
        savedStateHandle["page"] = -1
        _uiState.update {
            it.clearImageScenarioState()
                .clearManualScenarioState()
                .clearTransientFeedback()
                .copy(
                    imagePath = null,
                    comicId = null,
                    page = -1,
                    imageBitmap = null,
                    isTranslating = false
                )
        }
        refreshTranslationAvailabilityAsync()
    }

    fun prepareOfflineLanguagePair() {
        val state = _uiState.value
        if (state.isInteractionLocked()) return
        val sourceLanguage = state.sourceLang.normalizeLanguageCode()
            ?.takeIf(::isSupportedTranslationLanguageCode)
            ?: return
        val targetLanguage = state.targetLang.normalizeLanguageCode()
            ?.takeIf(::isSupportedTranslationLanguageCode)
            ?: return
        if (sourceLanguage == targetLanguage) return
        if (
            MlKitTranslationSupport.toTranslateLanguage(sourceLanguage) == null ||
            MlKitTranslationSupport.toTranslateLanguage(targetLanguage) == null
        ) {
            return
        }

        viewModelScope.launch {
            val uiLanguage = currentUiLanguage()
            _uiState.update {
                it.clearTransientFeedback().copy(
                    isPreparingOfflineModel = true,
                    error = null
                )
            }
            val result = offlineTranslationEngine.prepareLanguagePair(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
            refreshTranslationAvailability()
            _uiState.update { it.copy(isPreparingOfflineModel = false) }
            when (result) {
                is Result.Success -> {
                    if (result.data) {
                        _uiState.update {
                            it.copy(
                                saveMessage = ocrOfflineModelReadyMessage(
                                    sourceLanguage = sourceLanguage,
                                    targetLanguage = targetLanguage,
                                    language = uiLanguage
                                )
                            )
                        }
                    } else {
                        _uiState.update {
                            it.copy(error = ocrOfflineModelUnavailableMessage(uiLanguage))
                        }
                    }
                }

                is Result.Error -> {
                    _uiState.update {
                        it.copy(error = ocrOfflineModelUnavailableMessage(uiLanguage))
                    }
                }

                Result.Loading -> Unit
            }
        }
    }

    fun openDictionaryForManualText() {
        if (_uiState.value.isManualScenarioBusy()) return
        val normalizedText = _uiState.value.manualText.trim().replace(Regex("\\s+"), " ")
        if (normalizedText.isBlank() || normalizedText.countSelectionTokens() != 1) return

        viewModelScope.launch {
            val sourceLanguage = _uiState.value.sourceLang.normalizeLanguageCode()
                ?.takeIf(::isSupportedTranslationLanguageCode)
                ?: "en"
            val targetLanguage = _uiState.value.targetLang.normalizeLanguageCode() ?: "ru"
            val uiLanguage = currentUiLanguage()
            _uiState.update {
                it.clearManualScenarioState()
                    .clearTransientFeedback()
                    .copy(isTranslating = true)
            }
            val success = applyManualDictionaryFallback(
                normalizedText = normalizedText,
                sourceLanguage = sourceLanguage,
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

    fun explainManualText() {
        if (_uiState.value.isManualScenarioBusy()) return
        val normalizedText = _uiState.value.manualText.trim().replace(Regex("\\s+"), " ")
        if (normalizedText.isBlank()) return

        viewModelScope.launch {
            val sourceLanguage = _uiState.value.sourceLang.normalizeLanguageCode()
                ?.takeIf(::isSupportedTranslationLanguageCode)
                ?: "en"
            val targetLanguage = _uiState.value.targetLang.normalizeLanguageCode() ?: "ru"
            val tokenCount = normalizedText.countSelectionTokens()
            val appLanguage = preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first().normalizeLanguageCode() ?: "ru"

            _uiState.update {
                it.clearTransientFeedback().copy(
                    isExplainingManualText = true,
                    manualExplanation = null,
                    manualExplanationError = null
                )
            }

            val dictionaryAvailable = when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }

            if (tokenCount == 1 && dictionaryAvailable) {
                when (
                    val dictionaryResult = dictionaryEngine.lookup(
                        rawWord = normalizedText,
                        sourceLanguage = sourceLanguage,
                        targetLanguage = targetLanguage
                    )
                ) {
                    is Result.Success -> {
                        _uiState.update {
                            it.copy(
                                isExplainingManualText = false,
                                manualExplanation = ocrDictionaryExplanation(
                                    entry = dictionaryResult.data,
                                    language = appLanguage
                                ),
                                manualExplanationError = null
                            )
                        }
                        return@launch
                    }

                    is Result.Error -> Unit
                    Result.Loading -> Unit
                }
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

    fun setOverlayEnabled(enabled: Boolean) =
        _uiState.update { it.copy(overlayEnabled = enabled) }

    fun setOverlayDisplayMode(mode: OverlayDisplayMode) =
        _uiState.update { it.copy(overlayDisplayMode = mode) }

    fun selectBlock(blockId: String) {
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

    fun translateSelectedBlock() {
        translateSelectedBlockWithTransport(_uiState.value.preferredTransport)
    }

    fun translateSelectedBlockWithTransport(preferredTransport: TranslationTransportPreference) {
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

    fun rerunSelectedBlockOcr() {
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

    fun dismissSelectedBlock() {
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

    fun explainSelectedBlock() {
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
            val tokenCount = normalizedText.countSelectionTokens()
            val dictionaryAvailable = when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }

            if (tokenCount == 1 && dictionaryAvailable) {
                when (
                    val dictionaryResult = dictionaryEngine.lookup(
                        rawWord = normalizedText,
                        sourceLanguage = sourceLanguage,
                        targetLanguage = targetLanguage
                    )
                ) {
                    is Result.Success -> {
                        _uiState.update {
                            it.copy(
                                isExplainingSelectedBlock = false,
                                selectedBlockExplanation = ocrDictionaryExplanation(
                                    entry = dictionaryResult.data,
                                    language = appLanguage
                                ),
                                selectedBlockExplanationError = null
                            )
                        }
                        return@launch
                    }
                    is Result.Error -> Unit
                    Result.Loading -> Unit
                }
            }

            when (
                val explainResult = llmExplainEngine.explain(
                    ExplainRequest(
                        id = "ocr-explain-${System.currentTimeMillis()}",
                        sourceType = com.example.core.model.TranslationSourceType.COMIC_BLOCK,
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

    fun cleanupSelectedBlockText() {
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

    fun clearError() = _uiState.update { it.copy(error = null, saveMessage = null) }

    fun saveTranslationNote() {
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

    private fun buildPageBaseId(): String {
        val comicId = _uiState.value.comicId
        val page = _uiState.value.page
        return when {
            !comicId.isNullOrBlank() && page >= 0 -> "$comicId:$page"
            !comicId.isNullOrBlank() -> comicId
            !_uiState.value.imagePath.isNullOrBlank() -> _uiState.value.imagePath!!
            else -> "ocr_preview"
        }
    }

    private suspend fun buildPageCacheId(): String {
        val state = _uiState.value
        val baseId = buildPageBaseId()
        val sourceFingerprint = when {
            !state.comicId.isNullOrBlank() -> {
                comicRepository.getComicById(state.comicId)?.let { comic ->
                    computeComicSourceFingerprint(comic)
                } ?: "comic-missing"
            }
            !state.imagePath.isNullOrBlank() -> computeImageSourceFingerprint(state.imagePath)
            else -> "transient-preview"
        }
        return "$baseId@$sourceFingerprint"
    }

    private suspend fun detectBlocksForCurrentPage(
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

    private suspend fun translateRecognizedBlocks(blocks: List<OcrBlock>) {
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
                                ocrTranslationBackendUnavailableMessage(uiLanguage)
                            else -> ocrTranslationUnavailableMessage(uiLanguage)
                        }
                    )
                }
            }

            Result.Loading -> Unit
        }
    }

    private suspend fun computeComicSourceFingerprint(comic: Comic): String = withContext(Dispatchers.IO) {
        val rawPath = comic.path.trim()
        if (rawPath.isBlank()) {
            return@withContext "blank|${comic.id}|${comic.lastModified}|${comic.fileSize}"
        }

        if (rawPath.startsWith("content://")) {
            val uri = Uri.parse(rawPath)
            val displayName = runCatching {
                context.contentResolver.query(uri, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null)
                    ?.use { cursor ->
                        if (cursor.moveToFirst()) cursor.getString(0) else null
                    }
            }.getOrNull()
            val assetLength = runCatching {
                context.contentResolver.openAssetFileDescriptor(uri, "r")?.use { descriptor ->
                    descriptor.length.takeIf { it >= 0L }
                }
            }.getOrNull()
            val name = displayName ?: uri.lastPathSegment.orEmpty()
            val length = assetLength?.coerceAtLeast(0L) ?: comic.fileSize.coerceAtLeast(0L)
            val lastModified = comic.lastModified
            val documentId = comic.documentId.orEmpty()
            return@withContext "content|$name|$length|$lastModified|$documentId"
        }

        val localFile = File(rawPath)
        if (localFile.exists() && localFile.isFile) {
            return@withContext "file|${localFile.absolutePath}|${localFile.length()}|${localFile.lastModified()}"
        }

        "stored|$rawPath|${comic.fileSize.coerceAtLeast(0L)}|${comic.lastModified}|${comic.format.name}|${comic.documentId.orEmpty()}"
    }

    private fun computeImageSourceFingerprint(imagePath: String): String {
        val localFile = File(imagePath)
        if (localFile.exists() && localFile.isFile) {
            return "image-file|${localFile.absolutePath}|${localFile.length()}|${localFile.lastModified()}"
        }
        return "image-path|$imagePath"
    }

    private suspend fun loadTranslationFilterState(): OcrTranslationFilterState {
        val dialoguesOnly = preferences.get(PreferencesKeys.OCR_DIALOGUES_ONLY, false).first()
        val includeSfx = preferences.get(PreferencesKeys.OCR_INCLUDE_SFX, true).first()
        return OcrTranslationFilterState(
            dialoguesOnly = dialoguesOnly,
            includeSfx = includeSfx
        )
    }

    private fun filterBlocksForPageTranslation(
        blocks: List<OcrBlock>,
        filterState: OcrTranslationFilterState
    ): List<OcrBlock> {
        return blocks.filter { block ->
            val includeByDialogueFilter = if (filterState.dialoguesOnly) {
                block.blockType == com.example.core.model.OcrBlockType.SPEECH ||
                    block.blockType == com.example.core.model.OcrBlockType.UNKNOWN
            } else {
                true
            }
            val includeBySfxFilter = if (filterState.includeSfx) {
                true
            } else {
                block.blockType != com.example.core.model.OcrBlockType.SFX
            }
            includeByDialogueFilter && includeBySfxFilter
        }
    }

    private fun mergeTranslatedBlocks(newBlocks: List<OverlayBlock>): List<OverlayBlock> {
        val mergedById = LinkedHashMap<String, OverlayBlock>()
        _uiState.value.translatedBlocks.forEach { mergedById[it.ocrBlockId] = it }
        newBlocks.forEach { mergedById[it.ocrBlockId] = it }
        return _uiState.value.recognizedBlocks.mapNotNull { block -> mergedById[block.id] }
    }

    private fun cleanupOcrText(
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

    private fun copyStandaloneImageToStorage(uri: Uri): File? {
        val storageDir = File(context.filesDir, "ocr_imports").apply { mkdirs() }
        val extension = runCatching {
            context.contentResolver.getType(uri)
                ?.substringAfterLast('/', "")
                ?.substringBefore(';')
                ?.takeIf { it.isNotBlank() }
        }.getOrNull()?.let { ".$it" } ?: ".img"
        val target = File(storageDir, "ocr_${System.currentTimeMillis()}$extension")
        return runCatching {
            context.contentResolver.openInputStream(uri)?.use { input ->
                target.outputStream().use { output -> input.copyTo(output) }
            } ?: return null
            target
        }.getOrNull()
    }

    private suspend fun applyManualDictionaryFallback(
        normalizedText: String,
        sourceLanguage: String,
        targetLanguage: String,
        uiLanguage: String
    ): Boolean {
        return when (
            val dictionaryResult = dictionaryEngine.lookup(
                rawWord = normalizedText,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> {
                val entry = dictionaryResult.data
                _uiState.update {
                    it.copy(
                        isTranslating = false,
                        translatedText = entry.translations.firstOrNull().orEmpty(),
                        manualResultMode = TranslationMode.DICTIONARY,
                        manualDictionaryEntry = entry,
                        manualExplanation = null,
                        manualExplanationError = null,
                        error = null
                    )
                }
                true
            }

            is Result.Error -> {
                _uiState.update {
                    it.copy(
                        isTranslating = false,
                        manualResultMode = null,
                        manualDictionaryEntry = null,
                        error = ocrDictionaryUnavailableMessage(uiLanguage)
                    )
                }
                false
            }

            Result.Loading -> false
        }
    }

    private fun String.countSelectionTokens(): Int =
        OCR_SELECTION_TOKEN_REGEX.findAll(this).count().coerceAtLeast(if (isBlank()) 0 else 1)

    private suspend fun translateSelectedBlockInternal(
        block: OcrBlock,
        preferredTransport: TranslationTransportPreference
    ) {
        val uiLanguage = currentUiLanguage()
        val state = _uiState.value
        val sourceLanguage = block.detectedLanguage?.normalizeLanguageCode()
            ?: state.sourceLang.normalizeLanguageCode()
            ?: "en"
        val translationInput = selectedBlockTranslationInput(block, state)
        val translationBlock = block.copy(
            textOriginal = translationInput,
            textNormalized = translationInput
        )
        when (
            val result = comicTranslationEngine.translateBlocks(
                blocks = listOf(translationBlock),
                sourceLanguage = state.sourceLang,
                targetLanguage = state.targetLang,
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
                                ocrTranslationBackendUnavailableMessage(uiLanguage)
                            else -> ocrBlockTranslationFailedMessage(uiLanguage)
                        }
                    )
                }
            }

            Result.Loading -> Unit
        }
    }

    private fun selectedBlockTranslationInput(
        block: OcrBlock,
        state: OcrUiState
    ): String = state.selectedBlockCleanedText
        ?.takeIf { it.isNotBlank() }
        ?: block.textNormalized.ifBlank { block.textOriginal }
            .trim()
            .replace(Regex("\\s+"), " ")

    private fun buildSelectedBlockExplainContext(
        blockId: String,
        state: OcrUiState
    ): Pair<String?, String?> {
        val orderedBlocks = state.recognizedBlocks
            .sortedWith(
                compareBy<OcrBlock> { it.bboxTop }
                    .thenBy { it.bboxLeft }
                    .thenByDescending { it.bboxWidth * it.bboxHeight }
            )
        val index = orderedBlocks.indexOfFirst { it.id == blockId }
        if (index == -1) return null to null

        val contextBefore = orderedBlocks
            .subList(0, index)
            .asReversed()
            .asSequence()
            .mapNotNull(::buildExplainContextSnippet)
            .firstOrNull()
        val contextAfter = orderedBlocks
            .subList((index + 1).coerceAtMost(orderedBlocks.size), orderedBlocks.size)
            .asSequence()
            .mapNotNull(::buildExplainContextSnippet)
            .firstOrNull()
        return contextBefore to contextAfter
    }

    private fun buildExplainContextSnippet(block: OcrBlock): String? {
        val normalized = block.textNormalized
            .ifBlank { block.textOriginal }
            .trim()
            .replace(Regex("\\s+"), " ")
        if (normalized.isBlank()) return null
        return if (normalized.length <= 96) {
            normalized
        } else {
            normalized.take(93).trimEnd() + "..."
        }
    }

    private fun cropBitmapForBlock(bitmap: Bitmap, block: OcrBlock): Bitmap? {
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

    private fun pickBestRetriedBlockText(blocks: List<OcrBlock>): String? =
        blocks
            .mapNotNull { block ->
                val normalized = normalizeOcrComparisonText(block.textOriginal.ifBlank { block.textNormalized })
                normalized.takeIf { it.isNotBlank() }?.let { text ->
                    Triple(text, text.count { !it.isWhitespace() }, block.bboxWidth * block.bboxHeight)
                }
            }
            .maxWithOrNull(compareBy<Triple<String, Int, Float>> { it.second }.thenBy { it.third })
            ?.first

    private fun normalizeOcrComparisonText(text: String): String =
        text.trim().replace(Regex("\\s+"), " ")

    private fun OcrUiState.clearTransientFeedback(): OcrUiState =
        copy(saveMessage = null, error = null)

    private fun OcrUiState.clearSelectedBlockState(): OcrUiState =
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

    private fun OcrUiState.clearImageScenarioState(): OcrUiState =
        clearSelectedBlockState().copy(
            isRecognizing = false,
            recognizedBlocks = emptyList(),
            translatedBlocks = emptyList(),
            overlayEnabled = true,
            overlayDisplayMode = OverlayDisplayMode.OVERLAY,
            recognizedText = ""
        )

    private fun OcrUiState.clearManualScenarioState(clearManualText: Boolean = false): OcrUiState =
        copy(
            manualText = if (clearManualText) "" else manualText,
            translatedText = "",
            manualResultMode = null,
            manualDictionaryEntry = null,
            isExplainingManualText = false,
            manualExplanation = null,
            manualExplanationError = null
        )

    private fun refreshTranslationAvailabilityAsync() {
        viewModelScope.launch {
            refreshTranslationAvailability()
        }
    }

    private suspend fun refreshTranslationAvailability() {
        val state = _uiState.value
        val sourceLanguage = state.sourceLang.normalizeLanguageCode()
            ?.takeIf(::isSupportedTranslationLanguageCode)
        val targetLanguage = state.targetLang.normalizeLanguageCode()
            ?.takeIf(::isSupportedTranslationLanguageCode)

        _uiState.update {
            it.copy(
                translationAvailability = it.translationAvailability.copy(isRefreshing = true)
            )
        }

        val explainEnabled = preferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, false).first()
        val networkAvailable = isNetworkAvailable()

        if (sourceLanguage == null || targetLanguage == null || sourceLanguage == targetLanguage) {
            _uiState.update {
                it.copy(
                    translationAvailability = OcrTranslationAvailability(
                        isRefreshing = false,
                        dictionaryAvailable = false,
                        offlinePairSupported = false,
                        offlineModelInstalled = false,
                        networkAvailable = networkAvailable,
                        explainToggleEnabled = explainEnabled
                    )
                )
            }
            return
        }

        val dictionaryAvailable = when (
            val availability = dictionaryEngine.isLookupAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }

        val offlinePairSupported =
            MlKitTranslationSupport.toTranslateLanguage(sourceLanguage) != null &&
                MlKitTranslationSupport.toTranslateLanguage(targetLanguage) != null

        val offlineModelInstalled = if (offlinePairSupported) {
            when (
                val availability = offlineTranslationEngine.isLanguagePairAvailable(
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }
        } else {
            false
        }

        _uiState.update {
            it.copy(
                translationAvailability = OcrTranslationAvailability(
                    isRefreshing = false,
                    dictionaryAvailable = dictionaryAvailable,
                    offlinePairSupported = offlinePairSupported,
                    offlineModelInstalled = offlineModelInstalled,
                    networkAvailable = networkAvailable,
                    explainToggleEnabled = explainEnabled
                )
            )
        }
    }

    private fun OcrUiState.isPageOperationRunning(): Boolean =
        isRecognizing || isTranslating || isPreparingOfflineModel

    private fun OcrUiState.isManualScenarioBusy(): Boolean =
        isPageOperationRunning() || isExplainingManualText

    private fun OcrUiState.isSelectedBlockBusy(): Boolean =
        isPageOperationRunning() || isTranslatingSelectedBlock || isRetryingSelectedBlockOcr || isExplainingSelectedBlock || isCleaningSelectedBlock

    private fun OcrUiState.isInteractionLocked(): Boolean =
        isManualScenarioBusy() || isSelectedBlockBusy()

    private suspend fun currentUiLanguage(): String =
        preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first().normalizeLanguageCode() ?: "ru"

    private fun String.coerceToSupportedTargetLanguage(): String =
        normalizeTranslationLanguageCode(this)
            ?.takeIf(::isSupportedTranslationLanguageCode)
            ?: "ru"

    private fun String.coerceToSupportedManualSourceLanguage(): String =
        normalizeTranslationLanguageCode(this)
            ?.takeIf(::isSupportedTranslationLanguageCode)
            ?: "en"

    private fun String.coerceToSupportedOcrSourceLanguage(): String =
        normalizeTranslationLanguageCode(this)
            ?.takeIf(::isSupportedOcrSourceLanguageCode)
            ?: "ja"

    private fun String.normalizeLanguageCode(): String? =
        normalizeTranslationLanguageCode(this)

    private fun isNetworkAvailable(): Boolean {
        val connectivityManager = context.getSystemService(ConnectivityManager::class.java) ?: return false
        val network = connectivityManager.activeNetwork ?: return false
        val capabilities = connectivityManager.getNetworkCapabilities(network) ?: return false
        return capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) &&
            capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED)
    }

    private companion object {
        val OCR_SELECTION_TOKEN_REGEX = "[\\p{L}\\p{N}]+".toRegex()
    }
}
