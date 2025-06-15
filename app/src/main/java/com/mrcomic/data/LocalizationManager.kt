package com.example.mrcomic.data

import android.content.Context
import android.content.res.Configuration
import java.util.*

object LocalizationManager {
    private const val PREF_LANGUAGE = "language"
    private val supportedLocales = listOf(Locale("en"), Locale("ru"), Locale("es"))

    fun setLocale(context: Context, languageCode: String) {
        val locale = Locale(languageCode)
        Locale.setDefault(locale)
        val config = Configuration(context.resources.configuration)
        config.setLocale(locale)
        context.resources.updateConfiguration(config, context.resources.displayMetrics)
        context.getSharedPreferences("prefs", Context.MODE_PRIVATE)
            .edit()
            .putString(PREF_LANGUAGE, languageCode)
            .apply()
    }

    fun getCurrentLanguage(context: Context): String {
        return context.getSharedPreferences("prefs", Context.MODE_PRIVATE)
            .getString(PREF_LANGUAGE, "en") ?: "en"
    }
} 