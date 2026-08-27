package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.BorderStroke
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Pause
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Slider
import androidx.compose.material3.SliderDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCornerScale
import io.leostrange.mrcomic.core.ui.designsystem.MrComicType
import kotlin.math.roundToInt

/**
 * A single numeric speed scale shared by PAGE and WEBTOON.
 *
 * The numerical value is persisted per [ReadingMode] by ReaderAutoScrollSettingsController.
 * It is deliberately not an interval: [pageTurnIntervalMillis] maps it to PAGE timing,
 * while [webtoonPixelsPerSecond] maps the same value to raster WEBTOON pixel speed.
 */
internal object ReaderAutoScrollPrecision {
    const val MIN_SPEED = 15f
    const val MAX_SPEED = 240f
    const val DEFAULT_SPEED = 30f

    fun normalize(speed: Float): Float = speed
        .coerceIn(MIN_SPEED, MAX_SPEED)
        .roundToInt()
        .toFloat()

    /** 30 -> 12 s, 80 -> 7 s, 180 -> 3.5 s. The function is continuous between anchors. */
    fun pageTurnIntervalMillis(speed: Float): Long {
        val value = normalize(speed)
        val millis = when {
            value <= 30f -> lerp(15_000f, 12_000f, value / 30f)
            value <= 80f -> lerp(12_000f, 7_000f, (value - 30f) / 50f)
            value <= 180f -> lerp(7_000f, 3_500f, (value - 80f) / 100f)
            else -> lerp(3_500f, 2_500f, (value - 180f) / 60f)
        }
        return millis.roundToInt().toLong().coerceAtLeast(1_500L)
    }

    /** 30 -> 45 px/s, 80 -> 110 px/s, 180 -> 220 px/s. */
    fun webtoonPixelsPerSecond(speed: Float): Float {
        val value = normalize(speed)
        return when {
            value <= 30f -> lerp(24f, 45f, value / 30f)
            value <= 80f -> lerp(45f, 110f, (value - 30f) / 50f)
            value <= 180f -> lerp(110f, 220f, (value - 80f) / 100f)
            else -> lerp(220f, 280f, (value - 180f) / 60f)
        }
    }

    fun valueLabel(speed: Float, mode: ReadingMode): String = when (mode) {
        ReadingMode.WEBTOON -> "${webtoonPixelsPerSecond(speed).roundToInt()} пикс./с"
        else -> {
            val seconds = pageTurnIntervalMillis(speed) / 1_000f
            "${"%.1f".format(java.util.Locale.getDefault(), seconds)} с/стр."
        }
    }

    private fun lerp(start: Float, end: Float, fraction: Float): Float =
        start + (end - start) * fraction.coerceIn(0f, 1f)
}

/**
 * Compact control for ReaderChrome. The caller writes only the final value to DataStore in
 * [onSpeedCommit]; drag previews are kept in ReaderUiState, so DataStore is not rewritten per pixel.
 */
@Composable
internal fun ReaderAutoScrollChromeControls(
    speed: Float,
    readingMode: ReadingMode,
    autoScrollEnabled: Boolean,
    isTemporarilyPaused: Boolean,
    countdownProgress: Float,
    onToggleAutoScroll: () -> Unit,
    onSpeedPreview: (Float) -> Unit,
    onSpeedCommit: (Float) -> Unit,
    modifier: Modifier = Modifier,
) {
    var draftSpeed by remember(speed) {
        mutableFloatStateOf(ReaderAutoScrollPrecision.normalize(speed))
    }
    val normalizedProgress = countdownProgress.coerceIn(0f, 1f)
    val canCountDown = autoScrollEnabled && !isTemporarilyPaused && readingMode != ReadingMode.WEBTOON
    val buttonDescription = if (autoScrollEnabled) {
        "Остановить автопрокрутку"
    } else {
        "Запустить автопрокрутку"
    }

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 12.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp),
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            IconButton(
                onClick = onToggleAutoScroll,
                modifier = Modifier.semantics { contentDescription = buttonDescription },
            ) {
                Icon(
                    imageVector = if (autoScrollEnabled) Icons.Filled.Pause else Icons.Filled.PlayArrow,
                    contentDescription = null,
                    tint = if (autoScrollEnabled) {
                        MaterialTheme.colorScheme.primary
                    } else {
                        MaterialTheme.colorScheme.onSurfaceVariant
                    },
                )
            }

            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = "Автопрокрутка",
                    style = MrComicType.h3,
                )
                Text(
                    text = when {
                        isTemporarilyPaused -> "Временно приостановлена"
                        autoScrollEnabled && readingMode == ReadingMode.WEBTOON -> "Плавная прокрутка ленты"
                        autoScrollEnabled -> "Автопереход по страницам"
                        else -> "Выключена"
                    },
                    style = MrComicType.bodySm,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }

            Spacer(Modifier.width(8.dp))
            Text(
                text = ReaderAutoScrollPrecision.valueLabel(draftSpeed, readingMode),
                style = MrComicType.meta,
                color = MaterialTheme.colorScheme.primary,
            )
        }

        Text(
            text = if (readingMode == ReadingMode.WEBTOON) {
                "Скорость плавной ленты"
            } else {
                "Задержка между страницами"
            },
            style = MrComicType.meta,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
        ) {
            listOf(30f, 80f, 180f).forEach { preset ->
                val selected = ReaderAutoScrollPrecision.normalize(draftSpeed) == preset
                OutlinedButton(
                    onClick = {
                        val normalized = ReaderAutoScrollPrecision.normalize(preset)
                        draftSpeed = normalized
                        onSpeedPreview(normalized)
                        onSpeedCommit(normalized)
                    },
                    modifier = Modifier.weight(1f),
                    shape = RoundedCornerShape(MrComicCornerScale.md),
                    border = BorderStroke(
                        width = if (selected) 2.dp else 1.dp,
                        color = if (selected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.outline,
                    ),
                    colors = ButtonDefaults.outlinedButtonColors(
                        containerColor = if (selected) MaterialTheme.colorScheme.primaryContainer
                        else MaterialTheme.colorScheme.surfaceContainerLow,
                        contentColor = if (selected) MaterialTheme.colorScheme.onPrimaryContainer
                        else MaterialTheme.colorScheme.onSurface,
                    ),
                    contentPadding = PaddingValues(horizontal = 8.dp, vertical = 8.dp),
                ) {
                    Text(
                        text = when (preset) {
                            30f -> "Медленно"
                            80f -> "Обычно"
                            else -> "Быстро"
                        },
                        style = MrComicType.button,
                        maxLines = 1,
                    )
                }
            }
        }

        Slider(
            value = draftSpeed,
            onValueChange = { rawSpeed ->
                draftSpeed = ReaderAutoScrollPrecision.normalize(rawSpeed)
                onSpeedPreview(draftSpeed)
            },
            onValueChangeFinished = { onSpeedCommit(draftSpeed) },
            valueRange = ReaderAutoScrollPrecision.MIN_SPEED..ReaderAutoScrollPrecision.MAX_SPEED,
            steps = (ReaderAutoScrollPrecision.MAX_SPEED - ReaderAutoScrollPrecision.MIN_SPEED).roundToInt() - 1,
            modifier = Modifier
                .fillMaxWidth()
                .semantics {
                    contentDescription = "Точная скорость автопрокрутки: ${ReaderAutoScrollPrecision.valueLabel(draftSpeed, readingMode)}"
                },
            colors = SliderDefaults.colors(
                thumbColor = MaterialTheme.colorScheme.primary,
                activeTrackColor = MaterialTheme.colorScheme.primary,
                inactiveTrackColor = MaterialTheme.colorScheme.outlineVariant,
            ),
        )

        if (readingMode != ReadingMode.WEBTOON) {
            LinearProgressIndicator(
                progress = { if (canCountDown) normalizedProgress else 0f },
                modifier = Modifier
                    .fillMaxWidth()
                    .semantics {
                        contentDescription = if (canCountDown) {
                            "До следующей страницы: ${(normalizedProgress * 100).roundToInt()} процентов"
                        } else {
                            "Отсчёт до следующей страницы остановлен"
                        }
                    },
                color = MaterialTheme.colorScheme.primary,
                trackColor = MaterialTheme.colorScheme.outlineVariant,
            )
            Text(
                text = when {
                    isTemporarilyPaused -> "Отсчёт продолжится после завершения действия"
                    autoScrollEnabled -> "Перелистывание: ${(normalizedProgress * 100).roundToInt()}%"
                    else -> "Отсчёт не запущен"
                },
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
        }
    }
}
