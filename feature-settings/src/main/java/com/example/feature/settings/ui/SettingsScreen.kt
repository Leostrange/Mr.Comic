package com.example.feature.settings.ui

import android.content.Intent
import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.TextButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.SortOrder
import com.example.core.ui.components.MrComicPrimaryButton
import com.example.core.ui.components.MrComicTopAppBar

@Composable
fun SettingsScreen(
    viewModel: SettingsViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()

    SettingsScreenContent(
        uiState = uiState,
        onSortOrderSelected = viewModel::onSortOrderSelected,
        onAddFolder = viewModel::onAddFolder,
        onRemoveFolder = viewModel::onRemoveFolder,
        onLanguageSelected = viewModel::onLanguageSelected,
        onOcrEngineSelected = viewModel::onOcrEngineSelected,
        onTranslationProviderSelected = viewModel::onTranslationProviderSelected,
        onApiKeyChanged = viewModel::onApiKeyChanged,
        onPerformanceModeChanged = viewModel::onPerformanceModeChanged,
        onClearCache = viewModel::clearCache
    )
}

@Composable
private fun SettingsScreenContent(
    uiState: SettingsUiState,
    onSortOrderSelected: (SortOrder) -> Unit,
    onAddFolder: (String) -> Unit,
    onRemoveFolder: (String) -> Unit,
    onLanguageSelected: (String) -> Unit,
    onOcrEngineSelected: (String) -> Unit,
    onTranslationProviderSelected: (String) -> Unit,
    onApiKeyChanged: (String) -> Unit,
    onPerformanceModeChanged: (Boolean) -> Unit,
    onClearCache: () -> Unit
) {
    Scaffold(
        topBar = {
            MrComicTopAppBar(title = "Settings")
        }
    ) { paddingValues ->
        LazyColumn(modifier = Modifier.padding(paddingValues)) {
            item {
                SortOrderSetting(
                    currentSortOrder = uiState.sortOrder,
                    onSortOrderSelected = onSortOrderSelected
                )
            }
            item {
                LibraryFoldersSetting(
                    folders = uiState.libraryFolders,
                    onAddFolder = onAddFolder,
                    onRemoveFolder = onRemoveFolder
                )
            }
            item {
                LanguageSetting(
                    currentLanguage = uiState.targetLanguage,
                    onLanguageSelected = onLanguageSelected
                )
            }
            item {
                OcrEngineSetting(
                    currentEngine = uiState.ocrEngine,
                    onEngineSelected = onOcrEngineSelected
                )
            }
            item {
                TranslationProviderSetting(
                    currentProvider = uiState.translationProvider,
                    onProviderSelected = onTranslationProviderSelected
                )
            }
            item {
                ApiKeySetting(
                    apiKey = uiState.translationApiKey,
                    onApiKeyChanged = onApiKeyChanged
                )
            }
            item {
                PerformanceModeSetting(
                    enabled = uiState.performanceMode,
                    onEnabledChanged = onPerformanceModeChanged
                )
            }
            item {
                MrComicPrimaryButton(
                    onClick = onClearCache,
                    text = "Clear Cache",
                    modifier = Modifier.padding(16.dp)
                )
            }
        }
    }
}

@Composable
private fun SortOrderSetting(
    currentSortOrder: SortOrder,
    onSortOrderSelected: (SortOrder) -> Unit
) {
    var expanded by remember { mutableStateOf(false) }

    Column(modifier = Modifier
        .fillMaxWidth()
        .clickable { expanded = true }
        .padding(16.dp)
    ) {
        Text("Default Sort Order")
        Text(currentSortOrder.name.replace('_', ' ').lowercase().replaceFirstChar { it.uppercase() })

        DropdownMenu(
            expanded = expanded,
            onDismissRequest = { expanded = false }
        ) {
            DropdownMenuItem(
                text = { Text("By Title (A-Z)") },
                onClick = { onSortOrderSelected(SortOrder.TITLE_ASC); expanded = false }
            )
            DropdownMenuItem(
                text = { Text("By Title (Z-A)") },
                onClick = { onSortOrderSelected(SortOrder.TITLE_DESC); expanded = false }
            )
            DropdownMenuItem(
                text = { Text("By Date Added") },
                onClick = { onSortOrderSelected(SortOrder.DATE_ADDED_DESC); expanded = false }
            )
        }
    }
}

@Composable
private fun LibraryFoldersSetting(
    folders: Set<String>,
    onAddFolder: (String) -> Unit,
    onRemoveFolder: (String) -> Unit
) {
    val context = LocalContext.current
    val directoryPickerLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocumentTree(),
        onResult = { uri: Uri? ->
            uri?.let {
                // Take persistable permissions to access the folder across app restarts
                context.contentResolver.takePersistableUriPermission(
                    it,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION
                )
                onAddFolder(it.toString())
            }
        }
    )

    Column(modifier = Modifier.padding(16.dp)) {
        Text("Library Folders")
        folders.forEach { folderUri ->
            Row(modifier = Modifier.fillMaxWidth()) {
                Text(Uri.parse(folderUri).path ?: folderUri, modifier = Modifier.weight(1f))
                IconButton(onClick = { onRemoveFolder(folderUri) }) {
                    Icon(Icons.Default.Delete, contentDescription = "Remove folder")
                }
            }
        }
        Spacer(modifier = Modifier.padding(8.dp))
        MrComicPrimaryButton(
            onClick = { directoryPickerLauncher.launch(null) },
            text = "Add Folder"
        )
    }
}

@Composable
private fun LanguageSetting(
    currentLanguage: String,
    onLanguageSelected: (String) -> Unit
) {
    var expanded by remember { mutableStateOf(false) }
    val languages = listOf("en", "es", "fr", "de", "ru")
    val flags = mapOf(
        "en" to "\uD83C\uDDEC\uD83C\uDDE7",
        "es" to "\uD83C\uDDEA\uD83C\uDDF8",
        "fr" to "\uD83C\uDDEB\uD83C\uDDF7",
        "de" to "\uD83C\uDDE9\uD83C\uDDEA",
        "ru" to "\uD83C\uDDF7\uD83C\uDDFA"
    )

    Column(modifier = Modifier
        .fillMaxWidth()
        .clickable { expanded = true }
        .padding(16.dp)
    ) {
        Text("Preferred Language")
        Text("${flags[currentLanguage] ?: ""} ${currentLanguage.uppercase()}")

        DropdownMenu(
            expanded = expanded,
            onDismissRequest = { expanded = false }
        ) {
            languages.forEach { lang ->
                DropdownMenuItem(
                    text = { Text("${flags[lang] ?: ""} ${lang.uppercase()}") },
                    onClick = {
                        onLanguageSelected(lang)
                        expanded = false
                    }
                )
            }
        }
    }
}

@Composable
private fun OcrEngineSetting(
    currentEngine: String,
    onEngineSelected: (String) -> Unit
) {
    var expanded by remember { mutableStateOf(false) }
    val engines = listOf("Tesseract", "MLKit")

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { expanded = true }
            .padding(16.dp)
    ) {
        Text("OCR Engine")
        Text(currentEngine)

        DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            engines.forEach { engine ->
                DropdownMenuItem(
                    text = { Text(engine) },
                    onClick = {
                        onEngineSelected(engine)
                        expanded = false
                    }
                )
            }
        }
    }
}

@Composable
private fun TranslationProviderSetting(
    currentProvider: String,
    onProviderSelected: (String) -> Unit
) {
    var expanded by remember { mutableStateOf(false) }
    val providers = listOf("Google", "DeepL")

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .clickable { expanded = true }
            .padding(16.dp)
    ) {
        Text("Translation Provider")
        Text(currentProvider)

        DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            providers.forEach { provider ->
                DropdownMenuItem(
                    text = { Text(provider) },
                    onClick = {
                        onProviderSelected(provider)
                        expanded = false
                    }
                )
            }
        }
    }
}

@Composable
private fun ApiKeySetting(
    apiKey: String,
    onApiKeyChanged: (String) -> Unit
) {
    var value by remember { mutableStateOf(apiKey) }

    Column(modifier = Modifier.padding(16.dp)) {
        Text("API Key")
        TextField(
            value = value,
            onValueChange = {
                value = it
                onApiKeyChanged(it)
            },
            modifier = Modifier.fillMaxWidth()
        )
    }
}

@Composable
private fun PerformanceModeSetting(
    enabled: Boolean,
    onEnabledChanged: (Boolean) -> Unit
) {
    Row(modifier = Modifier
        .fillMaxWidth()
        .padding(horizontal = 16.dp, vertical = 8.dp)) {
        Text("Performance Mode", modifier = Modifier.weight(1f))
        androidx.compose.material3.Switch(
            checked = enabled,
            onCheckedChange = onEnabledChanged
        )
    }
}
