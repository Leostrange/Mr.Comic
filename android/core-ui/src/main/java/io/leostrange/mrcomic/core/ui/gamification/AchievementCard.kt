package io.leostrange.mrcomic.core.ui.gamification

import androidx.compose.animation.animateContentSize
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.Star
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
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
import io.leostrange.mrcomic.core.model.Achievement
import io.leostrange.mrcomic.core.model.AchievementProgress
import io.leostrange.mrcomic.core.model.AchievementRarity
import io.leostrange.mrcomic.core.model.AchievementStatus

/**
 * Карточка достижения
 */
@Composable
fun AchievementCard(
    achievement: Achievement,
    progress: AchievementProgress,
    modifier: Modifier = Modifier,
    showProgress: Boolean = true
) {
    val animatedProgress by animateFloatAsState(
        targetValue = progress.currentProgress,
        animationSpec = tween(durationMillis = 500),
        label = "achievement_progress"
    )

    Card(
        modifier = modifier
            .fillMaxWidth()
            .animateContentSize(),
        shape = RoundedCornerShape(16.dp),
        colors = CardDefaults.cardColors(
            containerColor = getAchievementBackgroundColor(progress.status)
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                // Иконка достижения
                AchievementIcon(
                    achievement = achievement,
                    status = progress.status,
                    modifier = Modifier.size(48.dp)
                )

                Spacer(modifier = Modifier.width(12.dp))

                // Информация о достижении
                Column(
                    modifier = Modifier.weight(1f)
                ) {
                    Text(
                        text = achievement.title,
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )

                    Spacer(modifier = Modifier.height(4.dp))

                    Text(
                        text = achievement.description,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                }

                // Статус
                AchievementStatusBadge(status = progress.status)
            }

            // Прогресс-бар
            if (showProgress && progress.status != AchievementStatus.UNLOCKED) {
                Spacer(modifier = Modifier.height(12.dp))

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
                            text = "${(animatedProgress * 100).toInt()}%",
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
                        color = getAchievementColor(achievement.rarity),
                        trackColor = MaterialTheme.colorScheme.surfaceVariant
                    )
                }
            }

            // Награда XP
            if (achievement.xpReward > 0) {
                Spacer(modifier = Modifier.height(8.dp))

                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        imageVector = Icons.Default.Star,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary,
                        modifier = Modifier.size(16.dp)
                    )
                    Spacer(modifier = Modifier.width(4.dp))
                    Text(
                        text = "+${achievement.xpReward} XP",
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            }
        }
    }
}

/**
 * Иконка достижения
 */
@Composable
private fun AchievementIcon(
    achievement: Achievement,
    status: AchievementStatus,
    modifier: Modifier = Modifier
) {
    val backgroundColor = when (status) {
        AchievementStatus.LOCKED -> MaterialTheme.colorScheme.surfaceVariant
        AchievementStatus.UNLOCKED -> getAchievementColor(achievement.rarity)
        AchievementStatus.CLAIMED -> getAchievementColor(achievement.rarity)
    }

    Box(
        modifier = modifier
            .background(
                color = backgroundColor,
                shape = CircleShape
            ),
        contentAlignment = Alignment.Center
    ) {
        Icon(
            imageVector = when (status) {
                AchievementStatus.LOCKED -> Icons.Default.Lock
                AchievementStatus.UNLOCKED -> Icons.Default.Star
                AchievementStatus.CLAIMED -> Icons.Default.CheckCircle
            },
            contentDescription = null,
            tint = when (status) {
                AchievementStatus.LOCKED -> MaterialTheme.colorScheme.onSurfaceVariant
                AchievementStatus.UNLOCKED -> Color.White
                AchievementStatus.CLAIMED -> Color.White
            },
            modifier = Modifier.size(24.dp)
        )
    }
}

/**
 * Бейдж статуса достижения
 */
@Composable
private fun AchievementStatusBadge(
    status: AchievementStatus,
    modifier: Modifier = Modifier
) {
    val (text, color) = when (status) {
        AchievementStatus.LOCKED -> "Заблокировано" to MaterialTheme.colorScheme.surfaceVariant
        AchievementStatus.UNLOCKED -> "Разблокировано" to MaterialTheme.colorScheme.primary
        AchievementStatus.CLAIMED -> "Получено" to MaterialTheme.colorScheme.tertiary
    }

    Surface(
        modifier = modifier,
        shape = RoundedCornerShape(8.dp),
        color = color.copy(alpha = 0.1f)
    ) {
        Text(
            text = text,
            style = MaterialTheme.typography.labelSmall,
            color = color,
            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
        )
    }
}

/**
 * Получить цвет фона карточки в зависимости от статуса
 */
@Composable
private fun getAchievementBackgroundColor(status: AchievementStatus): Color {
    return when (status) {
        AchievementStatus.LOCKED -> MaterialTheme.colorScheme.surface
        AchievementStatus.UNLOCKED -> MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.3f)
        AchievementStatus.CLAIMED -> MaterialTheme.colorScheme.tertiaryContainer.copy(alpha = 0.3f)
    }
}

/**
 * Получить цвет достижения в зависимости от редкости
 */
@Composable
private fun getAchievementColor(rarity: AchievementRarity): Color {
    return when (rarity) {
        AchievementRarity.COMMON -> MaterialTheme.colorScheme.primary
        AchievementRarity.UNCOMMON -> MaterialTheme.colorScheme.secondary
        AchievementRarity.RARE -> MaterialTheme.colorScheme.tertiary
        AchievementRarity.EPIC -> MaterialTheme.colorScheme.error
        AchievementRarity.LEGENDARY -> Color(0xFFFFD700) // Золотой
    }
}
