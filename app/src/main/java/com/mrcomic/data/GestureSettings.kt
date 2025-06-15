package com.example.mrcomic.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

val Context.gestureDataStore: DataStore<Preferences> by preferencesDataStore(name = "gesture_settings")

enum class GestureType(val displayName: String) {
    SWIPE_LEFT("Свайп влево"),
    SWIPE_RIGHT("Свайп вправо"),
    DOUBLE_TAP("Двойной тап"),
    LONG_PRESS("Долгое нажатие")
}

enum class GestureAction(val displayName: String) {
    NEXT_PAGE("Следующая страница"),
    PREV_PAGE("Предыдущая страница"),
    ZOOM("Масштаб"),
    ADD_BOOKMARK("Добавить закладку")
}

data class GestureSettings(
    val gestureMap: Map<GestureType, GestureAction> = mapOf(
        GestureType.SWIPE_LEFT to GestureAction.NEXT_PAGE,
        GestureType.SWIPE_RIGHT to GestureAction.PREV_PAGE,
        GestureType.DOUBLE_TAP to GestureAction.ZOOM,
        GestureType.LONG_PRESS to GestureAction.ADD_BOOKMARK
    )
)

object GestureSettingsManager {
    private fun keyForGesture(gesture: GestureType) = stringPreferencesKey("gesture_${gesture.name}")

    fun getGestureSettings(context: Context): Flow<GestureSettings> {
        return context.gestureDataStore.data.map { preferences ->
            val map = GestureType.values().associateWith { gesture ->
                preferences[keyForGesture(gesture)]?.let { GestureAction.valueOf(it) }
                    ?: GestureSettings().gestureMap[gesture]!!
            }
            GestureSettings(map)
        }
    }

    suspend fun saveGestureSettings(context: Context, settings: GestureSettings) {
        context.gestureDataStore.edit { preferences ->
            settings.gestureMap.forEach { (gesture, action) ->
                preferences[keyForGesture(gesture)] = action.name
            }
        }
    }
} 