package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.mrcomic.data.NotificationSettings
import com.example.mrcomic.viewmodel.SettingsViewModel
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.res.stringResource

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun NotificationSettingsScreen(viewModel: SettingsViewModel) {
    val notificationSettings by viewModel.notificationSettings.collectAsState()
    var autoImportNotifications by remember { mutableStateOf(notificationSettings.autoImportNotifications) }
    var readingProgressNotifications by remember { mutableStateOf(notificationSettings.readingProgressNotifications) }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(
            stringResource(R.string.notification_settings),
            style = MaterialTheme.typography.headlineMedium,
            modifier = Modifier.semantics { contentDescription = stringResource(R.string.notification_settings) }
        )
        Spacer(modifier = Modifier.height(16.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(stringResource(R.string.auto_import_notifications))
            Switch(
                checked = autoImportNotifications,
                onCheckedChange = { autoImportNotifications = it },
                modifier = Modifier.semantics { contentDescription = stringResource(R.string.auto_import_notifications) }
            )
        }
        Spacer(modifier = Modifier.height(8.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(stringResource(R.string.reading_progress_notifications))
            Switch(
                checked = readingProgressNotifications,
                onCheckedChange = { readingProgressNotifications = it },
                modifier = Modifier.semantics { contentDescription = stringResource(R.string.reading_progress_notifications) }
            )
        }
        Spacer(modifier = Modifier.height(16.dp))
        Button(
            onClick = {
                viewModel.saveNotificationSettings(
                    NotificationSettings(
                        autoImportNotifications = autoImportNotifications,
                        readingProgressNotifications = readingProgressNotifications
                    )
                )
            },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.save) }
        ) {
            Text(stringResource(R.string.save))
        }
    }
} 