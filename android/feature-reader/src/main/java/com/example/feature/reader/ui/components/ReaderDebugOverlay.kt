package com.example.feature.reader.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.example.feature.reader.ui.ReaderDiagnostics
import com.example.feature.reader.ui.ReadingMode
import kotlin.math.roundToInt

@Composable
fun ReaderDebugOverlay(
    isVisible: Boolean,
    diagnostics: ReaderDiagnostics,
    currentPage: Int,
    totalPages: Int,
    modifier: Modifier = Modifier
) {
    if (!isVisible) return

    Card(
        modifier = modifier,
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.92f),
            contentColor = MaterialTheme.colorScheme.onSurface
        )
    ) {
        Column(
            modifier = Modifier
                .padding(horizontal = 12.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Text(
                text = "Reader Diagnostics",
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.Bold
            )

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(
                    text = "Page",
                    style = MaterialTheme.typography.bodySmall
                )
                Text(
                    text = "${currentPage.coerceAtLeast(0)}/$totalPages (${diagnostics.readingMode.name.lowercase()})",
                    style = MaterialTheme.typography.bodySmall
                )
            }

            if (diagnostics.renderWidth > 0 && diagnostics.renderHeight > 0) {
                InfoRow(
                    label = "Resolution",
                    value = "${diagnostics.renderWidth} x ${diagnostics.renderHeight}"
                )
            }

            if (diagnostics.renderTimeMs > 0) {
                val fpsApprox = (1000f / diagnostics.renderTimeMs).coerceAtMost(240f)
                InfoRow(
                    label = "Render",
                    value = "${diagnostics.renderTimeMs}ms (~${fpsApprox.roundToInt()} fps)"
                )
            }

            InfoRow(
                label = "Quality",
                value = "${diagnostics.imageQuality} • ${diagnostics.imageDpi}dpi"
            )

            diagnostics.preloadStats?.let { stats ->
                InfoRow(
                    label = "Preloader",
                    value = "jobs=${stats.activePreloadJobs}, reader=${stats.currentReader ?: "-"}"
                )
            }

            diagnostics.cacheStats?.let { stats ->
                val hitRate = stats.thumbnailHitRate.takeIf { it > 0f }?.let { "${(it * 100).roundToInt()}%" } ?: "n/a"
                InfoRow(
                    label = "Cache",
                    value = "bitmaps=${stats.bitmapCacheSize}/${stats.bitmapCacheMaxSize}, thumbs=${stats.thumbnailCacheSize}/${stats.thumbnailCacheMaxSize}, hit=$hitRate"
                )
            }
        }
    }
}

@Composable
private fun InfoRow(
    label: String,
    value: String
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Text(
            text = label,
            style = MaterialTheme.typography.bodySmall
        )
        Text(
            text = value,
            style = MaterialTheme.typography.bodySmall,
            fontWeight = FontWeight.Medium
        )
    }
}

