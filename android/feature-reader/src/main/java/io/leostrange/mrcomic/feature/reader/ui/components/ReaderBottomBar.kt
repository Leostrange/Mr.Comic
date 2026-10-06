package io.leostrange.mrcomic.feature.reader.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.height
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.SliderColors
import androidx.compose.material3.SliderDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.feature.reader.ui.ReaderPanelChip

@Composable
internal fun ReaderBottomBar(
    currentPage: Int,
    totalPages: Int,
    readingMode: ReadingMode,
    isLandscape: Boolean,
    progressDisplay: ReaderProgressDisplay,
    bookProgress: Float,
    isTextBook: Boolean = false,
    chapterTitle: String? = null,
    onReadingModeChange: (ReadingMode) -> Unit,
    onPageChange: (Int) -> Unit,
    onSeekProgress: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val compactImageLayout = isLandscape && !isTextBook
    // Text books seek by canonical book progress; the value is held locally while dragging so
    // the document moves once, on release, instead of on every drag delta.
    var dragProgress by remember { mutableStateOf<Float?>(null) }
    val shownPercent = dragProgress?.let(::readerProgressPercent) ?: progressDisplay.percent

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(
                start = 16.dp,
                end = 16.dp,
                top = if (compactImageLayout) 10.dp else 16.dp,
                bottom = if (compactImageLayout) 10.dp else 16.dp
            ),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        if (compactImageLayout) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = strings.readingModeDual,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    style = MaterialTheme.typography.labelMedium
                )
                Text(
                    text = progressDisplay.pageLabel.orEmpty(),
                    color = MaterialTheme.colorScheme.onSurface,
                    style = MaterialTheme.typography.labelMedium
                )
            }
            Spacer(Modifier.height(8.dp))
        } else {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.CenterHorizontally)
            ) {
                if (isLandscape && !isTextBook) {
                    ReaderPanelChip(
                        selected = true,
                        onClick = {},
                        label = { Text(strings.readingModeDual) }
                    )
                } else {
                    ReaderPanelChip(
                        selected = readingMode == ReadingMode.PAGE_LTR || readingMode == ReadingMode.PAGE_RTL,
                        onClick = { onReadingModeChange(ReadingMode.PAGE_LTR) },
                        label = { Text(strings.readerPages) }
                    )
                    ReaderPanelChip(
                        selected = readingMode == ReadingMode.WEBTOON,
                        onClick = { onReadingModeChange(ReadingMode.WEBTOON) },
                        label = { Text(strings.readingModeWebtoon) }
                    )
                }
            }

            Spacer(Modifier.height(12.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.Center,
                verticalAlignment = Alignment.CenterVertically
            ) {
                chapterTitle?.takeIf { it.isNotBlank() }?.let { title ->
                    Text(
                        text = title,
                        color = MaterialTheme.colorScheme.onSurface,
                        style = MaterialTheme.typography.labelMedium,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.weight(1f, fill = false)
                    )
                }
                progressDisplay.pageLabel?.let { pageLabel ->
                    Text(
                        text = if (chapterTitle.isNullOrBlank()) pageLabel else "  ·  $pageLabel",
                        color = MaterialTheme.colorScheme.onSurface,
                        style = MaterialTheme.typography.labelMedium,
                        maxLines = 1
                    )
                }
            }
            if (isTextBook) {
                Spacer(Modifier.height(2.dp))
                Text(
                    text = "$shownPercent%",
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    style = MaterialTheme.typography.labelSmall
                )
            }
            Spacer(Modifier.height(8.dp))
        }

        if (isTextBook) {
            Slider(
                value = dragProgress ?: bookProgress.coerceIn(0f, 1f),
                onValueChange = { dragProgress = it },
                onValueChangeFinished = {
                    dragProgress?.let(onSeekProgress)
                    dragProgress = null
                },
                valueRange = 0f..1f,
                modifier = Modifier.fillMaxWidth(),
                colors = readerSliderColors()
            )
        } else if (totalPages > 1) {
            Slider(
                value = currentPage.toFloat(),
                onValueChange = { onPageChange(it.toInt()) },
                valueRange = 0f..(totalPages - 1).toFloat(),
                steps = (totalPages - 2).coerceAtLeast(0),
                modifier = Modifier.fillMaxWidth(),
                colors = readerSliderColors()
            )
        }
    }
}

@Composable
private fun readerSliderColors(): SliderColors = SliderDefaults.colors(
    thumbColor = MaterialTheme.colorScheme.primary,
    activeTrackColor = MaterialTheme.colorScheme.primary,
    inactiveTrackColor = MaterialTheme.colorScheme.outlineVariant,
    activeTickColor = MaterialTheme.colorScheme.onPrimary,
    inactiveTickColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.36f)
)
