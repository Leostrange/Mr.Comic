package com.example.mrcomic.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

val Context.notificationDataStore: DataStore<Preferences> by preferencesDataStore(name = "notification_settings")

data class NotificationSettings(
    val autoImportNotifications: Boolean = true,
    val readingProgressNotifications: Boolean = false
)

object NotificationSettingsManager {
    private val AUTO_IMPORT_NOTIFICATIONS_KEY = booleanPreferencesKey("auto_import_notifications")
    private val READING_PROGRESS_NOTIFICATIONS_KEY = booleanPreferencesKey("reading_progress_notifications")

    fun getNotificationSettings(context: Context): Flow<NotificationSettings> {
        return context.notificationDataStore.data.map { preferences ->
            NotificationSettings(
                autoImportNotifications = preferences[AUTO_IMPORT_NOTIFICATIONS_KEY] ?: true,
                readingProgressNotifications = preferences[READING_PROGRESS_NOTIFICATIONS_KEY] ?: false
            )
        }
    }

    suspend fun saveNotificationSettings(context: Context, settings: NotificationSettings) {
        context.notificationDataStore.edit { preferences ->
            preferences[AUTO_IMPORT_NOTIFICATIONS_KEY] = settings.autoImportNotifications
            preferences[READING_PROGRESS_NOTIFICATIONS_KEY] = settings.readingProgressNotifications
        }
    }
} 