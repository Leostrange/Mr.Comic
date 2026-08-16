package io.leostrange.mrcomic.feature.ocr.data

import android.graphics.Bitmap
import android.util.Log
import io.leostrange.mrcomic.core.domain.translation.TranslatorEngine
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * End-to-end pipeline for translating comic/manga pages.
 *
 * Flow:
 * 1. OCR → detect text blocks on the page
 * 2. Bubble Detection → group text blocks into speech bubbles
 * 3. Translation → translate each bubble's text
 * 4. Overlay → render translated text over the original page
 *
 * Supports:
 * - Showing original text on tap (toggle overlay)
 * - Progress tracking for multi-bubble pages
 * - Offline-first translation with online fallback
 */
@Singleton
class ComicTranslationPipeline @Inject constructor(
    private val speechBubbleDetector: SpeechBubbleDetector,
    private val overlayRenderer: ComicOverlayRenderer
) {
    private val _progress = MutableStateFlow(ComicTranslationProgress())
    val progress: StateFlow<ComicTranslationProgress> = _progress

    private var showOriginal = false

    /**
     * Translate a comic page.
     *
     * @param bitmap The page image.
     * @param ocrBlocks Pre-detected OCR text blocks (from ML Kit or other OCR engine).
     * @param translatorEngine The translation engine to use.
     * @param sourceLang Source language code.
     * @param targetLang Target language code.
     * @return A [ComicTranslationResult] with the translated overlay bitmap.
     */
    suspend fun translatePage(
        bitmap: Bitmap,
        ocrBlocks: List<OcrBlockResult>,
        translatorEngine: TranslatorEngine,
        sourceLang: String,
        targetLang: String
    ): ComicTranslationResult = withContext(Dispatchers.Default) {
        _progress.value = ComicTranslationProgress(
            stage = TranslationStage.DETECTING_BUBBLES,
            totalBubbles = 0,
            translatedBubbles = 0
        )

        // Step 1: Detect speech bubbles
        val bubbles = speechBubbleDetector.detectBubbles(bitmap, ocrBlocks)
        Log.d("ComicPipeline", "Detected ${bubbles.size} bubbles")

        _progress.value = ComicTranslationProgress(
            stage = TranslationStage.TRANSLATING,
            totalBubbles = bubbles.size,
            translatedBubbles = 0
        )

        // Step 2: Translate each bubble
        val translations = mutableMapOf<String, String>()
        for ((index, bubble) in bubbles.withIndex()) {
            if (bubble.text.isBlank()) continue

            try {
                val translated = translatorEngine.translate(
                    bubble.text, sourceLang, targetLang
                )
                translations[bubble.text] = translated
            } catch (e: Exception) {
                Log.w("ComicPipeline", "Failed to translate: ${bubble.text}", e)
                translations[bubble.text] = bubble.text // Keep original on failure
            }

            _progress.value = ComicTranslationProgress(
                stage = TranslationStage.TRANSLATING,
                totalBubbles = bubbles.size,
                translatedBubbles = index + 1,
                currentText = bubble.text.take(30)
            )
        }

        // Step 3: Render overlay
        _progress.value = ComicTranslationProgress(
            stage = TranslationStage.RENDERING,
            totalBubbles = bubbles.size,
            translatedBubbles = bubbles.size
        )

        val overlayBitmap = overlayRenderer.renderOverlays(
            original = bitmap,
            bubbles = bubbles,
            translations = translations
        )

        _progress.value = ComicTranslationProgress(
            stage = TranslationStage.DONE,
            totalBubbles = bubbles.size,
            translatedBubbles = bubbles.size
        )

        ComicTranslationResult(
            overlayBitmap = overlayBitmap,
            bubbles = bubbles,
            translations = translations,
            originalBitmap = bitmap
        )
    }

    /**
     * Toggle between showing original and translated text.
     */
    fun toggleOriginal(): Boolean {
        showOriginal = !showOriginal
        return showOriginal
    }

    fun isShowingOriginal() = showOriginal
}

/**
 * Result of a comic page translation.
 */
data class ComicTranslationResult(
    val overlayBitmap: Bitmap,
    val bubbles: List<SpeechBubble>,
    val translations: Map<String, String>,
    val originalBitmap: Bitmap
)

/**
 * Progress of a comic translation operation.
 */
data class ComicTranslationProgress(
    val stage: TranslationStage = TranslationStage.IDLE,
    val totalBubbles: Int = 0,
    val translatedBubbles: Int = 0,
    val currentText: String? = null
) {
    val percent: Int get() = when (stage) {
        TranslationStage.IDLE -> 0
        TranslationStage.DETECTING_BUBBLES -> 10
        TranslationStage.TRANSLATING -> if (totalBubbles > 0) {
            10 + (translatedBubbles * 80 / totalBubbles)
        } else 50
        TranslationStage.RENDERING -> 90
        TranslationStage.DONE -> 100
    }
}

enum class TranslationStage {
    IDLE,
    DETECTING_BUBBLES,
    TRANSLATING,
    RENDERING,
    DONE
}
