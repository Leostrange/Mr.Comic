package io.leostrange.mrcomic.feature.ocr.data

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.domain.translation.ComicTextDetector
import io.leostrange.mrcomic.core.model.OcrBlock
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class OcrRepository @Inject constructor(
    private val comicTextDetector: ComicTextDetector
) {

    suspend fun detectBlocks(
        bitmap: Bitmap,
        sourceLang: String,
        pageId: String
    ): Result<List<OcrBlock>> = comicTextDetector.detectBlocks(
        bitmap = bitmap,
        pageId = pageId,
        sourceLanguageHint = sourceLang
    )
}
