@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.argbLongToThemeColor
import io.leostrange.mrcomic.core.ui.theme.previewColors
import io.leostrange.mrcomic.core.ui.theme.style

/**
 * Локализованная подпись предустановки темы. Phase A 2026-08-02.
 * Поведение неизменно.
 */
internal fun themePresetLabel(strings: AppStrings, presetName: String): String = when (
    runCatching { ThemePreset.valueOf(presetName) }.getOrDefault(ThemePreset.CUSTOM)
) {
    ThemePreset.PAPER -> strings.themePresetPaper
    ThemePreset.GLASS -> strings.themePresetGlass
    ThemePreset.AMOLED -> strings.themePresetAmoled
    ThemePreset.NEON -> strings.themePresetNeon
    ThemePreset.GRAY -> strings.themePresetGray
    ThemePreset.SEPIA -> strings.themePresetSepia
    ThemePreset.EINK -> strings.themePresetEink
    ThemePreset.CUSTOM -> strings.themePresetCustom
}

/* ──────────── Phase B (2026-08-02): Color.contentColorForPreview / ThemePreviewCard / ThemePresetCard ──────────── */

// ──────────── Live preview card ────────────

internal fun Color.contentColorForPreview(): Color =
    if (luminance() > 0.18f) Color(0xFF000000) else Color(0xFFFFFFFF)

@Composable
internal fun ThemePreviewCard(
    uiState: SettingsUiState,
    strings: AppStrings
) {
    val currentScheme = MaterialTheme.colorScheme
    val isDarkPreview = when (uiState.themeMode) {
        ThemeMode.LIGHT -> false
        ThemeMode.DARK -> true
        ThemeMode.SYSTEM,
        ThemeMode.DYNAMIC -> currentScheme.background.luminance() < 0.45f
    }
    val previewBackgroundTarget = uiState.customBackgroundColor?.let(::argbLongToThemeColor) ?: when {
        uiState.themeMode == ThemeMode.LIGHT -> Color(0xFFF7F3EE)
        uiState.themeMode == ThemeMode.DARK && uiState.useAmoledDark -> Color(0xFF000000)
        uiState.themeMode == ThemeMode.DARK -> Color(0xFF121216)
        uiState.themeMode == ThemeMode.SYSTEM && uiState.useAmoledDark && isDarkPreview -> Color(0xFF000000)
        else -> currentScheme.background
    }
    val previewSurfaceTarget = uiState.customSurfaceColor?.let(::argbLongToThemeColor) ?: when {
        previewBackgroundTarget == Color(0xFF000000) -> Color(0xFF0A0A0A)
        isDarkPreview -> Color(0xFF1B1B1F)
        uiState.themeMode == ThemeMode.LIGHT -> Color(0xFFFFFFFF)
        else -> currentScheme.surface.copy(alpha = 1f)
    }
    val previewPrimaryTarget = uiState.customPrimaryColor?.let(::argbLongToThemeColor) ?: currentScheme.primary
    val previewSecondaryTarget = uiState.customSecondaryColor?.let(::argbLongToThemeColor) ?: currentScheme.secondary
    val previewPrimaryContainerTarget = uiState.customPrimaryColor?.let {
        lerp(previewSurfaceTarget, previewPrimaryTarget, if (isDarkPreview) 0.36f else 0.18f)
    } ?: currentScheme.primaryContainer.copy(alpha = 1f)
    val previewSecondaryContainerTarget = uiState.customSecondaryColor?.let {
        lerp(previewSurfaceTarget, previewSecondaryTarget, if (isDarkPreview) 0.34f else 0.18f)
    } ?: currentScheme.secondaryContainer.copy(alpha = 1f)

    // Keep the preview a single, coherent snapshot of the selected theme.
    // Per-element animations made the preview show mixed old/new themes.
    val previewBackground = previewBackgroundTarget
    val previewSurface = previewSurfaceTarget
    val previewPrimary = previewPrimaryTarget
    val previewPrimaryContainer = previewPrimaryContainerTarget
    val previewSecondaryContainer = previewSecondaryContainerTarget
    val onPreview = if (previewBackground.luminance() > 0.18f) {
        Color(0xFF000000)
    } else {
        Color(0xFFFFFFFF)
    }
    val onPreviewSurface = previewSurface.contentColorForPreview()
    val mutedPreview = if (previewBackground.luminance() > 0.45f) {
        Color(0xFF6B6259)
    } else {
        Color(0xFFC6C1BC)
    }
    val modeLabel = when (uiState.themeMode) {
        ThemeMode.SYSTEM -> strings.themeSystem
        ThemeMode.LIGHT -> strings.themeLight
        ThemeMode.DARK -> strings.themeDark
        ThemeMode.DYNAMIC -> strings.themeDynamic
    }
    val previewCardShape = RoundedCornerShape(20.dp)

    MrComicCardSurface(
        modifier = Modifier
            .fillMaxWidth()
            .clip(previewCardShape),
        shape = previewCardShape,
        containerColor = previewBackground,
        border = CardDefaults.outlinedCardBorder()
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(MaterialTheme.shapes.large)
                    .background(previewSurface)
                    .padding(horizontal = 10.dp, vertical = 8.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                Surface(
                    color = previewPrimaryContainer,
                    shape = CircleShape
                ) {
                    Icon(
                        Icons.AutoMirrored.Filled.MenuBook,
                        contentDescription = null,
                        modifier = Modifier.padding(8.dp).size(18.dp),
                        tint = previewPrimary
                    )
                }
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        strings.sectionReader,
                        color = onPreview,
                        style = MaterialTheme.typography.titleSmall
                    )
                    Text(
                        "12 / 18",
                        color = mutedPreview,
                        style = MaterialTheme.typography.bodySmall
                    )
                }
                Surface(
                    color = previewPrimaryContainer,
                    shape = MaterialTheme.shapes.extraLarge
                ) {
                    Text(
                        modeLabel,
                        color = previewPrimary,
                        style = MaterialTheme.typography.labelMedium,
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
                    )
                }
            }
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .clip(MaterialTheme.shapes.large)
                    .background(previewSurface)
                    .padding(horizontal = 12.dp, vertical = 12.dp),
                verticalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth(0.92f)
                        .height(8.dp)
                        .clip(MaterialTheme.shapes.small)
                        .background(onPreviewSurface.copy(alpha = 0.18f))
                )
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(8.dp)
                        .clip(MaterialTheme.shapes.small)
                        .background(onPreviewSurface.copy(alpha = 0.16f))
                )
                Box(
                    modifier = Modifier
                        .fillMaxWidth(0.82f)
                        .height(8.dp)
                        .clip(MaterialTheme.shapes.small)
                        .background(onPreviewSurface.copy(alpha = 0.14f))
                )
            }
            Surface(
                shape = MaterialTheme.shapes.large,
                color = previewSecondaryContainer
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 10.dp, vertical = 8.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Icon(
                        Icons.Default.Translate,
                        contentDescription = null,
                        tint = previewPrimary,
                        modifier = Modifier.size(18.dp)
                    )
                    Text(
                        strings.translationCard,
                        color = onPreviewSurface,
                        style = MaterialTheme.typography.bodyMedium,
                        modifier = Modifier.weight(1f)
                    )
                    Surface(
                        color = previewPrimaryContainer,
                        shape = MaterialTheme.shapes.extraLarge
                    ) {
                        Text(
                            "67%",
                            color = previewPrimary,
                            style = MaterialTheme.typography.labelMedium,
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
                        )
                    }
                }
            }
        }
    }
}

// ──────────── Theme preset card ────────────

@Composable
internal fun ThemePresetCard(
    preset: ThemePreset,
    label: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    val preview = preset.previewColors()
    val borderColor = if (isSelected) MaterialTheme.colorScheme.primary else Color.Transparent
    val borderWidth = if (isSelected) 2.dp else 1.dp
    val borderC = if (isSelected) MaterialTheme.colorScheme.primary
    else MaterialTheme.colorScheme.outlineVariant

    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .width(92.dp)
            .clip(MaterialTheme.shapes.medium)
            .clickable(onClick = onClick)
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(56.dp)
                .clip(MaterialTheme.shapes.medium)
                .background(preview.bg)
                .border(borderWidth, borderC, MaterialTheme.shapes.medium)
        ) {
            // Primary accent bar
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(16.dp)
                    .background(preview.primary)
                    .align(Alignment.TopCenter)
            )
            // Secondary dot
            Box(
                modifier = Modifier
                    .size(18.dp)
                    .clip(CircleShape)
                    .background(preview.secondary)
                    .align(Alignment.BottomEnd)
                    .padding(4.dp)
            )
            if (isSelected) {
                Icon(
                    Icons.Default.CheckCircle,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.size(20.dp).align(Alignment.Center)
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        Text(
            label,
            style = MaterialTheme.typography.labelSmall,
            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
            color = if (isSelected) MaterialTheme.colorScheme.primary
            else MaterialTheme.colorScheme.onSurface,
            maxLines = 1
        )
    }
}
