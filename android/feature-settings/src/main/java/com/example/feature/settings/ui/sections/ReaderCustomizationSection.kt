package com.example.feature.settings.ui.sections

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
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
fun ReaderCustomizationSection(
    // Reader Customization Settings
    readerTapZonesSize: Float,
    readerTapZonesSensitivity: Float,
    readerShowPageIndicator: Boolean,
    readerShowProgressBar: Boolean,
    readerAutoHideUI: Boolean,
    readerAutoHideDelay: Int,
    readerGestureSensitivity: Float,
    readerVibrationFeedback: Boolean,
    
    // Callbacks
    onTapZonesSizeChanged: (Float) -> Unit,
    onTapZonesSensitivityChanged: (Float) -> Unit,
    onShowPageIndicatorChanged: (Boolean) -> Unit,
    onShowProgressBarChanged: (Boolean) -> Unit,
    onAutoHideUIChanged: (Boolean) -> Unit,
    onAutoHideDelayChanged: (Int) -> Unit,
    onGestureSensitivityChanged: (Float) -> Unit,
    onVibrationFeedbackChanged: (Boolean) -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
        )
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                text = "Кастомизация ридера",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Размер зон для панелей
            Text(
                text = "Размер зон для панелей: ${String.format("%.1fx", readerTapZonesSize)}",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = readerTapZonesSize,
                onValueChange = onTapZonesSizeChanged,
                valueRange = 0.5f..2.0f
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Чувствительность зон
            Text(
                text = "Чувствительность зон: ${String.format("%.1fx", readerTapZonesSensitivity)}",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = readerTapZonesSensitivity,
                onValueChange = onTapZonesSensitivityChanged,
                valueRange = 0.5f..2.0f
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Показывать индикатор страниц
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Показывать индикатор страниц",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Отображать номер текущей страницы",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = readerShowPageIndicator,
                    onCheckedChange = onShowPageIndicatorChanged
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Показывать прогресс-бар
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Показывать прогресс-бар",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Отображать прогресс чтения",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = readerShowProgressBar,
                    onCheckedChange = onShowProgressBarChanged
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Автоскрытие UI
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Автоскрытие UI",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Автоматически скрывать панели",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = readerAutoHideUI,
                    onCheckedChange = onAutoHideUIChanged
                )
            }

            if (readerAutoHideUI) {
                Spacer(modifier = Modifier.height(8.dp))
                
                // Задержка автоскрытия
                Text(
                    text = "Задержка автоскрытия: ${readerAutoHideDelay}мс",
                    style = MaterialTheme.typography.bodyMedium
                )
                Slider(
                    value = readerAutoHideDelay.toFloat(),
                    onValueChange = { onAutoHideDelayChanged(it.toInt()) },
                    valueRange = 1000f..10000f
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Чувствительность жестов
            Text(
                text = "Чувствительность жестов: ${String.format("%.1fx", readerGestureSensitivity)}",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = readerGestureSensitivity,
                onValueChange = onGestureSensitivityChanged,
                valueRange = 0.5f..2.0f
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Вибрация при жестах
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Вибрация при жестах",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Тактильная обратная связь при взаимодействии",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = readerVibrationFeedback,
                    onCheckedChange = onVibrationFeedbackChanged
                )
            }
        }
    }
}
