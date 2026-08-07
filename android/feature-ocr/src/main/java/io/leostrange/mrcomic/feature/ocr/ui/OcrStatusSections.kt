package io.leostrange.mrcomic.feature.ocr.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
internal fun OcrActiveOperationCard(activeOperationMessage: String?) {
    if (activeOperationMessage != null) {
        OcrPanelCard(
            modifier = Modifier.fillMaxWidth(),
            tone = OcrPanelTone.ACCENT
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                CircularProgressIndicator(
                    modifier = Modifier.size(18.dp),
                    strokeWidth = 2.dp
                )
                Text(
                    text = activeOperationMessage,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSecondaryContainer
                )
            }
        }
    }
}

@Composable
internal fun OcrSaveMessageCard(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText
) {
    uiState.saveMessage?.let { saveMessage ->
        OcrPanelCard(
            modifier = Modifier.fillMaxWidth(),
            tone = OcrPanelTone.ACCENT
        ) {
            Row(
                modifier = Modifier.padding(12.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = saveMessage,
                    modifier = Modifier.weight(1f),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSecondaryContainer
                )
                TextButton(onClick = viewModel::clearError) { Text(text.dismissMessage) }
            }
        }
    }
}

@Composable
internal fun OcrErrorCard(
    uiState: OcrUiState,
    viewModel: OcrViewModel,
    text: OcrUiText
) {
    if (uiState.error != null) {
        OcrPanelCard(
            modifier = Modifier.fillMaxWidth(),
            tone = OcrPanelTone.ERROR
        ) {
            Row(
                modifier = Modifier.padding(12.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    uiState.error!!,
                    modifier = Modifier.weight(1f),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onErrorContainer
                )
                TextButton(onClick = viewModel::clearError) { Text(text.dismissMessage) }
            }
        }
    }
}
