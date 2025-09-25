package com.example.mrcomic.feature.settings

import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Backup
import androidx.compose.material.icons.filled.Restore
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.AssistChip
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.rememberTopAppBarState
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
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
            var showTargetLanguageDialog by remember { mutableStateOf(false) }
            var showTranslationProviderDialog by remember { mutableStateOf(false) }
            var showOcrDialog by remember { mutableStateOf(false) }

    // Текущие значения настроек (из ViewModel)
    val readingMode by viewModel.readingMode.collectAsState("page")
    val scaleMode by viewModel.scaleMode.collectAsState("width")
    val orientation by viewModel.orientation.collectAsState("auto")
    val theme by viewModel.theme.collectAsState("system")
    val language by viewModel.language.collectAsState("ru")
    val targetLanguage by viewModel.targetLanguage.collectAsState("en")
    val translationProvider by viewModel.translationProvider.collectAsState("google")
    val ocrEngine by viewModel.ocrEngine.collectAsState("Tesseract")
    val cacheSize by viewModel.cacheSize.collectAsState("150 MB")
    val librarySize by viewModel.librarySize.collectAsState("2.1 GB")
    val lastBackupUri by viewModel.lastBackupUri.collectAsState(null)
    val lastBackupTime by viewModel.lastBackupTime.collectAsState(null)
    val backupState by viewModel.backupState.collectAsState()

    val snackbarHostState = remember { SnackbarHostState() }
    val createBackupLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/json")
    ) { uri ->
        uri?.let { viewModel.exportBackup(it) }
    }
    val restoreBackupLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri?.let { viewModel.importBackup(it) }
    }

    LaunchedEffect(backupState) {
        when (val state = backupState) {
            is BackupUiState.Success -> {
                snackbarHostState.showSnackbar(state.message)
                viewModel.clearBackupState()
            }
            is BackupUiState.Error -> {
                snackbarHostState.showSnackbar(state.message)
                viewModel.clearBackupState()
            }
            else -> Unit
        }
    }

    val readingModeOptions = remember {
        listOf(
            SettingOption("page", "Страницы"),
            SettingOption("webtoon", "Лента")
        )
    }
    val scaleModeOptions = remember {
        listOf(
            SettingOption("width", "По ширине"),
            SettingOption("height", "По высоте"),
            SettingOption("fit", "Вписать"),
            SettingOption("custom", "Кастомный")
        )
    }
    val orientationOptions = remember {
        listOf(
            SettingOption("auto", "Автоматическая"),
            SettingOption("portrait", "Портретная"),
            SettingOption("landscape", "Ландшафтная"),
            SettingOption("locked", "Блокировать")
        )
    }
    val themeOptions = remember {
        listOf(
            SettingOption("system", "Системная"),
            SettingOption("light", "Светлая"),
            SettingOption("dark", "Тёмная"),
            SettingOption("amoled", "AMOLED"),
            SettingOption("sepia", "Сепия")
        )
    }
    val languageOptions = remember {
        listOf(
            SettingOption("ru", "Русский"),
            SettingOption("en", "English"),
            SettingOption("es", "Español"),
            SettingOption("de", "Deutsch")
        )
    }
    val targetLanguageOptions = remember {
        listOf(
            SettingOption("en", "English"),
            SettingOption("ru", "Русский"),
            SettingOption("ja", "日本語"),
            SettingOption("ko", "한국어"),
            SettingOption("zh", "中文")
        )
    }
    val translationProviderOptions = remember {
        listOf(
            SettingOption("google", "Google Translate"),
            SettingOption("yandex", "Yandex"),
            SettingOption("deepl", "DeepL")
        )
    }
    val ocrOptions = remember {
        listOf(
            SettingOption("tesseract", "Tesseract"),
            SettingOption("mlkit", "ML Kit")
        )
    }

    val readingModeLabel = readingModeOptions.labelFor(readingMode)
    val scaleModeLabel = scaleModeOptions.labelFor(scaleMode)
    val orientationLabel = orientationOptions.labelFor(orientation)
    val themeLabel = themeOptions.labelFor(theme)
    val languageLabel = languageOptions.labelFor(language)
    val targetLanguageLabel = targetLanguageOptions.labelFor(targetLanguage)
    val translationProviderLabel = translationProviderOptions.labelFor(translationProvider)
    val ocrLabel = ocrOptions.labelFor(ocrEngine.lowercase())

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
    , snackbarHost = { SnackbarHost(snackbarHostState) }
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
                            AssistChip(onClick = { showReadingModeDialog = true }, label = { Text(readingModeLabel) })
                        }

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showScaleModeDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Масштабирование", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showScaleModeDialog = true }, label = { Text(scaleModeLabel) })
                        }

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showOrientationDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Ориентация", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showOrientationDialog = true }, label = { Text(orientationLabel) })
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
                                AssistChip(onClick = { showThemeDialog = true }, label = { Text(themeLabel) })
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
                            AssistChip(onClick = { showLanguageDialog = true }, label = { Text(languageLabel) })
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
                                .clickable { showTranslationProviderDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Переводчик", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showTranslationProviderDialog = true }, label = { Text(translationProviderLabel) })
                        }

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showTargetLanguageDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Язык перевода", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showTargetLanguageDialog = true }, label = { Text(targetLanguageLabel) })
                        }

                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { showOcrDialog = true },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("OCR движок", style = MaterialTheme.typography.bodyLarge)
                            AssistChip(onClick = { showOcrDialog = true }, label = { Text(ocrLabel) })
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

                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Резервная копия", style = MaterialTheme.typography.bodyLarge)
                            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                AssistChip(
                                    onClick = {
                                        val name = "mrcomic-backup-${System.currentTimeMillis()}.json"
                                        createBackupLauncher.launch(name)
                                    },
                                    label = { Text("Создать") },
                                    leadingIcon = { Icon(Icons.Default.Backup, contentDescription = null) }
                                )
                                AssistChip(
                                    onClick = {
                                        restoreBackupLauncher.launch(arrayOf("application/json"))
                                    },
                                    label = { Text("Восстановить") },
                                    leadingIcon = { Icon(Icons.Default.Restore, contentDescription = null) }
                                )
                            }
                        }

                        lastBackupTime?.let { timestamp ->
                            val formatted = remember(timestamp) {
                                val formatter = java.text.DateFormat.getDateTimeInstance(java.text.DateFormat.MEDIUM, java.text.DateFormat.SHORT)
                                formatter.format(java.util.Date(timestamp))
                            }
                            Text(
                                text = "Последняя копия: ${formatted}${lastBackupUri?.let { "\n$it" } ?: ""}",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
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
                    readingModeOptions.forEach { option ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setReadingMode(option.value)
                                    showReadingModeDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = readingMode == option.value,
                                onClick = {
                                    viewModel.setReadingMode(option.value)
                                    showReadingModeDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(option.label)
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
                    scaleModeOptions.forEach { option ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setScaleMode(option.value)
                                    showScaleModeDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = scaleMode == option.value,
                                onClick = {
                                    viewModel.setScaleMode(option.value)
                                    showScaleModeDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(option.label)
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
                    orientationOptions.forEach { option ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setOrientation(option.value)
                                    showOrientationDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = orientation == option.value,
                                onClick = {
                                    viewModel.setOrientation(option.value)
                                    showOrientationDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(option.label)
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
                    themeOptions.forEach { option ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setTheme(option.value)
                                    showThemeDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = theme == option.value,
                                onClick = {
                                    viewModel.setTheme(option.value)
                                    showThemeDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(option.label)
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
                    languageOptions.forEach { option ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setLanguage(option.value)
                                    showLanguageDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = language == option.value,
                                onClick = {
                                    viewModel.setLanguage(option.value)
                                    showLanguageDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(option.label)
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

    if (showTargetLanguageDialog) {
        AlertDialog(
            onDismissRequest = { showTargetLanguageDialog = false },
            title = { Text("Язык перевода") },
            text = {
                Column {
                    targetLanguageOptions.forEach { option ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setTargetLanguage(option.value)
                                    showTargetLanguageDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = targetLanguage == option.value,
                                onClick = {
                                    viewModel.setTargetLanguage(option.value)
                                    showTargetLanguageDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(option.label)
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showTargetLanguageDialog = false }) {
                    Text("OK")
                }
            }
        )
    }

    if (showTranslationProviderDialog) {
        AlertDialog(
            onDismissRequest = { showTranslationProviderDialog = false },
            title = { Text("Переводчик") },
            text = {
                Column {
                    translationProviderOptions.forEach { option ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setTranslationProvider(option.value)
                                    showTranslationProviderDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = translationProvider == option.value,
                                onClick = {
                                    viewModel.setTranslationProvider(option.value)
                                    showTranslationProviderDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(option.label)
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showTranslationProviderDialog = false }) {
                    Text("OK")
                }
            }
        )
    }

    if (showOcrDialog) {
        AlertDialog(
            onDismissRequest = { showOcrDialog = false },
            title = { Text("OCR движок") },
            text = {
                Column {
                    ocrOptions.forEach { option ->
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable {
                                    viewModel.setOcrEngine(option.value)
                                    showOcrDialog = false
                                }
                                .padding(vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            RadioButton(
                                selected = ocrEngine.lowercase() == option.value,
                                onClick = {
                                    viewModel.setOcrEngine(option.value)
                                    showOcrDialog = false
                                }
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(option.label)
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showOcrDialog = false }) {
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

private data class SettingOption(val value: String, val label: String)

private fun List<SettingOption>.labelFor(value: String): String {
    return firstOrNull { it.value.equals(value, ignoreCase = true) }?.label ?: value
}