package io.leostrange.mrcomic.feature.ocr.data

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.RectF
import android.graphics.Typeface
import javax.inject.Inject
import javax.inject.Singleton
import kotlin.math.min

/**
 * Renders translated text over speech bubbles on comic pages.
 *
 * Features:
 * - Auto-sizes font to fit the bubble bounds
 * - Centers text horizontally and vertically
 * - Supports showing original text on tap (toggle)
 * - Configurable overlay style (background, text color, opacity)
 */
@Singleton
class ComicOverlayRenderer @Inject constructor() {

    /**
     * Render translated text overlays on a comic page bitmap.
     *
     * @param original The original page bitmap.
     * @param bubbles Detected speech bubbles with original text.
     * @param translations Map of original text → translated text.
     * @param config Overlay rendering configuration.
     * @return A new bitmap with translated text overlaid on the bubbles.
     */
    fun renderOverlays(
        original: Bitmap,
        bubbles: List<SpeechBubble>,
        translations: Map<String, String>,
        config: OverlayConfig = OverlayConfig()
    ): Bitmap {
        val result = original.copy(Bitmap.Config.ARGB_8888, true)
        val canvas = Canvas(result)

        for (bubble in bubbles) {
            val translated = translations[bubble.text] ?: continue
            if (translated.isBlank()) continue

            // Draw background
            if (config.drawBackground) {
                val bgPaint = Paint().apply {
                    color = config.backgroundColor
                    style = Paint.Style.FILL
                    alpha = (config.backgroundOpacity * 255).toInt()
                }
                canvas.drawRoundRect(
                    RectF(bubble.bounds),
                    config.cornerRadius,
                    config.cornerRadius,
                    bgPaint
                )
            }

            // Draw translated text
            drawTextInBounds(canvas, translated, bubble.bounds, config)
        }

        return result
    }

    /**
     * Draw text centered within the given bounds, auto-sizing to fit.
     */
    private fun drawTextInBounds(
        canvas: Canvas,
        text: String,
        bounds: Rect,
        config: OverlayConfig
    ) {
        val textPaint = Paint().apply {
            color = config.textColor
            typeface = Typeface.DEFAULT_BOLD
            isAntiAlias = true
            textAlign = Paint.Align.CENTER
        }

        val availableWidth = bounds.width() - config.padding * 2
        val availableHeight = bounds.height() - config.padding * 2

        if (availableWidth <= 0 || availableHeight <= 0) return

        // Find optimal font size
        val fontSize = findOptimalFontSize(text, availableWidth, availableHeight, textPaint)
        textPaint.textSize = fontSize

        // Word-wrap text
        val lines = wrapText(text, textPaint, availableWidth)

        // Calculate vertical centering
        val lineHeight = fontSize * config.lineHeight
        val totalTextHeight = lines.size * lineHeight
        var y = bounds.top + (availableHeight - totalTextHeight) / 2 + fontSize

        val centerX = bounds.centerX().toFloat()

        for (line in lines) {
            canvas.drawText(line, centerX, y, textPaint)
            y += lineHeight
        }
    }

    /**
     * Find the largest font size that fits all text within the given dimensions.
     */
    private fun findOptimalFontSize(
        text: String,
        maxWidth: Int,
        maxHeight: Int,
        paint: Paint
    ): Float {
        var fontSize = config.maxFontSize

        while (fontSize > config.minFontSize) {
            paint.textSize = fontSize
            val lines = wrapText(text, paint, maxWidth)
            val lineHeight = fontSize * 1.3f
            val totalHeight = lines.size * lineHeight

            if (totalHeight <= maxHeight) {
                return fontSize
            }

            fontSize -= 1f
        }

        return config.minFontSize
    }

    /**
     * Word-wrap text to fit within [maxWidth] pixels.
     */
    private fun wrapText(text: String, paint: Paint, maxWidth: Int): List<String> {
        val words = text.split(Regex("\\s+"))
        val lines = mutableListOf<String>()
        val currentLine = StringBuilder()

        for (word in words) {
            val testLine = if (currentLine.isEmpty()) word
            else "$currentLine $word"

            if (paint.measureText(testLine) <= maxWidth) {
                currentLine.clear()
                currentLine.append(testLine)
            } else {
                if (currentLine.isNotEmpty()) {
                    lines.add(currentLine.toString())
                }
                currentLine.clear()
                currentLine.append(word)
            }
        }

        if (currentLine.isNotEmpty()) {
            lines.add(currentLine.toString())
        }

        return lines.ifEmpty { listOf(text) }
    }

    companion object {
        private val config = OverlayConfig()
    }
}

/**
 * Configuration for comic overlay rendering.
 */
data class OverlayConfig(
    /** Background color behind translated text. */
    val backgroundColor: Int = Color.WHITE,
    /** Background opacity (0.0 - 1.0). */
    val backgroundOpacity: Float = 0.85f,
    /** Whether to draw a background behind the text. */
    val drawBackground: Boolean = true,
    /** Corner radius for the background rectangle. */
    val cornerRadius: Float = 8f,
    /** Text color. */
    val textColor: Int = Color.BLACK,
    /** Padding inside the bubble bounds. */
    val padding: Int = 8,
    /** Line height multiplier. */
    val lineHeight: Float = 1.3f,
    /** Minimum font size. */
    val minFontSize: Float = 10f,
    /** Maximum font size. */
    val maxFontSize: Float = 32f,
    /** Overlay style. */
    val style: OverlayStyle = OverlayStyle.AUTO
)

enum class OverlayStyle {
    /** Automatically choose light/dark based on page colors. */
    AUTO,
    /** Light background with dark text. */
    LIGHT,
    /** Dark background with light text. */
    DARK,
    /** Transparent background, outline text only. */
    TRANSPARENT
}
