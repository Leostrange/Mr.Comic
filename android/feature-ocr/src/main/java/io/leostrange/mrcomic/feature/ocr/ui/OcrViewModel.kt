package io.leostrange.mrcomic.feature.ocr.ui

import android.content.Context
import android.graphics.BitmapFactory
import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.domain.translation.ComicTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.LanguageDetector
import io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine
import io.leostrange.mrcomic.core.domain.translation.LookupRouter
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.feature.ocr.data.OcrPageCache
import io.leostrange.mrcomic.feature.ocr.data.OcrRepository
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject

/**
 * ViewModel for the OCR translation screen.
 *
 * The implementation is split across focused files (extension functions on this
 * class), each owning one responsibility:
 * - [OcrViewModelCache.kt] — page cache keys, source fingerprints, block filters
 * - [OcrViewModelImage.kt] — standalone image import/cleanup
 * - [OcrViewModelActions.kt] — OCR detection, page/block translation, retry
 * - [OcrViewModelTranslation.kt] — manual-text translation and dictionary fallback
 * - [OcrViewModelExplain.kt] — LLM explanations and text cleanup
 * - [OcrViewModelAvailability.kt] — translation backend availability
 * - [OcrViewModelSettings.kt] — small state setters and actions
 */
@HiltViewModel
class OcrViewModel @Inject constructor(
    internal val ocrRepository: OcrRepository,
    internal val comicTranslationEngine: ComicTranslationEngine,
    internal val dictionaryEngine: DictionaryEngine,
    internal val languageDetector: LanguageDetector,
    internal val llmExplainEngine: LlmExplainEngine,
    internal val lookupRouter: LookupRouter,
    internal val offlineTranslationEngine: OfflineTranslationEngine,
    internal val onlineTranslationEngine: OnlineTranslationEngine,
    internal val ocrPageCache: OcrPageCache,
    internal val libraryRepository: LibraryRepository,
    @ApplicationContext internal val context: Context,
    internal val savedStateHandle: SavedStateHandle
) : ViewModel() {

    internal val preferences = UserPreferences(context.dataStore)
    internal val _uiState = MutableStateFlow(
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

    companion object {
        const val AUTO_SOURCE_LANGUAGE = "AUTO"
        val OCR_SELECTION_TOKEN_REGEX = "[\\p{L}\\p{N}]+".toRegex()
    }
}
