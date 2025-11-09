package com.example.feature.settings.ui.sections

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun NotificationSettingsSection(
    // Notification Settings
    soundPageTurn: Boolean,
    soundVolume: Float,
    vibrationPageTurn: Boolean,
    vibrationIntensity: Float,
    notificationProgress: Boolean,
    
    // Callbacks
    onSoundPageTurnChanged: (Boolean) -> Unit,
    onSoundVolumeChanged: (Float) -> Unit,
    onVibrationPageTurnChanged: (Boolean) -> Unit,
    onVibrationIntensityChanged: (Float) -> Unit,
    onNotificationProgressChanged: (Boolean) -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
        )
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                text = "Звуки и уведомления",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Звук перелистывания
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Звук перелистывания",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Звуковой эффект при смене страниц",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = soundPageTurn,
                    onCheckedChange = onSoundPageTurnChanged
                )
            }

            if (soundPageTurn) {
                Spacer(modifier = Modifier.height(8.dp))
                
                // Громкость звуков
                Text(
                    text = "Громкость звуков: ${(soundVolume * 100).toInt()}%",
                    style = MaterialTheme.typography.bodyMedium
                )
                Slider(
                    value = soundVolume,
                    onValueChange = onSoundVolumeChanged,
                    valueRange = 0.0f..1.0f
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Вибрация при перелистывании
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Вибрация при перелистывании",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Тактильная обратная связь при смене страниц",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = vibrationPageTurn,
                    onCheckedChange = onVibrationPageTurnChanged
                )
            }

            if (vibrationPageTurn) {
                Spacer(modifier = Modifier.height(8.dp))
                
                // Интенсивность вибрации
                Text(
                    text = "Интенсивность вибрации: ${(vibrationIntensity * 100).toInt()}%",
                    style = MaterialTheme.typography.bodyMedium
                )
                Slider(
                    value = vibrationIntensity,
                    onValueChange = onVibrationIntensityChanged,
                    valueRange = 0.0f..1.0f
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Уведомления о прогрессе
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Уведомления о прогрессе",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Уведомления о достижениях и прогрессе чтения",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = notificationProgress,
                    onCheckedChange = onNotificationProgressChanged
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Информация о настройках
            Text(
                text = "💡 Настройте звуки и вибрацию для комфортного чтения",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
            )
        }
    }
}
