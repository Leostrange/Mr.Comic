package io.leostrange.mrcomic.core.domain.translation

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.OcrBlock

interface ComicTextDetector {
    suspend fun detectBlocks(
        bitmap: Bitmap,
        pageId: String,
        sourceLanguageHint: String? = null
    ): Result<List<OcrBlock>>
}
