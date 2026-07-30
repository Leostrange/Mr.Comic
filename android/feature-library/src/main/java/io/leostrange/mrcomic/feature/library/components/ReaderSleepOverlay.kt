package io.leostrange.mrcomic.feature.library.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.EnterTransition
import androidx.compose.animation.core.*
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.*
import androidx.compose.ui.semantics.LiveRegionMode
import androidx.compose.ui.semantics.liveRegion
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zIndex
import kotlinx.coroutines.delay
import kotlin.math.*
import kotlin.random.Random

// ─────────────────────────────────────────────────────────────────────────────
// Пасхалка «Читательский сон»
// Активируется длинным нажатием кнопки «Настройки».
// Через 30 секунд вызывает [onSleepTimeout].
// ─────────────────────────────────────────────────────────────────────────────

@Composable
fun ReaderSleepOverlay(
    visible: Boolean,
    onDismiss: () -> Unit,
    onSleepTimeout: () -> Unit
) {
    // EnterTransition.None — Box появляется мгновенно с непрозрачным фоном.
    // NightSkyCanvas и элементы внутри имеют собственные отложенные анимации.
    // exit — плавное затухание при закрытии.
    AnimatedVisibility(
        visible = visible,
        enter = EnterTransition.None,
        exit = fadeOut(tween(1200))
    ) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .zIndex(200f)
                .background(Color(0xFF010B1A))
                .semantics { liveRegion = LiveRegionMode.Polite }
                .clickable(
                    indication = null,
                    interactionSource = remember { MutableInteractionSource() }
                ) { onDismiss() },
            contentAlignment = Alignment.Center
        ) {
            // Фон — ночное небо
            NightSkyCanvas(modifier = Modifier.fillMaxSize())

            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
                modifier = Modifier.padding(40.dp)
            ) {
                MoonComposable()

                Spacer(Modifier.height(28.dp))

                // Главное сообщение
                FadingText(
                    text = "Спокойной ночи.",
                    delayMs = 800,
                    fontSize = 32,
                    fontWeight = FontWeight.Light
                )

                Spacer(Modifier.height(12.dp))

                FadingText(
                    text = "Завтра продолжим чтение...",
                    delayMs = 1600,
                    fontSize = 18,
                    fontStyle = FontStyle.Italic,
                    alpha = 0.75f
                )

                Spacer(Modifier.height(40.dp))

                // Книги «закрываются»
                ClosingBooksRow(delayMs = 2200)

                Spacer(Modifier.height(40.dp))

                // Счётчик обратного отсчёта
                SleepCountdown(
                    totalSeconds = 30,
                    active = visible,
                    onFinished = onSleepTimeout
                )
            }
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Ночное небо со звёздами
// ─────────────────────────────────────────────────────────────────────────────

private data class Star(val x: Float, val y: Float, val r: Float, val twinkleOffset: Float)

@Composable
private fun NightSkyCanvas(modifier: Modifier = Modifier) {
    val stars = remember {
        List(120) {
            Star(
                x = Random.nextFloat(),
                y = Random.nextFloat() * 0.7f,
                r = Random.nextFloat() * 2.5f + 0.5f,
                twinkleOffset = Random.nextFloat() * (2 * PI.toFloat())
            )
        }
    }
    var alphaVisible by remember { mutableStateOf(false) }
    LaunchedEffect(Unit) { alphaVisible = true }
    val gradientAlpha by animateFloatAsState(
        targetValue = if (alphaVisible) 1f else 0f,
        animationSpec = tween(2000, easing = FastOutSlowInEasing),
        label = "sky_alpha"
    )
    val infiniteTransition = rememberInfiniteTransition(label = "sky")
    val time by infiniteTransition.animateFloat(
        initialValue = 0f, targetValue = (2 * PI).toFloat(),
        animationSpec = infiniteRepeatable(tween(6000, easing = LinearEasing)),
        label = "time"
    )

    Canvas(modifier = modifier) {
        // Градиент ночного неба
        drawRect(
            brush = Brush.verticalGradient(
                listOf(
                    Color(0xFF010B1A).copy(alpha = gradientAlpha),
                    Color(0xFF020F24).copy(alpha = gradientAlpha),
                    Color(0xFF0D1B2A).copy(alpha = gradientAlpha),
                    Color(0xFF162033).copy(alpha = gradientAlpha)
                )
            )
        )
        // Звёзды
        stars.forEach { star ->
            val twinkle = 0.5f + 0.5f * sin(time + star.twinkleOffset)
            drawCircle(
                Color.White.copy(alpha = twinkle * 0.85f + 0.15f),
                radius = star.r * twinkle.coerceIn(0.5f, 1f),
                center = Offset(star.x * size.width, star.y * size.height)
            )
        }
        // Туманность / свечение
        drawCircle(
            brush = Brush.radialGradient(
                listOf(
                    Color(0xFF1A2550).copy(alpha = 0.35f),
                    Color.Transparent
                ),
                center = Offset(size.width * 0.6f, size.height * 0.2f),
                radius = size.minDimension * 0.5f
            ),
            radius = size.minDimension * 0.5f,
            center = Offset(size.width * 0.6f, size.height * 0.2f)
        )
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Луна с ореолом
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun MoonComposable() {
    val infiniteTransition = rememberInfiniteTransition(label = "moon")
    val glowScale by infiniteTransition.animateFloat(
        initialValue = 1f, targetValue = 1.12f,
        animationSpec = infiniteRepeatable(tween(3000, easing = FastOutSlowInEasing), RepeatMode.Reverse),
        label = "glow"
    )
    Canvas(modifier = Modifier.size(90.dp)) {
        val cx = size.width / 2f
        val cy = size.height / 2f
        val r = size.minDimension / 2.5f
        // Ореол
        drawCircle(
            brush = Brush.radialGradient(
                listOf(
                    Color(0xFFFFF9C4).copy(alpha = 0.18f),
                    Color(0xFFFFF59D).copy(alpha = 0.08f),
                    Color.Transparent
                )
            ),
            radius = r * 2.2f * glowScale,
            center = Offset(cx, cy)
        )
        // Луна
        drawCircle(
            brush = Brush.radialGradient(
                listOf(Color(0xFFFFF8E1), Color(0xFFFFECB3)),
                center = Offset(cx - r * 0.15f, cy - r * 0.15f)
            ),
            radius = r,
            center = Offset(cx, cy)
        )
        // Тёмный «укус» — серп
        drawCircle(
            Color(0xFF0D1421),
            radius = r * 0.82f,
            center = Offset(cx + r * 0.45f, cy - r * 0.05f)
        )
        // Кратеры
        drawCircle(Color(0xFFFFE082).copy(alpha = 0.4f), radius = r * 0.1f, center = Offset(cx - r * 0.25f, cy + r * 0.2f))
        drawCircle(Color(0xFFFFE082).copy(alpha = 0.25f), radius = r * 0.07f, center = Offset(cx - r * 0.45f, cy - r * 0.1f))
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Книги «закрываются» — анимированный ряд
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun ClosingBooksRow(delayMs: Int) {
    var started by remember { mutableStateOf(false) }
    LaunchedEffect(Unit) {
        delay(delayMs.toLong())
        started = true
    }

    val bookColors = listOf(
        listOf(Color(0xFF4A3728), Color(0xFF6B4C37)),
        listOf(Color(0xFF1A3A5C), Color(0xFF2A5280)),
        listOf(Color(0xFF2D4A22), Color(0xFF3F6B30)),
        listOf(Color(0xFF5C2A2A), Color(0xFF8B3D3D)),
        listOf(Color(0xFF3A2A5C), Color(0xFF5C3D8B))
    )

    Row(
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.Bottom
    ) {
        bookColors.forEachIndexed { index, colors ->
            val animatable = remember { Animatable(0f) }
            LaunchedEffect(started) {
                if (started) {
                    delay(index * 150L)
                    animatable.animateTo(
                        1f,
                        tween(600, easing = FastOutSlowInEasing)
                    )
                }
            }
            BookCloseCanvas(
                closedFraction = animatable.value,
                colorStart = colors[0],
                colorEnd = colors[1],
                modifier = Modifier.size(width = 28.dp, height = 44.dp)
            )
        }
    }
}

@Composable
private fun BookCloseCanvas(
    closedFraction: Float,
    colorStart: Color,
    colorEnd: Color,
    modifier: Modifier = Modifier
) {
    Canvas(modifier = modifier) {
        val w = size.width
        val h = size.height
        val spineW = w * 0.12f
        // Корешок
        drawRect(
            Brush.verticalGradient(listOf(colorStart, colorEnd)),
            topLeft = Offset(0f, 0f),
            size = Size(spineW, h)
        )
        // Обложка (закрывается: открытая = полная ширина, закрытая = 0)
        val coverW = (w - spineW) * (1f - closedFraction * 0.85f)
        drawRect(
            Brush.horizontalGradient(
                listOf(colorEnd, colorEnd.copy(alpha = 0.6f)),
                startX = spineW, endX = spineW + coverW
            ),
            topLeft = Offset(spineW, 0f),
            size = Size(coverW.coerceAtLeast(0f), h)
        )
        // Страницы (становятся тоньше при закрытии)
        val pagesW = (w - spineW - 2f) * (1f - closedFraction * 0.9f)
        if (pagesW > 0f) {
            drawRect(
                Color(0xFFF5F0E8).copy(alpha = 0.9f),
                topLeft = Offset(spineW + 1f, h * 0.05f),
                size = Size(pagesW, h * 0.9f)
            )
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Текст с плавным появлением
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun FadingText(
    text: String,
    delayMs: Int,
    fontSize: Int,
    fontWeight: FontWeight = FontWeight.Normal,
    fontStyle: FontStyle = FontStyle.Normal,
    alpha: Float = 1f
) {
    var visible by remember { mutableStateOf(false) }
    LaunchedEffect(Unit) {
        delay(delayMs.toLong())
        visible = true
    }
    val animAlpha by animateFloatAsState(
        targetValue = if (visible) alpha else 0f,
        animationSpec = tween(1200, easing = FastOutSlowInEasing),
        label = "text_alpha"
    )
    Text(
        text = text,
        fontSize = fontSize.sp,
        fontWeight = fontWeight,
        fontStyle = fontStyle,
        color = Color.White.copy(alpha = animAlpha),
        textAlign = TextAlign.Center
    )
}

// ─────────────────────────────────────────────────────────────────────────────
// Обратный отсчёт
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun SleepCountdown(
    totalSeconds: Int,
    active: Boolean,
    onFinished: () -> Unit
) {
    var secondsLeft by remember { mutableIntStateOf(totalSeconds) }
    LaunchedEffect(active, totalSeconds) {
        secondsLeft = totalSeconds
        if (!active) return@LaunchedEffect
        while (secondsLeft > 0) {
            delay(1000L)
            secondsLeft--
        }
        if (active) onFinished()
    }

    val progress = secondsLeft.toFloat() / totalSeconds.toFloat()
    val arcColor = lerp(Color(0xFF81C784), Color(0xFF42A5F5), 1f - progress)

    Canvas(modifier = Modifier.size(56.dp)) {
        val cx = size.width / 2f
        val cy = size.height / 2f
        val r = size.minDimension / 2f - 4f
        // Фоновая дуга
        drawArc(
            Color.White.copy(alpha = 0.12f),
            startAngle = -90f,
            sweepAngle = 360f,
            useCenter = false,
            topLeft = Offset(cx - r, cy - r),
            size = Size(r * 2f, r * 2f),
            style = androidx.compose.ui.graphics.drawscope.Stroke(width = 3f)
        )
        // Прогресс-дуга
        drawArc(
            arcColor,
            startAngle = -90f,
            sweepAngle = 360f * progress,
            useCenter = false,
            topLeft = Offset(cx - r, cy - r),
            size = Size(r * 2f, r * 2f),
            style = androidx.compose.ui.graphics.drawscope.Stroke(
                width = 3f,
                cap = StrokeCap.Round
            )
        )
    }
    Text(
        text = "$secondsLeft",
        fontSize = 12.sp,
        color = Color.White.copy(alpha = 0.5f),
        modifier = Modifier.padding(top = 4.dp)
    )
}
