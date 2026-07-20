package io.leostrange.mrcomic.feature.ocr.ui

import android.graphics.Bitmap
import androidx.compose.foundation.clickable
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.sizeIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zIndex
import androidx.compose.foundation.layout.offset
import androidx.compose.runtime.remember
import io.leostrange.mrcomic.core.model.BubbleMaskShape
import io.leostrange.mrcomic.core.model.OcrBlock
import io.leostrange.mrcomic.core.model.OcrBlockType
import io.leostrange.mrcomic.core.model.OverlayBlock
import io.leostrange.mrcomic.core.model.OverlayDisplayMode
import kotlin.math.max
import kotlin.math.roundToInt

@Composable
fun OverlayRenderer(
    bitmap: Bitmap,
    sourceBlocks: List<OcrBlock>,
    translatedBlocks: List<OverlayBlock>,
    showOverlay: Boolean,
    overlayDisplayMode: OverlayDisplayMode,
    overlayOpacity: Float,
    overlayFontScale: Float,
    overlayStyle: String,
    onBlockClick: (String) -> Unit,
    pageContentDescription: String,
    modifier: Modifier = Modifier
) {
    val aspectRatio = bitmap.width.toFloat() / bitmap.height.toFloat()
    val translatedById = remember(translatedBlocks) { translatedBlocks.associateBy { it.ocrBlockId } }

    BoxWithConstraints(modifier = modifier) {
        val maxPreviewHeight = 320.dp
        val previewWidth = if (maxWidth / aspectRatio <= maxPreviewHeight) {
            maxWidth
        } else {
            maxPreviewHeight * aspectRatio
        }
        val previewHeight = previewWidth / aspectRatio
        Box(
            modifier = Modifier
                .width(previewWidth)
                .height(previewHeight)
                .clip(RoundedCornerShape(20.dp))
        ) {
            Image(
                painter = BitmapPainter(bitmap.asImageBitmap()),
                contentDescription = pageContentDescription,
                contentScale = ContentScale.FillBounds,
                modifier = Modifier.fillMaxSize()
            )

            if (showOverlay) {
                sourceBlocks.forEach { block ->
                    val overlay = translatedById[block.id] ?: return@forEach
                    val left = previewWidth * (block.bboxLeft / bitmap.width.toFloat())
                    val top = previewHeight * (block.bboxTop / bitmap.height.toFloat())
                    val rawWidth = (previewWidth * (block.bboxWidth / bitmap.width.toFloat())).coerceAtLeast(56.dp)
                    val rawHeight = (previewHeight * (block.bboxHeight / bitmap.height.toFloat())).coerceAtLeast(30.dp)
                    val width = rawWidth.coerceAtMost((previewWidth - left).coerceAtLeast(56.dp))
                    val height = rawHeight.coerceAtMost((previewHeight - top).coerceAtLeast(30.dp))
                    val layout = remember(block, overlay, width, height) {
                        overlayLayout(
                            block = block,
                            overlay = overlay,
                            widthDp = width.value,
                            heightDp = height.value,
                            overlayDisplayMode = overlayDisplayMode
                        )
                    }
                    val innerWidth = (width - (layout.maskInsetDp * 2).dp).coerceAtLeast(40.dp)
                    val innerHeight = (height - (layout.maskInsetDp * 2).dp).coerceAtLeast(24.dp)

                    Box(
                        modifier = Modifier
                            .offset(x = left, y = top)
                            .width(width)
                            .height(height)
                            .clickable { onBlockClick(block.id) }
                            .padding(layout.maskInsetDp.dp)
                            .clip(layout.shape.toCornerShape(layout.cornerRadiusDp))
                            .background(
                                layout.backgroundColor(
                                    surface = MaterialTheme.colorScheme.surface,
                                    overlayOpacity = overlayOpacity,
                                    overlayStyle = overlayStyle
                                )
                            )
                            .border(
                                width = 1.dp,
                                color = layout.strokeColor(
                                    outline = MaterialTheme.colorScheme.outlineVariant,
                                    overlayStyle = overlayStyle
                                ),
                                shape = layout.shape.toCornerShape(layout.cornerRadiusDp)
                            )
                            .padding(
                                horizontal = layout.horizontalPaddingDp.dp,
                                vertical = layout.verticalPaddingDp.dp
                            )
                            .zIndex(1f)
                    ) {
                        Text(
                            text = overlay.translatedText,
                            style = MaterialTheme.typography.labelSmall.copy(
                                fontSize = (layout.fontSizeSp * overlayFontScale).coerceIn(10f, 22f).sp,
                                lineHeight = (layout.lineHeightSp * overlayFontScale).coerceIn(12f, 26f).sp,
                                fontWeight = layout.fontWeight
                            ),
                            color = layout.textColor(
                                onSurface = MaterialTheme.colorScheme.onSurface,
                                overlayStyle = overlayStyle
                            ),
                            overflow = TextOverflow.Ellipsis,
                            textAlign = layout.textAlign,
                            maxLines = layout.maxLines,
                            modifier = Modifier
                                .fillMaxWidth()
                                .sizeIn(maxWidth = innerWidth, maxHeight = innerHeight)
                        )
                    }
                }
            }
        }
    }
}

private data class OverlayLayout(
    val fontSizeSp: Int,
    val lineHeightSp: Int,
    val horizontalPaddingDp: Int,
    val verticalPaddingDp: Int,
    val cornerRadiusDp: Int,
    val maskInsetDp: Int,
    val maxLines: Int,
    val fontWeight: FontWeight,
    val textAlign: TextAlign,
    val shape: BubbleMaskShape,
    val backgroundAlpha: Float,
    val strokeAlpha: Float
) {
    fun backgroundColor(surface: Color, overlayOpacity: Float, overlayStyle: String): Color {
        val adjustedAlpha = (backgroundAlpha * (overlayOpacity / 0.85f)).coerceIn(0.28f, 1f)
        return when (overlayStyle.uppercase()) {
            "LIGHT" -> Color.White.copy(alpha = adjustedAlpha)
            "DARK" -> Color(0xFF121417).copy(alpha = adjustedAlpha)
            else -> surface.copy(alpha = adjustedAlpha)
        }
    }

    fun strokeColor(outline: Color, overlayStyle: String): Color = when (overlayStyle.uppercase()) {
        "LIGHT" -> Color(0xFF1C1F24).copy(alpha = strokeAlpha * 0.35f)
        "DARK" -> Color.White.copy(alpha = strokeAlpha * 0.5f)
        else -> outline.copy(alpha = strokeAlpha)
    }

    fun textColor(onSurface: Color, overlayStyle: String): Color = when (overlayStyle.uppercase()) {
        "LIGHT" -> Color(0xFF16181D)
        "DARK" -> Color(0xFFF5F7FA)
        else -> onSurface
    }
}

private fun overlayLayout(
    block: OcrBlock,
    overlay: OverlayBlock,
    widthDp: Float,
    heightDp: Float,
    overlayDisplayMode: OverlayDisplayMode
): OverlayLayout {
    val compactText = overlay.translatedText.trim()
    val tokenCount = compactText.split(Regex("\\s+")).count { it.isNotBlank() }
    val charCount = compactText.count { !it.isWhitespace() }
    val aspectRatio = widthDp / max(heightDp, 1f)
    val area = widthDp * heightDp

    val baseFont = when {
        area >= 16000f -> 16
        area >= 10000f -> 15
        area >= 6500f -> 14
        area >= 3600f -> 13
        else -> 12
    }
    val contentPenalty = when {
        charCount >= 90 -> 2
        charCount >= 55 -> 1
        else -> 0
    }
    val typeAdjustment = when (block.blockType) {
        OcrBlockType.SFX -> 1
        OcrBlockType.NARRATION -> 0
        OcrBlockType.SPEECH -> 0
        OcrBlockType.UNKNOWN -> 0
    }
    val computedFontSize = (baseFont - contentPenalty + typeAdjustment).coerceIn(11, 18)
    val computedLineHeight = (computedFontSize * when (block.blockType) {
        OcrBlockType.SFX -> 1.0f
        OcrBlockType.NARRATION -> 1.2f
        OcrBlockType.SPEECH -> 1.15f
        OcrBlockType.UNKNOWN -> 1.12f
    }).roundToInt().coerceAtLeast(computedFontSize + 1)

    val maxLines = when {
        heightDp >= 96f -> 6
        heightDp >= 72f -> 5
        heightDp >= 52f -> 4
        else -> 3
    }

    val basePadding = when {
        area >= 12000f -> 9
        area >= 6500f -> 8
        else -> 6
    }
    val useBubblePreview = overlayDisplayMode == OverlayDisplayMode.BUBBLE_PREVIEW && overlay.prefersReplacementPreview
    val maskInset = if (useBubblePreview) overlay.maskInset.roundToInt().coerceIn(0, 12) else 0
    val shape = if (useBubblePreview) overlay.maskShape else BubbleMaskShape.ROUNDED_RECT

    return when (block.blockType) {
        OcrBlockType.SPEECH -> OverlayLayout(
            fontSizeSp = computedFontSize,
            lineHeightSp = computedLineHeight,
            horizontalPaddingDp = basePadding,
            verticalPaddingDp = (basePadding - 1).coerceAtLeast(5),
            cornerRadiusDp = if (useBubblePreview) overlay.maskCornerRadius.roundToInt().coerceAtLeast(12) else if (aspectRatio >= 1.1f) 14 else 12,
            maskInsetDp = maskInset,
            maxLines = maxLines,
            fontWeight = FontWeight.Medium,
            textAlign = TextAlign.Center,
            shape = shape,
            backgroundAlpha = if (useBubblePreview) 0.93f else overlay.backgroundOpacity.coerceIn(0.70f, 0.88f),
            strokeAlpha = 0.18f
        )

        OcrBlockType.NARRATION -> OverlayLayout(
            fontSizeSp = (computedFontSize - 1).coerceAtLeast(11),
            lineHeightSp = computedLineHeight,
            horizontalPaddingDp = basePadding,
            verticalPaddingDp = basePadding,
            cornerRadiusDp = if (useBubblePreview) overlay.maskCornerRadius.roundToInt().coerceAtLeast(6) else 8,
            maskInsetDp = maskInset,
            maxLines = max(maxLines, 4),
            fontWeight = FontWeight.Normal,
            textAlign = TextAlign.Start,
            shape = shape,
            backgroundAlpha = if (useBubblePreview) 0.94f else overlay.backgroundOpacity.coerceIn(0.76f, 0.9f),
            strokeAlpha = 0.24f
        )

        OcrBlockType.SFX -> OverlayLayout(
            fontSizeSp = (computedFontSize + 1).coerceAtMost(18),
            lineHeightSp = computedLineHeight,
            horizontalPaddingDp = (basePadding - 1).coerceAtLeast(5),
            verticalPaddingDp = (basePadding - 2).coerceAtLeast(4),
            cornerRadiusDp = 10,
            maskInsetDp = 0,
            maxLines = maxLines.coerceAtMost(4),
            fontWeight = FontWeight.Bold,
            textAlign = TextAlign.Center,
            shape = BubbleMaskShape.ROUNDED_RECT,
            backgroundAlpha = overlay.backgroundOpacity.coerceIn(0.62f, 0.8f),
            strokeAlpha = 0.3f
        )

        OcrBlockType.UNKNOWN -> OverlayLayout(
            fontSizeSp = computedFontSize,
            lineHeightSp = computedLineHeight,
            horizontalPaddingDp = basePadding,
            verticalPaddingDp = (basePadding - 1).coerceAtLeast(5),
            cornerRadiusDp = if (useBubblePreview) overlay.maskCornerRadius.roundToInt().coerceAtLeast(10) else 12,
            maskInsetDp = maskInset,
            maxLines = if (tokenCount <= 3) maxLines.coerceAtMost(4) else maxLines,
            fontWeight = FontWeight.Medium,
            textAlign = if (aspectRatio >= 1.15f) TextAlign.Center else TextAlign.Start,
            shape = shape,
            backgroundAlpha = if (useBubblePreview) 0.9f else overlay.backgroundOpacity.coerceIn(0.72f, 0.86f),
            strokeAlpha = 0.2f
        )
    }
}

private fun BubbleMaskShape.toCornerShape(cornerRadiusDp: Int) = when (this) {
    BubbleMaskShape.CAPSULE -> RoundedCornerShape(percent = 50)
    BubbleMaskShape.ROUNDED_RECT -> RoundedCornerShape(cornerRadiusDp.dp)
    BubbleMaskShape.RECTANGLE -> RoundedCornerShape(cornerRadiusDp.dp)
    BubbleMaskShape.NONE -> RoundedCornerShape(0.dp)
}
