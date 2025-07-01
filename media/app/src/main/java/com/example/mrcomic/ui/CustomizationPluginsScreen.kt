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
fun CustomizationPluginsScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Кастомизация и плагины") },
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
                Text("Это экран кастомизации и плагинов.", style = MaterialTheme.typography.headlineMedium)
                Spacer(modifier = Modifier.height(16.dp))
                Text("Здесь будет реализована функциональность для настройки внешнего вида приложения, установки и управления плагинами.")
                // Placeholder for customization and plugins functionality
                Button(onClick = { /* TODO: Implement theme customization */ }) {
                    Text("Настроить тему")
                }
                Spacer(modifier = Modifier.height(8.dp))
                Button(onClick = { /* TODO: Implement plugin management */ }) {
                    Text("Управление плагинами")
                }
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun CustomizationPluginsScreenVerticalPreview() {
    MrComicTheme {
        CustomizationPluginsScreen(onNavigateBack = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun CustomizationPluginsScreenHorizontalPreview() {
    MrComicTheme {
        CustomizationPluginsScreen(onNavigateBack = {})
    }
}


