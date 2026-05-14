package com.example.feature.reader.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.core.model.ReadingMode
import com.example.core.ui.designsystem.MrComicSlider
import com.example.core.ui.locale.LocalStrings
import com.example.feature.reader.ui.ReaderPanelChip

@Composable
fun ReaderBottomBar(
    currentPage: Int,
    totalPages: Int,
    readingMode: ReadingMode,
    isLandscape: Boolean,
    isTextBook: Boolean = false,
    onReadingModeChange: (ReadingMode) -> Unit,
    onPageChange: (Int) -> Unit,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val compactImageLayout = isLandscape && !isTextBook
    val showPageCountText = compactImageLayout || !isTextBook

    Column(
        modifier = modifier
            .fillMaxWidth()
            .heightIn(min = if (isTextBook) 104.dp else 88.dp)
            .padding(
                start = 16.dp,
                end = 16.dp,
                top = if (compactImageLayout) 10.dp else 16.dp,
                bottom = if (compactImageLayout) 12.dp else 24.dp
            ),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        if (compactImageLayout) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                ReaderPanelChip(
                    selected = true,
                    onClick = {},
                    label = { Text(strings.readingModeDual) }
                )
                Text(
                    text = "${currentPage + 1} / $totalPages",
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

            Spacer(Modifier.height(12.dp))
            if (showPageCountText) {
                Text(
                    text = "${currentPage + 1} / $totalPages",
                    color = MaterialTheme.colorScheme.onSurface,
                    style = MaterialTheme.typography.labelMedium
                )
                Spacer(Modifier.height(8.dp))
            } else {
                Spacer(Modifier.height(4.dp))
            }
        }

        if (totalPages > 1) {
            MrComicSlider(
                value = currentPage.toFloat(),
                onValueChange = { onPageChange(it.toInt()) },
                valueRange = 0f..(totalPages - 1).toFloat(),
                steps = (totalPages - 2).coerceAtLeast(0),
                modifier = Modifier.fillMaxWidth()
            )
        }
    }
}
