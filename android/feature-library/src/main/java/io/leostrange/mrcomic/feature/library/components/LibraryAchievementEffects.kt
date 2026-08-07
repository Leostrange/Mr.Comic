package io.leostrange.mrcomic.feature.library.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.scaleIn
import androidx.compose.animation.scaleOut
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.drawscope.withTransform
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zIndex
import io.leostrange.mrcomic.core.ui.performance.LocalPerformanceUiHints
import kotlin.math.PI
import kotlin.math.sin
import kotlin.random.Random

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
