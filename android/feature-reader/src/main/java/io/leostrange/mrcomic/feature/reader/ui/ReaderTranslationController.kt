package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import androidx.core.text.HtmlCompat
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.LanguageDetector
import io.leostrange.mrcomic.core.domain.translation.LookupRouter
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.SingleWordDictionaryMatch
import io.leostrange.mrcomic.core.domain.translation.TranslationBackendUnavailableException
import io.leostrange.mrcomic.core.domain.translation.hasMeaningfulTranslationFor
import io.leostrange.mrcomic.core.domain.translation.resolveBestSingleWordDictionaryMatch
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.DictionaryEntry
import io.leostrange.mrcomic.core.model.ExplainRequest
import io.leostrange.mrcomic.core.model.LanguageDetectionResult
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationRoutingRequest
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.model.TranslationSourceType
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import io.leostrange.mrcomic.core.ui.locale.normalizeTranslationLanguageCode
import io.leostrange.mrcomic.core.ui.locale.supportedTranslationLanguageCodes
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch

/**
 * Handles all translation, dictionary, and LLM explanation mutations.
 *
 * Extracted from [ReaderViewModel] to reduce its size.
 * Each method updates [_uiState] immediately and launches async work via [viewModelScope].
 */
internal class ReaderTranslationController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val languageDetector: LanguageDetector,
    private val dictionaryEngine: DictionaryEngine,
    private val lookupRouter: LookupRouter,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val translatorEngine: io.leostrange.mrcomic.core.domain.translation.TranslatorEngine,
    private val translationComparisonEngine: io.leostrange.mrcomic.core.domain.translation.TranslationComparisonEngine,
    private val llmExplainEngine: io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine,
    private val readerPreferences: UserPreferences,
    private val context: Context,
) {

    // ── Selected text translation ──────────────────────────────────────────

    fun translateSelectedText(
        selectedText: String,
        preferredTransport: TranslationTransportPreference? = null,
        preferDictionary: Boolean = true
    ) {
        val normalizedText = selectedText
            .trim()
            .replace(Regex("\\s+"), " ")
        if (normalizedText.isBlank()) return
        val tokenCount = normalizedText.countSelectionTokens()
        val canTranslateAsPhrase = tokenCount <= 3
        val canUseDictionaryLookup = tokenCount <= 3

        viewModelScope.launch {
            val translationSettings = resolveTranslationSettings()
            val effectiveTransport = preferredTransport ?: translationSettings.preferredTransport
            val targetLanguage = translationSettings.targetLanguage
            val canExplainSelection = true
            _uiState.update {
                it.copy(
                    selectedTextTranslation = SelectedTextTranslationState(
                        originalText = normalizedText,
                        targetLanguage = targetLanguage,
                        preferredTransport = effectiveTransport,
                        canTranslateAsPhrase = canTranslateAsPhrase,
                        canExplain = canExplainSelection,
                        isLoading = true
                    )
                )
            }

            val detectionResult = translationSettings.sourceLanguage?.let { sourceLanguage ->
                LanguageDetectionResult(
                    languageCode = sourceLanguage,
                    isReliable = true,
                    fallbackUsed = true
                )
            } ?: when (val detection = languageDetector.detectLanguage(normalizedText)) {
                is Result.Success -> detection.data
                is Result.Error -> null
                Result.Loading -> null
            }

            val detectedLanguage = detectionResult
                ?.languageCode
                ?.takeUnless { it == "und" }

            val singleWordDictionaryMatch = if (tokenCount == 1) {
                resolveSingleWordDictionaryMatch(
                    rawWord = normalizedText,
                    targetLanguage = targetLanguage,
                    preferredSourceLanguage = translationSettings.sourceLanguage,
                    detectionResult = detectionResult
                )
            } else {
                null
            }

            val resolvedSourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: detectedLanguage

            if (resolvedSourceLanguage == null) {
                val errorMessage = localizedReaderError(::readerTranslationLanguageDetectFailedMessage)
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canTranslateAsPhrase = canTranslateAsPhrase,
                            canExplain = canExplainSelection,
                            isLoading = false,
                            error = errorMessage
                        )
                    )
                }
                return@launch
            }

            if (resolvedSourceLanguage == targetLanguage) {
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            translatedText = normalizedText,
                            sourceLanguage = resolvedSourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canExplain = canExplainSelection,
                            isLoading = false
                        )
                    )
                }
                return@launch
            }

            val networkAvailable = isNetworkAvailable()
            val dictionaryAvailable = singleWordDictionaryMatch != null || when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }

            val offlineAvailable = when (
                val availability = offlineTranslationEngine.isLanguagePairAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }
            val onlineTranslationAvailable = when (val configured = onlineTranslationEngine.isConfigured()) {
                is Result.Success -> configured.data
                is Result.Error -> false
                Result.Loading -> false
            }
            val phraseTranslationAvailable = readerPhraseTranslationAvailable(
                canTranslateAsPhrase = canTranslateAsPhrase,
                offlineAvailable = offlineAvailable,
                networkAvailable = networkAvailable,
                onlineTranslationAvailable = onlineTranslationAvailable
            )
            val dictionarySourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: resolvedSourceLanguage
            val fallbackDictionaryEntry = if (canUseDictionaryLookup && dictionaryAvailable) {
                if (tokenCount == 1) {
                    singleWordDictionaryMatch?.entry ?: resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage
                    )
                } else {
                    resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage
                    )
                }
            } else {
                null
            }
            val dictionaryActionAvailable = fallbackDictionaryEntry != null

            val routingDecision = when (
                val routeResult = lookupRouter.route(
                    TranslationRoutingRequest(
                        text = normalizedText,
                        sourceType = TranslationSourceType.BOOK_TEXT,
                        sourceLanguageHint = resolvedSourceLanguage,
                        fallbackLanguage = resolvedSourceLanguage,
                        preferredTransport = effectiveTransport,
                        networkAvailable = networkAvailable,
                        onlineTranslationAvailable = onlineTranslationAvailable,
                        offlineModelAvailable = offlineAvailable,
                        dictionaryAvailable = dictionaryAvailable && preferDictionary,
                        llmAvailable = translationSettings.explainEnabled && false
                    )
                )
            ) {
                is Result.Success -> routeResult.data
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
                when (val entry = fallbackDictionaryEntry) {
                    null -> {
                        val errorMessage = localizedReaderError(::readerDictionaryUnavailableMessage)
                        _uiState.update {
                            it.copy(
                                selectedTextTranslation = SelectedTextTranslationState(
                                    originalText = normalizedText,
                                    sourceLanguage = resolvedSourceLanguage,
                                    targetLanguage = targetLanguage,
                                    mode = TranslationMode.DICTIONARY,
                                    preferredTransport = effectiveTransport,
                                    canUseDictionary = dictionaryActionAvailable,
                                    canTranslateAsPhrase = phraseTranslationAvailable,
                                    canExplain = canExplainSelection,
                                    isLoading = false,
                                    error = errorMessage
                                )
                            )
                        }
                    }

                    else -> {
                        showSelectedTextDictionaryResult(
                            originalText = normalizedText,
                            entry = entry,
                            sourceLanguage = dictionarySourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = dictionaryActionAvailable,
                            canTranslateAsPhrase = phraseTranslationAvailable,
                            canExplainSelection = canExplainSelection
                        )
                    }
                }
                return@launch
            }

            if (translationMode == null || translationMode == TranslationMode.LLM) {
                if (fallbackDictionaryEntry != null) {
                    showSelectedTextDictionaryResult(
                        originalText = normalizedText,
                        entry = fallbackDictionaryEntry,
                        sourceLanguage = dictionarySourceLanguage,
                        targetLanguage = targetLanguage,
                        preferredTransport = effectiveTransport,
                        canUseDictionary = dictionaryActionAvailable,
                        canTranslateAsPhrase = phraseTranslationAvailable,
                        canExplainSelection = canExplainSelection
                    )
                    return@launch
                }
                val uiLanguage = currentReaderUiLanguage()
                val errorMessage = resolveReaderTranslationUnavailableMessage(
                    language = uiLanguage,
                    preferredTransport = effectiveTransport,
                    networkAvailable = networkAvailable,
                    onlineConfigured = onlineTranslationAvailable,
                    offlineModelAvailable = offlineAvailable,
                    dictionaryRouteAvailable = dictionaryActionAvailable,
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
                _uiState.update {
                    it.copy(
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            sourceLanguage = resolvedSourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = dictionaryActionAvailable,
                            canTranslateAsPhrase = phraseTranslationAvailable,
                            canExplain = canExplainSelection,
                            isLoading = false,
                            error = errorMessage
                        )
                    )
                }
                return@launch
            }

            val request = TranslationRequest(
                id = "reader-selection-${System.currentTimeMillis()}",
                sourceType = TranslationSourceType.BOOK_TEXT,
                text = normalizedText,
                sourceLanguage = resolvedSourceLanguage,
                targetLanguage = targetLanguage,
                mode = translationMode,
                createdAt = System.currentTimeMillis()
            )

            val translationResult = when (translationMode) {
                TranslationMode.OFFLINE_MT -> offlineTranslationEngine.translate(request)
                TranslationMode.ONLINE_MT -> onlineTranslationEngine.translate(request)
                else -> Result.Error(IllegalStateException("Unsupported reader translation mode: $translationMode"))
            }

            when (translationResult) {
                is Result.Success -> {
                    val resolvedMode = if (translationResult.data.isOffline) {
                        TranslationMode.OFFLINE_MT
                    } else {
                        translationMode
                    }
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                translatedText = translationResult.data.translatedText,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = resolvedMode,
                                preferredTransport = effectiveTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canExplain = canExplainSelection,
                                isLoading = false
                            )
                        )
                    }
                }

                is Result.Error -> {
                    if (fallbackDictionaryEntry != null) {
                        showSelectedTextDictionaryResult(
                            originalText = normalizedText,
                            entry = fallbackDictionaryEntry,
                            sourceLanguage = dictionarySourceLanguage,
                            targetLanguage = targetLanguage,
                            preferredTransport = effectiveTransport,
                            canUseDictionary = dictionaryActionAvailable,
                            canTranslateAsPhrase = phraseTranslationAvailable,
                            canExplainSelection = canExplainSelection
                        )
                        return@launch
                    }

                    val uiLanguage = currentReaderUiLanguage()
                    val errorMessage = when (translationResult.exception) {
                        is TranslationBackendUnavailableException ->
                            resolveReaderTranslationUnavailableMessage(
                                language = uiLanguage,
                                preferredTransport = effectiveTransport,
                                networkAvailable = networkAvailable,
                                onlineConfigured = onlineTranslationAvailable,
                                offlineModelAvailable = offlineAvailable,
                                dictionaryRouteAvailable = dictionaryActionAvailable,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage
                            )
                        else -> translationResult.message
                            ?: resolveReaderTranslationUnavailableMessage(
                                language = uiLanguage,
                                preferredTransport = effectiveTransport,
                                networkAvailable = networkAvailable,
                                onlineConfigured = onlineTranslationAvailable,
                                offlineModelAvailable = offlineAvailable,
                                dictionaryRouteAvailable = dictionaryActionAvailable,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage
                            )
                    }
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = translationMode,
                                preferredTransport = effectiveTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canTranslateAsPhrase = phraseTranslationAvailable,
                                canExplain = canExplainSelection,
                                isLoading = false,
                                error = errorMessage
                            )
                        )
                    }
                }

                Result.Loading -> Unit
            }
        }
    }

    fun translateSelectedTextWithTransport(preferredTransport: TranslationTransportPreference) {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translateSelectedText(
            selectedText = selectedText,
            preferredTransport = preferredTransport,
            preferDictionary = false
        )
    }

    fun translateSelectedTextAsPhrase() {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translateSelectedText(
            selectedText = selectedText,
            preferredTransport = _uiState.value.selectedTextTranslation?.preferredTransport
                ?: TranslationTransportPreference.AUTO,
            preferDictionary = false
        )
    }

    fun openDictionaryForSelectedText() {
        val selectedText = _uiState.value.selectedTextTranslation?.originalText ?: return
        translateSelectedText(
            selectedText = selectedText,
            preferredTransport = _uiState.value.selectedTextTranslation?.preferredTransport
                ?: TranslationTransportPreference.AUTO,
            preferDictionary = true
        )
    }

    fun dismissSelectedTextTranslation() {
        _uiState.update { it.copy(selectedTextTranslation = null) }
    }

    // ── Translation comparison ─────────────────────────────────────────────

    fun compareTranslations(selectedText: String) {
        val normalized = selectedText.trim().replace(Regex("\\s+"), " ")
        if (normalized.isBlank()) return

        _uiState.update {
            it.copy(translationComparison = TranslationComparisonUi(
                originalText = normalized,
                results = emptyList(),
                isLoading = true
            ))
        }

        viewModelScope.launch {
            val translationSettings = resolveTranslationSettings()
            val sourceLang = translationSettings.sourceLanguage ?: "auto"
            val targetLang = translationSettings.targetLanguage

            val comparisonResults = translationComparisonEngine.compare(
                normalized, sourceLang, targetLang
            )

            _uiState.update {
                it.copy(translationComparison = TranslationComparisonUi(
                    originalText = normalized,
                    results = comparisonResults.map { r ->
                        ComparisonResultUi(
                            engineName = r.engineName,
                            translatedText = r.translatedText,
                            success = r.success,
                            error = r.error
                        )
                    },
                    isLoading = false
                ))
            }
        }
    }

    fun dismissTranslationComparison() {
        _uiState.update { it.copy(translationComparison = null) }
    }

    // ── Chapter translation ────────────────────────────────────────────────

    fun translateCurrentChapter() {
        val html = _uiState.value.currentHtmlContent ?: return

        viewModelScope.launch {
            val translationSettings = resolveTranslationSettings()
            val sourceLang = translationSettings.sourceLanguage ?: "auto"
            val targetLang = translationSettings.targetLanguage

            val engineAvailable = try {
                translatorEngine.isLanguagePairAvailable(sourceLang, targetLang)
            } catch (_: Exception) {
                false
            }

            if (!engineAvailable) {
                _uiState.update {
                    it.copy(error = "Translation not available. Configure an engine in Settings → AI Services.")
                }
                return@launch
            }

            val paragraphs = html
                .replace(Regex("<br\\s*/?>", RegexOption.IGNORE_CASE), "\n")
                .replace(Regex("<p[^>]*>", RegexOption.IGNORE_CASE), "\n")
                .replace(Regex("</p>", RegexOption.IGNORE_CASE), "\n")
                .replace(Regex("<[^>]+>"), "")
                .split(Regex("\n+"))
                .map { it.trim() }
                .filter { it.isNotBlank() }

            if (paragraphs.isEmpty()) return@launch

            _uiState.update {
                it.copy(chapterTranslationProgress = ChapterTranslationProgressUi(
                    totalParagraphs = paragraphs.size,
                    completedParagraphs = 0
                ))
            }

            val translatedParagraphs = mutableListOf<String>()
            for ((index, paragraph) in paragraphs.withIndex()) {
                try {
                    val translated = translatorEngine.translate(paragraph, sourceLang, targetLang)
                    translatedParagraphs.add(translated)
                } catch (_: Exception) {
                    translatedParagraphs.add(paragraph)
                }
                _uiState.update {
                    it.copy(chapterTranslationProgress = ChapterTranslationProgressUi(
                        totalParagraphs = paragraphs.size,
                        completedParagraphs = index + 1,
                        currentPreview = paragraph.take(50)
                    ))
                }
            }

            val translatedHtml = translatedParagraphs.joinToString("\n") { "<p>$it</p>" }
            _uiState.update {
                it.copy(
                    currentHtmlContent = translatedHtml,
                    chapterTranslationProgress = null
                )
            }
        }
    }

    // ── Page translation ───────────────────────────────────────────────────

    fun requestTextPageTranslation(formatReader: FormatReader?, page: Int = _uiState.value.currentPage) {
        viewModelScope.launch {
            val reader = formatReader ?: return@launch
            val totalPages = _uiState.value.totalPages
            val safePage = page.coerceIn(0, (totalPages - 1).coerceAtLeast(0))
            val html = runCatching { reader.getHtmlPage(safePage) }.getOrNull() ?: return@launch
            val plainText = HtmlCompat.fromHtml(html, HtmlCompat.FROM_HTML_MODE_LEGACY)
                .toString()
                .replace('\u00A0', ' ')
                .replace(Regex("\\s+"), " ")
                .trim()
                .take(5000)
            if (plainText.isBlank()) return@launch
            translateSelectedText(
                selectedText = plainText,
                preferDictionary = false
            )
        }
    }

    // ── Internal helpers ───────────────────────────────────────────────────

    internal suspend fun resolveTranslationSettings(): TranslationServiceConfig {
        val appLanguage = normalizeAppLanguageCode(
            readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
        )
        val rawTargetLanguage = readerPreferences.get(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, "APP").first()
        val rawSourceLanguage = readerPreferences.get(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, "AUTO").first()
        val rawTransport = readerPreferences.get(
            PreferencesKeys.TRANSLATION_TRANSPORT,
            TranslationTransportPreference.AUTO.name
        ).first()
        val explainEnabled = readerPreferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, false).first()

        val targetLanguage = normalizeTranslationLanguageCode(rawTargetLanguage)
            ?: appLanguage
            ?: "ru"

        val sourceLanguage = normalizeTranslationLanguageCode(rawSourceLanguage)

        return TranslationServiceConfig.fromStored(
            mode = null,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage,
            preferredTransport = rawTransport,
            explainEnabled = explainEnabled
        )
    }

    private suspend fun resolveSingleWordDictionaryMatch(
        rawWord: String,
        targetLanguage: String,
        preferredSourceLanguage: String?,
        detectionResult: LanguageDetectionResult?
    ): SingleWordDictionaryMatch? {
        return resolveBestSingleWordDictionaryMatch(
            rawWord = rawWord,
            targetLanguage = targetLanguage,
            dictionaryEngine = dictionaryEngine,
            preferredSourceLanguage = preferredSourceLanguage,
            detectedLanguage = detectionResult?.languageCode,
            detectedCandidates = detectionResult?.candidates?.map { it.languageCode }.orEmpty(),
            fallbackSourceLanguages = supportedTranslationLanguageCodes.filter { it != targetLanguage }
        )
    }

    private suspend fun resolveReaderDictionaryEntry(
        rawWord: String,
        sourceLanguage: String,
        targetLanguage: String
    ): DictionaryEntry? {
        return when (
            val dictionaryResult = dictionaryEngine.lookup(
                rawWord = rawWord,
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> dictionaryResult.data.takeIf { entry ->
                entry.hasMeaningfulTranslationFor(rawWord) || entry.translations.isNotEmpty() || entry.glosses.isNotEmpty()
            }
            is Result.Error -> null
            Result.Loading -> null
        }
    }

    private fun showSelectedTextDictionaryResult(
        originalText: String,
        entry: DictionaryEntry,
        sourceLanguage: String,
        targetLanguage: String,
        preferredTransport: TranslationTransportPreference,
        canUseDictionary: Boolean,
        canTranslateAsPhrase: Boolean,
        canExplainSelection: Boolean
    ) {
        _uiState.update {
            it.copy(
                selectedTextTranslation = SelectedTextTranslationState(
                    originalText = originalText,
                    translatedText = entry.translations.firstOrNull().orEmpty(),
                    dictionaryEntry = entry,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    mode = TranslationMode.DICTIONARY,
                    preferredTransport = preferredTransport,
                    canUseDictionary = canUseDictionary,
                    canTranslateAsPhrase = canTranslateAsPhrase,
                    canExplain = canExplainSelection,
                    isLoading = false
                )
            )
        }
    }

    private fun isNetworkAvailable(): Boolean {
        val connectivityManager = context.getSystemService(ConnectivityManager::class.java) ?: return false
        val network = connectivityManager.activeNetwork ?: return false
        val capabilities = connectivityManager.getNetworkCapabilities(network) ?: return false
        return capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) &&
            capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED)
    }

    private suspend fun currentReaderUiLanguage(): String =
        normalizeAppLanguageCode(
            readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
        )

    private suspend fun localizedReaderError(messageProvider: (String) -> String): String {
        val languageCode = normalizeAppLanguageCode(
            readerPreferences.get(PreferencesKeys.APP_LANGUAGE, "ru").first()
        )
        return messageProvider(languageCode)
    }

    // ── LLM explanation ────────────────────────────────────────────────────

    fun explainSelectedText(selectedText: String) {
        val normalizedText = selectedText
            .trim()
            .replace(Regex("\\s+"), " ")
        if (normalizedText.isBlank()) return

        viewModelScope.launch {
            val translationSettings = resolveTranslationSettings()
            val uiLanguage = currentReaderUiLanguage()
            val targetLanguage = translationSettings.targetLanguage
            val preferredTransport = _uiState.value.selectedTextTranslation?.preferredTransport
                ?: translationSettings.preferredTransport
            val tokenCount = normalizedText.countSelectionTokens()
            val canTranslateAsPhrase = tokenCount <= 3
            val canUseDictionaryLookup = tokenCount <= 3
            val canExplainSelection = true

            _uiState.update {
                it.copy(
                    selectedTextTranslation = SelectedTextTranslationState(
                        originalText = normalizedText,
                        targetLanguage = targetLanguage,
                        mode = TranslationMode.LLM,
                        preferredTransport = preferredTransport,
                        canTranslateAsPhrase = canTranslateAsPhrase,
                        canExplain = canExplainSelection,
                        isLoading = true
                    )
                )
            }

            val detectionResult = translationSettings.sourceLanguage?.let { sourceLanguage ->
                LanguageDetectionResult(
                    languageCode = sourceLanguage,
                    isReliable = true,
                    fallbackUsed = true
                )
            } ?: when (val detection = languageDetector.detectLanguage(normalizedText)) {
                is Result.Success -> detection.data
                is Result.Error -> null
                Result.Loading -> null
            }

            val detectedLanguage = detectionResult
                ?.languageCode
                ?.takeUnless { it == "und" }

            val singleWordDictionaryMatch = if (tokenCount == 1) {
                resolveSingleWordDictionaryMatch(
                    rawWord = normalizedText,
                    targetLanguage = targetLanguage,
                    preferredSourceLanguage = translationSettings.sourceLanguage,
                    detectionResult = detectionResult
                )
            } else {
                null
            }

            val resolvedSourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: detectedLanguage

            if (resolvedSourceLanguage == null) {
                val errorMessage = localizedReaderError(::readerTranslationLanguageDetectFailedMessage)
                _uiState.update {
                    it.copy(
                        selectedTextActionSheet = null,
                        selectedTextTranslation = SelectedTextTranslationState(
                            originalText = normalizedText,
                            targetLanguage = targetLanguage,
                            mode = TranslationMode.LLM,
                            preferredTransport = preferredTransport,
                            canTranslateAsPhrase = canTranslateAsPhrase,
                            canExplain = true,
                            isLoading = false,
                            error = errorMessage
                        )
                    )
                }
                return@launch
            }

            val dictionaryAvailable = when (
                val availability = dictionaryEngine.isLookupAvailable(
                    sourceLanguage = resolvedSourceLanguage,
                    targetLanguage = targetLanguage
                )
            ) {
                is Result.Success -> availability.data
                is Result.Error -> false
                Result.Loading -> false
            }
            var dictionaryActionAvailable = false

            if (canUseDictionaryLookup && dictionaryAvailable) {
                when (val entry = if (tokenCount == 1) {
                    singleWordDictionaryMatch?.entry ?: resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage
                    )
                } else {
                    resolveReaderDictionaryEntry(
                        rawWord = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage
                    )
                }) {
                    null -> Unit
                    else -> {
                        dictionaryActionAvailable = true
                        _uiState.update {
                            it.copy(
                                selectedTextTranslation = SelectedTextTranslationState(
                                    originalText = normalizedText,
                                    translatedText = buildDictionaryExplanation(
                                        entry = entry,
                                        uiLanguage = uiLanguage
                                    ),
                                    sourceLanguage = singleWordDictionaryMatch?.sourceLanguage ?: resolvedSourceLanguage,
                                    targetLanguage = targetLanguage,
                                    mode = TranslationMode.LLM,
                                    preferredTransport = preferredTransport,
                                    canUseDictionary = dictionaryActionAvailable,
                                    canTranslateAsPhrase = canTranslateAsPhrase,
                                    canExplain = true,
                                    isLoading = false
                                )
                            )
                        }
                        return@launch
                    }
                }
            }

            when (
                val explainResult = llmExplainEngine.explain(
                    ExplainRequest(
                        id = "reader-explain-${System.currentTimeMillis()}",
                        sourceType = TranslationSourceType.BOOK_TEXT,
                        text = normalizedText,
                        sourceLanguage = resolvedSourceLanguage,
                        targetLanguage = targetLanguage,
                        translatedText = _uiState.value.selectedTextTranslation
                            ?.translatedText
                            ?.takeIf { it.isNotBlank() },
                        createdAt = System.currentTimeMillis()
                    )
                )
            ) {
                is Result.Success -> {
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                translatedText = explainResult.data.explanation,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = TranslationMode.LLM,
                                preferredTransport = preferredTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canTranslateAsPhrase = canTranslateAsPhrase,
                                canExplain = true,
                                isLoading = false
                            )
                        )
                    }
                }

                is Result.Error -> {
                    val errorMessage = localizedReaderError(::readerExplainUnavailableMessage)
                    _uiState.update {
                        it.copy(
                            selectedTextTranslation = SelectedTextTranslationState(
                                originalText = normalizedText,
                                sourceLanguage = resolvedSourceLanguage,
                                targetLanguage = targetLanguage,
                                mode = TranslationMode.LLM,
                                preferredTransport = preferredTransport,
                                canUseDictionary = dictionaryActionAvailable,
                                canTranslateAsPhrase = canTranslateAsPhrase,
                                canExplain = true,
                                isLoading = false,
                                error = errorMessage
                            )
                        )
                    }
                }

                Result.Loading -> Unit
            }
        }
    }

    private fun buildDictionaryExplanation(
        entry: DictionaryEntry,
        uiLanguage: String
    ): String {
        val readerText = readerUiText(uiLanguage)
        return buildList {
            add("${readerText.dictionaryLemmaLabel}: ${entry.lemma}")
            readerDictionaryPartOfSpeechLabel(entry.partOfSpeech, uiLanguage)?.let { posLabel ->
                add("${readerText.dictionaryPartOfSpeechLabel}: $posLabel")
            }
            val meanings = entry.translations
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .take(4)
            if (meanings.isNotEmpty()) {
                add("${readerText.dictionaryMeaningsLabel}: ${meanings.joinToString("; ")}")
            }
            val glosses = entry.glosses
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .take(2)
            if (glosses.isNotEmpty()) {
                add(glosses.joinToString("\n"))
            }
            val forms = entry.forms
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .take(4)
            if (forms.isNotEmpty()) {
                add("${readerText.dictionaryFormsLabel}: ${forms.joinToString(", ")}")
            }
        }.joinToString("\n")
    }

    private fun String.countSelectionTokens(): Int =
        SELECTION_TOKEN_REGEX.findAll(this).count().coerceAtLeast(if (isBlank()) 0 else 1)

    private companion object {
        val SELECTION_TOKEN_REGEX = "[\\p{L}\\p{N}]+".toRegex()
    }
}
