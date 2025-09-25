package com.example.mrcomic.core.data.repository

import android.content.ComponentName
import android.content.Context
import android.content.pm.PackageManager
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import com.example.mrcomic.core.model.AppIcon
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import javax.inject.Singleton

private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "app_settings")

@Singleton
class AppIconRepository @Inject constructor(
    @ApplicationContext private val context: Context
) {
    private val packageManager = context.packageManager
    
    companion object {
        private val SELECTED_ICON_KEY = stringPreferencesKey("selected_app_icon")
    }
    
    /**
     * Get the currently selected app icon
     */
    val selectedIcon: Flow<AppIcon> = context.dataStore.data.map { preferences ->
        val iconName = preferences[SELECTED_ICON_KEY] ?: AppIcon.DEFAULT.name
        try {
            AppIcon.valueOf(iconName)
        } catch (e: IllegalArgumentException) {
            AppIcon.DEFAULT
        }
    }
    
    /**
     * Set the app icon
     */
    suspend fun setAppIcon(icon: AppIcon) {
        // Save preference
        context.dataStore.edit { preferences ->
            preferences[SELECTED_ICON_KEY] = icon.name
        }
        
        // Update activity aliases
        updateActivityAliases(icon)
    }
    
    /**
     * Get the currently active app icon by checking enabled activity aliases
     */
    fun getCurrentActiveIcon(): AppIcon {
        AppIcon.values().forEach { icon ->
            val componentName = ComponentName(context, icon.activityAlias)
            val enabledState = packageManager.getComponentEnabledSetting(componentName)
            
            if (enabledState == PackageManager.COMPONENT_ENABLED_STATE_ENABLED ||
                (enabledState == PackageManager.COMPONENT_ENABLED_STATE_DEFAULT && icon == AppIcon.DEFAULT)) {
                return icon
            }
        }
        return AppIcon.DEFAULT
    }
    
    private fun updateActivityAliases(selectedIcon: AppIcon) {
        AppIcon.values().forEach { icon ->
            val componentName = ComponentName(context, icon.activityAlias)
            val newState = if (icon == selectedIcon) {
                PackageManager.COMPONENT_ENABLED_STATE_ENABLED
            } else {
                PackageManager.COMPONENT_ENABLED_STATE_DISABLED
            }
            
            try {
                packageManager.setComponentEnabledSetting(
                    componentName,
                    newState,
                    PackageManager.DONT_KILL_APP
                )
            } catch (e: Exception) {
                // Handle potential security exceptions
                e.printStackTrace()
            }
        }
    }
}