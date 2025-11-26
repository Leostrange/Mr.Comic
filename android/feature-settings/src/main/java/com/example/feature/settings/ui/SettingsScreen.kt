package com.example.feature.settings.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Divider
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Switch
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material.icons.Icons as MaterialIcons
import androidx.compose.material.icons.automirrored.filled.ArrowForward
import androidx.compose.material.icons.filled.Cloud
import androidx.compose.material.icons.filled.Download
import androidx.compose.material.icons.filled.Restore
import androidx.compose.material.icons.filled.Save
import androidx.compose.material.icons.filled.Folder
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import com.example.feature.settings.ui.components.BackupProgressDialog
import com.example.feature.settings.ui.components.RestoreBackupDialog
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.SortOrder
import com.example.core.model.LocalDictionary
import com.example.core.model.LocalModel
import com.example.core.ui.theme.ThemeMode
import com.example.core.ui.theme.ReaderThemeMode
import com.example.feature.settings.ui.sections.ReaderCustomizationSection
import com.example.feature.settings.ui.sections.ImageQualitySection
import com.example.feature.settings.ui.sections.GestureSettingsSection
import com.example.feature.settings.ui.sections.NotificationSettingsSection

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    onAppIconSettingsClick: () -> Unit = {},
    viewModel: SettingsViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    
        // Состояние для диалогов бэкапа
        var showBackupProgress by remember { mutableStateOf(false) }
        var showRestoreDialog by remember { mutableStateOf(false) }
        var backupProgress by remember { mutableStateOf(0f) }
        var backupMessage by remember { mutableStateOf("") }
        var backupStatus by remember { mutableStateOf("IDLE") }

    Scaffold(topBar = { 
        TopAppBar(
            title = { Text("Settings") },
            colors = androidx.compose.material3.TopAppBarDefaults.topAppBarColors(
                containerColor = MaterialTheme.colorScheme.surface,
                titleContentColor = MaterialTheme.colorScheme.onSurface
            )
        ) 
    }) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp)
        ) {
            SortOrderRow(uiState.sortOrder, viewModel::onSortOrderSelected)
            Spacer(modifier = Modifier.height(8.dp))
            LibraryFoldersList(uiState.libraryFolders, viewModel::onAddFolder, viewModel::onRemoveFolder)
            Spacer(modifier = Modifier.height(8.dp))
            Text("Language: ${uiState.targetLanguage}")
            Spacer(modifier = Modifier.height(8.dp))
            Text("OCR: ${uiState.ocrEngine}")
            Spacer(modifier = Modifier.height(8.dp))
            Text("Provider: ${uiState.translationProvider}")
            Spacer(modifier = Modifier.height(8.dp))
            ApiKeyField(uiState.translationApiKey, viewModel::onApiKeyChanged)
            Spacer(modifier = Modifier.height(8.dp))
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                Text("Performance Mode")
                Switch(checked = uiState.performanceMode, onCheckedChange = viewModel::onPerformanceModeChanged)
            }
            Spacer(modifier = Modifier.height(12.dp))

            HorizontalDivider()
            Spacer(modifier = Modifier.height(8.dp))
            LocalResourcesSection(
                dictionaries = uiState.availableDictionaries,
                models = uiState.availableModels,
                selectedDictionary = uiState.selectedDictionary,
                selectedModel = uiState.selectedModel,
                onRefresh = viewModel::refreshLocalResources,
                onSelectDictionary = viewModel::selectDictionary,
                onSelectModel = viewModel::selectModel
            )

            Spacer(modifier = Modifier.height(12.dp))
            Button(onClick = viewModel::clearCache) { Text("Clear Cache") }

            Spacer(modifier = Modifier.height(12.dp))
            HorizontalDivider()
            Spacer(modifier = Modifier.height(8.dp))
            
            // Theme Section
            ThemeSection(
                themeMode = uiState.themeMode,
                useDynamicColor = uiState.useDynamicColor,
                useAmoledDark = uiState.useAmoledDark,
                readerThemeMode = uiState.readerThemeMode,
                readerUseAmoled = uiState.readerUseAmoled,
                onThemeModeChanged = viewModel::onThemeModeChanged,
                onDynamicColorChanged = viewModel::onDynamicColorChanged,
                onAmoledDarkChanged = viewModel::onAmoledDarkChanged,
                onReaderThemeModeChanged = viewModel::onReaderThemeModeChanged,
                onReaderUseAmoledChanged = viewModel::onReaderUseAmoledChanged
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Reader Behavior Section
            Text(
                text = "Чтение и поведение",
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.primary
            )

            Spacer(modifier = Modifier.height(12.dp))

            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                )
            ) {
                Column(modifier = Modifier.padding(16.dp)) {
                    // Reading Mode
                    Text(
                        text = "Режим чтения",
                        style = MaterialTheme.typography.titleSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Button(
                            onClick = { viewModel.onReadingModeChanged("page") },
                            modifier = Modifier.weight(1f),
                            colors = if (uiState.readingMode == "page") ButtonDefaults.buttonColors() else ButtonDefaults.outlinedButtonColors()
                        ) { Text("Страница") }
                        Button(
                            onClick = { viewModel.onReadingModeChanged("continuous") },
                            modifier = Modifier.weight(1f),
                            colors = if (uiState.readingMode == "continuous") ButtonDefaults.buttonColors() else ButtonDefaults.outlinedButtonColors()
                        ) { Text("Потоково") }
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    // Scale Mode
                    Text(
                        text = "Масштаб",
                        style = MaterialTheme.typography.titleSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Button(
                            onClick = { viewModel.onScaleModeChanged("width") },
                            modifier = Modifier.weight(1f),
                            colors = if (uiState.scaleMode == "width") ButtonDefaults.buttonColors() else ButtonDefaults.outlinedButtonColors()
                        ) { Text("По ширине") }
                        Button(
                            onClick = { viewModel.onScaleModeChanged("height") },
                            modifier = Modifier.weight(1f),
                            colors = if (uiState.scaleMode == "height") ButtonDefaults.buttonColors() else ButtonDefaults.outlinedButtonColors()
                        ) { Text("По высоте") }
                        Button(
                            onClick = { viewModel.onScaleModeChanged("fit") },
                            modifier = Modifier.weight(1f),
                            colors = if (uiState.scaleMode == "fit") ButtonDefaults.buttonColors() else ButtonDefaults.outlinedButtonColors()
                        ) { Text("Вписать") }
                        Button(
                            onClick = { viewModel.onScaleModeChanged("fill") },
                            modifier = Modifier.weight(1f),
                            colors = if (uiState.scaleMode == "fill") ButtonDefaults.buttonColors() else ButtonDefaults.outlinedButtonColors()
                        ) { Text("Заполнить") }
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    // Double Tap Zoom
                    Text(
                        text = "Двойной тап зум: ${String.format("%.1fx", uiState.doubleTapZoom)}",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Slider(
                        value = uiState.doubleTapZoom,
                        onValueChange = viewModel::onDoubleTapZoomChanged,
                        valueRange = 1.0f..5.0f
                    )

                    Spacer(modifier = Modifier.height(8.dp))

                    // Block Swipe When Zoomed
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Column {
                            Text("Блокировать свайп при приближении", style = MaterialTheme.typography.bodyMedium)
                            Text(
                                text = "Не перелистывать страницы, если увеличено",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                            )
                        }
                        Switch(
                            checked = uiState.blockSwipeWhenZoomed,
                            onCheckedChange = viewModel::onBlockSwipeWhenZoomedChanged
                        )
                    }

                    Spacer(modifier = Modifier.height(8.dp))

                    // Reader Brightness
                    Text(
                        text = "Яркость: ${(uiState.readerBrightness * 100).toInt()}%",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Slider(
                        value = uiState.readerBrightness,
                        onValueChange = viewModel::onReaderBrightnessChanged,
                        valueRange = 0.1f..1.0f
                    )

                    Spacer(modifier = Modifier.height(8.dp))

                    // Animation Speed
                    Text(
                        text = "Скорость анимации: ${String.format("%.1fx", uiState.readerAnimationSpeed)}",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Slider(
                        value = uiState.readerAnimationSpeed,
                        onValueChange = viewModel::onReaderAnimationSpeedChanged,
                        valueRange = 0.5f..2.0f
                    )

                    Spacer(modifier = Modifier.height(8.dp))

                    // Page Turn Sound
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Column {
                            Text("Звук перелистывания", style = MaterialTheme.typography.bodyMedium)
                            Text(
                                text = "Проигрывать звук при смене страниц",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                            )
                        }
                        Switch(
                            checked = uiState.pageTurnSoundEnabled,
                            onCheckedChange = viewModel::onPageTurnSoundChanged
                        )
                    }
                }
            }
            
            Spacer(modifier = Modifier.height(12.dp))
            HorizontalDivider()
            Spacer(modifier = Modifier.height(8.dp))

            // Reader Customization Section
            ReaderCustomizationSection(
                readerTapZonesSize = uiState.readerTapZonesSize,
                readerTapZonesSensitivity = uiState.readerTapZonesSensitivity,
                readerShowPageIndicator = uiState.readerShowPageIndicator,
                readerShowProgressBar = uiState.readerShowProgressBar,
                readerAutoHideUI = uiState.readerAutoHideUI,
                readerAutoHideDelay = uiState.readerAutoHideDelay,
                readerGestureSensitivity = uiState.readerGestureSensitivity,
                readerVibrationFeedback = uiState.readerVibrationFeedback,
                onTapZonesSizeChanged = viewModel::onReaderTapZonesSizeChanged,
                onTapZonesSensitivityChanged = viewModel::onReaderTapZonesSensitivityChanged,
                onShowPageIndicatorChanged = viewModel::onReaderShowPageIndicatorChanged,
                onShowProgressBarChanged = viewModel::onReaderShowProgressBarChanged,
                onAutoHideUIChanged = viewModel::onReaderAutoHideUIChanged,
                onAutoHideDelayChanged = viewModel::onReaderAutoHideDelayChanged,
                onGestureSensitivityChanged = viewModel::onReaderGestureSensitivityChanged,
                onVibrationFeedbackChanged = viewModel::onReaderVibrationFeedbackChanged
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Image Quality Section
            ImageQualitySection(
                imageQuality = uiState.imageQuality,
                imageRenderDpi = uiState.imageRenderDpi,
                imageCacheSize = uiState.imageCacheSize,
                imagePreloadPages = uiState.imagePreloadPages,
                imageCompressionLevel = uiState.imageCompressionLevel,
                onImageQualityChanged = viewModel::onImageQualityChanged,
                onImageRenderDpiChanged = viewModel::onImageRenderDpiChanged,
                onImageCacheSizeChanged = viewModel::onImageCacheSizeChanged,
                onImagePreloadPagesChanged = viewModel::onImagePreloadPagesChanged,
                onImageCompressionLevelChanged = viewModel::onImageCompressionLevelChanged
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Gesture Settings Section
            GestureSettingsSection(
                gestureSwipeThreshold = uiState.gestureSwipeThreshold,
                gestureZoomSensitivity = uiState.gestureZoomSensitivity,
                gesturePanSensitivity = uiState.gesturePanSensitivity,
                navigationSwipeEnabled = uiState.navigationSwipeEnabled,
                navigationTapZonesEnabled = uiState.navigationTapZonesEnabled,
                navigationKeyboardShortcuts = uiState.navigationKeyboardShortcuts,
                onGestureSwipeThresholdChanged = viewModel::onGestureSwipeThresholdChanged,
                onGestureZoomSensitivityChanged = viewModel::onGestureZoomSensitivityChanged,
                onGesturePanSensitivityChanged = viewModel::onGesturePanSensitivityChanged,
                onNavigationSwipeEnabledChanged = viewModel::onNavigationSwipeEnabledChanged,
                onNavigationTapZonesEnabledChanged = viewModel::onNavigationTapZonesEnabledChanged,
                onNavigationKeyboardShortcutsChanged = viewModel::onNavigationKeyboardShortcutsChanged
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Notification Settings Section
            NotificationSettingsSection(
                soundPageTurn = uiState.soundPageTurn,
                soundVolume = uiState.soundVolume,
                vibrationPageTurn = uiState.vibrationPageTurn,
                vibrationIntensity = uiState.vibrationIntensity,
                notificationProgress = uiState.notificationProgress,
                onSoundPageTurnChanged = viewModel::onSoundPageTurnChanged,
                onSoundVolumeChanged = viewModel::onSoundVolumeChanged,
                onVibrationPageTurnChanged = viewModel::onVibrationPageTurnChanged,
                onVibrationIntensityChanged = viewModel::onVibrationIntensityChanged,
                onNotificationProgressChanged = viewModel::onNotificationProgressChanged
            )

            Spacer(modifier = Modifier.height(12.dp))
            HorizontalDivider()
            Spacer(modifier = Modifier.height(8.dp))

            // Backup Section
            BackupSection(
                    onCreateLocalBackup = {
                        showBackupProgress = true
                        backupStatus = "SYNCING"
                        backupMessage = "Создание резервной копии..."
                        viewModel.createLocalBackup()
                    },
                onRestoreLocalBackup = {
                    showRestoreDialog = true
                },
                onCreateCloudBackup = {
                    showBackupProgress = true
                    backupStatus = "SYNCING"
                    backupMessage = "Синхронизация с облаком..."
                    viewModel.createCloudBackup()
                },
                onRestoreCloudBackup = {
                    showRestoreDialog = true
                },
                onChangeAppIcon = onAppIconSettingsClick
            )
        }
        
        // Диалоги бэкапа
        BackupProgressDialog(
            isVisible = showBackupProgress,
            syncStatus = backupStatus,
            progress = backupProgress,
            message = backupMessage,
                onDismiss = {
                    showBackupProgress = false
                    backupStatus = "IDLE"
                }
        )
        
        RestoreBackupDialog(
            isVisible = showRestoreDialog,
            availableBackups = listOf("backup_1.zip", "backup_2.zip"), // TODO: получить реальные бэкапы
                onSelectBackup = { backup ->
                    showRestoreDialog = false
                    showBackupProgress = true
                    backupStatus = "SYNCING"
                    backupMessage = "Восстановление из $backup..."
                    viewModel.restoreLocalBackup()
                },
            onDismiss = {
                showRestoreDialog = false
            }
        )
    }
}

@Composable
private fun ThemeSection(
    themeMode: ThemeMode,
    useDynamicColor: Boolean,
    useAmoledDark: Boolean,
    readerThemeMode: ReaderThemeMode,
    readerUseAmoled: Boolean,
    onThemeModeChanged: (ThemeMode) -> Unit,
    onDynamicColorChanged: (Boolean) -> Unit,
    onAmoledDarkChanged: (Boolean) -> Unit,
    onReaderThemeModeChanged: (ReaderThemeMode) -> Unit,
    onReaderUseAmoledChanged: (Boolean) -> Unit
) {
    Text(
        text = "Темы и оформление",
        style = MaterialTheme.typography.titleMedium,
        color = MaterialTheme.colorScheme.primary
    )

    Spacer(modifier = Modifier.height(12.dp))

    // App Theme Card
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
        )
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                text = "Тема приложения",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Theme Mode Selection
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Button(
                    onClick = { onThemeModeChanged(ThemeMode.SYSTEM) },
                    modifier = Modifier.weight(1f),
                    colors = if (themeMode == ThemeMode.SYSTEM) {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("Системная")
                }

                Button(
                    onClick = { onThemeModeChanged(ThemeMode.LIGHT) },
                    modifier = Modifier.weight(1f),
                    colors = if (themeMode == ThemeMode.LIGHT) {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("Светлая")
                }

                Button(
                    onClick = { onThemeModeChanged(ThemeMode.DARK) },
                    modifier = Modifier.weight(1f),
                    colors = if (themeMode == ThemeMode.DARK) {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("Темная")
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Dynamic Color Toggle
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Динамические цвета",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Использовать цвета из обоев (Android 12+)",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = useDynamicColor,
                    onCheckedChange = onDynamicColorChanged
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // AMOLED Dark Toggle
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "AMOLED темная тема",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Чисто черный фон для OLED экранов",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = useAmoledDark,
                    onCheckedChange = onAmoledDarkChanged
                )
            }
        }
    }

    Spacer(modifier = Modifier.height(8.dp))

    // Reader Theme Card
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
        )
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                text = "Тема для чтения",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Reader Theme Mode Selection
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Button(
                    onClick = { onReaderThemeModeChanged(ReaderThemeMode.SYSTEM) },
                    modifier = Modifier.weight(1f),
                    colors = if (readerThemeMode == ReaderThemeMode.SYSTEM) {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("Как в приложении", maxLines = 1)
                }

                Button(
                    onClick = { onReaderThemeModeChanged(ReaderThemeMode.LIGHT) },
                    modifier = Modifier.weight(1f),
                    colors = if (readerThemeMode == ReaderThemeMode.LIGHT) {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("Светлая", maxLines = 1)
                }

                Button(
                    onClick = { onReaderThemeModeChanged(ReaderThemeMode.DARK) },
                    modifier = Modifier.weight(1f),
                    colors = if (readerThemeMode == ReaderThemeMode.DARK) {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("Темная", maxLines = 1)
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Button(
                    onClick = { onReaderThemeModeChanged(ReaderThemeMode.SEPIA) },
                    modifier = Modifier.weight(1f),
                    colors = if (readerThemeMode == ReaderThemeMode.SEPIA) {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("Сепия", maxLines = 1)
                }

                Button(
                    onClick = { onReaderThemeModeChanged(ReaderThemeMode.BLACK) },
                    modifier = Modifier.weight(1f),
                    colors = if (readerThemeMode == ReaderThemeMode.BLACK) {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("AMOLED", maxLines = 1)
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Reader AMOLED Toggle
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "AMOLED для чтения",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Чисто черный фон при чтении",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = readerUseAmoled,
                    onCheckedChange = onReaderUseAmoledChanged
                )
            }
        }
    }
}

@Composable
private fun SortOrderRow(current: SortOrder, onChange: (SortOrder) -> Unit) {
    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        Button(
            onClick = { onChange(SortOrder.TITLE_ASC) },
            colors = if (current == SortOrder.TITLE_ASC) {
                ButtonDefaults.buttonColors()
            } else {
                ButtonDefaults.outlinedButtonColors()
            }
        ) { Text("Title A-Z") }
        Button(
            onClick = { onChange(SortOrder.TITLE_DESC) },
            colors = if (current == SortOrder.TITLE_DESC) {
                ButtonDefaults.buttonColors()
            } else {
                ButtonDefaults.outlinedButtonColors()
            }
        ) { Text("Title Z-A") }
        Button(
            onClick = { onChange(SortOrder.DATE_ADDED_DESC) },
            colors = if (current == SortOrder.DATE_ADDED_DESC) {
                ButtonDefaults.buttonColors()
            } else {
                ButtonDefaults.outlinedButtonColors()
            }
        ) { Text("Date") }
    }
}

@Composable
private fun LibraryFoldersList(folders: Set<String>, onAdd: (String) -> Unit, onRemove: (String) -> Unit) {
    Text("Library Folders")
    LazyColumn(modifier = Modifier.fillMaxWidth()) {
        items(folders.toList()) { uri ->
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                Text(uri, modifier = Modifier.weight(1f))
                Button(onClick = { onRemove(uri) }) { Text("Remove") }
            }
            HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp))
        }
    }
    Spacer(modifier = Modifier.height(8.dp))
    var text by remember { mutableStateOf("") }
    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        OutlinedTextField(value = text, onValueChange = { text = it }, modifier = Modifier.weight(1f), label = { Text("Folder URI") })
        Button(onClick = { if (text.isNotBlank()) onAdd(text) }) { Text("Add") }
    }
}

@Composable
private fun ApiKeyField(valueInitial: String, onChange: (String) -> Unit) {
    var value by remember { mutableStateOf(valueInitial) }
    OutlinedTextField(
        value = value,
        onValueChange = {
            value = it
            onChange(it)
        },
        modifier = Modifier.fillMaxWidth(),
        label = { Text("API Key") }
    )
}

@Composable
private fun LocalResourcesSection(
    dictionaries: List<LocalDictionary>,
    models: List<LocalModel>,
    selectedDictionary: LocalDictionary?,
    selectedModel: LocalModel?,
    onRefresh: () -> Unit,
    onSelectDictionary: (LocalDictionary?) -> Unit,
    onSelectModel: (LocalModel?) -> Unit
) {
    Text("Local Resources")
    Spacer(modifier = Modifier.height(4.dp))
    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        Button(onClick = onRefresh) { Text("Rescan") }
        if (selectedDictionary != null) {
            Text("Dictionary: ${selectedDictionary.name}")
        } else {
            Text("Dictionary: None")
        }
    }
    Spacer(modifier = Modifier.height(8.dp))
    Text("Dictionaries")
    LazyColumn(modifier = Modifier.fillMaxWidth()) {
        items(dictionaries) { dict ->
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                Text(dict.name, modifier = Modifier.weight(1f))
                Button(onClick = { onSelectDictionary(dict) }) { Text("Select") }
            }
            HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp))
        }
    }

    Spacer(modifier = Modifier.height(8.dp))
    if (selectedModel != null) {
        Text("Model: ${selectedModel.name}")
    } else {
        Text("Model: None")
    }
    Spacer(modifier = Modifier.height(4.dp))
    Text("Models")
    LazyColumn(modifier = Modifier.fillMaxWidth()) {
        items(models) { model ->
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                Text(model.name, modifier = Modifier.weight(1f))
                Button(onClick = { onSelectModel(model) }) { Text("Select") }
            }
            HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp))
        }
    }
}

@Composable
private fun BackupSection(
    onCreateLocalBackup: () -> Unit,
    onRestoreLocalBackup: () -> Unit,
    onCreateCloudBackup: () -> Unit,
    onRestoreCloudBackup: () -> Unit,
    onChangeAppIcon: () -> Unit
) {
    Text(
        text = "Резервные копии и настройки",
        style = MaterialTheme.typography.titleMedium,
        color = MaterialTheme.colorScheme.primary
    )
    
    Spacer(modifier = Modifier.height(12.dp))
    
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
        )
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            // Local Backup Section
            Text(
                text = "Локальные резервные копии",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Button(
                    onClick = onCreateLocalBackup,
                    modifier = Modifier.weight(1f),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = MaterialTheme.colorScheme.primary
                    )
                ) {
                    Icon(
                        imageVector = MaterialIcons.Default.Cloud,
                        contentDescription = null,
                        modifier = Modifier.size(18.dp)
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("Создать")
                }
                
                Button(
                    onClick = onRestoreLocalBackup,
                    modifier = Modifier.weight(1f),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = MaterialTheme.colorScheme.secondary
                    )
                ) {
                    Icon(
                        imageVector = MaterialIcons.Default.Cloud,
                        contentDescription = null,
                        modifier = Modifier.size(18.dp)
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("Восстановить")
                }
            }
            
            Spacer(modifier = Modifier.height(16.dp))
            HorizontalDivider()
            Spacer(modifier = Modifier.height(16.dp))
            
            // Cloud Backup Section
            Text(
                text = "Облачные резервные копии",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            // Google Drive
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface
                )
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(12.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = MaterialIcons.Default.Cloud,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.primary
                        )
                        Column {
                            Text(
                                text = "Google Drive",
                                style = MaterialTheme.typography.bodyMedium,
                                fontWeight = androidx.compose.ui.text.font.FontWeight.Medium
                            )
                            Text(
                                text = "Не подключено",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                            )
                        }
                    }
                    TextButton(onClick = onCreateCloudBackup) {
                        Text("Подключить")
                    }
                }
            }
            
            Spacer(modifier = Modifier.height(8.dp))
            
            // Microsoft OneDrive
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface
                )
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(12.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = MaterialIcons.Default.Cloud,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.tertiary
                        )
                        Column {
                            Text(
                                text = "Microsoft OneDrive",
                                style = MaterialTheme.typography.bodyMedium,
                                fontWeight = androidx.compose.ui.text.font.FontWeight.Medium
                            )
                            Text(
                                text = "Не подключено",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                            )
                        }
                    }
                    TextButton(onClick = onRestoreCloudBackup) {
                        Text("Подключить")
                    }
                }
            }
            
            Spacer(modifier = Modifier.height(16.dp))
            HorizontalDivider()
            Spacer(modifier = Modifier.height(16.dp))
            
            // App Icon Settings
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .clickable(onClick = onChangeAppIcon)
                    .padding(vertical = 8.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Иконка приложения",
                        style = MaterialTheme.typography.bodyMedium,
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Medium
                    )
                    Text(
                        text = "Изменить значок приложения",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Icon(
                    imageVector = MaterialIcons.AutoMirrored.Filled.ArrowForward,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}
