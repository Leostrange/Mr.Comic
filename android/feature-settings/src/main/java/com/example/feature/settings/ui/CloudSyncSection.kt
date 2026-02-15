package com.example.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Cloud
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun CloudSyncSection(
    selectedCloudProvider: String?,
    googleDriveAuthenticated: Boolean,
    oneDriveAuthenticated: Boolean,
    lastSyncTime: Long?,
    syncProgress: Float,
    syncMessage: String,
    syncStatus: String,
    onProviderSelected: (String?) -> Unit,
    onSignIn: (String) -> Unit,
    onSignOut: (String) -> Unit,
    onSyncNow: () -> Unit,
    onSyncFromCloud: () -> Unit
) {
    Text(
        text = "Облачная синхронизация",
        style = MaterialTheme.typography.titleMedium,
        color = MaterialTheme.colorScheme.primary
    )

    Spacer(modifier = Modifier.height(12.dp))

    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
        )
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            // Provider Selection
            Text(
                text = "Выберите облачный провайдер",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            Spacer(modifier = Modifier.height(8.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Button(
                    onClick = { onProviderSelected("google_drive") },
                    modifier = Modifier.weight(1f),
                    colors = if (selectedCloudProvider == "google_drive") {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("Google Drive")
                }

                Button(
                    onClick = { onProviderSelected("one_drive") },
                    modifier = Modifier.weight(1f),
                    colors = if (selectedCloudProvider == "one_drive") {
                        ButtonDefaults.buttonColors()
                    } else {
                        ButtonDefaults.outlinedButtonColors()
                    }
                ) {
                    Text("OneDrive")
                }
            }

            selectedCloudProvider?.let { provider ->
                Spacer(modifier = Modifier.height(16.dp))
                HorizontalDivider()
                Spacer(modifier = Modifier.height(16.dp))

                // Provider Status and Actions
                when (provider) {
                    "google_drive" -> {
                        CloudProviderCard(
                            name = "Google Drive",
                            isAuthenticated = googleDriveAuthenticated,
                            onSignIn = { onSignIn("google_drive") },
                            onSignOut = { onSignOut("google_drive") }
                        )
                    }
                    "one_drive" -> {
                        CloudProviderCard(
                            name = "Microsoft OneDrive",
                            isAuthenticated = oneDriveAuthenticated,
                            onSignIn = { onSignIn("one_drive") },
                            onSignOut = { onSignOut("one_drive") }
                        )
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))
                HorizontalDivider()
                Spacer(modifier = Modifier.height(16.dp))

                // Sync Actions
                Text(
                    text = "Действия синхронизации",
                    style = MaterialTheme.typography.titleSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )

                Spacer(modifier = Modifier.height(8.dp))

                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Button(
                        onClick = onSyncNow,
                        modifier = Modifier.weight(1f),
                        enabled = (provider == "google_drive" && googleDriveAuthenticated) ||
                                 (provider == "one_drive" && oneDriveAuthenticated)
                    ) {
                        Text("Sync Now")
                    }

                    Button(
                        onClick = onSyncFromCloud,
                        modifier = Modifier.weight(1f),
                        enabled = (provider == "google_drive" && googleDriveAuthenticated) ||
                                 (provider == "one_drive" && oneDriveAuthenticated)
                    ) {
                        Text("Sync from Cloud")
                    }
                }

                // Last Sync Info
                lastSyncTime?.let { time ->
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Last sync: ${java.text.SimpleDateFormat("yyyy-MM-dd HH:mm", java.util.Locale.getDefault()).format(java.util.Date(time))}",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }

                // Sync Progress
                if (syncStatus == "SYNCING") {
                    Spacer(modifier = Modifier.height(8.dp))
                    LinearProgressIndicator(
                        progress = { syncProgress },
                        modifier = Modifier.fillMaxWidth()
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = syncMessage,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }

                // Sync Status Message
                if (syncStatus == "ERROR" || syncStatus == "SUCCESS") {
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = syncMessage,
                        style = MaterialTheme.typography.bodySmall,
                        color = if (syncStatus == "ERROR") MaterialTheme.colorScheme.error else MaterialTheme.colorScheme.primary
                    )
                }
            }
        }
    }
}

@Composable
private fun CloudProviderCard(
    name: String,
    isAuthenticated: Boolean,
    onSignIn: () -> Unit,
    onSignOut: () -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(12.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Cloud,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary
                )
                Column {
                    Text(
                        text = name,
                        style = MaterialTheme.typography.bodyMedium,
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Medium
                    )
                    Text(
                        text = if (isAuthenticated) "Подключено" else "Не подключено",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
            }
            if (isAuthenticated) {
                TextButton(onClick = onSignOut) {
                    Text("Выйти")
                }
            } else {
                TextButton(onClick = onSignIn) {
                    Text("Войти")
                }
            }
        }
    }
}