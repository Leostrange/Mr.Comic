package com.example.mrcomic.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun CrossDeviceSyncScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Синхронизация между устройствами") },
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
                Text("Это экран настроек синхронизации между устройствами.", style = MaterialTheme.typography.headlineMedium)
                Spacer(modifier = Modifier.height(16.dp))
                Text("Здесь будет реализована функциональность для синхронизации данных комиксов и прогресса чтения между различными устройствами.")
                // Placeholder for cross-device sync functionality
                Button(onClick = { /* TODO: Implement sync logic */ }) {
                    Text("Начать синхронизацию")
                }
                Spacer(modifier = Modifier.height(8.dp))
                Button(onClick = { /* TODO: Implement sync settings */ }) {
                    Text("Настройки синхронизации")
                }
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun CrossDeviceSyncScreenVerticalPreview() {
    MrComicTheme {
        CrossDeviceSyncScreen(onNavigateBack = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun CrossDeviceSyncScreenHorizontalPreview() {
    MrComicTheme {
        CrossDeviceSyncScreen(onNavigateBack = {})
    }
}


