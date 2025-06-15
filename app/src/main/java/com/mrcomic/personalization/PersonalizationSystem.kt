package com.mrcomic.system

import android.content.Context
import android.graphics.Typeface
import android.util.Log
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.io.InputStream

class PersonalizationSystem(private val context: Context) {

    private val TAG = "PersonalizationSystem"
    private val preferences = context.getSharedPreferences("user_preferences", Context.MODE_PRIVATE)

    fun saveReadingPreference(preferenceKey: String, value: String) {
        preferences.edit().putString(preferenceKey, value).apply()
        Log.d(TAG, "Saved reading preference: $preferenceKey = $value")
    }

    fun getReadingPreference(preferenceKey: String, defaultValue: String): String {
        return preferences.getString(preferenceKey, defaultValue) ?: defaultValue
    }

    fun saveThemePreference(themeName: String) {
        preferences.edit().putString("app_theme", themeName).apply()
        Log.d(TAG, "Saved theme preference: $themeName")
    }

    fun getThemePreference(defaultValue: String): String {
        return preferences.getString("app_theme", defaultValue) ?: defaultValue
    }

    fun saveCustomFont(fontName: String, fontFile: File): Boolean {
        val fontDir = File(context.filesDir, "fonts")
        if (!fontDir.exists()) {
            fontDir.mkdirs()
        }
        val targetFile = File(fontDir, fontName)
        return try {
            FileOutputStream(targetFile).use { outputStream ->
                fontFile.inputStream().copyTo(outputStream)
            }
            preferences.edit().putString("custom_font", fontName).apply()
            Log.d(TAG, "Saved custom font: $fontName")
            true
        } catch (e: IOException) {
            Log.e(TAG, "Error saving custom font: ${e.message}", e)
            false
        }
    }

    fun getCustomFont(): Typeface? {
        val fontName = preferences.getString("custom_font", null)
        return if (fontName != null) {
            val fontFile = File(File(context.filesDir, "fonts"), fontName)
            if (fontFile.exists()) {
                try {
                    Typeface.createFromFile(fontFile)
                } catch (e: Exception) {
                    Log.e(TAG, "Error loading custom font: ${e.message}", e)
                    null
                }
            } else {
                null
            }
        } else {
            null
        }
    }

    fun trackReadingProgress(comicId: String, pageIndex: Int, totalPages: Int) {
        val editor = preferences.edit()
        editor.putInt("progress_${comicId}_page", pageIndex)
        editor.putInt("progress_${comicId}_total", totalPages)
        editor.apply()
        Log.d(TAG, "Tracking progress for $comicId: Page $pageIndex of $totalPages")
    }

    fun getReadingProgress(comicId: String): Pair<Int, Int> {
        val page = preferences.getInt("progress_${comicId}_page", 0)
        val total = preferences.getInt("progress_${comicId}_total", 0)
        return Pair(page, total)
    }

    fun resetReadingProgress(comicId: String) {
        val editor = preferences.edit()
        editor.remove("progress_${comicId}_page")
        editor.remove("progress_${comicId}_total")
        editor.apply()
        Log.d(TAG, "Resetting progress for $comicId")
    }

    fun enableFeature(featureName: String) {
        preferences.edit().putBoolean("feature_" + featureName, true).apply()
        Log.d(TAG, "Feature enabled: $featureName")
    }

    fun disableFeature(featureName: String) {
        preferences.edit().putBoolean("feature_" + featureName, false).apply()
        Log.d(TAG, "Feature disabled: $featureName")
    }

    fun isFeatureEnabled(featureName: String): Boolean {
        return preferences.getBoolean("feature_" + featureName, false)
    }
}


