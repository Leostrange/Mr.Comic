package com.example.feature.settings.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.FlowRowScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.example.core.ui.designsystem.MrComicCompactValueRow
import com.example.core.ui.designsystem.MrComicPanelCard
import com.example.core.ui.designsystem.MrComicSliderTile
import com.example.core.ui.designsystem.MrComicSwitchRow
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.sound.UIFeedback

/**
 * Shared UI helper composables for settings screens.
 *
 * Extracted from SettingsScreen to reduce its size.
 * Thin wrappers around core-ui design system components.
 */

internal data class ReaderPickerOption(
    val value: String,
    val label: String
)

@Composable
internal fun SettingsCard(
    title: String,
    content: @Composable ColumnScope.() -> Unit
) {
    MrComicPanelCard(
        title = title,
        content = content
    )
}

@Composable
internal fun LabelText(text: String) {
    Text(text, style = MaterialTheme.typography.bodySmall,
        color = MaterialTheme.colorScheme.onSurfaceVariant)
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun ChipRow(content: @Composable FlowRowScope.() -> Unit) {
    FlowRow(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
        content = content
    )
}

@Composable
internal fun SwitchRow(
    title: String,
    subtitle: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    enabled: Boolean = true
) {
    MrComicSwitchRow(
        title = title,
        subtitle = subtitle,
        checked = checked,
        enabled = enabled,
        onCheckedChange = { value ->
            UIFeedback.playSelect()
            onCheckedChange(value)
        }
    )
}

@Composable
internal fun SettingsPickerTile(
    title: String,
    value: String,
    onClick: () -> Unit,
    subtitle: String? = null,
    compact: Boolean = false
) {
    MrComicCompactValueRow(
        title = title,
        subtitle = subtitle,
        value = value,
        onClick = {
            UIFeedback.playSelect()
            onClick()
        },
        compact = compact
    )
}

@Composable
internal fun SettingsSliderTile(
    title: String,
    valueLabel: String,
    value: Float,
    onValueChange: (Float) -> Unit,
    valueRange: ClosedFloatingPointRange<Float>,
    steps: Int = 0,
    subtitle: String? = null
) {
    MrComicSliderTile(
        title = title,
        valueLabel = valueLabel,
        value = value,
        onValueChange = onValueChange,
        valueRange = valueRange,
        steps = steps,
        subtitle = subtitle
    )
}

@Composable
internal fun SettingsPickerDialog(
    title: String,
    options: List<ReaderPickerOption>,
    selectedValue: String,
    onDismiss: () -> Unit,
    onSelect: (String) -> Unit
) {
    val language = LocalStrings.current.languageCode
    val scrollState = rememberScrollState()
    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text(title) },
        text = {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 420.dp)
                    .verticalScroll(scrollState),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                options.forEach { option ->
                    Surface(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable {
                                UIFeedback.playSelect()
                                onSelect(option.value)
                            },
                        color = if (selectedValue == option.value) {
                            MaterialTheme.colorScheme.primary.copy(alpha = 0.12f)
                        } else {
                            MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.75f)
                        },
                        shape = RoundedCornerShape(16.dp)
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(horizontal = 14.dp, vertical = 12.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.SpaceBetween
                        ) {
                            Text(
                                text = option.label,
                                modifier = Modifier.weight(1f),
                                style = MaterialTheme.typography.bodyMedium,
                                maxLines = 2,
                                overflow = TextOverflow.Ellipsis
                            )
                            if (selectedValue == option.value) {
                                Spacer(Modifier.width(8.dp))
                                Icon(
                                    Icons.Default.Check,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.primary
                                )
                            }
                        }
                    }
                }
            }
        },
        confirmButton = {
            TextButton(onClick = onDismiss) {
                Text(
                    when (language) {
                        "en" -> "Close"
                        "ja" -> "閉じる"
                        "zh" -> "关闭"
                        "ko" -> "닫기"
                        else -> "Закрыть"
                    }
                )
            }
        }
    )
}
