package com.example.feature.library.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.Icon
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.Button
import androidx.compose.material3.HorizontalDivider
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.Comic

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryScreen(
    onBookClick: (filePath: String) -> Unit,
    onAddClick: () -> Unit,
    onSettingsClick: () -> Unit,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()

    Scaffold(
        topBar = { TopAppBar(title = { Text("Library") }) },
        floatingActionButton = {
            FloatingActionButton(
                onClick = onAddClick,
                modifier = Modifier.testTag("add_comic_button")
            ) {
                Icon(Icons.Default.Add, contentDescription = "Add Comic")
            }
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp)
                .testTag("library_screen")
        ) {
            val errorText = uiState.error
            if (errorText != null) {
                Text(text = errorText)
                Spacer(modifier = Modifier.height(8.dp))
                Button(onClick = { viewModel.onPermissionsGranted() }) {
                    Text("Retry")
                }
            } else if (uiState.comics.isEmpty()) {
                Text(text = "Библиотека пуста")
                Spacer(modifier = Modifier.height(4.dp))
                Text(text = "Добавьте первый комикс")
                Spacer(modifier = Modifier.height(8.dp))
                Button(onClick = onAddClick) {
                    Text("Добавить")
                }
            } else {
                LazyColumn(
                    modifier = Modifier
                        .fillMaxSize()
                        .testTag("library_list"),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    items(uiState.comics) { comic ->
                        ComicRow(comic = comic, onClick = { onBookClick(comic.filePath) })
                    }
                }
            }
        }
    }
}

@Composable
private fun ComicRow(comic: Comic, onClick: () -> Unit) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
            .padding(vertical = 8.dp)
    ) {
        Text(text = comic.title)
        if (!comic.coverPath.isNullOrEmpty()) {
            Text(text = comic.coverPath!!, modifier = Modifier.padding(top = 2.dp))
        }
        HorizontalDivider(modifier = Modifier.padding(top = 8.dp))
    }
}


