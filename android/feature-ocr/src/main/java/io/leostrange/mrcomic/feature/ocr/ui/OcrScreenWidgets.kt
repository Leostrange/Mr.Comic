package io.leostrange.mrcomic.feature.ocr.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.defaultMinSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.LocalContentColor
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ProvideTextStyle
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.OcrBlock
import io.leostrange.mrcomic.core.ui.library.RootChromeDensePillShape
import io.leostrange.mrcomic.core.ui.library.RootChromePanelShape
import io.leostrange.mrcomic.core.ui.library.RootChromePillShape
import io.leostrange.mrcomic.core.ui.library.RootChromeTone
import io.leostrange.mrcomic.core.ui.library.rootChromePanelColor
import io.leostrange.mrcomic.core.ui.library.rootChromePillBorder
import io.leostrange.mrcomic.core.ui.library.rootChromePillContainerColor
import io.leostrange.mrcomic.core.ui.library.rootChromePillContentColor

/**
 * Shared building blocks of the OCR screen. Extracted from OcrScreen.kt.
 */

internal enum class OcrPanelTone {
    NORMAL,
    SOFT,
    ACCENT,
    ERROR
}

@Composable
internal fun OcrPanelCard(
    modifier: Modifier = Modifier,
    tone: OcrPanelTone = OcrPanelTone.NORMAL,
    content: @Composable ColumnScope.() -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val containerColor = when (tone) {
        OcrPanelTone.NORMAL -> rootChromePanelColor(colorScheme)
        OcrPanelTone.SOFT -> rootChromePanelColor(colorScheme, RootChromeTone.SOFT)
        OcrPanelTone.ACCENT -> rootChromePanelColor(colorScheme, RootChromeTone.ACCENT)
        OcrPanelTone.ERROR -> MaterialTheme.colorScheme.errorContainer.copy(alpha = 0.94f)
    }
    Card(
        modifier = modifier,
        shape = RootChromePanelShape,
        colors = CardDefaults.cardColors(containerColor = containerColor),
        elevation = CardDefaults.cardElevation(
            defaultElevation = if (tone == OcrPanelTone.NORMAL) 4.dp else 2.dp
        ),
        content = content
    )
}

@Composable
internal fun AssistChip(
    onClick: () -> Unit,
    label: @Composable () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    leadingIcon: (@Composable () -> Unit)? = null
) {
    RootChromeChip(
        modifier = modifier,
        selected = false,
        enabled = enabled,
        onClick = onClick,
        label = label,
        leadingIcon = leadingIcon
    )
}

@Composable
internal fun FilterChip(
    selected: Boolean,
    onClick: () -> Unit,
    label: @Composable () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    leadingIcon: (@Composable () -> Unit)? = null
) {
    RootChromeChip(
        modifier = modifier,
        selected = selected,
        enabled = enabled,
        onClick = onClick,
        label = label,
        leadingIcon = leadingIcon
    )
}

@Composable
internal fun RootChromeChip(
    modifier: Modifier = Modifier,
    selected: Boolean,
    enabled: Boolean,
    onClick: () -> Unit,
    label: @Composable () -> Unit,
    leadingIcon: (@Composable () -> Unit)? = null
) {
    val colorScheme = MaterialTheme.colorScheme
    val containerColor = rootChromePillContainerColor(colorScheme, selected).let {
        if (enabled) it else it.copy(alpha = 0.72f)
    }
    val contentColor = rootChromePillContentColor(colorScheme, selected).let {
        if (enabled) it else it.copy(alpha = 0.58f)
    }
    Surface(
        modifier = modifier,
        shape = RootChromeDensePillShape,
        color = containerColor,
        border = rootChromePillBorder(colorScheme, selected)
    ) {
        Row(
            modifier = Modifier
                .clickable(enabled = enabled, onClick = onClick)
                .defaultMinSize(minHeight = 36.dp)
                .padding(horizontal = 12.dp, vertical = 8.dp),
            horizontalArrangement = Arrangement.spacedBy(6.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            leadingIcon?.let {
                CompositionLocalProvider(LocalContentColor provides contentColor) {
                    it()
                }
            }
            CompositionLocalProvider(LocalContentColor provides contentColor) {
                ProvideTextStyle(MaterialTheme.typography.labelMedium) {
                    label()
                }
            }
        }
    }
}

@Composable
internal fun Button(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    content: @Composable RowScope.() -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val containerColor = if (enabled) colorScheme.primary else colorScheme.primary.copy(alpha = 0.55f)
    val contentColor = if (enabled) colorScheme.onPrimary else colorScheme.onPrimary.copy(alpha = 0.72f)
    Surface(
        modifier = modifier,
        shape = RootChromePillShape,
        color = containerColor
    ) {
        Box(
            modifier = Modifier
                .clickable(enabled = enabled, onClick = onClick)
                .fillMaxWidth()
                .defaultMinSize(minHeight = 44.dp)
                .padding(horizontal = 14.dp, vertical = 10.dp)
        ) {
            Row(
                modifier = Modifier.align(Alignment.Center),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                CompositionLocalProvider(LocalContentColor provides contentColor) {
                    ProvideTextStyle(MaterialTheme.typography.labelLarge) {
                        content()
                    }
                }
            }
        }
    }
}

@Composable
internal fun OutlinedButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    content: @Composable RowScope.() -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val containerColor = rootChromePanelColor(colorScheme, RootChromeTone.SOFT).let {
        if (enabled) it else it.copy(alpha = 0.72f)
    }
    val contentColor = colorScheme.onSurface.let {
        if (enabled) it else it.copy(alpha = 0.58f)
    }
    Surface(
        modifier = modifier,
        shape = RootChromePillShape,
        color = containerColor,
        border = rootChromePillBorder(colorScheme, selected = false)
    ) {
        Box(
            modifier = Modifier
                .clickable(enabled = enabled, onClick = onClick)
                .fillMaxWidth()
                .defaultMinSize(minHeight = 42.dp)
                .padding(horizontal = 14.dp, vertical = 10.dp)
        ) {
            Row(
                modifier = Modifier.align(Alignment.Center),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                CompositionLocalProvider(LocalContentColor provides contentColor) {
                    ProvideTextStyle(MaterialTheme.typography.labelLarge) {
                        content()
                    }
                }
            }
        }
    }
}

internal fun buildSelectedBlockContextPreview(
    selectedBlockId: String?,
    recognizedBlocks: List<OcrBlock>
): Pair<String?, String?> {
    if (selectedBlockId == null) return null to null
    val orderedBlocks = recognizedBlocks.sortedWith(
        compareBy<OcrBlock> { it.bboxTop }
            .thenBy { it.bboxLeft }
            .thenByDescending { it.bboxWidth * it.bboxHeight }
    )
    val index = orderedBlocks.indexOfFirst { it.id == selectedBlockId }
    if (index == -1) return null to null

    val before = orderedBlocks
        .subList(0, index)
        .asReversed()
        .asSequence()
        .mapNotNull(::contextSnippet)
        .firstOrNull()
    val after = orderedBlocks
        .subList((index + 1).coerceAtMost(orderedBlocks.size), orderedBlocks.size)
        .asSequence()
        .mapNotNull(::contextSnippet)
        .firstOrNull()
    return before to after
}

internal fun contextSnippet(block: OcrBlock): String? {
    val normalized = block.textNormalized
        .ifBlank { block.textOriginal }
        .trim()
        .replace(Regex("\\s+"), " ")
    if (normalized.isBlank()) return null
    return if (normalized.length <= 96) normalized else normalized.take(93).trimEnd() + "..."
}
