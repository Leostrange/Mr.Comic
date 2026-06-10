package com.example.feature.library.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.*
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.scaleIn
import androidx.compose.animation.scaleOut
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.blur
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.drawscope.rotate
import androidx.compose.ui.graphics.drawscope.withTransform
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zIndex
import com.example.core.ui.designsystem.MrComicPill
import com.example.core.ui.designsystem.MrComicProgressLine
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.performance.LocalPerformanceUiHints
import kotlin.math.*
import kotlin.random.Random

// ─────────────────────────────────────────────────────────────────────────────
// Achievement definitions
// ─────────────────────────────────────────────────────────────────────────────

enum class AchievementId {
    FIRST_BOOK,      // 1 комикс
    READER,          // 10 комиксов
    COLLECTOR,       // 25 комиксов
    FIRST_COMPLETE,  // 1 прочитан
    MARATHON,        // 20 прочитано
    AUTHOR_FAN,      // 5 книг одного автора
    GENRE_GOURMET,   // 3 разных жанра
    BOOKMARKER,      // добавил в избранное
    SECRET_CAT       // пасхалка 🐱
}

data class LibraryAchievement(
    val id: AchievementId,
    val title: String,
    val description: String,
    val emoji: String,
    val isUnlocked: Boolean,
    val isSecret: Boolean = false,
    val progressCurrent: Int? = null,
    val progressTarget: Int? = null,
    val gradientStart: Color = Color(0xFF6C63FF),
    val gradientEnd: Color = Color(0xFFFF6584)
) {
    val progressFraction: Float
        get() = when {
            progressCurrent == null || progressTarget == null || progressTarget <= 0 -> 0f
            else -> (progressCurrent.toFloat() / progressTarget.toFloat()).coerceIn(0f, 1f)
        }

    val remainingSteps: Int?
        get() = when {
            progressCurrent == null || progressTarget == null -> null
            else -> (progressTarget - progressCurrent).coerceAtLeast(0)
        }
}

data class AchievementQuestTransition(
    val tone: AchievementQuestFeedbackTone,
    val previousAchievementId: AchievementId,
    val previousTitle: String,
    val nextAchievementId: AchievementId?,
    val nextTitle: String?,
    val previousCompleted: Boolean
)

enum class AchievementQuestFeedbackTone {
    COMPLETED,
    SWITCHED,
    CLEARED
}

fun computeAchievements(
    totalComics: Int,
    completedComics: Int,
    bookmarkedComics: Int,
    allAuthors: List<String?>,
    allGenres: List<String?>,
    secretUnlocked: Boolean,
    strings: AchievementStrings
): List<LibraryAchievement> {
    val authorProgress = maxBooksBySingleAuthor(allAuthors)
    val genreProgress = countDistinctGenres(allGenres)

    return listOf(
    LibraryAchievement(
        id = AchievementId.FIRST_BOOK,
        title = strings.achFirstBook,
        description = strings.achFirstBookDesc,
        emoji = "📖",
        isUnlocked = totalComics >= 1,
        progressCurrent = totalComics.coerceAtMost(1),
        progressTarget = 1,
        gradientStart = Color(0xFF43CEA2),
        gradientEnd = Color(0xFF185A9D)
    ),
    LibraryAchievement(
        id = AchievementId.READER,
        title = strings.achReader,
        description = strings.achReaderDesc,
        emoji = "📚",
        isUnlocked = totalComics >= 10,
        progressCurrent = totalComics.coerceAtMost(10),
        progressTarget = 10,
        gradientStart = Color(0xFFFFB347),
        gradientEnd = Color(0xFFFF6B6B)
    ),
    LibraryAchievement(
        id = AchievementId.COLLECTOR,
        title = strings.achCollector,
        description = strings.achCollectorDesc,
        emoji = "🏆",
        isUnlocked = totalComics >= 25,
        progressCurrent = totalComics.coerceAtMost(25),
        progressTarget = 25,
        gradientStart = Color(0xFFFFD700),
        gradientEnd = Color(0xFFFFA500)
    ),
    LibraryAchievement(
        id = AchievementId.FIRST_COMPLETE,
        title = strings.achFirstComplete,
        description = strings.achFirstCompleteDesc,
        emoji = "✅",
        isUnlocked = completedComics >= 1,
        progressCurrent = completedComics.coerceAtMost(1),
        progressTarget = 1,
        gradientStart = Color(0xFF56AB2F),
        gradientEnd = Color(0xFFA8E063)
    ),
    LibraryAchievement(
        id = AchievementId.MARATHON,
        title = strings.achMarathon,
        description = strings.achMarathonDesc,
        emoji = "🌟",
        isUnlocked = completedComics >= 20,
        progressCurrent = completedComics.coerceAtMost(20),
        progressTarget = 20,
        gradientStart = Color(0xFF667EEA),
        gradientEnd = Color(0xFF764BA2)
    ),
    LibraryAchievement(
        id = AchievementId.AUTHOR_FAN,
        title = strings.achAuthorFan,
        description = strings.achAuthorFanDesc,
        emoji = "✍️",
        isUnlocked = authorProgress >= 5,
        progressCurrent = authorProgress.coerceAtMost(5),
        progressTarget = 5,
        gradientStart = Color(0xFFFF416C),
        gradientEnd = Color(0xFFFF4B2B)
    ),
    LibraryAchievement(
        id = AchievementId.GENRE_GOURMET,
        title = strings.achGenreGourmet,
        description = strings.achGenreGourmetDesc,
        emoji = "🎭",
        isUnlocked = genreProgress >= 3,
        progressCurrent = genreProgress.coerceAtMost(3),
        progressTarget = 3,
        gradientStart = Color(0xFFFC5C7D),
        gradientEnd = Color(0xFF6A3093)
    ),
    LibraryAchievement(
        id = AchievementId.BOOKMARKER,
        title = strings.achBookmarker,
        description = strings.achBookmarkerDesc,
        emoji = "🔖",
        isUnlocked = bookmarkedComics >= 1,
        progressCurrent = bookmarkedComics.coerceAtMost(1),
        progressTarget = 1,
        gradientStart = Color(0xFF4FACFE),
        gradientEnd = Color(0xFF00F2FE)
    ),
    LibraryAchievement(
        id = AchievementId.SECRET_CAT,
        title = if (secretUnlocked) strings.achSecretCat else "???",
        description = if (secretUnlocked) strings.achSecretCatDesc else strings.achSecretHint,
        emoji = if (secretUnlocked) "🐱" else "🔮",
        isUnlocked = secretUnlocked,
        isSecret = true,
        gradientStart = Color(0xFFDA22FF),
        gradientEnd = Color(0xFF9733EE)
    )
    )
}

fun nextUnlockAchievement(achievements: List<LibraryAchievement>): LibraryAchievement? =
    achievements
        .filter { !it.isUnlocked && !it.isSecret && it.progressTarget != null && it.progressTarget > 0 }
        .sortedWith(
            compareByDescending<LibraryAchievement> { it.progressFraction }
                .thenBy { it.remainingSteps ?: Int.MAX_VALUE }
                .thenBy { it.progressTarget ?: Int.MAX_VALUE }
        )
        .firstOrNull()

fun rememberedNextUnlockAchievement(
    achievements: List<LibraryAchievement>,
    rememberedAchievementId: String?
): LibraryAchievement? {
    val rememberedId = rememberedAchievementId
        ?.trim()
        ?.takeIf { it.isNotEmpty() }
        ?.let { runCatching { AchievementId.valueOf(it) }.getOrNull() }

    val remembered = rememberedId?.let { id ->
        achievements.firstOrNull { achievement ->
            achievement.id == id &&
                !achievement.isUnlocked &&
                !achievement.isSecret &&
                achievement.progressTarget != null &&
                achievement.progressTarget > 0
        }
    }

    return remembered ?: nextUnlockAchievement(achievements)
}

fun questTransitionFeedback(
    achievements: List<LibraryAchievement>,
    rememberedAchievementId: String?,
    nextAchievement: LibraryAchievement?
): AchievementQuestTransition? {
    val rememberedId = rememberedAchievementId
        ?.trim()
        ?.takeIf { it.isNotEmpty() }
        ?.let { runCatching { AchievementId.valueOf(it) }.getOrNull() }
        ?: return null

    if (nextAchievement?.id == rememberedId) return null

    val previousAchievement = achievements.firstOrNull { it.id == rememberedId } ?: return null
    val tone = when {
        previousAchievement.isUnlocked -> AchievementQuestFeedbackTone.COMPLETED
        nextAchievement != null -> AchievementQuestFeedbackTone.SWITCHED
        else -> AchievementQuestFeedbackTone.CLEARED
    }

    return AchievementQuestTransition(
        tone = tone,
        previousAchievementId = previousAchievement.id,
        previousTitle = previousAchievement.title,
        nextAchievementId = nextAchievement?.id,
        nextTitle = nextAchievement?.title,
        previousCompleted = previousAchievement.isUnlocked
    )
}

private fun maxBooksBySingleAuthor(allAuthors: List<String?>): Int =
    allAuthors
        .filterNotNull()
        .map { it.trim() }
        .filter { it.isNotEmpty() }
        .groupingBy { it }
        .eachCount()
        .maxOfOrNull { it.value }
        ?: 0

private fun countDistinctGenres(allGenres: List<String?>): Int =
    allGenres
        .filterNotNull()
        .flatMap { raw ->
            raw.split(",", ";", "/")
                .map { it.trim().lowercase() }
        }
        .filter { it.isNotEmpty() }
        .toSet()
        .size

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

// ─────────────────────────────────────────────────────────────────────────────
// Canvas achievement icons (per type)
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun AchievementIconCanvas(
    id: AchievementId,
    gradientStart: Color,
    gradientEnd: Color,
    shimmerPhase: Float,
    modifier: Modifier = Modifier
) {
    val reducedMotion = LocalPerformanceUiHints.current.reducedMotion
    val infiniteTransition = if (!reducedMotion) {
        rememberInfiniteTransition(label = "icon_${id}")
    } else {
        null
    }
    val rotation = if (reducedMotion) {
        0f
    } else {
        infiniteTransition!!.animateFloat(
            initialValue = 0f,
            targetValue = 360f,
            animationSpec = infiniteRepeatable(
                animation = tween(8000, easing = LinearEasing),
                repeatMode = RepeatMode.Restart
            ),
            label = "rotate"
        ).value
    }

    Canvas(modifier = modifier) {
        val cx = size.width / 2f
        val cy = size.height / 2f
        val r = size.minDimension / 2f
        val iconBrush = Brush.linearGradient(
            listOf(Color.White, Color.White.copy(alpha = 0.75f))
        )
        when (id) {
            AchievementId.FIRST_BOOK, AchievementId.READER -> drawBookIcon(cx, cy, r, iconBrush)
            AchievementId.COLLECTOR -> drawTrophyIcon(cx, cy, r, iconBrush, rotation)
            AchievementId.FIRST_COMPLETE, AchievementId.MARATHON -> drawStarIcon(cx, cy, r, iconBrush, rotation)
            AchievementId.AUTHOR_FAN -> drawPenIcon(cx, cy, r, iconBrush)
            AchievementId.GENRE_GOURMET -> drawMasksIcon(cx, cy, r, iconBrush)
            AchievementId.BOOKMARKER -> drawBookmarkIcon(cx, cy, r, iconBrush)
            AchievementId.SECRET_CAT -> drawCatIcon(cx, cy, r, iconBrush, shimmerPhase)
        }
    }
}

private fun DrawScope.drawBookIcon(cx: Float, cy: Float, r: Float, brush: Brush) {
    val w = r * 1.1f
    val h = r * 1.3f
    val spineW = w * 0.12f
    // Cover
    drawRoundRect(
        brush = brush,
        topLeft = Offset(cx - w / 2f + spineW, cy - h / 2f),
        size = Size(w - spineW, h),
        cornerRadius = androidx.compose.ui.geometry.CornerRadius(3f),
        style = Stroke(width = 2.5f)
    )
    // Spine
    drawRect(
        brush = brush,
        topLeft = Offset(cx - w / 2f, cy - h / 2f),
        size = Size(spineW, h)
    )
    // Lines (pages)
    val lineSpacing = h / 5f
    for (i in 1..3) {
        drawLine(
            brush = brush,
            start = Offset(cx - w / 2f + spineW + 4f, cy - h / 2f + lineSpacing * i),
            end = Offset(cx + w / 2f - 4f, cy - h / 2f + lineSpacing * i),
            strokeWidth = 1.5f
        )
    }
}

private fun DrawScope.drawTrophyIcon(cx: Float, cy: Float, r: Float, brush: Brush, rotation: Float) {
    rotate(degrees = rotation * 0.05f, pivot = Offset(cx, cy)) {
        val w = r * 1.1f
        val h = r * 1.2f
        // Cup body
        val path = Path().apply {
            moveTo(cx - w / 2f, cy - h / 2f)
            lineTo(cx + w / 2f, cy - h / 2f)
            cubicTo(
                cx + w / 2f, cy + h * 0.2f,
                cx + w * 0.3f, cy + h * 0.4f,
                cx, cy + h * 0.4f
            )
            cubicTo(
                cx - w * 0.3f, cy + h * 0.4f,
                cx - w / 2f, cy + h * 0.2f,
                cx - w / 2f, cy - h / 2f
            )
        }
        drawPath(path, brush = brush, style = Stroke(width = 2.5f))
        // Handles
        drawArc(Color.White, 90f, -180f, false, Offset(cx + w / 2f - 4f, cy - h / 2f + 4f), Size(10f, 12f), style = Stroke(2f))
        drawArc(Color.White, 90f, 180f, false, Offset(cx - w / 2f - 6f, cy - h / 2f + 4f), Size(10f, 12f), style = Stroke(2f))
        // Base
        drawLine(brush, Offset(cx - w * 0.3f, cy + h * 0.4f), Offset(cx + w * 0.3f, cy + h * 0.4f), 2.5f)
        drawLine(brush, Offset(cx - w * 0.4f, cy + h * 0.5f), Offset(cx + w * 0.4f, cy + h * 0.5f), 2.5f)
    }
}

private fun DrawScope.drawStarIcon(cx: Float, cy: Float, r: Float, brush: Brush, rotation: Float) {
    rotate(degrees = rotation * 0.08f, pivot = Offset(cx, cy)) {
        val points = 5
        val outerR = r * 0.9f
        val innerR = r * 0.4f
        val path = Path()
        for (i in 0 until points * 2) {
            val angle = (i * PI / points - PI / 2).toFloat()
            val radius = if (i % 2 == 0) outerR else innerR
            val x = cx + cos(angle) * radius
            val y = cy + sin(angle) * radius
            if (i == 0) path.moveTo(x, y) else path.lineTo(x, y)
        }
        path.close()
        drawPath(path, brush = brush)
    }
}

private fun DrawScope.drawPenIcon(cx: Float, cy: Float, r: Float, brush: Brush) {
    val angle = -45f * PI.toFloat() / 180f
    val len = r * 1.4f
    val endX = cx + cos(angle) * len / 2f
    val endY = cy + sin(angle) * len / 2f
    val startX = cx - cos(angle) * len / 2f
    val startY = cy - sin(angle) * len / 2f
    drawLine(brush, Offset(startX, startY), Offset(endX, endY), strokeWidth = 5f,
        cap = StrokeCap.Round)
    // Tip
    drawCircle(Color.White, radius = 2.5f, center = Offset(endX, endY))
}

private fun DrawScope.drawMasksIcon(cx: Float, cy: Float, r: Float, brush: Brush) {
    // Comedy face
    drawCircle(brush, radius = r * 0.6f, center = Offset(cx - r * 0.2f, cy), style = Stroke(2.5f))
    drawArc(Color.White, 0f, 180f, false,
        Offset(cx - r * 0.5f, cy - r * 0.15f), Size(r * 0.6f, r * 0.3f), style = Stroke(2f))
    // Tragedy face (smaller, right)
    drawCircle(brush, radius = r * 0.45f, center = Offset(cx + r * 0.35f, cy + r * 0.1f), style = Stroke(2f))
    drawArc(Color.White, 0f, -180f, false,
        Offset(cx + r * 0.1f, cy + r * 0.2f), Size(r * 0.5f, r * 0.25f), style = Stroke(2f))
}

private fun DrawScope.drawBookmarkIcon(cx: Float, cy: Float, r: Float, brush: Brush) {
    val w = r * 0.9f
    val h = r * 1.3f
    val path = Path().apply {
        moveTo(cx - w / 2f, cy - h / 2f)
        lineTo(cx + w / 2f, cy - h / 2f)
        lineTo(cx + w / 2f, cy + h / 2f)
        lineTo(cx, cy + h / 2f - w * 0.4f)
        lineTo(cx - w / 2f, cy + h / 2f)
        close()
    }
    drawPath(path, brush = brush)
}

private fun DrawScope.drawCatIcon(cx: Float, cy: Float, r: Float, brush: Brush, shimmerPhase: Float) {
    // Head
    drawCircle(brush, radius = r * 0.7f, center = Offset(cx, cy + r * 0.1f), style = Stroke(2.5f))
    // Ears
    val earPath = Path().apply {
        moveTo(cx - r * 0.55f, cy - r * 0.45f)
        lineTo(cx - r * 0.35f, cy - r * 0.85f)
        lineTo(cx - r * 0.1f, cy - r * 0.5f)
        close()
    }
    val earPath2 = Path().apply {
        moveTo(cx + r * 0.1f, cy - r * 0.5f)
        lineTo(cx + r * 0.35f, cy - r * 0.85f)
        lineTo(cx + r * 0.55f, cy - r * 0.45f)
        close()
    }
    drawPath(earPath, brush = brush)
    drawPath(earPath2, brush = brush)
    // Eyes (blinking based on shimmerPhase)
    val blinkProgress = if (shimmerPhase > 0.85f) (1f - (shimmerPhase - 0.85f) / 0.15f) else 1f
    val eyeR = r * 0.12f * blinkProgress
    drawCircle(Color.White, radius = eyeR.coerceAtLeast(1f), center = Offset(cx - r * 0.28f, cy + r * 0.05f))
    drawCircle(Color.White, radius = eyeR.coerceAtLeast(1f), center = Offset(cx + r * 0.28f, cy + r * 0.05f))
    // Smile
    drawArc(Color.White, 10f, 160f, false,
        Offset(cx - r * 0.25f, cy + r * 0.25f), Size(r * 0.5f, r * 0.25f), style = Stroke(2f))
    // Whiskers
    drawLine(Color.White, Offset(cx - r * 0.7f, cy + r * 0.15f), Offset(cx - r * 0.25f, cy + r * 0.2f), 1.5f)
    drawLine(Color.White, Offset(cx + r * 0.25f, cy + r * 0.2f), Offset(cx + r * 0.7f, cy + r * 0.15f), 1.5f)
}

// ─────────────────────────────────────────────────────────────────────────────
// Easter Egg — Secret Cat Overlay
// ─────────────────────────────────────────────────────────────────────────────

@Composable
fun EasterEggCatOverlay(
    visible: Boolean,
    onDismiss: () -> Unit
) {
    AnimatedVisibility(
        visible = visible,
        enter = fadeIn(tween(400)) + scaleIn(tween(500, easing = FastOutSlowInEasing), initialScale = 0.4f),
        exit = fadeOut(tween(300)) + scaleOut(tween(300))
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .zIndex(100f)
                .background(Color.Black.copy(alpha = 0.72f))
                .clickable(onClick = onDismiss),
            contentAlignment = Alignment.Center
        ) {
            // Confetti layer
            ConfettiCanvas(modifier = Modifier.fillMaxSize())

            // Central card
            Card(
                shape = RoundedCornerShape(28.dp),
                colors = CardDefaults.cardColors(containerColor = Color(0xFF1A1035)),
                elevation = CardDefaults.cardElevation(24.dp),
                modifier = Modifier
                    .padding(32.dp)
                    .widthIn(max = 320.dp)
            ) {
                Column(
                    modifier = Modifier.padding(28.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    AnimatedCatEmoji()

                    Text(
                        text = "🎉 Секрет раскрыт! 🎉",
                        style = MaterialTheme.typography.titleMedium.copy(fontWeight = FontWeight.Bold),
                        color = Color(0xFFFFD700),
                        textAlign = TextAlign.Center
                    )
                    Text(
                        text = "Вы нашли Котика-читателя!\nДостижение разблокировано.",
                        style = MaterialTheme.typography.bodyMedium,
                        color = Color.White.copy(alpha = 0.85f),
                        textAlign = TextAlign.Center
                    )

                    Spacer(Modifier.height(4.dp))

                    // Achievement badge preview
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clip(RoundedCornerShape(16.dp))
                            .background(
                                Brush.linearGradient(
                                    listOf(Color(0xFFDA22FF), Color(0xFF9733EE))
                                )
                            )
                            .padding(vertical = 14.dp, horizontal = 20.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(12.dp)
                        ) {
                            Text("🐱", fontSize = 32.sp)
                            Column {
                                Text(
                                    text = "Читатель-мастер",
                                    style = MaterialTheme.typography.titleSmall.copy(fontWeight = FontWeight.Bold),
                                    color = Color.White
                                )
                                Text(
                                    text = "Скрытое достижение",
                                    style = MaterialTheme.typography.labelSmall,
                                    color = Color.White.copy(alpha = 0.7f)
                                )
                            }
                        }
                    }

                    Text(
                        text = "Нажмите, чтобы закрыть",
                        style = MaterialTheme.typography.labelSmall,
                        color = Color.White.copy(alpha = 0.4f)
                    )
                }
            }
        }
    }
}

@Composable
private fun AnimatedCatEmoji() {
    val reducedMotion = LocalPerformanceUiHints.current.reducedMotion
    val infiniteTransition = if (!reducedMotion) {
        rememberInfiniteTransition(label = "cat_bounce")
    } else {
        null
    }
    val bounceY = if (reducedMotion) {
        0f
    } else {
        infiniteTransition!!.animateFloat(
            initialValue = 0f, targetValue = -12f,
            animationSpec = infiniteRepeatable(
                animation = tween(700, easing = FastOutSlowInEasing),
                repeatMode = RepeatMode.Reverse
            ),
            label = "bounce"
        ).value
    }
    val rotation = if (reducedMotion) {
        0f
    } else {
        infiniteTransition!!.animateFloat(
            initialValue = -8f, targetValue = 8f,
            animationSpec = infiniteRepeatable(
                animation = tween(900, easing = FastOutSlowInEasing),
                repeatMode = RepeatMode.Reverse
            ),
            label = "sway"
        ).value
    }
    Text(
        text = "🐱",
        fontSize = 72.sp,
        modifier = Modifier.graphicsLayer {
            translationY = bounceY
            rotationZ = rotation
        }
    )
}

@Composable
private fun ConfettiCanvas(modifier: Modifier = Modifier) {
    if (LocalPerformanceUiHints.current.reducedMotion) return
    val particles = remember {
        List(60) {
            ConfettiParticle(
                x = Random.nextFloat(),
                y = Random.nextFloat(),
                color = listOf(
                    Color(0xFFFFD700), Color(0xFFFF6B6B), Color(0xFF6C63FF),
                    Color(0xFF43CEA2), Color(0xFFFF96AD), Color(0xFF4FACFE),
                    Color(0xFFA8FF78), Color(0xFFFFB347)
                ).random(),
                size = Random.nextFloat() * 10f + 5f,
                speedY = Random.nextFloat() * 0.003f + 0.001f,
                rotation = Random.nextFloat() * 360f,
                rotationSpeed = (Random.nextFloat() - 0.5f) * 4f,
                shape = Random.nextInt(3)
            )
        }
    }
    val infiniteTransition = rememberInfiniteTransition(label = "confetti")
    val animPhase by infiniteTransition.animateFloat(
        initialValue = 0f, targetValue = 1f,
        animationSpec = infiniteRepeatable(tween(4000, easing = LinearEasing)),
        label = "phase"
    )

    Canvas(modifier = modifier) {
        particles.forEach { p ->
            val currentY = ((p.y + animPhase * p.speedY * 400f) % 1.1f) * size.height
            val currentX = p.x * size.width + sin(animPhase * 2 * PI.toFloat() + p.y * 10f) * 20f
            val rot = p.rotation + animPhase * p.rotationSpeed * 360f

            withTransform({
                translate(currentX, currentY)
                rotate(rot)
            }) {
                when (p.shape) {
                    0 -> drawRect(p.color, Offset(-p.size / 2f, -p.size / 2f), Size(p.size, p.size * 0.6f))
                    1 -> drawCircle(p.color, radius = p.size / 2f)
                    else -> {
                        val path = Path().apply {
                            moveTo(0f, -p.size / 2f)
                            lineTo(p.size / 2f, p.size / 2f)
                            lineTo(-p.size / 2f, p.size / 2f)
                            close()
                        }
                        drawPath(path, p.color)
                    }
                }
            }
        }
    }
}

private data class ConfettiParticle(
    val x: Float,
    val y: Float,
    val color: Color,
    val size: Float,
    val speedY: Float,
    val rotation: Float,
    val rotationSpeed: Float,
    val shape: Int
)

// ─────────────────────────────────────────────────────────────────────────────
// Stats tap target (easter egg trigger)
// ─────────────────────────────────────────────────────────────────────────────

/**
 * Wraps [content] with a secret tap detector.
 * Tap 7 times within 3 seconds → [onSecretUnlocked] fires.
 */
@Composable
fun SecretTapTarget(
    onSecretUnlocked: () -> Unit,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit
) {
    val tapTimes = remember { mutableStateListOf<Long>() }

    Box(
        modifier = modifier.pointerInput(Unit) {
            detectTapGestures {
                val now = System.currentTimeMillis()
                tapTimes.removeAll { now - it > 3000L }
                tapTimes.add(now)
                if (tapTimes.size >= 7) {
                    tapTimes.clear()
                    onSecretUnlocked()
                }
            }
        }
    ) {
        content()
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Achievement string bundle (passed from LocalStrings)
// ─────────────────────────────────────────────────────────────────────────────

data class AchievementStrings(
    val achFirstBook: String,
    val achFirstBookDesc: String,
    val achReader: String,
    val achReaderDesc: String,
    val achCollector: String,
    val achCollectorDesc: String,
    val achFirstComplete: String,
    val achFirstCompleteDesc: String,
    val achMarathon: String,
    val achMarathonDesc: String,
    val achAuthorFan: String,
    val achAuthorFanDesc: String,
    val achGenreGourmet: String,
    val achGenreGourmetDesc: String,
    val achBookmarker: String,
    val achBookmarkerDesc: String,
    val achSecretCat: String,
    val achSecretCatDesc: String,
    val achSecretHint: String
)
