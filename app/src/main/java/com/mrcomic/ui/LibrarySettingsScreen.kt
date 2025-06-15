package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.mrcomic.data.DisplayMode
import com.example.mrcomic.data.LibrarySettings
import com.example.mrcomic.data.SortOrder
import com.example.mrcomic.viewmodel.SettingsViewModel
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.res.stringResource

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibrarySettingsScreen(viewModel: SettingsViewModel) {
    val librarySettings by viewModel.librarySettings.collectAsState()
    var selectedDisplayMode by remember { mutableStateOf(librarySettings.displayMode) }
    var selectedSortOrder by remember { mutableStateOf(librarySettings.sortOrder) }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(
            stringResource(R.string.library_settings),
            style = MaterialTheme.typography.headlineMedium,
            modifier = Modifier.semantics { contentDescription = stringResource(R.string.library_settings) }
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(stringResource(R.string.display_mode))
        RadioGroup(
            options = DisplayMode.values().map { stringResource(it.labelRes) },
            selectedOption = stringResource(selectedDisplayMode.labelRes),
            onOptionSelected = { selected ->
                selectedDisplayMode = DisplayMode.values().first { stringResource(it.labelRes) == selected }
            }
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(stringResource(R.string.sort_order))
        RadioGroup(
            options = SortOrder.values().map { stringResource(it.labelRes) },
            selectedOption = stringResource(selectedSortOrder.labelRes),
            onOptionSelected = { selected ->
                selectedSortOrder = SortOrder.values().first { stringResource(it.labelRes) == selected }
            }
        )
        Spacer(modifier = Modifier.height(16.dp))
        Button(
            onClick = {
                viewModel.saveLibrarySettings(
                    LibrarySettings(
                        displayMode = selectedDisplayMode,
                        sortOrder = selectedSortOrder
                    )
                )
            },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.save) }
        ) {
            Text(stringResource(R.string.save))
        }
    }
} 