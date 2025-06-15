package com.example.mrcomic.utils

import android.content.Context
import com.example.mrcomic.data.*
import com.google.gson.Gson
import java.io.File

data class AppSettings(
    val themeSettings: ThemeSettings,
    val librarySettings: LibrarySettings,
    val readerSettings: ReaderSettings,
    val notificationSettings: NotificationSettings
)

object SettingsBackup {
    private val gson = Gson()
    fun exportSettings(
        context: Context,
        themeSettings: ThemeSettings,
        librarySettings: LibrarySettings,
        readerSettings: ReaderSettings,
        notificationSettings: NotificationSettings
    ): File {
        val settings = AppSettings(themeSettings, librarySettings, readerSettings, notificationSettings)
        val json = gson.toJson(settings)
        val file = File(context.filesDir, "settings_backup.json")
        file.writeText(json)
        return file
    }

    suspend fun importSettings(context: Context, file: File) {
        val json = file.readText()
        val settings = gson.fromJson(json, AppSettings::class.java)
        ThemeSettingsManager.saveThemeSettings(context, settings.themeSettings)
        LibrarySettingsManager.saveLibrarySettings(context, settings.librarySettings)
        ReaderSettingsManager.saveReaderSettings(context, settings.readerSettings)
        NotificationSettingsManager.saveNotificationSettings(context, settings.notificationSettings)
    }
} 