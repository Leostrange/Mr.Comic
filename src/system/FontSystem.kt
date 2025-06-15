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

    /**
     * Loads a font from the custom_fonts directory. Supports TTF and OTF formats.
     * @param fontName The name of the font file (e.g., "MyFont.ttf").
     * @return The loaded Typeface, or null if the font cannot be loaded.
     */
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

    /**
     * Saves a font file to the custom_fonts directory.
     * @param fontName The name to save the font file as (e.g., "NewFont.otf").
     * @param inputStream An InputStream of the font data.
     * @return True if the font was saved successfully, false otherwise.
     */
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

    /**
     * Provides a suitable font for a given language code. This method should be extended
     * to integrate with Google Fonts or other font providers for dynamic font loading.
     * It also implicitly supports complex scripts and emojis if the loaded fonts contain them.
     * @param languageCode The ISO 639-1 language code (e.g., "ja" for Japanese).
     * @return A Typeface suitable for the language, or Typeface.DEFAULT if no specific font is found.
     */
    fun getFontForLanguage(languageCode: String): Typeface {
        // Placeholder for language-based font selection logic
        // In a real scenario, this would involve mapping language codes to specific font files
        // and potentially considering user preferences or comic style.
        // For Google Fonts integration, this would involve fetching fonts via API and saving them locally.
        return when (languageCode) {
            "ja" -> loadFont("JapaneseFont.ttf") ?: Typeface.DEFAULT // Example for Japanese
            "zh" -> loadFont("ChineseFont.ttf") ?: Typeface.DEFAULT // Example for Chinese
            else -> Typeface.DEFAULT
        }
    }
}


