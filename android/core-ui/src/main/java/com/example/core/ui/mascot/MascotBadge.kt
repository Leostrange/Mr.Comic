package com.example.core.ui.mascot

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp

@Composable
fun MascotBadge(
    modifier: Modifier = Modifier,
    compact: Boolean = false,
    label: String? = null
) {
    val showLabel = !compact && !label.isNullOrBlank()
    val containerColor = if (showLabel) {
        MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.68f)
    } else {
        MaterialTheme.colorScheme.primary.copy(alpha = 0.12f)
    }
    val iconTint = MaterialTheme.colorScheme.primary
    val labelColor = MaterialTheme.colorScheme.onPrimaryContainer

    Surface(
        modifier = modifier,
        shape = if (showLabel) RoundedCornerShape(999.dp) else CircleShape,
        color = containerColor
    ) {
        if (showLabel) {
            Row(
                modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Surface(
                    shape = CircleShape,
                    color = MaterialTheme.colorScheme.surface.copy(alpha = 0.9f)
                ) {
                    androidx.compose.material3.Icon(
                        Icons.Default.BookmarkBorder,
                        contentDescription = null,
                        tint = iconTint,
                        modifier = Modifier.padding(6.dp).size(16.dp)
                    )
                }
                Text(
                    text = label,
                    style = MaterialTheme.typography.labelLarge,
                    fontWeight = FontWeight.SemiBold,
                    color = labelColor
                )
            }
        } else {
            androidx.compose.material3.Icon(
                Icons.Default.BookmarkBorder,
                contentDescription = null,
                tint = iconTint,
                modifier = Modifier.padding(6.dp).size(16.dp)
            )
        }
    }
}
