package com.example.mrcomic.utils

import android.content.Context
import android.graphics.Bitmap
import com.googlecode.tesseract.android.TessBaseAPI
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File

object OcrProcessor {
    private lateinit var tessBaseAPI: TessBaseAPI

    fun init(context: Context) {
        tessBaseAPI = TessBaseAPI()
        val tessDataDir = File(context.filesDir, "tessdata")
        tessDataDir.mkdirs()
        // Копировать tessdata (eng, rus) в tessDataDir при первом запуске
        tessBaseAPI.init(tessDataDir.absolutePath, "eng+rus")
    }

    suspend fun processImage(image: Bitmap): String = withContext(Dispatchers.IO) {
        tessBaseAPI.setImage(image)
        tessBaseAPI.utF8Text ?: ""
    }
} 