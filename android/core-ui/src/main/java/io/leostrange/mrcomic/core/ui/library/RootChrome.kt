package io.leostrange.mrcomic.core.ui.library

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.WindowInsetsSides
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.only
import androidx.compose.foundation.layout.statusBarsIgnoringVisibility
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextFieldDefaults
import androidx.compose.material3.TextFieldColors
import androidx.compose.material3.TopAppBarColors
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.unit.dp

enum class RootChromeTone {
    NEUTRAL,
    SOFT,
    ACCENT
}

val RootChromePanelShape = RoundedCornerShape(24.dp)
val RootChromeCompactPanelShape = RoundedCornerShape(20.dp)
val RootChromePillShape = RoundedCornerShape(16.dp)
val RootChromeDensePillShape = RoundedCornerShape(14.dp)
private val RootChromeTopBarLift = 0.dp

private fun isLightChrome(colorScheme: ColorScheme): Boolean = colorScheme.background.luminance() > 0.45f

fun rootChromePanelColor(
    colorScheme: ColorScheme,
    tone: RootChromeTone = RootChromeTone.NEUTRAL
): Color = when (tone) {
    RootChromeTone.NEUTRAL -> colorScheme.surface.copy(alpha = if (isLightChrome(colorScheme)) 0.94f else 0.9f)
    RootChromeTone.SOFT -> colorScheme.surfaceContainerHigh.copy(alpha = if (isLightChrome(colorScheme)) 0.84f else 0.76f)
    RootChromeTone.ACCENT -> colorScheme.primaryContainer.copy(alpha = if (isLightChrome(colorScheme)) 0.72f else 0.62f)
}

fun rootChromeBorderColor(colorScheme: ColorScheme): Color =
    colorScheme.outlineVariant.copy(alpha = if (isLightChrome(colorScheme)) 0.44f else 0.28f)

fun rootChromeIconContainerColor(colorScheme: ColorScheme): Color =
    colorScheme.primary.copy(alpha = if (isLightChrome(colorScheme)) 0.11f else 0.18f)

fun rootChromePillContainerColor(
    colorScheme: ColorScheme,
    selected: Boolean
): Color = if (selected) {
    colorScheme.primary.copy(alpha = if (isLightChrome(colorScheme)) 0.14f else 0.22f)
} else {
    rootChromePanelColor(colorScheme, RootChromeTone.SOFT)
}

fun rootChromePillContentColor(
    colorScheme: ColorScheme,
    selected: Boolean
): Color = if (selected) colorScheme.primary else colorScheme.onSurface

fun rootChromePillBorder(
    colorScheme: ColorScheme,
    selected: Boolean
): BorderStroke = BorderStroke(
    width = 1.dp,
    color = if (selected) {
        colorScheme.primary.copy(alpha = if (isLightChrome(colorScheme)) 0.28f else 0.38f)
    } else {
        rootChromeBorderColor(colorScheme)
    }
)

fun rootChromeBackdropStrength(value: Float): Float = (value * 1.2f).coerceIn(0f, 1f)

fun rootChromeBackdropVeil(value: Float): Float = (value * 1.2f).coerceIn(0f, 1f)

@OptIn(ExperimentalLayoutApi::class)
@Composable
fun rootChromeStableTopBarInsets(): WindowInsets =
    WindowInsets.statusBarsIgnoringVisibility.only(WindowInsetsSides.Top)

@OptIn(ExperimentalLayoutApi::class)
@Composable
fun RootChromeTopBarHost(
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit
) {
    Box(
        modifier = modifier
            .windowInsetsPadding(rootChromeStableTopBarInsets())
            .offset(y = RootChromeTopBarLift)
    ) {
        content()
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun rootChromeTopBarColors(): TopAppBarColors {
    val colorScheme = MaterialTheme.colorScheme
    return TopAppBarDefaults.topAppBarColors(
        containerColor = rootChromePanelColor(colorScheme, RootChromeTone.SOFT).copy(alpha = 0.96f),
        scrolledContainerColor = rootChromePanelColor(colorScheme, RootChromeTone.NEUTRAL).copy(alpha = 0.99f),
        navigationIconContentColor = colorScheme.onSurface,
        titleContentColor = colorScheme.onSurface,
        actionIconContentColor = colorScheme.onSurface
    )
}

@Composable
fun rootChromeTextFieldColors(): TextFieldColors {
    val colorScheme = MaterialTheme.colorScheme
    val containerColor = rootChromePanelColor(colorScheme, RootChromeTone.SOFT)
    val borderColor = rootChromeBorderColor(colorScheme)
    return OutlinedTextFieldDefaults.colors(
        focusedContainerColor = containerColor,
        unfocusedContainerColor = containerColor,
        disabledContainerColor = containerColor.copy(alpha = 0.78f),
        focusedBorderColor = colorScheme.primary.copy(alpha = 0.42f),
        unfocusedBorderColor = borderColor,
        disabledBorderColor = borderColor.copy(alpha = 0.55f),
        focusedLabelColor = colorScheme.primary,
        focusedLeadingIconColor = colorScheme.primary,
        unfocusedLeadingIconColor = colorScheme.onSurfaceVariant,
        cursorColor = colorScheme.primary,
        unfocusedPlaceholderColor = colorScheme.onSurfaceVariant.copy(alpha = 0.8f),
        focusedPlaceholderColor = colorScheme.onSurfaceVariant.copy(alpha = 0.72f)
    )
}
