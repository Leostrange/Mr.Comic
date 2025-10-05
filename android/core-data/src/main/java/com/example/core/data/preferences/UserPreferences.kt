package com.example.core.data.preferences

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.emptyPreferences
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.map
import java.io.IOException

/**
 * DataStore extension для Context
 */
val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "mr_comic_preferences")

/**
 * Класс для работы с пользовательскими настройками через DataStore
 */
class UserPreferences(private val dataStore: DataStore<Preferences>) {
    
    /**
     * Получить значение по ключу
     */
    fun <T> get(key: Preferences.Key<T>, defaultValue: T): Flow<T> {
        return dataStore.data
            .catch { exception ->
                if (exception is IOException) {
                    emit(emptyPreferences())
                } else {
                    throw exception
                }
            }
            .map { preferences ->
                preferences[key] ?: defaultValue
            }
    }
    
    /**
     * Установить значение по ключу
     */
    suspend fun <T> set(key: Preferences.Key<T>, value: T) {
        dataStore.edit { preferences ->
            preferences[key] = value
        }
    }
    
    /**
     * Удалить значение по ключу
     */
    suspend fun <T> remove(key: Preferences.Key<T>) {
        dataStore.edit { preferences ->
            preferences.remove(key)
        }
    }
    
    /**
     * Очистить все настройки
     */
    suspend fun clear() {
        dataStore.edit { preferences ->
            preferences.clear()
        }
    }
    
    /**
     * Получить все настройки
     */
    val allPreferences: Flow<Preferences> = dataStore.data
        .catch { exception ->
            if (exception is IOException) {
                emit(emptyPreferences())
            } else {
                throw exception
            }
        }
}
