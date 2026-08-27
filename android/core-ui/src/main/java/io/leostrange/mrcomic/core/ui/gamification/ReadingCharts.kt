package io.leostrange.mrcomic.core.ui.gamification

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay

/**
 * График чтения за неделю
 */
@Composable
fun WeeklyReadingChart(
    recentActivity: List<DailyReadingCalendarDay>,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Активность за неделю",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )

            Spacer(modifier = Modifier.height(16.dp))

            if (recentActivity.isEmpty()) {
                Text(
                    text = "Нет данных",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            } else {
                // График
                Canvas(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(120.dp)
                ) {
                    val maxValue = recentActivity.maxOfOrNull { it.pagesRead }?.toFloat() ?: 1f
                    val width = size.width
                    val height = size.height
                    val stepX = width / (recentActivity.size - 1).coerceAtLeast(1)

                    // Рисуем линию графика
                    val path = Path()
                    recentActivity.forEachIndexed { index, day ->
                        val x = index * stepX
                        val y = height - (day.pagesRead / maxValue) * height

                        if (index == 0) {
                            path.moveTo(x, y)
                        } else {
                            path.lineTo(x, y)
                        }
                    }

                    drawPath(
                        path = path,
                        color = Color(0xFF6200EE),
                        style = Stroke(width = 3.dp.toPx())
                    )

                    // Рисуем точки
                    recentActivity.forEachIndexed { index, day ->
                        val x = index * stepX
                        val y = height - (day.pagesRead / maxValue) * height

                        drawCircle(
                            color = Color(0xFF6200EE),
                            radius = 4.dp.toPx(),
                            center = Offset(x, y)
                        )
                    }
                }

                Spacer(modifier = Modifier.height(8.dp))

                // Подписи дней
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    recentActivity.forEach { day ->
                        Text(
                            text = getDayLabel(day.dayKey),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
        }
    }
}

/**
 * График чтения за месяц
 */
@Composable
fun MonthlyReadingChart(
    historyActivity: List<DailyReadingCalendarDay>,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Активность за месяц",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )

            Spacer(modifier = Modifier.height(16.dp))

            if (historyActivity.isEmpty()) {
                Text(
                    text = "Нет данных",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            } else {
                // Тепловая карта
                val weeks = historyActivity.chunked(7)
                weeks.forEach { week ->
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceEvenly
                    ) {
                        week.forEach { day ->
                            val intensity = when {
                                day.pagesRead == 0 -> 0.1f
                                day.pagesRead < 10 -> 0.3f
                                day.pagesRead < 30 -> 0.5f
                                day.pagesRead < 50 -> 0.7f
                                else -> 1.0f
                            }

                            Canvas(
                                modifier = Modifier
                                    .weight(1f)
                                    .height(24.dp)
                                    .padding(2.dp)
                            ) {
                                drawRoundRect(
                                    color = Color(0xFF6200EE).copy(alpha = intensity),
                                    cornerRadius = androidx.compose.ui.geometry.CornerRadius(4.dp.toPx())
                                )
                            }
                        }
                    }
                }

                Spacer(modifier = Modifier.height(8.dp))

                // Легенда
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    LegendItem(color = Color(0xFF6200EE).copy(alpha = 0.1f), label = "0")
                    LegendItem(color = Color(0xFF6200EE).copy(alpha = 0.3f), label = "<10")
                    LegendItem(color = Color(0xFF6200EE).copy(alpha = 0.5f), label = "<30")
                    LegendItem(color = Color(0xFF6200EE).copy(alpha = 0.7f), label = "<50")
                    LegendItem(color = Color(0xFF6200EE).copy(alpha = 1.0f), label = "50+")
                }
            }
        }
    }
}

/**
 * Элемент легенды
 */
@Composable
private fun LegendItem(
    color: Color,
    label: String,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier,
        horizontalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        Canvas(
            modifier = Modifier
                .height(12.dp)
                .padding(2.dp)
        ) {
            drawRoundRect(
                color = color,
                cornerRadius = androidx.compose.ui.geometry.CornerRadius(2.dp.toPx())
            )
        }

        Text(
            text = label,
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

/**
 * Получить метку дня
 */
private fun getDayLabel(dayKey: String): String {
    return try {
        val day = dayKey.takeLast(2).toInt()
        when (day % 7) {
            0 -> "Вс"
            1 -> "Пн"
            2 -> "Вт"
            3 -> "Ср"
            4 -> "Чт"
            5 -> "Пт"
            6 -> "Сб"
            else -> day.toString()
        }
    } catch (e: Exception) {
        dayKey.takeLast(2)
    }
}
