package io.leostrange.mrcomic.feature.reader.ui

import androidx.core.text.HtmlCompat
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.domain.translation.TranslatorEngine
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Handles whole-chapter and whole-page translation via the configured translator engine.
 */
internal class ReaderChapterTranslationController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val translatorEngine: TranslatorEngine,
    private val readerPreferences: UserPreferences,
    private val translateSelectedText: (String, TranslationTransportPreference?, Boolean) -> Unit
) {

    // ── Chapter translation ────────────────────────────────────────────────

    fun translateCurrentChapter() {
        val html = _uiState.value.currentHtmlContent ?: return

        viewModelScope.launch {
            val translationSettings = resolveReaderTranslationSettings(readerPreferences)
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
            translateSelectedText(plainText, null, false)
        }
    }
}
