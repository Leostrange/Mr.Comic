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
fun GestureSettingsSection(
    // Gesture Settings
    gestureSwipeThreshold: Float,
    gestureZoomSensitivity: Float,
    gesturePanSensitivity: Float,
    navigationSwipeEnabled: Boolean,
    navigationTapZonesEnabled: Boolean,
    navigationKeyboardShortcuts: Boolean,
    
    // Callbacks
    onGestureSwipeThresholdChanged: (Float) -> Unit,
    onGestureZoomSensitivityChanged: (Float) -> Unit,
    onGesturePanSensitivityChanged: (Float) -> Unit,
    onNavigationSwipeEnabledChanged: (Boolean) -> Unit,
    onNavigationTapZonesEnabledChanged: (Boolean) -> Unit,
    onNavigationKeyboardShortcutsChanged: (Boolean) -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
        )
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                text = "Настройки жестов",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Порог свайпа
            Text(
                text = "Порог свайпа: ${gestureSwipeThreshold.toInt()}px",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = gestureSwipeThreshold,
                onValueChange = onGestureSwipeThresholdChanged,
                valueRange = 20f..100f
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Чувствительность зума
            Text(
                text = "Чувствительность зума: ${String.format("%.1fx", gestureZoomSensitivity)}",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = gestureZoomSensitivity,
                onValueChange = onGestureZoomSensitivityChanged,
                valueRange = 0.5f..2.0f
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Чувствительность панорамирования
            Text(
                text = "Чувствительность панорамирования: ${String.format("%.1fx", gesturePanSensitivity)}",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = gesturePanSensitivity,
                onValueChange = onGesturePanSensitivityChanged,
                valueRange = 0.5f..2.0f
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Свайп для навигации
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Свайп для навигации",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Перелистывание страниц свайпом",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = navigationSwipeEnabled,
                    onCheckedChange = onNavigationSwipeEnabledChanged
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Тап-зоны
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Тап-зоны",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Навигация по тапу в зонах экрана",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = navigationTapZonesEnabled,
                    onCheckedChange = onNavigationTapZonesEnabledChanged
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Горячие клавиши
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "Горячие клавиши",
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Text(
                        text = "Навигация с клавиатуры (стрелки, пробел)",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
                    )
                }
                Switch(
                    checked = navigationKeyboardShortcuts,
                    onCheckedChange = onNavigationKeyboardShortcutsChanged
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // Информация о настройках
            Text(
                text = "💡 Настройте чувствительность под свои предпочтения для комфортного чтения",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
            )
        }
    }
}
