package io.leostrange.mrcomic.feature.reader.ui.components

import android.graphics.Bitmap
import androidx.compose.foundation.Canvas
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.FilterQuality
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.IntSize
import kotlin.math.roundToInt

/**
 * Per-side page crop as fractions of the page size. The legacy symmetric
 * constructor (horizontalFraction/verticalFraction) is kept for call sites
 * that crop both sides of an axis equally.
 */
internal data class ReaderImageCrop(
    val leftFraction: Float,
    val topFraction: Float,
    val rightFraction: Float,
    val bottomFraction: Float
) {
    constructor(horizontalFraction: Float = 0f, verticalFraction: Float = 0f) : this(
        leftFraction = horizontalFraction,
        topFraction = verticalFraction,
        rightFraction = horizontalFraction,
        bottomFraction = verticalFraction
    )

    val normalizedLeft: Float = leftFraction.coerceIn(0f, MAX_CROP_FRACTION)
    val normalizedTop: Float = topFraction.coerceIn(0f, MAX_CROP_FRACTION)
    val normalizedRight: Float = rightFraction.coerceIn(0f, MAX_CROP_FRACTION)
    val normalizedBottom: Float = bottomFraction.coerceIn(0f, MAX_CROP_FRACTION)

    val isZero: Boolean
        get() = normalizedLeft <= 0f && normalizedTop <= 0f &&
            normalizedRight <= 0f && normalizedBottom <= 0f

    companion object {
        const val MAX_CROP_FRACTION = 0.22f
        val None = ReaderImageCrop(0f, 0f, 0f, 0f)
    }
}

internal fun croppedSourceDimensions(
    bitmap: Bitmap,
    crop: ReaderImageCrop
): Pair<Float, Float> {
    val sourceRect = croppedSourceRect(bitmap, crop)
    return sourceRect.width.toFloat().coerceAtLeast(1f) to
        sourceRect.height.toFloat().coerceAtLeast(1f)
}

@Composable
internal fun CroppedBitmapImage(
    bitmap: Bitmap,
    contentDescription: String,
    crop: ReaderImageCrop,
    alignment: Alignment = Alignment.Center,
    contentScale: ContentScale = ContentScale.Fit,
    modifier: Modifier = Modifier
) {
    val layoutDirection = LocalLayoutDirection.current
    val imageBitmap = remember(bitmap) { bitmap.asImageBitmap() }
    val sourceRect = remember(
        bitmap,
        crop.normalizedLeft,
        crop.normalizedTop,
        crop.normalizedRight,
        crop.normalizedBottom
    ) {
        croppedSourceRect(bitmap, crop)
    }
    Canvas(
        modifier = modifier.semantics {
            this.contentDescription = contentDescription
        }
    ) {
        // Guard: the bitmap may have been recycled by TieredBitmapCache LRU eviction
        // between composition and draw. Skip drawing to avoid Canvas crash.
        if (bitmap.isRecycled) return@Canvas
        val srcSize = androidx.compose.ui.geometry.Size(
            sourceRect.width.toFloat().coerceAtLeast(1f),
            sourceRect.height.toFloat().coerceAtLeast(1f)
        )
        val scaleFactor = contentScale.computeScaleFactor(srcSize, size)
        val dstWidth = (srcSize.width * scaleFactor.scaleX).roundToInt().coerceAtLeast(1)
        val dstHeight = (srcSize.height * scaleFactor.scaleY).roundToInt().coerceAtLeast(1)
        val dstOffset = alignment.align(
            size = IntSize(dstWidth, dstHeight),
            space = IntSize(size.width.roundToInt(), size.height.roundToInt()),
            layoutDirection = layoutDirection
        )
        drawImage(
            image = imageBitmap,
            srcOffset = IntOffset(sourceRect.left, sourceRect.top),
            srcSize = IntSize(sourceRect.width, sourceRect.height),
            dstOffset = dstOffset,
            dstSize = IntSize(dstWidth, dstHeight),
            filterQuality = FilterQuality.High
        )
    }
}

private data class CroppedSourceRect(
    val left: Int,
    val top: Int,
    val width: Int,
    val height: Int
)

private fun croppedSourceRect(
    bitmap: Bitmap,
    crop: ReaderImageCrop
): CroppedSourceRect {
    val leftInset = (bitmap.width * crop.normalizedLeft).roundToInt()
        .coerceIn(0, (bitmap.width - 1) / 2)
    val rightInset = (bitmap.width * crop.normalizedRight).roundToInt()
        .coerceIn(0, (bitmap.width - 1) / 2)
    val topInset = (bitmap.height * crop.normalizedTop).roundToInt()
        .coerceIn(0, (bitmap.height - 1) / 2)
    val bottomInset = (bitmap.height * crop.normalizedBottom).roundToInt()
        .coerceIn(0, (bitmap.height - 1) / 2)
    val width = (bitmap.width - leftInset - rightInset).coerceAtLeast(1)
    val height = (bitmap.height - topInset - bottomInset).coerceAtLeast(1)
    return CroppedSourceRect(
        left = leftInset,
        top = topInset,
        width = width,
        height = height
    )
}
