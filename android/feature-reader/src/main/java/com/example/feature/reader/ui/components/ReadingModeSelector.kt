package com.example.feature.reader.ui.components

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.selection.selectable
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.unit.dp
import com.example.core.model.ReadingMode

/**
 * Селектор режима чтения
 * Позволяет переключаться между комиксом, мангой, вебтуном и постраничным режимом
 */
@Composable
fun ReadingModeSelector(
    currentMode: ReadingMode,
    onModeChange: (ReadingMode) -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        Text(
            text = "Режим чтения",
            style = MaterialTheme.typography.titleMedium,
            color = MaterialTheme.colorScheme.onSurface
        )
        
        ReadingMode.values().forEach { mode ->
            ReadingModeOption(
                mode = mode,
                isSelected = currentMode == mode,
                onSelect = { onModeChange(mode) }
            )
        }
    }
}

/**
 * Опция режима чтения
 */
@Composable
private fun ReadingModeOption(
    mode: ReadingMode,
    isSelected: Boolean,
    onSelect: () -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .selectable(
                selected = isSelected,
                onClick = onSelect
            )
            .padding(12.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        RadioButton(
            selected = isSelected,
            onClick = onSelect
        )
        
        Icon(
            imageVector = mode.getIcon(),
            contentDescription = null,
            modifier = Modifier.size(24.dp),
            tint = if (isSelected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface
        )
        
        Column {
            Text(
                text = mode.displayName,
                style = MaterialTheme.typography.bodyLarge,
                color = if (isSelected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface
            )
            Text(
                text = mode.description,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
            )
        }
    }
}

/**
 * Получить иконку для режима чтения
 */
private fun ReadingMode.getIcon(): ImageVector {
    return when (this) {
        ReadingMode.COMIC -> Icons.Default.MenuBook
        ReadingMode.MANGA -> Icons.Default.AutoStories
        ReadingMode.WEBTOON -> Icons.Default.VerticalAlignTop
        ReadingMode.PAGE_BY_PAGE -> Icons.Default.ViewColumn
    }
}
