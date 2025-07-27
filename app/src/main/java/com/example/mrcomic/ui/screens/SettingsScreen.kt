package com.example.mrcomic.ui.screens

import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceProfiler
import com.example.mrcomic.ui.analytics.TrackScreenView
import com.example.mrcomic.ui.analytics.AnalyticsButton
import com.example.mrcomic.ui.analytics.AnalyticsClickable
import com.example.mrcomic.ui.analytics.TrackScreenTime
import com.example.mrcomic.ui.performance.PerformanceMonitor
import kotlinx.coroutines.launch

/**
 * Production-ready экран настроек
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    onBackClick: () -> Unit,
    viewModel: SettingsViewModel = hiltViewModel(),
    analyticsHelper: AnalyticsHelper = hiltViewModel(),
    performanceProfiler: PerformanceProfiler = hiltViewModel()
) {
    val scope = rememberCoroutineScope()
    
    // Отслеживание экрана
    TrackScreenView("Settings", analyticsHelper, scope)
    TrackScreenTime("Settings", analyticsHelper, scope)
    
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    
    // Performance tracking
    PerformanceTracker(
        operationName = "settings_screen_render",
        analyticsHelper = analyticsHelper,
        scope = scope
    ) {
        ErrorBoundary(
            analyticsHelper = analyticsHelper,
            context = "SettingsScreen",
            scope = scope
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.background)
                    .testTag("settings_screen")
            ) {
                // Top App Bar
                SettingsTopBar(
                    onBackClick = onBackClick,
                    analyticsHelper = analyticsHelper,
                    scope = scope
                )
                
                // Settings Content
                LazyColumn(
                    modifier = Modifier.fillMaxSize(),
                    contentPadding = PaddingValues(16.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    // Appearance Section
                    item {
                        SettingsSection(
                            title = "Внешний вид",
                            icon = Icons.Default.Palette
                        )
                    }
                    
                    item {
                        ThemeSettingItem(
                            currentTheme = uiState.theme,
                            onThemeChange = viewModel::setTheme,
                            analyticsHelper = analyticsHelper,
                            scope = scope
                        )
                    }
                    
                    item {
                        LanguageSettingItem(
                            currentLanguage = uiState.language,
                            onLanguageChange = viewModel::setLanguage,
                            analyticsHelper = analyticsHelper,
                            scope = scope
                        )
                    }
                    
                    // Reading Section
                    item {
                        SettingsSection(
                            title = "Чтение",
                            icon = Icons.Default.MenuBook
                        )
                    }
                    
                    item {
                        ReadingModeSettingItem(
                            currentMode = uiState.defaultReadingMode,
                            onModeChange = viewModel::setDefaultReadingMode,
                            analyticsHelper = analyticsHelper,
                            scope = scope
                        )
                    }
                    
                    item {
                        SwitchSettingItem(
                            title = "Не выключать экран",
                            subtitle = "Экран остается включенным во время чтения",
                            icon = Icons.Default.ScreenLockPortrait,
                            checked = uiState.keepScreenOn,
                            onCheckedChange = { checked ->
                                viewModel.setKeepScreenOn(checked)
                                analyticsHelper.track(
                                    com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                        metricName = "keep_screen_on_changed",
                                        value = if (checked) 1.0 else 0.0,
                                        unit = "setting"
                                    ),
                                    scope
                                )
                            },
                            analyticsHelper = analyticsHelper,
                            scope = scope
                        )
                    }
                    
                    item {
                        SliderSettingItem(
                            title = "Яркость по умолчанию",
                            subtitle = "Настройка яркости для чтения",
                            icon = Icons.Default.Brightness6,
                            value = uiState.defaultBrightness,
                            onValueChange = viewModel::setDefaultBrightness,
                            analyticsHelper = analyticsHelper,
                            scope = scope
                        )
                    }
                    
                    // Storage Section
                    item {
                        SettingsSection(
                            title = "Хранилище",
                            icon = Icons.Default.Storage
                        )
                    }
                    
                    item {
                        StorageInfoItem(
                            storageInfo = uiState.storageInfo,
                            analyticsHelper = analyticsHelper,
                            scope = scope
                        )
                    }
                    
                    item {
                        ActionSettingItem(
                            title = "Очистить кэш",
                            subtitle = "Освободить место, удалив временные файлы",
                            icon = Icons.Default.CleaningServices,
                            onClick = {
                                viewModel.clearCache()
                            },
                            analyticsHelper = analyticsHelper,
                            eventName = "clear_cache_clicked",
                            scope = scope
                        )
                    }
                    
                    // Backup Section
                    item {
                        SettingsSection(
                            title = "Резервное копирование",
                            icon = Icons.Default.Backup
                        )
                    }
                    
                    item {
                        ActionSettingItem(
                            title = "Экспорт настроек",
                            subtitle = "Сохранить настройки в файл",
                            icon = Icons.Default.FileUpload,
                            onClick = {
                                viewModel.exportSettings()
                            },
                            analyticsHelper = analyticsHelper,
                            eventName = "export_settings_clicked",
                            scope = scope
                        )
                    }
                    
                    item {
                        ActionSettingItem(
                            title = "Импорт настроек",
                            subtitle = "Восстановить настройки из файла",
                            icon = Icons.Default.FileDownload,
                            onClick = {
                                viewModel.importSettings()
                            },
                            analyticsHelper = analyticsHelper,
                            eventName = "import_settings_clicked",
                            scope = scope
                        )
                    }
                    
                    // About Section
                    item {
                        SettingsSection(
                            title = "О приложении",
                            icon = Icons.Default.Info
                        )
                    }
                    
                    item {
                        AboutAppItem(
                            appInfo = uiState.appInfo,
                            onAboutClick = {
                                viewModel.showAboutDialog()
                            },
                            analyticsHelper = analyticsHelper,
                            scope = scope
                        )
                    }
                    
                    item {
                        ActionSettingItem(
                            title = "Сброс настроек",
                            subtitle = "Вернуть все настройки к значениям по умолчанию",
                            icon = Icons.Default.SettingsBackupRestore,
                            onClick = {
                                viewModel.showResetDialog()
                            },
                            analyticsHelper = analyticsHelper,
                            eventName = "reset_settings_clicked",
                            scope = scope,
                            isDestructive = true
                        )
                    }
                }
            }
        }
    }
    
    // Dialogs
    if (uiState.showAboutDialog) {
        AboutDialog(
            appInfo = uiState.appInfo,
            onDismiss = { viewModel.hideAboutDialog() },
            analyticsHelper = analyticsHelper,
            scope = scope
        )
    }
    
    if (uiState.showResetDialog) {
        ResetSettingsDialog(
            onConfirm = {
                viewModel.resetSettings()
                viewModel.hideResetDialog()
            },
            onDismiss = { viewModel.hideResetDialog() },
            analyticsHelper = analyticsHelper,
            scope = scope
        )
    }
    
    if (uiState.showThemeDialog) {
        ThemeSelectionDialog(
            currentTheme = uiState.theme,
            onThemeSelected = { theme ->
                viewModel.setTheme(theme)
                viewModel.hideThemeDialog()
            },
            onDismiss = { viewModel.hideThemeDialog() },
            analyticsHelper = analyticsHelper,
            scope = scope
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun SettingsTopBar(
    onBackClick: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    TopAppBar(
        title = {
            Text(
                text = "Настройки",
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.Bold
            )
        },
        navigationIcon = {
            AnalyticsClickable(
                onClick = onBackClick,
                analyticsHelper = analyticsHelper,
                eventName = "settings_back_clicked",
                scope = scope
            ) {
                IconButton(onClick = { }) {
                    Icon(
                        Icons.Default.ArrowBack,
                        contentDescription = "Назад"
                    )
                }
            }
        },
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = MaterialTheme.colorScheme.surface,
            titleContentColor = MaterialTheme.colorScheme.onSurface
        )
    )
}

@Composable
private fun SettingsSection(
    title: String,
    icon: ImageVector,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(vertical = 16.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.primary,
            modifier = Modifier.size(24.dp)
        )
        Spacer(modifier = Modifier.width(12.dp))
        Text(
            text = title,
            style = MaterialTheme.typography.titleMedium,
            fontWeight = FontWeight.SemiBold,
            color = MaterialTheme.colorScheme.primary
        )
    }
}

@Composable
private fun ThemeSettingItem(
    currentTheme: AppTheme,
    onThemeChange: (AppTheme) -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    AnalyticsClickable(
        onClick = {
            // TODO: Show theme selection dialog
        },
        analyticsHelper = analyticsHelper,
        eventName = "theme_setting_clicked",
        eventParameters = mapOf("current_theme" to currentTheme.name),
        scope = scope
    ) {
        SettingItem(
            title = "Тема",
            subtitle = currentTheme.displayName,
            icon = Icons.Default.Palette,
            trailing = {
                Icon(
                    Icons.Default.ChevronRight,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        )
    }
}

@Composable
private fun LanguageSettingItem(
    currentLanguage: AppLanguage,
    onLanguageChange: (AppLanguage) -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    AnalyticsClickable(
        onClick = {
            // TODO: Show language selection dialog
        },
        analyticsHelper = analyticsHelper,
        eventName = "language_setting_clicked",
        eventParameters = mapOf("current_language" to currentLanguage.name),
        scope = scope
    ) {
        SettingItem(
            title = "Язык",
            subtitle = currentLanguage.displayName,
            icon = Icons.Default.Language,
            trailing = {
                Icon(
                    Icons.Default.ChevronRight,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        )
    }
}

@Composable
private fun ReadingModeSettingItem(
    currentMode: ReadingMode,
    onModeChange: (ReadingMode) -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    AnalyticsClickable(
        onClick = {
            // TODO: Show reading mode selection dialog
        },
        analyticsHelper = analyticsHelper,
        eventName = "reading_mode_setting_clicked",
        eventParameters = mapOf("current_mode" to currentMode.name),
        scope = scope
    ) {
        SettingItem(
            title = "Режим чтения по умолчанию",
            subtitle = when (currentMode) {
                ReadingMode.FIT_WIDTH -> "По ширине"
                ReadingMode.FIT_HEIGHT -> "По высоте"
                ReadingMode.ORIGINAL_SIZE -> "Оригинальный размер"
            },
            icon = Icons.Default.AspectRatio,
            trailing = {
                Icon(
                    Icons.Default.ChevronRight,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        )
    }
}

@Composable
private fun SwitchSettingItem(
    title: String,
    subtitle: String,
    icon: ImageVector,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    SettingItem(
        title = title,
        subtitle = subtitle,
        icon = icon,
        trailing = {
            Switch(
                checked = checked,
                onCheckedChange = onCheckedChange,
                modifier = Modifier.testTag("switch_$title")
            )
        },
        onClick = { onCheckedChange(!checked) }
    )
}

@Composable
private fun SliderSettingItem(
    title: String,
    subtitle: String,
    icon: ImageVector,
    value: Float,
    onValueChange: (Float) -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    imageVector = icon,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(24.dp)
                )
                Spacer(modifier = Modifier.width(16.dp))
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = title,
                        style = MaterialTheme.typography.bodyLarge,
                        fontWeight = FontWeight.Medium
                    )
                    Text(
                        text = subtitle,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Text(
                    text = "${(value * 100).toInt()}%",
                    style = MaterialTheme.typography.bodyMedium,
                    fontWeight = FontWeight.Medium
                )
            }
            
            Spacer(modifier = Modifier.height(12.dp))
            
            Slider(
                value = value,
                onValueChange = { newValue ->
                    onValueChange(newValue)
                    analyticsHelper.track(
                        com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                            metricName = "brightness_changed",
                            value = (newValue * 100).toDouble(),
                            unit = "percent"
                        ),
                        scope
                    )
                },
                modifier = Modifier.fillMaxWidth()
            )
        }
    }
}

@Composable
private fun StorageInfoItem(
    storageInfo: StorageInfo,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    imageVector = Icons.Default.Storage,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(24.dp)
                )
                Spacer(modifier = Modifier.width(16.dp))
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = "Использование памяти",
                        style = MaterialTheme.typography.bodyLarge,
                        fontWeight = FontWeight.Medium
                    )
                    Text(
                        text = "${storageInfo.usedSpace} из ${storageInfo.totalSpace}",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
            
            Spacer(modifier = Modifier.height(12.dp))
            
            LinearProgressIndicator(
                progress = { storageInfo.usagePercent },
                modifier = Modifier.fillMaxWidth(),
                color = when {
                    storageInfo.usagePercent > 0.8f -> MaterialTheme.colorScheme.error
                    storageInfo.usagePercent > 0.6f -> MaterialTheme.colorScheme.tertiary
                    else -> MaterialTheme.colorScheme.primary
                }
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(
                    text = "Комиксы: ${storageInfo.comicsSize}",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Text(
                    text = "Кэш: ${storageInfo.cacheSize}",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun ActionSettingItem(
    title: String,
    subtitle: String,
    icon: ImageVector,
    onClick: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    eventName: String,
    scope: kotlinx.coroutines.CoroutineScope,
    isDestructive: Boolean = false
) {
    AnalyticsClickable(
        onClick = onClick,
        analyticsHelper = analyticsHelper,
        eventName = eventName,
        scope = scope
    ) {
        SettingItem(
            title = title,
            subtitle = subtitle,
            icon = icon,
            titleColor = if (isDestructive) MaterialTheme.colorScheme.error else MaterialTheme.colorScheme.onSurface,
            iconTint = if (isDestructive) MaterialTheme.colorScheme.error else MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

@Composable
private fun AboutAppItem(
    appInfo: AppInfo,
    onAboutClick: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    AnalyticsClickable(
        onClick = onAboutClick,
        analyticsHelper = analyticsHelper,
        eventName = "about_app_clicked",
        scope = scope
    ) {
        SettingItem(
            title = "О приложении",
            subtitle = "Версия ${appInfo.version} (${appInfo.buildNumber})",
            icon = Icons.Default.Info,
            trailing = {
                Icon(
                    Icons.Default.ChevronRight,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        )
    }
}

@Composable
private fun SettingItem(
    title: String,
    subtitle: String,
    icon: ImageVector,
    modifier: Modifier = Modifier,
    titleColor: androidx.compose.ui.graphics.Color = MaterialTheme.colorScheme.onSurface,
    iconTint: androidx.compose.ui.graphics.Color = MaterialTheme.colorScheme.onSurfaceVariant,
    trailing: @Composable (() -> Unit)? = null,
    onClick: (() -> Unit)? = null
) {
    Card(
        modifier = modifier
            .fillMaxWidth()
            .let { if (onClick != null) it.clickable { onClick() } else it },
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = iconTint,
                modifier = Modifier.size(24.dp)
            )
            Spacer(modifier = Modifier.width(16.dp))
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.bodyLarge,
                    fontWeight = FontWeight.Medium,
                    color = titleColor
                )
                Text(
                    text = subtitle,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            if (trailing != null) {
                Spacer(modifier = Modifier.width(8.dp))
                trailing()
            }
        }
    }
}

// Dialogs
@Composable
private fun AboutDialog(
    appInfo: AppInfo,
    onDismiss: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Text(
                text = "О Mr.Comic",
                fontWeight = FontWeight.Bold
            )
        },
        text = {
            Column {
                Text("Читалка комиксов для Android")
                Spacer(modifier = Modifier.height(8.dp))
                Text("Версия: ${appInfo.version}")
                Text("Сборка: ${appInfo.buildNumber}")
                Spacer(modifier = Modifier.height(8.dp))
                Text("Разработано с ❤️ для любителей комиксов")
            }
        },
        confirmButton = {
            TextButton(
                onClick = {
                    onDismiss()
                    analyticsHelper.track(
                        com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                            metricName = "about_dialog_closed",
                            value = 1.0,
                            unit = "action"
                        ),
                        scope
                    )
                }
            ) {
                Text("OK")
            }
        }
    )
}

@Composable
private fun ResetSettingsDialog(
    onConfirm: () -> Unit,
    onDismiss: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Text(
                text = "Сброс настроек",
                fontWeight = FontWeight.Bold
            )
        },
        text = {
            Text("Вы действительно хотите сбросить все настройки к значениям по умолчанию? Это действие нельзя отменить.")
        },
        confirmButton = {
            TextButton(
                onClick = {
                    onConfirm()
                    analyticsHelper.track(
                        com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                            metricName = "settings_reset_confirmed",
                            value = 1.0,
                            unit = "action"
                        ),
                        scope
                    )
                }
            ) {
                Text(
                    text = "Сбросить",
                    color = MaterialTheme.colorScheme.error
                )
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Отмена")
            }
        }
    )
}

@Composable
private fun ThemeSelectionDialog(
    currentTheme: AppTheme,
    onThemeSelected: (AppTheme) -> Unit,
    onDismiss: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    AlertDialog(
        onDismissRequest = onDismiss,
        title = {
            Text(
                text = "Выбор темы",
                fontWeight = FontWeight.Bold
            )
        },
        text = {
            Column {
                AppTheme.values().forEach { theme ->
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable {
                                onThemeSelected(theme)
                                analyticsHelper.track(
                                    com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                        metricName = "theme_selected",
                                        value = theme.ordinal.toDouble(),
                                        unit = "option"
                                    ),
                                    scope
                                )
                            }
                            .padding(vertical = 8.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        RadioButton(
                            selected = currentTheme == theme,
                            onClick = { onThemeSelected(theme) }
                        )
                        Spacer(modifier = Modifier.width(8.dp))
                        Text(theme.displayName)
                    }
                }
            }
        },
        confirmButton = {
            TextButton(onClick = onDismiss) {
                Text("Закрыть")
            }
        }
    )
}

// Data classes and enums
enum class AppTheme(val displayName: String) {
    SYSTEM("Системная"),
    LIGHT("Светлая"),
    DARK("Темная")
}

enum class AppLanguage(val displayName: String) {
    SYSTEM("Системный"),
    RUSSIAN("Русский"),
    ENGLISH("English")
}

data class StorageInfo(
    val totalSpace: String,
    val usedSpace: String,
    val comicsSize: String,
    val cacheSize: String,
    val usagePercent: Float
)

data class AppInfo(
    val version: String,
    val buildNumber: String,
    val lastUpdate: String
)

data class SettingsUiState(
    val theme: AppTheme = AppTheme.SYSTEM,
    val language: AppLanguage = AppLanguage.SYSTEM,
    val defaultReadingMode: ReadingMode = ReadingMode.FIT_WIDTH,
    val keepScreenOn: Boolean = true,
    val defaultBrightness: Float = 0.5f,
    val storageInfo: StorageInfo = StorageInfo(
        totalSpace = "32 GB",
        usedSpace = "12 GB",
        comicsSize = "8.5 GB",
        cacheSize = "350 MB",
        usagePercent = 0.375f
    ),
    val appInfo: AppInfo = AppInfo(
        version = "1.0.0",
        buildNumber = "1",
        lastUpdate = "2024-01-01"
    ),
    val showAboutDialog: Boolean = false,
    val showResetDialog: Boolean = false,
    val showThemeDialog: Boolean = false
)