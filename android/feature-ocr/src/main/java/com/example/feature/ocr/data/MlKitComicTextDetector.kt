package com.example.feature.ocr.data

import android.graphics.Bitmap
import com.example.core.domain.translation.ComicTextDetector
import com.example.core.model.OcrBlock
import com.example.core.model.OcrBlockType
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.text.TextRecognition
import com.google.mlkit.vision.text.chinese.ChineseTextRecognizerOptions
import com.google.mlkit.vision.text.japanese.JapaneseTextRecognizerOptions
import com.google.mlkit.vision.text.korean.KoreanTextRecognizerOptions
import com.google.mlkit.vision.text.latin.TextRecognizerOptions
import kotlinx.coroutines.tasks.await
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class MlKitComicTextDetector @Inject constructor(
    private val comicBlockClassifier: ComicBlockClassifier
) : ComicTextDetector {

    override suspend fun detectBlocks(
        bitmap: Bitmap,
        pageId: String,
        sourceLanguageHint: String?
    ): Result<List<OcrBlock>> = runCatching {
        val recognizer = when (sourceLanguageHint?.lowercase()) {
            "ja" -> TextRecognition.getClient(JapaneseTextRecognizerOptions.Builder().build())
            "zh" -> TextRecognition.getClient(ChineseTextRecognizerOptions.Builder().build())
            "ko" -> TextRecognition.getClient(KoreanTextRecognizerOptions.Builder().build())
            else -> TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS)
        }
        try {
            val image = InputImage.fromBitmap(bitmap, 0)
            val result = recognizer.process(image).await()
            result.textBlocks.mapIndexedNotNull { index, block ->
                val bounds = block.boundingBox ?: return@mapIndexedNotNull null
                val originalText = block.text.orEmpty().trim()
                if (originalText.isBlank()) return@mapIndexedNotNull null
                OcrBlock(
                    id = "$pageId:block:$index",
                    pageId = pageId,
                    bboxLeft = bounds.left.toFloat(),
                    bboxTop = bounds.top.toFloat(),
                    bboxWidth = bounds.width().toFloat(),
                    bboxHeight = bounds.height().toFloat(),
                    textOriginal = originalText,
                    textNormalized = originalText.replace('\n', ' ').trim(),
                    detectedLanguage = sourceLanguageHint?.lowercase(),
                    confidence = null,
                    blockType = comicBlockClassifier.classify(
                        text = originalText,
                        lineCount = block.lines.size,
                        boxWidth = bounds.width().toFloat(),
                        boxHeight = bounds.height().toFloat()
                    ),
                    rotation = 0f
                )
            }
        } finally {
            recognizer.close()
        }
    }
}
