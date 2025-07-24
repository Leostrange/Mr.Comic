
package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.*
import androidx.compose.material3.OutlinedTextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme
import androidx.hilt.navigation.compose.hiltViewModel
import coil.compose.AsyncImage
import com.example.feature.themes.ui.ThemesViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ThemesScreen(
    onNavigateBack: () -> Unit,
    onEditTheme: (String) -> Unit,
    modifier: Modifier = Modifier,
    viewModel: ThemesViewModel = hiltViewModel()
) {
    val selectedTheme by viewModel.selectedTheme.collectAsState()
    val themes by viewModel.availableThemes.collectAsState()
    var importUrl by remember { mutableStateOf("") }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Themes") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        },
        content = { paddingValues ->
            Column(
                modifier = modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(16.dp)
            ) {
                Text("Current Theme: ${'$'}{selectedTheme.name}")
                Spacer(modifier = Modifier.height(8.dp))
                themes.forEach { themeName ->
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        modifier = Modifier.fillMaxWidth().padding(vertical = 8.dp)
                    ) {
                        AsyncImage(
                            model = viewModel.getThemePreviewPath(themeName),
                            contentDescription = null,
                            modifier = Modifier.size(64.dp)
                        )
                        Spacer(Modifier.width(8.dp))
                        Text(themeName, modifier = Modifier.weight(1f))
                        Button(onClick = { viewModel.selectCustomTheme(themeName) }) {
                            Text("Apply")
                        }
                        Spacer(Modifier.width(8.dp))
                        Button(onClick = { onEditTheme(themeName) }) {
                            Text("Edit")
                        }
                    }
                }
                Spacer(modifier = Modifier.height(16.dp))
                OutlinedTextField(
                    value = importUrl,
                    onValueChange = { importUrl = it },
                    label = { Text("Theme URL") },
                    modifier = Modifier.fillMaxWidth()
                )
                Spacer(modifier = Modifier.height(8.dp))
                Button(onClick = { viewModel.importTheme(importUrl); importUrl = "" }) {
                    Text("Load from URL")
                }
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun ThemesScreenVerticalPreview() {
    MrComicTheme {
        ThemesScreen(onNavigateBack = {}, onEditTheme = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun ThemesScreenHorizontalPreview() {
    MrComicTheme {
        ThemesScreen(onNavigateBack = {}, onEditTheme = {})
    }
}


