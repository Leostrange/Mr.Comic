package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.translation.TranslationComparisonEngine
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Handles multi-engine translation comparison for selected text.
 */
internal class ReaderTranslationComparisonController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val translationComparisonEngine: TranslationComparisonEngine,
    private val readerPreferences: UserPreferences
) {

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
            val translationSettings = resolveReaderTranslationSettings(readerPreferences)
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
}
