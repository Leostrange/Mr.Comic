package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import java.util.Locale

@Composable
fun MrComicShelfPreview(
    title: String,
    modifier: Modifier = Modifier,
    accentColor: Color = MrComicLibraryColorTokens.oakTop,
    backgroundColor: Color = MaterialTheme.colorScheme.surfaceContainerHigh,
    label: String? = null,
    selected: Boolean = false
) {
    val books = listOf(MaterialTheme.colorScheme.primary, MaterialTheme.colorScheme.secondary, MaterialTheme.colorScheme.tertiary, accentColor, MaterialTheme.colorScheme.surface)
    MrComicCardSurface(
        modifier = modifier,
        fillMaxWidth = false,
        selected = selected,
        shape = RoundedCornerShape(MrComicRadiusTokens.lg),
        containerColor = backgroundColor,
        border = androidx.compose.foundation.BorderStroke(1.dp, MaterialTheme.colorScheme.outlineVariant.copy(alpha = if (selected) 0.7f else 0.28f))
    ) {
        Column(modifier = Modifier.width(156.dp).padding(horizontal = 14.dp, vertical = 12.dp), verticalArrangement = Arrangement.spacedBy(10.dp)) {
            Row(modifier = Modifier.fillMaxWidth().height(58.dp), horizontalArrangement = Arrangement.spacedBy(4.dp, Alignment.CenterHorizontally), verticalAlignment = Alignment.Bottom) {
                books.forEachIndexed { index, color ->
                    Box(modifier = Modifier.width(14.dp).height((36 + (index % 3) * 6).dp).clip(RoundedCornerShape(topStart = 3.dp, topEnd = 3.dp)).background(Brush.verticalGradient(colors = listOf(color.copy(alpha = 0.92f), color.copy(alpha = 0.58f)))))
                }
            }
            Box(modifier = Modifier.fillMaxWidth().height(10.dp).clip(RoundedCornerShape(2.dp)).background(Brush.verticalGradient(listOf(accentColor.copy(alpha = 0.95f), accentColor.copy(alpha = 0.62f)))))
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
                Text(text = title.uppercase(Locale.getDefault()), style = MaterialTheme.typography.labelSmall.copy(fontWeight = FontWeight.Bold, letterSpacing = 0.8.sp), maxLines = 1, overflow = TextOverflow.Ellipsis)
                if (!label.isNullOrBlank()) Text(text = label, style = MaterialTheme.typography.labelSmall.copy(fontSize = MrComicTypographyTokens.badge), color = MaterialTheme.colorScheme.onSurfaceVariant, maxLines = 1)
            }
        }
    }
}

@Composable
fun MrComicLibraryPresetCard(
    title: String,
    subtitle: String,
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    accentColor: Color = MaterialTheme.colorScheme.primary,
    previewContent: @Composable ColumnScope.() -> Unit = {}
) {
    MrComicCard(
        modifier = modifier,
        fillMaxWidth = false,
        selected = selected,
        containerColor = if (selected) MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.72f) else MaterialTheme.colorScheme.surface,
        border = androidx.compose.foundation.BorderStroke(1.dp, if (selected) accentColor.copy(alpha = 0.46f) else MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.32f)),
        contentPadding = PaddingValues(MrComicSpacingTokens.x3),
        verticalSpacing = MrComicSpacingTokens.x2
    ) {
        Column(modifier = Modifier.fillMaxWidth().clickable(onClick = onClick), verticalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x2)) {
            previewContent()
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x2), verticalAlignment = Alignment.CenterVertically) {
                Box(modifier = Modifier.size(8.dp).clip(RoundedCornerShape(MrComicRadiusTokens.pill)).background(accentColor))
                Column(modifier = Modifier.weight(1f)) {
                    Text(text = title, style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.SemiBold, maxLines = 1, overflow = TextOverflow.Ellipsis)
                    if (subtitle.isNotBlank()) Text(text = subtitle, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant, maxLines = 2, overflow = TextOverflow.Ellipsis)
                }
            }
        }
    }
}
