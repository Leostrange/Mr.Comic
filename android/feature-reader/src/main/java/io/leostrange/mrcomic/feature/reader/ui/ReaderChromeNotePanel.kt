package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.Notes
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.Hyphens
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import io.leostrange.mrcomic.core.ui.locale.LocalStrings

@Composable
fun SavedPageNoteCard(
    note: String,
    modifier: Modifier = Modifier
) {
    val readerText = readerUiText(LocalStrings.current.languageCode)
    Surface(
        modifier = modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surface,
        shape = RoundedCornerShape(20.dp)
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.Top
        ) {
            Icon(
                Icons.AutoMirrored.Filled.Notes,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.secondary,
                modifier = Modifier.size(18.dp)
            )
            Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                Text(
                    readerText.savedNote,
                    color = MaterialTheme.colorScheme.onSurface,
                    style = MaterialTheme.typography.labelMedium
                )
                Text(
                    note,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    style = MaterialTheme.typography.bodySmall,
                    maxLines = 3,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

internal fun readerNotePanelMaxHeightDp(
    screenHeightDp: Int,
    expanded: Boolean
): Dp = ReaderNotePanelHeightPolicy.maxContentHeightDp(
    screenHeightDp = screenHeightDp,
    topInsetDp = 0,
    bottomInsetDp = 0,
    chromeReservedDp = 0,
    expanded = expanded
).dp

@Composable
fun ReaderNotePanel(
    text: String,
    colorScheme: String,
    expanded: Boolean,
    onDismiss: () -> Unit,
    onExpand: () -> Unit,
    onCollapse: () -> Unit,
    chromeReservedDp: Int,
    modifier: Modifier = Modifier,
    palette: (String) -> Pair<String, String>
) {
    val readerText = readerUiText(LocalStrings.current.languageCode)
    val configuration = LocalConfiguration.current
    val density = LocalDensity.current
    val fgColor = MaterialTheme.colorScheme.onSurface
    val accentColor = MaterialTheme.colorScheme.primary
    val panelColor = MaterialTheme.colorScheme.surface.copy(alpha = 1f)
    val maxPanelHeight = ReaderNotePanelHeightPolicy.maxContentHeightDp(
        screenHeightDp = configuration.screenHeightDp,
        topInsetDp = with(density) { WindowInsets.statusBars.getTop(this).toDp().value.toInt() },
        bottomInsetDp = with(density) { WindowInsets.navigationBars.getBottom(this).toDp().value.toInt() },
        chromeReservedDp = chromeReservedDp,
        expanded = expanded
    ).dp

    Surface(
        modifier = modifier.fillMaxWidth(),
        color = panelColor,
        shape = RoundedCornerShape(topStart = 18.dp, topEnd = 18.dp),
        shadowElevation = 8.dp
    ) {
        Column(modifier = Modifier.padding(horizontal = 16.dp, vertical = 12.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = if (expanded) readerText.noteTitle else readerText.noteCompactTitle,
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.Bold,
                    color = accentColor
                )
                Row {
                    if (expanded) {
                        IconButton(onClick = onCollapse, modifier = Modifier.size(24.dp)) {
                            Icon(Icons.Default.KeyboardArrowDown, contentDescription = readerText.collapse, tint = fgColor)
                        }
                    } else {
                        IconButton(onClick = onExpand, modifier = Modifier.size(24.dp)) {
                            Icon(Icons.Default.KeyboardArrowUp, contentDescription = readerText.expand, tint = fgColor)
                        }
                    }
                    IconButton(onClick = onDismiss, modifier = Modifier.size(24.dp)) {
                        Icon(Icons.Default.Close, contentDescription = readerText.close, tint = fgColor, modifier = Modifier.size(18.dp))
                    }
                }
            }
            Spacer(Modifier.size(4.dp))
            val scrollState = rememberScrollState()
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = maxPanelHeight)
                    .verticalScroll(scrollState)
            ) {
                Text(
                    text = text,
                    style = MaterialTheme.typography.bodyMedium.copy(hyphens = Hyphens.None),
                    color = fgColor,
                    lineHeight = 20.sp
                )
            }
        }
    }
}
