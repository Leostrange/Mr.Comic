package io.leostrange.mrcomic.feature.reader.ui.rsvp

import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.*
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.coroutines.delay

/**
 * RSVP (Rapid Serial Visual Presentation) overlay for speed reading.
 * Displays one word at a time with an Optimal Recognition Point (ORP) marker.
 */
@Composable
fun RsvpOverlay(
    words: List<String>,
    initialIndex: Int = 0,
    initialWpm: Int = 300,
    onClose: () -> Unit,
    onFinished: () -> Unit
) {
    var currentIndex by remember { mutableIntStateOf(initialIndex) }
    var wpm by remember { mutableIntStateOf(initialWpm) }
    var isPlaying by remember { mutableStateOf(true) }
    var showControls by remember { mutableStateOf(false) }

    val delayMs = remember(wpm) { (60_000L / wpm) }

    // Auto-advance timer
    LaunchedEffect(isPlaying, currentIndex, wpm) {
        if (!isPlaying || currentIndex >= words.size) return@LaunchedEffect
        delay(delayMs)
        if (currentIndex < words.size - 1) {
            currentIndex++
        } else {
            isPlaying = false
            onFinished()
        }
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = 0.92f))
            .clickable { showControls = !showControls }
    ) {
        // Word display area
        Column(
            modifier = Modifier.align(Alignment.Center),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            // Progress indicator
            Text(
                text = "${currentIndex + 1} / ${words.size}",
                color = Color.White.copy(alpha = 0.5f),
                fontSize = 12.sp
            )
            Spacer(modifier = Modifier.height(8.dp))

            // Word with ORP highlight
            val word = words.getOrNull(currentIndex) ?: ""
            RsvpWordDisplay(word = word, fontSize = 36.sp)

            Spacer(modifier = Modifier.height(16.dp))

            // WPM display
            Text(
                text = "$wpm WPM",
                color = Color.White.copy(alpha = 0.7f),
                fontSize = 14.sp
            )
        }

        // Controls (shown on tap)
        if (showControls) {
            Column(
                modifier = Modifier
                    .align(Alignment.BottomCenter)
                    .padding(32.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                // Speed slider
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text("100", color = Color.White.copy(alpha = 0.5f), fontSize = 12.sp)
                    Slider(
                        value = wpm.toFloat(),
                        onValueChange = { wpm = it.toInt().coerceIn(100, 1000) },
                        valueRange = 100f..1000f,
                        modifier = Modifier.weight(1f).padding(horizontal = 8.dp),
                        colors = SliderDefaults.colors(
                            thumbColor = Color.White,
                            activeTrackColor = MaterialTheme.colorScheme.primary
                        )
                    )
                    Text("1000", color = Color.White.copy(alpha = 0.5f), fontSize = 12.sp)
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Playback controls
                Row(
                    horizontalArrangement = Arrangement.spacedBy(24.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    // Previous word
                    IconButton(onClick = {
                        currentIndex = (currentIndex - 10).coerceAtLeast(0)
                    }) {
                        Icon(Icons.Default.SkipPrevious, "Back 10", tint = Color.White)
                    }

                    // Play/Pause
                    IconButton(onClick = { isPlaying = !isPlaying }) {
                        Icon(
                            if (isPlaying) Icons.Default.Pause else Icons.Default.PlayArrow,
                            if (isPlaying) "Pause" else "Play",
                            tint = Color.White,
                            modifier = Modifier.size(48.dp)
                        )
                    }

                    // Next word
                    IconButton(onClick = {
                        currentIndex = (currentIndex + 10).coerceAtMost(words.size - 1)
                    }) {
                        Icon(Icons.Default.SkipNext, "Forward 10", tint = Color.White)
                    }
                }

                Spacer(modifier = Modifier.height(8.dp))

                // Close button
                TextButton(onClick = onClose) {
                    Text("Close", color = Color.White.copy(alpha = 0.7f))
                }
            }
        }
    }
}

/**
 * Displays a single word with the Optimal Recognition Point (ORP) highlighted.
 * The ORP is the letter where the eye naturally focuses — typically near the center.
 */
@Composable
private fun RsvpWordDisplay(word: String, fontSize: androidx.compose.ui.unit.TextUnit) {
    if (word.isEmpty()) return

    val orpIndex = calculateOrpIndex(word)
    val annotatedString = buildAnnotatedString {
        // Characters before ORP
        if (orpIndex > 0) {
            append(word.substring(0, orpIndex))
        }
        // ORP character — highlighted
        withStyle(SpanStyle(color = Color(0xFFFF4444), fontWeight = FontWeight.Bold)) {
            append(word[orpIndex].toString())
        }
        // Characters after ORP
        if (orpIndex < word.length - 1) {
            append(word.substring(orpIndex + 1))
        }
    }

    // ORP alignment guide: the ORP character should be at a fixed position
    val orpFraction = (orpIndex.toFloat() / word.length.coerceAtLeast(1)).coerceIn(0.1f, 0.9f)

    Box(
        modifier = Modifier
            .widthIn(min = 200.dp, max = 400.dp)
            .height(80.dp)
            .clip(RoundedCornerShape(8.dp))
            .background(Color.White.copy(alpha = 0.1f)),
        contentAlignment = Alignment.Center
    ) {
        // ORP alignment line
        Box(
            modifier = Modifier
                .fillMaxHeight()
                .width(2.dp)
                .align(Alignment.Center)
                .offset(x = ((orpFraction - 0.5f) * 100).dp)
                .background(Color(0xFFFF4444).copy(alpha = 0.3f))
        )

        Text(
            text = annotatedString,
            fontSize = fontSize,
            fontFamily = FontFamily.Monospace,
            color = Color.White,
            textAlign = TextAlign.Center
        )
    }
}

/**
 * Calculate the Optimal Recognition Point index for a word.
 * Short words: center. Longer words: slightly left of center.
 */
private fun calculateOrpIndex(word: String): Int {
    val len = word.length
    return when {
        len <= 1 -> 0
        len <= 5 -> len / 2
        len <= 9 -> (len * 0.38).toInt()
        else -> (len * 0.35).toInt().coerceAtMost(4)
    }.coerceIn(0, len - 1)
}

/**
 * Extract words from text content for RSVP display.
 * Strips HTML tags and normalizes whitespace.
 */
fun extractWordsForRsvp(text: String): List<String> {
    // Strip HTML tags
    val plain = text.replace(Regex("<[^>]+>"), " ")
        .replace(Regex("&[a-zA-Z]+;"), " ")
        .replace(Regex("&#\\d+;"), " ")
        .replace(Regex("\\s+"), " ")
        .trim()

    return plain.split(Regex("\\s+"))
        .filter { it.isNotBlank() }
        .map { it.trim('\"', '\'', '(', ')', '[', ']', '{', '}', ',', '.', '!', '?', ':', ';') }
        .filter { it.isNotEmpty() }
}
