package com.example.feature.settings.ui

import android.content.Intent
import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.SortOrder
import com.example.core.ui.components.MrComicPrimaryButton
import com.example.core.ui.components.MrComicTopAppBar

@Composable
fun SettingsScreen(viewModel: SettingsViewModel = hiltViewModel()) {
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
    Scaffold(topBar = { MrComicTopAppBar(title = "Settings") }) { paddingValues ->
        LazyColumn(modifier = Modifier.padding(paddingValues)) {
            item { SortOrderSetting(uiState.sortOrder, onSortOrderSelected) }
            item { LibraryFoldersSetting(uiState.libraryFolders, onAddFolder, onRemoveFolder) }
            item { LanguageSetting(uiState.targetLanguage, onLanguageSelected) }
            item { OcrEngineSetting(uiState.ocrEngine, onOcrEngineSelected) }
            item { TranslationProviderSetting(uiState.translationProvider, onTranslationProviderSelected) }
            item { ApiKeySetting(uiState.translationApiKey, onApiKeyChanged) }
            item { PerformanceModeSetting(uiState.performanceMode, onPerformanceModeChanged) }
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
private fun SortOrderSetting(currentSortOrder: SortOrder, onSortOrderSelected: (SortOrder) -> Unit) {
    var expanded by remember { mutableStateOf(false) }

    Column(Modifier
        .fillMaxWidth()
        .clickable { expanded = true }
        .padding(16.dp)) {
        Text("Default Sort Order")
        Text(currentSortOrder.name.replace('_', ' ').lowercase().replaceFirstChar { it.uppercase() })

        DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            DropdownMenuItem({ Text("By Title (A-Z)") }) {
                onSortOrderSelected(SortOrder.TITLE_ASC)
                expanded = false
            }
            DropdownMenuItem({ Text("By Title (Z-A)") }) {
                onSortOrderSelected(SortOrder.TITLE_DESC)
                expanded = false
            }
            DropdownMenuItem({ Text("By Date Added") }) {
                onSortOrderSelected(SortOrder.DATE_ADDED_DESC)
                expanded = false
            }
        }
    }
}

@Composable
private fun LibraryFoldersSetting(folders: Set<String>, onAddFolder: (String) -> Unit, onRemoveFolder: (String) -> Unit) {
    val context = LocalContext.current
    val launcher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocumentTree(),
        onResult = { uri ->
            uri?.let {
                context.contentResolver.takePersistableUriPermission(
                    it, Intent.FLAG_GRANT_READ_URI_PERMISSION
                )
                onAddFolder(it.toString())
            }
        }
    )

    Column(Modifier.padding(16.dp)) {
        Text("Library Folders")
        folders.forEach { folderUri ->
            Row(Modifier.fillMaxWidth()) {
                Text(Uri.parse(folderUri).path ?: folderUri, Modifier.weight(1f))
                IconButton(onClick = { onRemoveFolder(folderUri) }) {
                    Icon(Icons.Default.Delete, contentDescription = "Remove folder")
                }
            }
        }
        Spacer(modifier = Modifier.height(8.dp))
        MrComicPrimaryButton(onClick = { launcher.launch(null) }, text = "Add Folder")
    }
}

@Composable
private fun LanguageSetting(currentLanguage: String, onLanguageSelected: (String) -> Unit) {
    var expanded by remember { mutableStateOf(false) }
    val languages = listOf("en", "es", "fr", "de", "ru")
    val flags = mapOf(
        "en" to "\uD83C\uDDEC\uD83C\uDDE7", "es" to "\uD83C\uDDEA\uD83C\uDDF8",
        "fr" to "\uD83C\uDDEB\uD83C\uDDF7", "de" to "\uD83C\uDDE9\uD83C\uDDEA",
        "ru" to "\uD83C\uDDF7\uD83C\uDDFA"
    )

    Column(Modifier
        .fillMaxWidth()
        .clickable { expanded = true }
        .padding(16.dp)) {
        Text("Preferred Language")
        Text("${flags[currentLanguage] ?: ""} ${currentLanguage.uppercase()}")
        DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            languages.forEach { lang ->
                DropdownMenuItem({ Text("${flags[lang] ?: ""} ${lang.uppercase()}") }) {
                    onLanguageSelected(lang)
                    expanded = false
                }
            }
        }
    }
}

@Composable
private fun OcrEngineSetting(currentEngine: String, onEngineSelected: (String) -> Unit) {
    var expanded by remember { mutableStateOf(false) }
    val engines = listOf("Tesseract", "MLKit")

    Column(Modifier
        .fillMaxWidth()
        .clickable { expanded = true }
        .padding(16.dp)) {
        Text("OCR Engine")
        Text(currentEngine)
        DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            engines.forEach { engine ->
                DropdownMenuItem({ Text(engine) }) {
                    onEngineSelected(engine)
                    expanded = false
                }
            }
        }
    }
}

@Composable
private fun TranslationProviderSetting(currentProvider: String, onProviderSelected: (String) -> Unit) {
    var expanded by remember { mutableStateOf(false) }
    val providers = listOf("Google", "DeepL")

    Column(Modifier
        .fillMaxWidth()
        .clickable { expanded = true }
        .padding(16.dp)) {
        Text("Translation Provider")
        Text(currentProvider)
        DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            providers.forEach { provider ->
                DropdownMenuItem({ Text(provider) }) {
                    onProviderSelected(provider)
                    expanded = false
                }
            }
        }
    }
}

@Composable
private fun ApiKeySetting(apiKey: String, onApiKeyChanged: (String) -> Unit) {
    var value by remember { mutableStateOf(apiKey) }

    Column(Modifier.padding(16.dp)) {
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
private fun PerformanceModeSetting(enabled: Boolean, onEnabledChanged: (Boolean) -> Unit) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp)
    ) {
        Text("Performance Mode", modifier = Modifier.weight(1f))
        Switch(
            checked = enabled,
            onCheckedChange = onEnabledChanged
        )
    }
}
