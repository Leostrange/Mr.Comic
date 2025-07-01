package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ExportPublishScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Экспорт и публикация") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Назад")
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
                Text("Это экран экспорта и публикации.", style = MaterialTheme.typography.headlineMedium)
                Spacer(modifier = Modifier.height(16.dp))
                Text("Здесь будет реализована функциональность для экспорта комиксов и их публикации.")
                // Placeholder for export and publish functionality
                Button(onClick = { /* TODO: Implement export logic */ }) {
                    Text("Экспортировать комикс")
                }
                Spacer(modifier = Modifier.height(8.dp))
                Button(onClick = { /* TODO: Implement publish logic */ }) {
                    Text("Опубликовать комикс")
                }
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun ExportPublishScreenVerticalPreview() {
    MrComicTheme {
        ExportPublishScreen(onNavigateBack = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun ExportPublishScreenHorizontalPreview() {
    MrComicTheme {
        ExportPublishScreen(onNavigateBack = {})
    }
}


