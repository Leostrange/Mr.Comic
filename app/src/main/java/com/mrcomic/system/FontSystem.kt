package com.mrcomic.system

import android.content.Context
import android.graphics.Typeface
import android.util.Log
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.io.InputStream

class FontSystem(private val context: Context) {

    private val TAG = "FontSystem"
    private val fontsDir: File = File(context.filesDir, "custom_fonts")

    init {
        if (!fontsDir.exists()) {
            fontsDir.mkdirs()
        }
    }

    fun loadFont(fontName: String): Typeface? {
        return try {
            val fontFile = File(fontsDir, fontName)
            if (fontFile.exists()) {
                Typeface.createFromFile(fontFile)
            } else {
                Log.w(TAG, "Font file not found: ${fontFile.absolutePath}")
                null
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error loading font $fontName: ${e.message}", e)
            null
        }
    }

    fun saveFont(fontName: String, inputStream: InputStream): Boolean {
        return try {
            val outputFile = File(fontsDir, fontName)
            FileOutputStream(outputFile).use { outputStream ->
                inputStream.copyTo(outputStream)
            }
            Log.d(TAG, "Font saved: ${outputFile.absolutePath}")
            true
        } catch (e: IOException) {
            Log.e(TAG, "Error saving font $fontName: ${e.message}", e)
            false
        }
    }

    fun deleteFont(fontName: String): Boolean {
        val fontFile = File(fontsDir, fontName)
        return if (fontFile.exists()) {
            fontFile.delete()
            Log.d(TAG, "Font deleted: ${fontFile.absolutePath}")
            true
        } else {
            Log.w(TAG, "Font not found for deletion: ${fontFile.absolutePath}")
            false
        }
    }

    fun getAvailableFonts(): List<String> {
        return fontsDir.listFiles()?.map { it.name } ?: emptyList()
    }

    fun getDefaultFont(): Typeface {
        return Typeface.DEFAULT
    }

    fun setDefaultFont(fontName: String): Boolean {
        // This would typically involve updating a shared preference or configuration
        // For simplicity, we'll just log it here.
        Log.d(TAG, "Setting default font to: $fontName")
        return true
    }
}


