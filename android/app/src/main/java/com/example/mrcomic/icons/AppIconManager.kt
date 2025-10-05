package com.example.mrcomic.icons

import android.content.ComponentName
import android.content.Context
import android.content.pm.PackageManager
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import javax.inject.Singleton
import android.util.Log
import dagger.hilt.android.qualifiers.ApplicationContext

private val Context.appIconDataStore: DataStore<Preferences> by preferencesDataStore(name = "app_icon_settings")

/**
 * Менеджер для управления иконками приложения
 * Поддерживает 7 различных вариантов иконок из медиа-файлов
 */
@Singleton
class AppIconManager @Inject constructor(
    @ApplicationContext private val context: Context
) {
    
    companion object {
        private const val TAG = "AppIconManager"
        private val CURRENT_ICON_KEY = stringPreferencesKey("current_app_icon")
        private const val DEFAULT_ICON = "icon_1"
        
        // Список всех доступных иконок
        val AVAILABLE_ICONS = listOf(
            AppIcon("icon_1", "Классическая", "Стандартная иконка приложения"),
            AppIcon("icon_2", "Тёмная", "Тёмный вариант для AMOLED-дисплеев"),
            AppIcon("icon_3", "Яркая", "Яркая иконка с насыщенными цветами"),
            AppIcon("icon_4", "Минимализм", "Минималистичный дизайн"),
            AppIcon("icon_5", "Ретро", "Ретро стиль комиксов"),
            AppIcon("icon_6", "Неон", "Неоновый эффект"),
            AppIcon("icon_7", "Премиум", "Премиум дизайн с золотыми акцентами")
        )
    }
    
    /**
     * Получить текущую выбранную иконку
     */
    val currentIcon: Flow<String> = context.appIconDataStore.data.map { preferences ->
        preferences[CURRENT_ICON_KEY] ?: DEFAULT_ICON
    }
    
    /**
     * Получить информацию о текущей иконке
     */
    fun getCurrentIconInfo(): Flow<AppIcon> {
        return currentIcon.map { iconId ->
            AVAILABLE_ICONS.find { it.id == iconId } ?: AVAILABLE_ICONS.first()
        }
    }
    
    /**
     * Установить новую иконку приложения
     * @param iconId ID иконки (icon_1 - icon_7)
     * @return true если иконка была изменена успешно
     */
    suspend fun setAppIcon(iconId: String): Boolean {
        return try {
            Log.d(TAG, "Changing app icon to: $iconId")
            
            // Проверяем, что иконка существует
            val icon = AVAILABLE_ICONS.find { it.id == iconId }
            if (icon == null) {
                Log.e(TAG, "Unknown icon ID: $iconId")
                return false
            }
            
            val packageManager = context.packageManager
            
            // Отключаем все алиасы иконок
            AVAILABLE_ICONS.forEach { appIcon ->
                val componentName = if (appIcon.id == "icon_1") {
                    // Для icon_1 используем основную активность
                    ComponentName(context, "com.example.mrcomic.splash.ModernSplashActivity")
                } else {
                    // Для остальных используем алиасы
                    ComponentName(context, "com.example.mrcomic.MainActivityIcon_${appIcon.id.substringAfter("icon_")}")
                }
                
                try {
                    packageManager.setComponentEnabledSetting(
                        componentName,
                        if (appIcon.id == iconId) {
                            PackageManager.COMPONENT_ENABLED_STATE_ENABLED
                        } else {
                            PackageManager.COMPONENT_ENABLED_STATE_DISABLED
                        },
                        PackageManager.DONT_KILL_APP
                    )
                    Log.d(TAG, "Component ${appIcon.id}: ${if (appIcon.id == iconId) "enabled" else "disabled"}")
                } catch (e: Exception) {
                    Log.w(TAG, "Failed to set component state for ${appIcon.id}", e)
                }
            }
            
            // Сохраняем выбор в настройках
            context.appIconDataStore.edit { preferences ->
                preferences[CURRENT_ICON_KEY] = iconId
            }
            
            Log.i(TAG, "App icon changed to: $iconId (${icon.name})")
            true
            
        } catch (e: Exception) {
            Log.e(TAG, "Failed to change app icon", e)
            false
        }
    }
    
    /**
     * Получить все доступные иконки
     */
    fun getAvailableIcons(): List<AppIcon> = AVAILABLE_ICONS
    
    /**
     * Проверить, доступна ли функция смены иконок
     */
    fun isIconChangeSupported(): Boolean {
        return try {
            // Проверяем, что PackageManager поддерживает изменение компонентов
            context.packageManager != null
        } catch (e: Exception) {
            Log.w(TAG, "Icon change not supported", e)
            false
        }
    }
    
    /**
     * Перезапустить приложение для применения новой иконки
     * (требуется для некоторых лаунчеров)
     */
    fun restartAppForIconChange() {
        try {
            val packageManager = context.packageManager
            val intent = packageManager.getLaunchIntentForPackage(context.packageName)
            intent?.let {
                it.addFlags(android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP)
                it.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK)
                context.startActivity(intent)
                
                // Завершаем текущий процесс
                android.os.Process.killProcess(android.os.Process.myPid())
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to restart app", e)
        }
    }
}

/**
 * Информация об иконке приложения
 */
data class AppIcon(
    val id: String,
    val name: String,
    val description: String,
    val previewResId: Int? = null // Для предварительного просмотра в настройках
)
