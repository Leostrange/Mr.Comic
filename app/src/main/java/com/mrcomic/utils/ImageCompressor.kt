package com.example.mrcomic.utils

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream

object ImageCompressor {
    suspend fun compressImage(context: Context, sourceFile: File, quality: Int = 80): File = withContext(Dispatchers.IO) {
        val bitmap = BitmapFactory.decodeFile(sourceFile.absolutePath)
        val compressedFile = File(context.cacheDir, "${sourceFile.nameWithoutExtension}_compressed.jpg")
        FileOutputStream(compressedFile).use { out ->
            bitmap.compress(Bitmap.CompressFormat.JPEG, quality, out)
        }
        compressedFile
    }
} 