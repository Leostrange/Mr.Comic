package com.example.feature.settings

interface SettingsRepository {
    fun getTheme(): String
}

class InMemorySettingsRepository : SettingsRepository {
    override fun getTheme(): String = "Dark Theme"
} 