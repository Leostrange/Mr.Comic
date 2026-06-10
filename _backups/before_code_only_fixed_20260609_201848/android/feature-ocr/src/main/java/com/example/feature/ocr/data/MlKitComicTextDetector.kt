package com.example.feature.ocr.data

import android.graphics.Bitmap
import com.example.core.domain.translation.ComicTextDetector
import com.example.core.domain.translation.LanguageDetector
import com.example.core.domain.util.Result as DomainResult
import com.example.core.model.OcrBlock
import com.example.core.model.OcrBlockType
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.text.TextRecognition
import com.google.mlkit.vision.text.TextRecognizer
import com.google.mlkit.vision.text.chinese.ChineseTextRecognizerOptions
import com.google.mlkit.vision.text.japanese.JapaneseTextRecognizerOptions
import com.google.mlkit.vision.text.korean.KoreanTextRecognizerOptions
import com.google.mlkit.vision.text.latin.TextRecognizerOptions
import kotlinx.coroutines.tasks.await
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class MlKitComicTextDetector @Inject constructor(
    private val comicBlockClassifier: ComicBlockClassifier,
    private val languageDetector: LanguageDetector
) : ComicTextDetector {

    override suspend fun detectBlocks(
        bitmap: Bitmap,
        pageId: String,
        sourceLanguageHint: String?
    ): kotlin.Result<List<OcrBlock>> = runCatching {
        val normalizedHint = normalizeLanguageCode(sourceLanguageHint)
        val image = InputImage.fromBitmap(bitmap, 0)

        if (normalizedHint == AUTO_SOURCE_LANGUAGE || normalizedHint == null) {
            return@runCatching detectAutoBlocks(image, pageId)
        }

        detectBlocksWithRecognizer(
            image = image,
            pageId = pageId,
            recognizerLanguage = normalizedHint,
            fallbackLanguage = normalizedHint
        )
    }

    private suspend fun detectAutoBlocks(
        image: InputImage,
        pageId: String
    ): List<OcrBlock> {
        val candidates = listOf(null, "ja", "zh", "ko")
            .map { recognizerLanguage ->
                detectBlocksWithRecognizer(
                    image = image,
                    pageId = pageId,
                    recognizerLanguage = recognizerLanguage,
                    fallbackLanguage = recognizerLanguage
                )
            }

        return candidates.maxByOrNull(::scoreBlocks).orEmpty()
    }

    private suspend fun detectBlocksWithRecognizer(
        image: InputImage,
        pageId: String,
        recognizerLanguage: String?,
        fallbackLanguage: String?
    ): List<OcrBlock> {
        val recognizer = createRecognizer(recognizerLanguage)
        try {
            val result = recognizer.process(image).await()
            return result.textBlocks.mapIndexedNotNull { index, block ->
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
                    detectedLanguage = detectBlockLanguage(
                        text = originalText,
                        fallbackLanguage = fallbackLanguage
                    ),
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

    private suspend fun detectBlockLanguage(
        text: String,
        fallbackLanguage: String?
    ): String? = when (val detection = languageDetector.detectLanguage(text, fallbackLanguage)) {
        is DomainResult.Success -> detection.data.languageCode
        is DomainResult.Error -> normalizeLanguageCode(fallbackLanguage)
        DomainResult.Loading -> normalizeLanguageCode(fallbackLanguage)
    }

    private fun createRecognizer(recognizerLanguage: String?): TextRecognizer = when (recognizerLanguage) {
        "ja" -> TextRecognition.getClient(JapaneseTextRecognizerOptions.Builder().build())
        "zh" -> TextRecognition.getClient(ChineseTextRecognizerOptions.Builder().build())
        "ko" -> TextRecognition.getClient(KoreanTextRecognizerOptions.Builder().build())
        else -> TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS)
    }

    private fun scoreBlocks(blocks: List<OcrBlock>): Int =
        blocks.sumOf { block ->
            block.textOriginal.count { candidate -> candidate.isLetterOrDigit() || candidate.code > 0x2E7F }
        }

    private fun normalizeLanguageCode(rawCode: String?): String? =
        rawCode
            ?.trim()
            ?.replace('_', '-')
            ?.lowercase()
            ?.substringBefore('-')
            ?.takeIf { it.isNotBlank() }

    private companion object {
        const val AUTO_SOURCE_LANGUAGE = "auto"
    }
}
