package com.example.feature.settings.ui.sections

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun ImageQualitySection(
    // Image Quality Settings
    imageQuality: String,
    imageRenderDpi: Int,
    imageCacheSize: Int,
    imagePreloadPages: Int,
    imageCompressionLevel: Int,
    
    // Callbacks
    onImageQualityChanged: (String) -> Unit,
    onImageRenderDpiChanged: (Int) -> Unit,
    onImageCacheSizeChanged: (Int) -> Unit,
    onImagePreloadPagesChanged: (Int) -> Unit,
    onImageCompressionLevelChanged: (Int) -> Unit
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
        )
    ) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text(
                text = "Качество изображений",
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            Spacer(modifier = Modifier.height(12.dp))

            // Качество изображений
            Text(
                text = "Качество изображений",
                style = MaterialTheme.typography.bodyMedium
            )
            Spacer(modifier = Modifier.height(8.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Button(
                    onClick = { onImageQualityChanged("high") },
                    modifier = Modifier.weight(1f),
                    colors = if (imageQuality == "high") ButtonDefaults.buttonColors() else ButtonDefaults.outlinedButtonColors()
                ) { Text("Высокое") }
                Button(
                    onClick = { onImageQualityChanged("medium") },
                    modifier = Modifier.weight(1f),
                    colors = if (imageQuality == "medium") ButtonDefaults.buttonColors() else ButtonDefaults.outlinedButtonColors()
                ) { Text("Среднее") }
                Button(
                    onClick = { onImageQualityChanged("low") },
                    modifier = Modifier.weight(1f),
                    colors = if (imageQuality == "low") ButtonDefaults.buttonColors() else ButtonDefaults.outlinedButtonColors()
                ) { Text("Низкое") }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // DPI рендеринга
            Text(
                text = "DPI рендеринга: ${imageRenderDpi}",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = imageRenderDpi.toFloat(),
                onValueChange = { onImageRenderDpiChanged(it.toInt()) },
                valueRange = 1280f..3840f
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Размер кэша
            Text(
                text = "Размер кэша: ${imageCacheSize} МБ",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = imageCacheSize.toFloat(),
                onValueChange = { onImageCacheSizeChanged(it.toInt()) },
                valueRange = 50f..500f
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Предзагрузка страниц
            Text(
                text = "Предзагрузка страниц: ${imagePreloadPages}",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = imagePreloadPages.toFloat(),
                onValueChange = { onImagePreloadPagesChanged(it.toInt()) },
                valueRange = 1f..10f
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Уровень сжатия
            Text(
                text = "Уровень сжатия: ${imageCompressionLevel}%",
                style = MaterialTheme.typography.bodyMedium
            )
            Slider(
                value = imageCompressionLevel.toFloat(),
                onValueChange = { onImageCompressionLevelChanged(it.toInt()) },
                valueRange = 0f..100f
            )

            Spacer(modifier = Modifier.height(8.dp))

            // Информация о влиянии на производительность
            Text(
                text = "💡 Высокое качество и большой кэш могут замедлить работу на слабых устройствах",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.7f)
            )
        }
    }
}
