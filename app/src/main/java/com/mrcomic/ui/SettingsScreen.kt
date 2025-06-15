package com.example.mrcomic.ui

import android.content.Context
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import androidx.navigation.NavController
import com.example.mrcomic.R
import com.example.mrcomic.viewmodel.SettingsViewModel
import kotlinx.coroutines.launch
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics

@Composable
fun SettingsScreen(context: Context, viewModel: SettingsViewModel, navController: NavController) {
    val scope = rememberCoroutineScope()
    var exportMessage by remember { mutableStateOf("") }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(stringResource(R.string.settings), style = MaterialTheme.typography.headlineMedium)
        Spacer(modifier = Modifier.height(16.dp))
        Button(
            onClick = { navController.navigate("theme_settings") },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.theme_settings) }
        ) { Text(stringResource(R.string.theme_settings)) }
        Spacer(modifier = Modifier.height(8.dp))
        Button(
            onClick = { navController.navigate("library_settings") },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.library_settings) }
        ) { Text(stringResource(R.string.library_settings)) }
        Spacer(modifier = Modifier.height(8.dp))
        Button(
            onClick = { navController.navigate("reader_settings") },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.reader_settings) }
        ) { Text(stringResource(R.string.reader_settings)) }
        Spacer(modifier = Modifier.height(8.dp))
        Button(
            onClick = { navController.navigate("notification_settings") },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.notification_settings) }
        ) { Text(stringResource(R.string.notification_settings)) }
        Spacer(modifier = Modifier.height(8.dp))
        Button(
            onClick = { navController.navigate("gesture_settings") },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.gesture_settings) }
        ) { Text(stringResource(R.string.gesture_settings)) }
        Spacer(modifier = Modifier.height(8.dp))
        Button(
            onClick = { navController.navigate("language_settings") },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.language_settings) }
        ) { Text(stringResource(R.string.language_settings)) }
        Spacer(modifier = Modifier.height(8.dp))
        Button(
            onClick = { navController.navigate("stats") },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.stats) }
        ) { Text(stringResource(R.string.stats)) }
        Spacer(modifier = Modifier.height(16.dp))
        Button(
            onClick = {
                val file = viewModel.exportSettings()
                exportMessage = stringResource(R.string.exported_settings, file.absolutePath)
            },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.export_settings) }
        ) { Text(stringResource(R.string.export_settings)) }
        Spacer(modifier = Modifier.height(8.dp))
        Button(
            onClick = {
                // Импорт настроек: здесь можно реализовать выбор файла через SAF
                // Для примера: импорт из стандартного файла
                scope.launch {
                    val file = context.filesDir.resolve("settings_backup.json")
                    if (file.exists()) viewModel.importFromFile(file)
                }
            },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.import_settings) }
        ) { Text(stringResource(R.string.import_settings)) }
        Spacer(modifier = Modifier.height(8.dp))
        Button(
            onClick = {
                // Очистка кэша изображений
                val cacheDir = context.cacheDir
                cacheDir.listFiles()?.forEach { it.delete() }
            },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.clear_cache) }
        ) { Text(stringResource(R.string.clear_cache)) }
        if (exportMessage.isNotBlank()) {
            Spacer(modifier = Modifier.height(8.dp))
            Text(exportMessage, style = MaterialTheme.typography.bodySmall)
        }
    }
} 