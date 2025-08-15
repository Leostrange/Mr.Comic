package com.example.feature.settings.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.Divider
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.SortOrder
import com.example.core.model.LocalDictionary
import com.example.core.model.LocalModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(viewModel: SettingsViewModel = hiltViewModel()) {
    val uiState by viewModel.uiState.collectAsState()

    Scaffold(topBar = { TopAppBar(title = { Text("Settings") }) }) { paddingValues ->
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
        }
    }
}

@Composable
private fun SortOrderRow(current: SortOrder, onChange: (SortOrder) -> Unit) {
    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        Button(onClick = { onChange(SortOrder.TITLE_ASC) }) { Text("Title A-Z") }
        Button(onClick = { onChange(SortOrder.TITLE_DESC) }) { Text("Title Z-A") }
        Button(onClick = { onChange(SortOrder.DATE_ADDED_DESC) }) { Text("Date") }
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
