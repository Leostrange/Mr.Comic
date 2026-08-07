package io.leostrange.mrcomic.feature.library.components

import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicPill
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.performance.LocalPerformanceUiHints

// ─────────────────────────────────────────────────────────────────────────────
// Achievement row + card
// ─────────────────────────────────────────────────────────────────────────────

@Composable
fun LibraryAchievementsRow(
    achievements: List<LibraryAchievement>,
    showHeader: Boolean = true,
    maxVisible: Int? = null,
    modifier: Modifier = Modifier
) {
    if (achievements.isEmpty()) return

    val strings = LocalStrings.current
    val unlockedCount = achievements.count { it.isUnlocked }
    val totalCount = achievements.size
    val visibleAchievements = remember(achievements, maxVisible) {
        achievements.take(maxVisible ?: achievements.size)
    }

    Column(modifier = modifier) {
        if (showHeader) {
            Row(
                modifier = Modifier.padding(horizontal = 16.dp, vertical = 4.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Text(
                    text = achievementHeaderTitle(strings.languageCode),
                    style = MaterialTheme.typography.titleSmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.85f)
                )
                Spacer(Modifier.weight(1f))
                MrComicPill(
                    containerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.18f),
                    contentColor = MaterialTheme.colorScheme.primary,
                    contentPadding = PaddingValues(horizontal = 8.dp, vertical = 2.dp)
                ) {
                    Text(
                        text = "$unlockedCount / $totalCount",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            }
        }
        LazyRow(
            contentPadding = PaddingValues(horizontal = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            items(visibleAchievements) { achievement ->
                AchievementCard(achievement = achievement)
            }
        }
    }
}

private fun achievementHeaderTitle(language: String): String = when (language) {
    "en" -> "🏅 Achievements"
    "ja" -> "🏅 実績"
    "zh" -> "🏅 成就"
    "ko" -> "🏅 업적"
    else -> "🏅 Достижения"
}

@Composable
private fun AchievementCard(achievement: LibraryAchievement) {
    val reducedMotion = LocalPerformanceUiHints.current.reducedMotion
    val infiniteTransition = if (!reducedMotion) {
        rememberInfiniteTransition(label = "ach_${achievement.id}")
    } else {
        null
    }
    val shimmerPhase = if (reducedMotion) {
        0.35f
    } else {
        infiniteTransition!!.animateFloat(
            initialValue = 0f,
            targetValue = 1f,
            animationSpec = infiniteRepeatable(
                animation = tween(2200, easing = LinearEasing),
                repeatMode = RepeatMode.Restart
            ),
            label = "shimmer"
        ).value
    }
    val glowAlpha = if (reducedMotion) {
        0.42f
    } else {
        infiniteTransition!!.animateFloat(
            initialValue = 0.3f,
            targetValue = 0.8f,
            animationSpec = infiniteRepeatable(
                animation = tween(1400, easing = FastOutSlowInEasing),
                repeatMode = RepeatMode.Reverse
            ),
            label = "glow"
        ).value
    }
    val pulseScale = if (reducedMotion) {
        1f
    } else {
        infiniteTransition!!.animateFloat(
            initialValue = 1f,
            targetValue = 1.04f,
            animationSpec = infiniteRepeatable(
                animation = tween(1600, easing = FastOutSlowInEasing),
                repeatMode = RepeatMode.Reverse
            ),
            label = "pulse"
        ).value
    }

    val cardAlpha = if (achievement.isUnlocked) 1f else 0.45f
    val cardScale = if (achievement.isUnlocked) pulseScale else 1f

    Column(
        modifier = Modifier
            .width(74.dp)
            .graphicsLayer {
                scaleX = cardScale
                scaleY = cardScale
                alpha = cardAlpha
            },
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Box(
            modifier = Modifier.size(62.dp),
            contentAlignment = Alignment.Center
        ) {
            if (achievement.isUnlocked) {
                Canvas(modifier = Modifier.size(62.dp)) {
                    drawCircle(
                        brush = Brush.radialGradient(
                            listOf(
                                achievement.gradientStart.copy(alpha = glowAlpha * 0.45f),
                                Color.Transparent
                            )
                        ),
                        radius = size.minDimension / 1.55f
                    )
                }
            }

            Row(
                modifier = Modifier
                    .align(Alignment.BottomCenter)
                    .padding(bottom = 2.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Box(
                    modifier = Modifier
                        .width(12.dp)
                        .height(16.dp)
                        .clip(RoundedCornerShape(bottomStart = 10.dp, bottomEnd = 10.dp))
                        .background(
                            if (achievement.isUnlocked) achievement.gradientStart.copy(alpha = 0.92f)
                            else Color(0xFF5F6072)
                        )
                )
                Box(
                    modifier = Modifier
                        .width(12.dp)
                        .height(16.dp)
                        .clip(RoundedCornerShape(bottomStart = 10.dp, bottomEnd = 10.dp))
                        .background(
                            if (achievement.isUnlocked) achievement.gradientEnd.copy(alpha = 0.92f)
                            else Color(0xFF45465A)
                        )
                )
            }

            Box(
                modifier = Modifier
                    .size(52.dp)
                    .clip(CircleShape)
                    .background(
                        if (achievement.isUnlocked) {
                            Brush.linearGradient(
                                listOf(achievement.gradientStart, achievement.gradientEnd)
                            )
                        } else {
                            Brush.linearGradient(
                                listOf(Color(0xFF555566), Color(0xFF333344))
                            )
                        }
                    ),
                contentAlignment = Alignment.Center
            ) {
                Canvas(modifier = Modifier.matchParentSize()) {
                    drawCircle(
                        color = Color.White.copy(alpha = if (achievement.isUnlocked) 0.16f else 0.08f),
                        radius = size.minDimension / 2.5f
                    )
                    if (achievement.isUnlocked) {
                        val sweepX = size.width * (shimmerPhase * 1.3f - 0.15f)
                        drawCircle(
                            brush = Brush.linearGradient(
                                colors = listOf(
                                    Color.Transparent,
                                    Color.White.copy(alpha = 0.14f),
                                    Color.Transparent
                                ),
                                start = Offset(sweepX - 18f, 0f),
                                end = Offset(sweepX + 18f, size.height)
                            ),
                            radius = size.minDimension / 2f
                        )
                    }
                }
                if (achievement.isUnlocked) {
                    AchievementIconCanvas(
                        id = achievement.id,
                        gradientStart = achievement.gradientStart,
                        gradientEnd = achievement.gradientEnd,
                        shimmerPhase = shimmerPhase,
                        modifier = Modifier.size(26.dp)
                    )
                } else {
                    Text(text = "🔒", fontSize = 13.sp)
                }
            }
        }

        Text(
            text = achievement.title,
            style = MaterialTheme.typography.labelSmall.copy(
                fontWeight = FontWeight.SemiBold,
                fontSize = 8.sp
            ),
            color = MaterialTheme.colorScheme.onSurface,
            textAlign = TextAlign.Center,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis
        )

        if (!achievement.isUnlocked && achievement.progressTarget != null && achievement.progressCurrent != null) {
            Text(
                text = "${achievement.progressCurrent}/${achievement.progressTarget}",
                style = MaterialTheme.typography.labelSmall.copy(fontSize = 7.sp),
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
            MrComicProgressLine(
                progress = { achievement.progressFraction },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(3.dp)
                    .clip(RoundedCornerShape(999.dp)),
                color = achievement.gradientStart.copy(alpha = 0.92f),
                trackColor = MaterialTheme.colorScheme.surfaceVariant
            )
        }
    }
}
