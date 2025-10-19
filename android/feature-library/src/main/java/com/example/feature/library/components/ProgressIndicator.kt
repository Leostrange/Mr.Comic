package com.example.feature.library.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.size
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlin.math.cos
import kotlin.math.sin

/**
 * Круговой индикатор прогресса чтения
 * Показывает процент прочитанного в виде кружочка с текстом
 */
@Composable
fun ProgressIndicator(
    progress: Float, // 0.0f - 1.0f
    size: Dp = 32.dp,
    strokeWidth: Dp = 3.dp,
    showPercentage: Boolean = true,
    modifier: Modifier = Modifier
) {
    val progressColor = MaterialTheme.colorScheme.primary
    val backgroundColor = Color.Black.copy(alpha = 0.5f)
    val textColor = Color.White
    
    androidx.compose.foundation.layout.Box(
        modifier = modifier.size(size),
        contentAlignment = androidx.compose.ui.Alignment.Center
    ) {
        Canvas(
            modifier = Modifier.size(size)
        ) {
            val canvasSize = size.toPx()
            val center = Offset(canvasSize / 2, canvasSize / 2)
            val radius = (canvasSize - strokeWidth.toPx()) / 2
            
            // Фоновый круг
            drawCircle(
                color = backgroundColor,
                radius = radius,
                center = center,
                style = Stroke(width = strokeWidth.toPx(), cap = StrokeCap.Round)
            )
            
            // Прогресс
            if (progress > 0f) {
                val sweepAngle = progress * 360f
                drawArc(
                    color = progressColor,
                    startAngle = -90f, // Начинаем сверху
                    sweepAngle = sweepAngle,
                    useCenter = false,
                    topLeft = Offset(
                        center.x - radius,
                        center.y - radius
                    ),
                    size = Size(radius * 2, radius * 2),
                    style = Stroke(width = strokeWidth.toPx(), cap = StrokeCap.Round)
                )
            }
        }
        
        // Текст с процентами
        if (showPercentage && progress > 0f) {
            androidx.compose.material3.Text(
                text = "${(progress * 100).toInt()}%",
                style = MaterialTheme.typography.labelSmall,
                color = textColor,
                fontSize = (size.value * 0.35f).sp
            )
        }
    }
}

/**
 * Компактный индикатор прогресса с процентом
 */
@Composable
fun CompactProgressIndicator(
    progress: Float,
    size: Dp = 20.dp,
    modifier: Modifier = Modifier
) {
    val progressColor = MaterialTheme.colorScheme.primary
    val backgroundColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.3f)
    
    Canvas(
        modifier = modifier.size(size)
    ) {
        val canvasSize = size.toPx()
        val center = Offset(canvasSize / 2, canvasSize / 2)
        val radius = (canvasSize - 2f) / 2
        
        // Фоновый круг
        drawCircle(
            color = backgroundColor,
            radius = radius,
            center = center
        )
        
        // Прогресс
        if (progress > 0f) {
            val sweepAngle = progress * 360f
            drawArc(
                color = progressColor,
                startAngle = -90f,
                sweepAngle = sweepAngle,
                useCenter = false,
                topLeft = Offset(
                    center.x - radius,
                    center.y - radius
                ),
                size = Size(radius * 2, radius * 2),
                style = Stroke(width = 2f, cap = StrokeCap.Round)
            )
        }
    }
}
