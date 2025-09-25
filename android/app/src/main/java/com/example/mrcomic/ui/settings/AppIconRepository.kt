package com.example.mrcomic.ui.settings

import android.content.ComponentName
import android.content.Context
import android.content.SharedPreferences
import android.content.pm.PackageManager
import androidx.annotation.DrawableRes
import com.example.mrcomic.R
import dagger.hilt.android.qualifiers.ApplicationContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Репозиторий для управления иконками приложения
 */
@Singleton
class AppIconRepository @Inject constructor(
    @ApplicationContext private val context: Context
) {
    
    companion object {
        private const val PREFS_NAME = "app_icon_prefs"
        private const val KEY_SELECTED_ICON = "selected_icon"
        private const val DEFAULT_ICON = "default"
    }
    
    private val prefs: SharedPreferences = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
    private val packageManager = context.packageManager
    
    /**
     * Доступные иконки приложения
     */
    enum class AppIcon(
        val id: String,
        val displayName: String,
        @DrawableRes val iconRes: Int,
        val activityAlias: String?
    ) {
        DEFAULT("default", "Default", R.mipmap.ic_launcher, null),
        ALT1("alt1", "Alternative 1", R.mipmap.ic_launcher_alt1, ".MainActivityAlt1"),
        ALT2("alt2", "Alternative 2", R.mipmap.ic_launcher_alt2, ".MainActivityAlt2"),
        ALT3("alt3", "Alternative 3", R.mipmap.ic_launcher_alt3, ".MainActivityAlt3")
    }
    
    /**
     * Получить текущую выбранную иконку
     */
    fun getCurrentIcon(): AppIcon {
        val selectedId = prefs.getString(KEY_SELECTED_ICON, DEFAULT_ICON)
        return AppIcon.values().find { it.id == selectedId } ?: AppIcon.DEFAULT
    }
    
    /**
     * Получить все доступные иконки
     */
    fun getAllIcons(): List<AppIcon> {
        return AppIcon.values().toList()
    }
    
    /**
     * Установить новую иконку приложения
     */
    fun setAppIcon(icon: AppIcon): Result<Unit> {
        return try {
            // Сначала отключаем все альтернативные иконки
            disableAllAlternativeIcons()
            
            // Если выбрана не default иконка, включаем соответствующий alias
            if (icon.activityAlias != null) {
                enableActivityAlias(icon.activityAlias)
                // Отключаем основную иконку (ModernSplashActivity)
                disableMainActivity()
            } else {
                // Если выбрана default иконка, включаем основную активность
                enableMainActivity()
            }
            
            // Сохраняем выбор в SharedPreferences
            prefs.edit()
                .putString(KEY_SELECTED_ICON, icon.id)
                .apply()
            
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Отключить все альтернативные иконки
     */
    private fun disableAllAlternativeIcons() {
        AppIcon.values()
            .filter { it.activityAlias != null }
            .forEach { icon ->
                disableActivityAlias(icon.activityAlias!!)
            }
    }
    
    /**
     * Включить activity-alias для иконки
     */
    private fun enableActivityAlias(aliasName: String) {
        val componentName = ComponentName(context, "${context.packageName}$aliasName")
        packageManager.setComponentEnabledSetting(
            componentName,
            PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
            PackageManager.DONT_KILL_APP
        )
    }
    
    /**
     * Отключить activity-alias для иконки
     */
    private fun disableActivityAlias(aliasName: String) {
        val componentName = ComponentName(context, "${context.packageName}$aliasName")
        packageManager.setComponentEnabledSetting(
            componentName,
            PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
            PackageManager.DONT_KILL_APP
        )
    }
    
    /**
     * Проверить, доступна ли иконка
     */
    fun isIconAvailable(icon: AppIcon): Boolean {
        return if (icon.activityAlias == null) {
            true // Default иконка всегда доступна
        } else {
            try {
                val componentName = ComponentName(context, "${context.packageName}${icon.activityAlias}")
                val state = packageManager.getComponentEnabledSetting(componentName)
                state != PackageManager.COMPONENT_ENABLED_STATE_DISABLED
            } catch (e: Exception) {
                false
            }
        }
    }
    
    /**
     * Включить основную активность (для default иконки)
     */
    private fun enableMainActivity() {
        val componentName = ComponentName(context, "${context.packageName}.splash.ModernSplashActivity")
        packageManager.setComponentEnabledSetting(
            componentName,
            PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
            PackageManager.DONT_KILL_APP
        )
    }
    
    /**
     * Отключить основную активность (при использовании альтернативных иконок)
     */
    private fun disableMainActivity() {
        val componentName = ComponentName(context, "${context.packageName}.splash.ModernSplashActivity")
        packageManager.setComponentEnabledSetting(
            componentName,
            PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
            PackageManager.DONT_KILL_APP
        )
    }
    
    /**
     * Сбросить к иконке по умолчанию
     */
    fun resetToDefault(): Result<Unit> {
        return setAppIcon(AppIcon.DEFAULT)
    }
}