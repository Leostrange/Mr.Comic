package com.example.feature.ocr.ui

import android.graphics.Bitmap
import android.graphics.Matrix
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp

@Composable
fun OcrCropScreen(bitmap: Bitmap, onCrop: (Bitmap) -> Unit) {
    var imageSize by remember { mutableStateOf(IntSize.Zero) }
    var cropRect by remember { mutableStateOf(Rect.Zero) }
    val density = LocalDensity.current

    Box(modifier = Modifier.fillMaxSize()) {
        Image(
            bitmap = bitmap.asImageBitmap(),
            contentDescription = null,
            modifier = Modifier
                .fillMaxSize()
                .onSizeChanged { size ->
                    imageSize = size
                    // Инициализация cropRect на весь размер изображения
                    cropRect = Rect(Offset.Zero, size.toSize())
                }
        )

        // Рамка для обрезки
        Canvas(modifier = Modifier.fillMaxSize()) {
            drawRect(
                color = Color.Red,
                topLeft = cropRect.topLeft,
                size = cropRect.size,
                style = Stroke(width = 2.dp.toPx())
            )
        }

        // Обработка жестов для изменения размера рамки
        Box(modifier = Modifier
            .fillMaxSize()
            .pointerInput(Unit) {
                detectDragGestures {\n                    change, dragAmount ->
                    change.consume()
                    val newLeft = (cropRect.left + dragAmount.x).coerceIn(0f, imageSize.width.toFloat() - cropRect.width)
                    val newTop = (cropRect.top + dragAmount.y).coerceIn(0f, imageSize.height.toFloat() - cropRect.height)
                    cropRect = Rect(newLeft, newTop, newLeft + cropRect.width, newTop + cropRect.height)
                }
            }
        )

        Button(
            onClick = {
                val croppedBitmap = cropBitmap(bitmap, cropRect, imageSize)
                onCrop(croppedBitmap)
            },
            modifier = Modifier
                .align(androidx.compose.ui.Alignment.BottomCenter)
                .padding(16.dp)
        ) {
            Text("Обрезать и распознать")
        }
    }
}

fun cropBitmap(bitmap: Bitmap, cropRect: Rect, imageSize: IntSize): Bitmap {
    val scaleX = bitmap.width.toFloat() / imageSize.width
    val scaleY = bitmap.height.toFloat() / imageSize.height

    val croppedX = (cropRect.left * scaleX).toInt()
    val croppedY = (cropRect.top * scaleY).toInt()
    val croppedWidth = (cropRect.width * scaleX).toInt()
    val croppedHeight = (cropRect.height * scaleY).toInt()

    return Bitmap.createBitmap(
        bitmap,
        croppedX,
        croppedY,
        croppedWidth,
        croppedHeight
    )
}


