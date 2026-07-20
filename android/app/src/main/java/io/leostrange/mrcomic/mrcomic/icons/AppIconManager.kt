package io.leostrange.mrcomic.icons

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.util.Log
import androidx.datastore.preferences.core.edit
import dagger.hilt.android.qualifiers.ApplicationContext
import io.leostrange.mrcomic.core.data.preferences.APP_ICON_PREFERENCE_KEY
import io.leostrange.mrcomic.core.data.preferences.DEFAULT_APP_ICON_ID
import io.leostrange.mrcomic.core.data.preferences.appIconDataStore
import io.leostrange.mrcomic.R
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class AppIconManager @Inject constructor(
    @ApplicationContext private val context: Context
) {
    companion object {
        private const val TAG = "AppIconManager"
        const val DEFAULT_ICON = DEFAULT_APP_ICON_ID
        private val ICON_ALIAS_PACKAGE =
            AppIconManager::class.java.`package`?.name?.removeSuffix(".icons") ?: "io.leostrange.mrcomic"

        val AVAILABLE_ICONS = listOf(
            AppIcon("icon_1", R.drawable.ic_launcher_1_fg),
            AppIcon("icon_2", R.drawable.ic_launcher_2_fg),
            AppIcon("icon_3", R.drawable.ic_launcher_3_fg),
            AppIcon("icon_4", R.drawable.ic_launcher_4_fg),
            AppIcon("icon_5", R.drawable.ic_launcher_5_fg),
            AppIcon("icon_6", R.drawable.ic_launcher_6_fg),
            AppIcon("icon_7", R.drawable.ic_launcher_7_fg)
        )

        /** Map icon id -> activity-alias suffix used in AndroidManifest */
    }

    private fun componentNameFor(iconId: String): ComponentName {
        val num = iconId.substringAfter("icon_").ifBlank { "1" }
        return ComponentName(context.packageName, "$ICON_ALIAS_PACKAGE.MainActivityIcon_$num")
    }

    private fun launchIntentForIcon(iconId: String): Intent = Intent(Intent.ACTION_MAIN).apply {
        addCategory(Intent.CATEGORY_LAUNCHER)
        component = componentNameFor(iconId)
        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
    }

    val currentIcon: Flow<String> = context.appIconDataStore.data.map { prefs ->
        prefs[APP_ICON_PREFERENCE_KEY] ?: DEFAULT_ICON
    }

    fun getCurrentIconInfo(): Flow<AppIcon> = currentIcon.map { id ->
        AVAILABLE_ICONS.find { it.id == id } ?: AVAILABLE_ICONS.first()
    }

    suspend fun setAppIcon(iconId: String): Boolean {
        if (AVAILABLE_ICONS.none { it.id == iconId }) {
            Log.w(TAG, "Unknown app icon requested: $iconId")
            return false
        }

        val previousIconId = context.appIconDataStore.data
            .map { it[APP_ICON_PREFERENCE_KEY] ?: DEFAULT_ICON }
            .first()

        return try {
            val pm = context.packageManager
            val targetCn = componentNameFor(iconId)
            pm.setComponentEnabledSetting(
                targetCn,
                PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
                PackageManager.DONT_KILL_APP
            )
            AVAILABLE_ICONS.forEach { appIcon ->
                if (appIcon.id != iconId) {
                    val cn = componentNameFor(appIcon.id)
                    try {
                        pm.setComponentEnabledSetting(
                            cn,
                            PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                            PackageManager.DONT_KILL_APP
                        )
                    } catch (e: Exception) {
                        Log.w(TAG, "Failed to disable component for ${appIcon.id}", e)
                    }
                }
            }
            context.appIconDataStore.edit { it[APP_ICON_PREFERENCE_KEY] = iconId }
            true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to update launcher icon component", e)
            context.appIconDataStore.edit { it[APP_ICON_PREFERENCE_KEY] = previousIconId }
            false
        }
    }

    /**
     * Syncs the PackageManager component state with the DataStore preference.
     * Call on every app launch so that the correct icon alias is active even after
     * an OTA update, reinstall, or process death that reset PM state.
     */
    suspend fun ensureIconConsistency() {
        val savedIconId = context.appIconDataStore.data
            .map { it[APP_ICON_PREFERENCE_KEY] ?: DEFAULT_ICON }
            .first()
        val pm = context.packageManager
        val targetCn = componentNameFor(savedIconId)
        val state = try {
            pm.getComponentEnabledSetting(targetCn)
        } catch (e: Exception) {
            Log.w(TAG, "Cannot read PM component state for $savedIconId", e)
            return
        }
        if (state != PackageManager.COMPONENT_ENABLED_STATE_ENABLED) {
            Log.i(TAG, "Icon state mismatch — re-applying saved icon: $savedIconId")
            setAppIcon(savedIconId)
        }
    }

    fun getAvailableIcons(): List<AppIcon> = AVAILABLE_ICONS
    fun isIconChangeSupported(): Boolean = try { context.packageManager != null } catch (_: Exception) { false }

    fun restartAppForIconChange(iconId: String) {
        context.startActivity(launchIntentForIcon(iconId))
        android.os.Process.killProcess(android.os.Process.myPid())
    }
}

data class AppIcon(
    val id: String,
    val previewResId: Int? = null
)
