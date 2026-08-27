package io.leostrange.mrcomic.core.ui.gamification

import androidx.compose.animation.animateContentSize
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.EmojiEvents
import androidx.compose.material.icons.filled.Timer
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.WeeklyChallenge
import io.leostrange.mrcomic.core.model.WeeklyChallengeProgress
import io.leostrange.mrcomic.core.model.WeeklyChallengeStatus

/**
 * Карточка еженедельного челленджа
 */
@Composable
fun WeeklyChallengeCard(
    challenge: WeeklyChallenge,
    progress: WeeklyChallengeProgress,
    modifier: Modifier = Modifier
) {
    val animatedProgress by animateFloatAsState(
        targetValue = progress.progress,
        animationSpec = tween(durationMillis = 500),
        label = "challenge_progress"
    )

    Card(
        modifier = modifier
            .fillMaxWidth()
            .animateContentSize(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = getChallengeBackgroundColor(progress.status)
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                // Иконка
                Icon(
                    imageVector = when (progress.status) {
                        WeeklyChallengeStatus.COMPLETED -> Icons.Default.CheckCircle
                        WeeklyChallengeStatus.ACTIVE -> Icons.Default.EmojiEvents
                        else -> Icons.Default.Timer
                    },
                    contentDescription = null,
                    tint = getChallengeIconColor(progress.status),
                    modifier = Modifier.size(32.dp)
                )

                Spacer(modifier = Modifier.width(12.dp))

                // Информация
                Column(
                    modifier = Modifier.weight(1f)
                ) {
                    Text(
                        text = challenge.title,
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )

                    Spacer(modifier = Modifier.height(4.dp))

                    Text(
                        text = challenge.description,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                }

                // Награда XP
                if (challenge.xpReward > 0) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text(
                            text = "+${challenge.xpReward}",
                            style = MaterialTheme.typography.titleMedium,
                            fontWeight = FontWeight.Bold,
                            color = MaterialTheme.colorScheme.primary
                        )
                        Text(
                            text = "XP",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                }
            }

            Spacer(modifier = Modifier.height(12.dp))

            // Прогресс
            Column {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        text = "Прогресс",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    Text(
                        text = "${progress.current}/${progress.target}",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }

                Spacer(modifier = Modifier.height(4.dp))

                LinearProgressIndicator(
                    progress = { animatedProgress },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(8.dp)
                        .clip(RoundedCornerShape(4.dp)),
                    color = getChallengeProgressColor(progress.status),
                    trackColor = MaterialTheme.colorScheme.surfaceVariant
                )
            }

            // Статус
            if (progress.status == WeeklyChallengeStatus.COMPLETED) {
                Spacer(modifier = Modifier.height(8.dp))

                Text(
                    text = "✓ Завершено",
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
    }
}

/**
 * Получить цвет фона карточки
 */
@Composable
private fun getChallengeBackgroundColor(status: WeeklyChallengeStatus): Color {
    return when (status) {
        WeeklyChallengeStatus.ACTIVE -> MaterialTheme.colorScheme.surface
        WeeklyChallengeStatus.COMPLETED -> MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.3f)
        WeeklyChallengeStatus.FAILED -> MaterialTheme.colorScheme.errorContainer.copy(alpha = 0.3f)
        WeeklyChallengeStatus.EXPIRED -> MaterialTheme.colorScheme.surfaceVariant
    }
}

/**
 * Получить цвет иконки
 */
@Composable
private fun getChallengeIconColor(status: WeeklyChallengeStatus): Color {
    return when (status) {
        WeeklyChallengeStatus.ACTIVE -> MaterialTheme.colorScheme.primary
        WeeklyChallengeStatus.COMPLETED -> MaterialTheme.colorScheme.primary
        WeeklyChallengeStatus.FAILED -> MaterialTheme.colorScheme.error
        WeeklyChallengeStatus.EXPIRED -> MaterialTheme.colorScheme.onSurfaceVariant
    }
}

/**
 * Получить цвет прогресса
 */
@Composable
private fun getChallengeProgressColor(status: WeeklyChallengeStatus): Color {
    return when (status) {
        WeeklyChallengeStatus.ACTIVE -> MaterialTheme.colorScheme.primary
        WeeklyChallengeStatus.COMPLETED -> MaterialTheme.colorScheme.primary
        WeeklyChallengeStatus.FAILED -> MaterialTheme.colorScheme.error
        WeeklyChallengeStatus.EXPIRED -> MaterialTheme.colorScheme.onSurfaceVariant
    }
}
