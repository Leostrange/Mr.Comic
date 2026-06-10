package com.example.core.domain.translation

import android.graphics.Bitmap
import com.example.core.model.OcrBlock

interface ComicTextDetector {
    suspend fun detectBlocks(
        bitmap: Bitmap,
        pageId: String,
        sourceLanguageHint: String? = null
    ): Result<List<OcrBlock>>
}
