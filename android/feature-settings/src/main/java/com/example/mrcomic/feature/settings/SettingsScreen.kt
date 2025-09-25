package com.example.mrcomic.feature.settings

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.clickable
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import com.example.mrcomic.feature.settings.ThemeEditorViewModel
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    onNavigateBack: () -> Unit,
    onNavigateToThemeEditor: () -> Unit = { },
    viewModel: SettingsViewModel = hiltViewModel()
) {
            // Состояния для диалогов
            var showReadingModeDialog by remember { mutableStateOf(false) }
            var showScaleModeDialog by remember { mutableStateOf(false) }
            var showOrientationDialog by remember { mutableStateOf(false) }
            var showThemeDialog by remember { mutableStateOf(false) }
            var showLanguageDialog by remember { mutableStateOf(false) }
            var showCacheClearDialog by remember { mutableStateOf(false) }

    // Текущие значения настроек (из ViewModel)
    val readingMode by viewModel.readingMode.collectAsState("horizontal")
    val scaleMode by viewModel.scaleMode.collectAsState("width")
    val orientation by viewModel.orientation.collectAsState("auto")
    val theme by viewModel.theme.collectAsState("system")
    val language by viewModel.language.collectAsState("ru")
    val cacheSize by viewModel.cacheSize.collectAsState("150 MB")
    val librarySize by viewModel.librarySize.collectAsState("2.1 GB")

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Settings") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        }
    ) { paddingValues ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Чтение
            item {
                Text(
                    text = "Чтение",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }
            
            item {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                    )
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // Режим чтения — кликабельный пункт
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showReadingModeDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Режим чтения", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showReadingModeDialog = true }, label = { Text(readingMode) })
                        }

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showScaleModeDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Масштабирование", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showScaleModeDialog = true }, label = { Text(scaleMode) })
                        }

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showOrientationDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Ориентация", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showOrientationDialog = true }, label = { Text(orientation) })
                        }
                    }
                }
            }

            // Кастомизация
            item {
                Text(
                    text = "Кастомизация",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }

            item {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                    )
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showThemeDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Тема", style = MaterialTheme.typography.bodyLarge)
                            Row(
                                horizontalArrangement = Arrangement.spacedBy(8.dp),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                AssistChip(onClick = { showThemeDialog = true }, label = { Text(theme) })
                                AssistChip(
                                    onClick = { onNavigateToThemeEditor() },
                                    label = { Text("Редактировать") }
                                )
                            }
                        }

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showLanguageDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Язык интерфейса", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showLanguageDialog = true }, label = { Text(language) })
                        }
                    }
                }
            }

            // Перевод и OCR
            item {
                Text(
                    text = "Перевод и распознавание",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }

            item {
    Card(
        modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                    )
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                                .clickable { /* TODO: выбор OCR */ },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("OCR движок", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { /* TODO */ }, label = { Text("Tesseract") })
                        }

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { /* TODO: выбор языка OCR */ },
                            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
                            Text("Язык распознавания", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { /* TODO */ }, label = { Text("Русский") })
                        }

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { /* TODO: выбор провайдера перевода */ },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Переводчик", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { /* TODO */ }, label = { Text("Google Translate") })
                        }
                    }
                }
            }

            // Хранилище и кэш
            item {
                Text(
                    text = "Хранилище",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }

            item {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                    )
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showCacheClearDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Очистить кэш", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showCacheClearDialog = true }, label = { Text(cacheSize) })
                        }

                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Размер библиотеки", style = MaterialTheme.typography.bodyLarge)
                            Text("2.1 GB", style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
                        }
                    }
                }
            }

            item {
                Spacer(modifier = Modifier.height(32.dp))
            }

            item {
                    Text(
                    text = "Версия приложения: 1.0.13",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }
        }
    }

    // Диалог выбора режима чтения
    if (showReadingModeDialog) {
        AlertDialog(
            onDismissRequest = { showReadingModeDialog = false },
            title = { Text("Режим чтения") },
            text = {
                Column {
                    listOf("Горизонтальный", "Вертикальный").forEach { mode ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setReadingMode(mode)
                                    showReadingModeDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = readingMode == mode,
                                onClick = {
                                    viewModel.setReadingMode(mode)
                                    showReadingModeDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(mode)
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showReadingModeDialog = false }) {
                    Text("OK")
                }
            }
        )
    }

    // Диалог выбора масштабирования
    if (showScaleModeDialog) {
        AlertDialog(
            onDismissRequest = { showScaleModeDialog = false },
            title = { Text("Масштабирование") },
            text = {
                Column {
                    listOf("По ширине", "По высоте", "Вписать", "Кастомный").forEach { mode ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setScaleMode(mode)
                                    showScaleModeDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = scaleMode == mode,
                                onClick = {
                                    viewModel.setScaleMode(mode)
                                    showScaleModeDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(mode)
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showScaleModeDialog = false }) {
                    Text("OK")
                }
            }
        )
    }

    // Диалог выбора ориентации
    if (showOrientationDialog) {
        AlertDialog(
            onDismissRequest = { showOrientationDialog = false },
            title = { Text("Ориентация") },
            text = {
                Column {
                    listOf("Автоматическая", "Портретная", "Ландшафтная", "Блокировать").forEach { mode ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setOrientation(mode)
                                    showOrientationDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = orientation == mode,
                                onClick = {
                                    viewModel.setOrientation(mode)
                                    showOrientationDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(mode)
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showOrientationDialog = false }) {
                    Text("OK")
                }
            }
        )
    }

    // Диалог выбора темы (с пресетами)
    if (showThemeDialog) {
        AlertDialog(
            onDismissRequest = { showThemeDialog = false },
            title = { Text("Тема") },
            text = {
                Column {
                    listOf("Системная", "Светлая", "Тёмная", "Сепия", "AMOLED", "Manga").forEach { themeOption ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setTheme(themeOption)
                                    showThemeDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = theme == themeOption,
                                onClick = {
                                    viewModel.setTheme(themeOption)
                                    showThemeDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(themeOption)
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showThemeDialog = false }) {
                    Text("OK")
                }
            }
        )
    }

    // Диалог выбора языка
    if (showLanguageDialog) {
        AlertDialog(
            onDismissRequest = { showLanguageDialog = false },
            title = { Text("Язык интерфейса") },
            text = {
                Column {
                    listOf("Русский", "English", "Español", "Deutsch").forEach { lang ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setLanguage(lang)
                                    showLanguageDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = language == lang,
                                onClick = {
                                    viewModel.setLanguage(lang)
                                    showLanguageDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(lang)
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showLanguageDialog = false }) {
                    Text("OK")
                }
            }
        )
    }

    // Диалог очистки кэша
    if (showCacheClearDialog) {
        AlertDialog(
            onDismissRequest = { showCacheClearDialog = false },
            title = { Text("Очистить кэш") },
            text = { Text("Это очистит все кэшированные обложки и миниатюры. Продолжить?") },
            confirmButton = {
                TextButton(onClick = {
                    viewModel.clearCache()
                    showCacheClearDialog = false
                }) {
                    Text("Очистить")
                }
            },
            dismissButton = {
                TextButton(onClick = { showCacheClearDialog = false }) {
                    Text("Отмена")
                }
            }
        )
    }
}