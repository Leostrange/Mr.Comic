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

internal data class ReaderImageCrop(
    val horizontalFraction: Float = 0f,
    val verticalFraction: Float = 0f
) {
    val normalizedHorizontal: Float = horizontalFraction.coerceIn(0f, 0.22f)
    val normalizedVertical: Float = verticalFraction.coerceIn(0f, 0.22f)
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
    val sourceRect = remember(bitmap, crop.normalizedHorizontal, crop.normalizedVertical) {
        croppedSourceRect(bitmap, crop)
    }
    Canvas(
        modifier = modifier.semantics {
            this.contentDescription = contentDescription
        }
    ) {
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
    val horizontalInset = (bitmap.width * crop.normalizedHorizontal).roundToInt()
        .coerceIn(0, (bitmap.width - 1) / 2)
    val verticalInset = (bitmap.height * crop.normalizedVertical).roundToInt()
        .coerceIn(0, (bitmap.height - 1) / 2)
    val width = (bitmap.width - horizontalInset * 2).coerceAtLeast(1)
    val height = (bitmap.height - verticalInset * 2).coerceAtLeast(1)
    return CroppedSourceRect(
        left = horizontalInset,
        top = verticalInset,
        width = width,
        height = height
    )
}
