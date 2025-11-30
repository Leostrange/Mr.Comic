package com.example.feature.ocr.data

import android.graphics.Bitmap
import com.example.core.model.BoundingBox
import com.example.core.model.TextRegion
import com.example.feature.ocr.domain.OcrEngine
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.text.Text
import com.google.mlkit.vision.text.TextRecognition
import com.google.mlkit.vision.text.latin.TextRecognizerOptions
import javax.inject.Inject
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlin.coroutines.resume

/**
 * Реализация OcrEngine на базе ML Kit (on-device). Возвращает список TextRegion.
 */
class OcrEngineImpl @Inject constructor() : OcrEngine {

    override val id: String = "mlkit"
    override val displayName: String = "ML Kit OCR"

    override fun getSupportedLanguages(): Set<String> = setOf(
        // ML Kit latin распознаёт без строгого кода языка; оставим популярные для UI
        "en", "ru", "es", "fr", "de", "it", "pt"
    )

    override suspend fun recognize(image: Bitmap, lang: String): List<TextRegion> {
        return withContext(Dispatchers.Default) {
            val inputImage = InputImage.fromBitmap(image, 0)
            val recognizer = TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS)
            try {
                suspendCancellableCoroutine { continuation ->
                    recognizer
                        .process(inputImage)
                        .addOnSuccessListener { visionText ->
                            if (!continuation.isActive) return@addOnSuccessListener
                            val regions = mapVisionTextToRegions(visionText, lang)
                            continuation.resume(regions)
                        }
                        .addOnFailureListener {
                            if (!continuation.isActive) return@addOnFailureListener
                            continuation.resume(emptyList())
                        }
                }
            } catch (_: Exception) {
                emptyList()
            } finally {
                recognizer.close()
            }
        }
    }

    private fun mapVisionTextToRegions(visionText: Text, lang: String): List<TextRegion> {
        val regions = mutableListOf<TextRegion>()
        var counter = 0
        for (block in visionText.textBlocks) {
            for (line in block.lines) {
                val rect = line.boundingBox
                if (rect != null) {
                    regions += TextRegion(
                        id = "mlkit_${counter++}",
                        text = line.text.orEmpty(),
                        boundingBox = BoundingBox(
                            x = rect.left.coerceAtLeast(0),
                            y = rect.top.coerceAtLeast(0),
                            width = (rect.width()).coerceAtLeast(0),
                            height = (rect.height()).coerceAtLeast(0)
                        ),
                        confidence = line.confidence ?: 0.0f,
                        language = lang
                    )
                }
            }
        }
        return regions
    }
}


