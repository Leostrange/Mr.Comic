package com.example.feature.settings.ui.components

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Error
import androidx.compose.material.icons.filled.Cloud
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
// import com.example.mrcomic.backup.BackupSyncStatus

/**
 * Диалог для отображения прогресса создания/восстановления бэкапа
 */
@Composable
fun BackupProgressDialog(
    isVisible: Boolean,
    syncStatus: String,
    progress: Float = 0f,
    message: String = "",
    onDismiss: () -> Unit = {}
) {
    if (isVisible) {
        Dialog(
            onDismissRequest = onDismiss,
            properties = DialogProperties(
                dismissOnBackPress = false,
                dismissOnClickOutside = false
            )
        ) {
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface
                )
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(24.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    // Иконка статуса
                    Icon(
                        imageVector = when (syncStatus) {
                            "SYNCING" -> Icons.Default.Cloud
                            "COMPLETED" -> Icons.Default.CheckCircle
                            "ERROR" -> Icons.Default.Error
                            else -> Icons.Default.Cloud
                        },
                        contentDescription = null,
                        modifier = Modifier.size(48.dp),
                        tint = when (syncStatus) {
                            "SYNCING" -> MaterialTheme.colorScheme.primary
                            "COMPLETED" -> MaterialTheme.colorScheme.primary
                            "ERROR" -> MaterialTheme.colorScheme.error
                            else -> MaterialTheme.colorScheme.onSurface
                        }
                    )
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    // Заголовок
                    Text(
                        text = when (syncStatus) {
                            "SYNCING" -> "Создание резервной копии"
                            "COMPLETED" -> "Резервная копия создана"
                            "ERROR" -> "Ошибка создания копии"
                            else -> "Резервная копия"
                        },
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                    
                    Spacer(modifier = Modifier.height(8.dp))
                    
                    // Сообщение
                    if (message.isNotEmpty()) {
                        Text(
                            text = message,
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                    }
                    
                    // Прогресс-бар (только для процесса синхронизации)
                    if (syncStatus == "SYNCING") {
                        LinearProgressIndicator(
                            progress = { progress },
                            modifier = Modifier.fillMaxWidth(),
                            color = MaterialTheme.colorScheme.primary,
                            trackColor = MaterialTheme.colorScheme.surfaceVariant
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            text = "${(progress * 100).toInt()}%",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                    }
                    
                    // Кнопка закрытия (только для завершенных операций)
                    if (syncStatus == "COMPLETED" || syncStatus == "ERROR") {
                        Button(
                            onClick = onDismiss,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text("Закрыть")
                        }
                    }
                }
            }
        }
    }
}

/**
 * Диалог для выбора файла восстановления
 */
@Composable
fun RestoreBackupDialog(
    isVisible: Boolean,
    availableBackups: List<String> = emptyList(),
    onSelectBackup: (String) -> Unit = {},
    onDismiss: () -> Unit = {}
) {
    if (isVisible) {
        Dialog(
            onDismissRequest = onDismiss
        ) {
            Card(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surface
                )
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(24.dp)
                ) {
                    Text(
                        text = "Выберите резервную копию для восстановления",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold
                    )
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    if (availableBackups.isEmpty()) {
                        Text(
                            text = "Резервные копии не найдены",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    } else {
                        availableBackups.forEach { backup ->
                            Card(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(vertical = 4.dp),
                                colors = CardDefaults.cardColors(
                                    containerColor = MaterialTheme.colorScheme.surfaceVariant
                                )
                            ) {
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .padding(12.dp),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Text(
                                        text = backup,
                                        style = MaterialTheme.typography.bodyMedium
                                    )
                                    Button(
                                        onClick = { onSelectBackup(backup) }
                                    ) {
                                        Text("Восстановить")
                                    }
                                }
                            }
                        }
                    }
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.End
                    ) {
                        TextButton(onClick = onDismiss) {
                            Text("Отмена")
                        }
                    }
                }
            }
        }
    }
}

/**
 * Snackbar для уведомлений о бэкапе
 */
@Composable
fun BackupSnackbar(
    message: String,
    isError: Boolean = false,
    onDismiss: () -> Unit = {}
) {
    // Реализация Snackbar будет добавлена в SettingsScreen
}
