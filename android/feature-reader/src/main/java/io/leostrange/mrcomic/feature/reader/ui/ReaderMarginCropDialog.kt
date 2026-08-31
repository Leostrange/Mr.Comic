package io.leostrange.mrcomic.feature.reader.ui

import android.graphics.Bitmap
import android.content.res.Configuration
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Crop
import androidx.compose.material.icons.filled.VisibilityOff
import androidx.compose.material3.Button
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.SwitchDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.feature.reader.domain.crop.MarginCropAutoDetector
import io.leostrange.mrcomic.feature.reader.domain.crop.ReaderMarginCrop
import io.leostrange.mrcomic.feature.reader.domain.crop.ReaderMarginCropSide
import io.leostrange.mrcomic.feature.reader.domain.crop.ReaderMarginCropSides
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * Minimal margin-crop dialog ("Обрезка пустых полей").
 *
 * Opens over the reader with chrome hidden; every change is applied to the
 * page live through [ReaderSettingsController] and persisted to DataStore.
 */
@Composable
internal fun ReaderMarginCropDialog(
    uiState: ReaderUiState,
    viewModel: ReaderViewModel,
    onDismiss: () -> Unit
) {
    val strings = LocalStrings.current
    val language = strings.languageCode
    val controller = viewModel.settingsController
    val scope = rememberCoroutineScope()
    var autoRunning by remember { mutableStateOf(false) }
    val isLandscape = LocalConfiguration.current.orientation == Configuration.ORIENTATION_LANDSCAPE
    val layout = readerMarginCropLayout(isLandscape)

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false)
    ) {
        val maxHeightDp = (LocalConfiguration.current.screenHeightDp * 0.82f).dp
        val scrollState = rememberScrollState()

        Surface(
            modifier = Modifier
                .padding(horizontal = 20.dp, vertical = 12.dp)
                .fillMaxWidth(layout.widthFraction)
                .widthIn(max = if (isLandscape) 720.dp else 400.dp)
                .heightIn(max = maxHeightDp),
            shape = RoundedCornerShape(28.dp),
            color = MaterialTheme.colorScheme.surface.copy(alpha = 0.94f),
            tonalElevation = 3.dp
        ) {
            Column(
                modifier = Modifier
                    .verticalScroll(scrollState)
                    .padding(horizontal = 18.dp, vertical = layout.verticalPaddingDp.dp)
            ) {
                // ── Header ────────────────────────────────────────────────
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Box(
                        modifier = Modifier
                            .size(34.dp)
                            .background(
                                MaterialTheme.colorScheme.primaryContainer,
                                CircleShape
                            ),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = Icons.Default.Crop,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.onPrimaryContainer,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                    Spacer(Modifier.width(12.dp))
                    Text(
                        text = readerMarginCropDialogTitle(language),
                        style = MaterialTheme.typography.titleMedium,
                        modifier = Modifier.weight(1f)
                    )
                    IconButton(onClick = onDismiss) {
                        Icon(
                            imageVector = Icons.Default.Close,
                            contentDescription = strings.back,
                            tint = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                Spacer(Modifier.height(4.dp))

                // ── Enable ────────────────────────────────────────────────
                SwitchRow(
                    title = readerMarginCropEnable(language),
                    checked = uiState.marginCropEnabled,
                    onCheckedChange = controller::setMarginCropEnabled
                )

                // ── Presets ───────────────────────────────────────────────
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(top = 4.dp, bottom = 8.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    val preset = ReaderMarginCrop.coerceSide(0.05f)
                    PresetChip(
                        selected = autoRunning,
                        label = if (autoRunning) readerMarginCropAutoRunning(language)
                        else readerMarginCropPresetAuto(language),
                        onClick = {
                            if (autoRunning) return@PresetChip
                            val bitmap = viewModel.pageLoader.getPage(uiState.currentPage)
                            if (bitmap == null) {
                                controller.applyMarginCropSides(preset, preset, preset, preset)
                            } else {
                                autoRunning = true
                                scope.launch {
                                    val sides = withContext(Dispatchers.Default) {
                                        scanBitmapMargins(bitmap)
                                    }
                                    autoRunning = false
                                    if (sides != null) {
                                        controller.applyMarginCropSides(
                                            sides.left, sides.top, sides.right, sides.bottom
                                        )
                                    }
                                }
                            }
                        }
                    )
                    listOf(0.05f, 0.10f, 0.15f).forEach { value ->
                        PresetChip(
                            selected = sidesEqualPreset(uiState, value),
                            label = "${(value * 100).toInt()}%",
                            onClick = {
                                controller.applyMarginCropSides(value, value, value, value)
                            }
                        )
                    }
                }

                // ── Sides ─────────────────────────────────────────────────
                val sides = listOf(
                    Triple(readerMarginCropSideTop(language), uiState.marginCropTop, ReaderMarginCropSide.TOP),
                    Triple(readerMarginCropSideBottom(language), uiState.marginCropBottom, ReaderMarginCropSide.BOTTOM),
                    Triple(readerMarginCropSideLeft(language), uiState.marginCropLeft, ReaderMarginCropSide.LEFT),
                    Triple(readerMarginCropSideRight(language), uiState.marginCropRight, ReaderMarginCropSide.RIGHT),
                )
                if (layout.sideColumns == 2) {
                    Row(
                        modifier = Modifier.alpha(if (uiState.marginCropEnabled) 1f else DisabledAlpha),
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        listOf(sides.take(2), sides.drop(2)).forEach { columnSides ->
                            Column(modifier = Modifier.weight(1f)) {
                                columnSides.forEach { (title, value, side) ->
                                    MarginCropSideRow(title, value, { controller.setMarginCropSide(side.storedValue, it) })
                                }
                            }
                        }
                    }
                } else {
                    Column(modifier = Modifier.alpha(if (uiState.marginCropEnabled) 1f else DisabledAlpha)) {
                        sides.forEach { (title, value, side) ->
                            MarginCropSideRow(title, value, { controller.setMarginCropSide(side.storedValue, it) })
                        }
                    }
                }

                // ── Options ───────────────────────────────────────────────
                if (isLandscape) {
                    Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                        Box(Modifier.weight(1f)) {
                            SwitchRow(readerMarginCropSymmetric(language), uiState.marginCropSymmetric, controller::setMarginCropSymmetric)
                        }
                        Box(Modifier.weight(1f)) {
                            SwitchRow(readerMarginCropShowWarning(language), uiState.marginCropShowWarning, controller::setMarginCropShowWarning)
                        }
                    }
                } else {
                    SwitchRow(readerMarginCropSymmetric(language), uiState.marginCropSymmetric, controller::setMarginCropSymmetric)
                    SwitchRow(readerMarginCropShowWarning(language), uiState.marginCropShowWarning, controller::setMarginCropShowWarning)
                }

                AnimatedVisibility(visible = uiState.marginCropEnabled && uiState.marginCropShowWarning) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(top = 6.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(
                            imageVector = Icons.Default.VisibilityOff,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.tertiary,
                            modifier = Modifier.size(16.dp)
                        )
                        Text(
                            text = readerMarginCropWarningText(language),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                Spacer(Modifier.height(6.dp))

                // ── Footer ────────────────────────────────────────────────
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    TextButton(onClick = {
                        controller.setMarginCropEnabled(false)
                        controller.applyMarginCropSides(0f, 0f, 0f, 0f)
                    }) {
                        Text(readerMarginCropReset(language))
                    }
                    Spacer(Modifier.weight(1f))
                    Button(onClick = onDismiss) {
                        Text(readerMarginCropDone(language))
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun PresetChip(
    selected: Boolean,
    label: String,
    onClick: () -> Unit
) {
    FilterChip(
        selected = selected,
        onClick = onClick,
        shape = RoundedCornerShape(999.dp),
        colors = FilterChipDefaults.filterChipColors(
            containerColor = MaterialTheme.colorScheme.surfaceContainerHigh,
            selectedContainerColor = MaterialTheme.colorScheme.primaryContainer,
            labelColor = MaterialTheme.colorScheme.onSurface,
            selectedLabelColor = MaterialTheme.colorScheme.onPrimaryContainer
        ),
        label = { Text(label, style = MaterialTheme.typography.labelMedium) }
    )
}

@Composable
private fun SwitchRow(
    title: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 2.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = title,
            style = MaterialTheme.typography.bodyMedium,
            modifier = Modifier.weight(1f)
        )
        Switch(
            checked = checked,
            onCheckedChange = onCheckedChange,
            colors = SwitchDefaults.colors(
                checkedTrackColor = MaterialTheme.colorScheme.primary
            )
        )
    }
}

@Composable
private fun MarginCropSideRow(
    title: String,
    value: Float,
    onValueChange: (Float) -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(min = 40.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = title,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.width(76.dp)
        )
        Text(
            text = "${(value * 100).toInt()}%",
            style = MaterialTheme.typography.labelLarge,
            color = MaterialTheme.colorScheme.primary,
            modifier = Modifier.width(44.dp)
        )
        Slider(
            value = value.coerceIn(0f, ReaderMarginCrop.MAX_SIDE_FRACTION),
            onValueChange = onValueChange,
            valueRange = 0f..ReaderMarginCrop.MAX_SIDE_FRACTION,
            steps = SideSteps,
            modifier = Modifier
                .weight(1f)
                .padding(end = 8.dp)
        )
    }
}

private fun sidesEqualPreset(uiState: ReaderUiState, value: Float): Boolean =
    uiState.marginCropLeft == value &&
        uiState.marginCropTop == value &&
        uiState.marginCropRight == value &&
        uiState.marginCropBottom == value

/**
 * Android Bitmap → luminance grid adapter for [MarginCropAutoDetector].
 * Downsampling keeps the scan in the sub-millisecond range.
 */
private fun scanBitmapMargins(source: Bitmap): ReaderMarginCropSides? {
    if (source.isRecycled || source.width < 8 || source.height < 8) return null
    val gridWidth = SCAN_GRID_WIDTH
    val gridHeight = (gridWidth.toLong() * source.height / source.width)
        .toInt()
        .coerceIn(MIN_GRID_HEIGHT, MAX_GRID_HEIGHT)
    val scaled = Bitmap.createScaledBitmap(source, gridWidth, gridHeight, true)
    val pixels = IntArray(gridWidth * gridHeight)
    scaled.getPixels(pixels, 0, gridWidth, 0, 0, gridWidth, gridHeight)
    if (scaled !== source) scaled.recycle()
    return MarginCropAutoDetector.detect(gridWidth, gridHeight) { x, y ->
        val pixel = pixels[y * gridWidth + x]
        ((pixel shr 16 and 0xFF) * 299 + (pixel shr 8 and 0xFF) * 587 + (pixel and 0xFF) * 114) / 1000
    }
}

/** 0..0.22 in 1% steps → 22 intervals between endpoints. */
private const val SideSteps = 21
private const val DisabledAlpha = 0.45f
private const val SCAN_GRID_WIDTH = 96
private const val MIN_GRID_HEIGHT = 24
private const val MAX_GRID_HEIGHT = 220
