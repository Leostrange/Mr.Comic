package com.example.feature.ocr.data

import android.graphics.Bitmap
import com.example.core.domain.translation.ComicTextDetector
import com.example.core.model.OcrBlock
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
