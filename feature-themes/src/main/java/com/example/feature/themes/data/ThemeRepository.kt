package com.example.feature.themes.data

import javax.inject.Inject

class ThemeRepository @Inject constructor() {
    fun getAvailableThemes(): List<String> {
        // In a real app, this would read from assets or a themes directory
        return listOf("dark_amoled") // Example from themes_store
    }

    fun loadTheme(themeName: String): Map<String, String> {
        // This would parse the theme.json file
        return mapOf("primaryColor" to "#000000") // Placeholder
    }
}


