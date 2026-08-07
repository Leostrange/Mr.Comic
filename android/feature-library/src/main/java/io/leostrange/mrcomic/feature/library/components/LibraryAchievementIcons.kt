package io.leostrange.mrcomic.feature.library.components

import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.drawscope.rotate
import io.leostrange.mrcomic.core.ui.performance.LocalPerformanceUiHints
import kotlin.math.PI
import kotlin.math.cos
import kotlin.math.sin

// ─────────────────────────────────────────────────────────────────────────────
// Canvas achievement icons (per type)
// ─────────────────────────────────────────────────────────────────────────────

@Composable
internal fun AchievementIconCanvas(
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
        cornerRadius = CornerRadius(3f),
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
