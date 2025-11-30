package com.example.feature.cbr

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Менеджер для управления CBR функциональностью
 * Контролирует включение/отключение CBR поддержки
 */
@Singleton
class CbrFeatureManager @Inject constructor(
    private val context: Context
) {
    
    companion object {
        private const val PREFERENCES_NAME = "cbr_settings"
        private val CBR_ENABLED_KEY = booleanPreferencesKey("cbr_enabled")
        private val CBR_LICENSE_ACCEPTED_KEY = booleanPreferencesKey("cbr_license_accepted")
    }
    
    private val Context.cbrDataStore: DataStore<Preferences> by preferencesDataStore(
        name = PREFERENCES_NAME
    )
    
    /**
     * Проверить, включена ли поддержка CBR
     */
    val isCbrEnabled: Flow<Boolean> = context.cbrDataStore.data.map { preferences ->
        preferences[CBR_ENABLED_KEY] ?: false
    }
    
    /**
     * Проверить, принята ли лицензия CBR
     */
    val isCbrLicenseAccepted: Flow<Boolean> = context.cbrDataStore.data.map { preferences ->
        preferences[CBR_LICENSE_ACCEPTED_KEY] ?: false
    }
    
    /**
     * Включить поддержку CBR
     */
    suspend fun enableCbrSupport() {
        context.cbrDataStore.edit { preferences ->
            preferences[CBR_ENABLED_KEY] = true
        }
    }
    
    /**
     * Отключить поддержку CBR
     */
    suspend fun disableCbrSupport() {
        context.cbrDataStore.edit { preferences ->
            preferences[CBR_ENABLED_KEY] = false
        }
    }
    
    /**
     * Принять лицензию CBR
     */
    suspend fun acceptCbrLicense() {
        context.cbrDataStore.edit { preferences ->
            preferences[CBR_LICENSE_ACCEPTED_KEY] = true
        }
    }
    
    /**
     * Проверить, доступна ли CBR функциональность
     */
    suspend fun isCbrAvailable(): Boolean {
        return try {
            // Проверяем, что CBR модуль загружен и библиотека доступна
            Class.forName("com.github.junrar.Archive")
            true
        } catch (e: ClassNotFoundException) {
            false
        }
    }
    
    /**
     * Получить информацию о CBR лицензии
     */
    fun getCbrLicenseInfo(): CbrLicenseInfo {
        return CbrLicenseInfo(
            libraryName = "junrar",
            version = "7.5.5",
            license = "UnRAR License",
            description = "Library for reading RAR archives",
            restrictions = listOf(
                "Commercial use may be restricted",
                "Check UnRAR license for specific terms",
                "This is an optional feature that can be disabled"
            ),
            sourceUrl = "https://github.com/junrar/junrar"
        )
    }
}

/**
 * Информация о лицензии CBR
 */
data class CbrLicenseInfo(
    val libraryName: String,
    val version: String,
    val license: String,
    val description: String,
    val restrictions: List<String>,
    val sourceUrl: String
)
