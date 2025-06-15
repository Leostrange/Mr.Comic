package com.example.mrcomic.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

val Context.libraryDataStore: DataStore<Preferences> by preferencesDataStore(name = "library_settings")

data class LibrarySettings(
    val displayMode: DisplayMode = DisplayMode.GRID,
    val sortOrder: SortOrder = SortOrder.TITLE
)

enum class DisplayMode { LIST, GRID, COMPACT }
enum class SortOrder { TITLE, AUTHOR, DATE_ADDED, LAST_READ }

object LibrarySettingsManager {
    private val DISPLAY_MODE_KEY = stringPreferencesKey("display_mode")
    private val SORT_ORDER_KEY = stringPreferencesKey("sort_order")

    fun getLibrarySettings(context: Context): Flow<LibrarySettings> {
        return context.libraryDataStore.data.map { preferences ->
            LibrarySettings(
                displayMode = DisplayMode.valueOf(preferences[DISPLAY_MODE_KEY] ?: DisplayMode.GRID.name),
                sortOrder = SortOrder.valueOf(preferences[SORT_ORDER_KEY] ?: SortOrder.TITLE.name)
            )
        }
    }

    suspend fun saveLibrarySettings(context: Context, settings: LibrarySettings) {
        context.libraryDataStore.edit { preferences ->
            preferences[DISPLAY_MODE_KEY] = settings.displayMode.name
            preferences[SORT_ORDER_KEY] = settings.sortOrder.name
        }
    }
} 