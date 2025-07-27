package com.example.mrcomic.ui

import android.graphics.Bitmap
import android.graphics.Rect
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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun OcrCropScreen(
    imageBitmap: Bitmap,
    onOcrResult: (String) -> Unit,
    onNavigateBack: () -> Unit
) {
    var cropRect by remember { mutableStateOf(Rect(0, 0, 0, 0)) }
    var startDrag by remember { mutableStateOf(androidx.compose.ui.geometry.Offset.Zero) }
    var endDrag by remember { mutableStateOf(androidx.compose.ui.geometry.Offset.Zero) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("OCR Cropping") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Назад")
                    }
                },
                actions = {
                    IconButton(onClick = { /* TODO: Perform OCR on cropRect and pass result to onOcrResult */ }) {
                        Icon(Icons.Default.Check, contentDescription = "Выполнить OCR")
                    }
                }
            )
        },
        content = { paddingValues ->
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .background(MaterialTheme.colorScheme.background)
            ) {
                Image(
                    bitmap = imageBitmap.asImageBitmap(),
                    contentDescription = null,
                    modifier = Modifier.fillMaxSize(),
                    contentScale = ContentScale.Fit
                )

                // Overlay for cropping
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .pointerInput(Unit) {
                            detectDragGestures(
                                onDragStart = { offset ->
                                    startDrag = offset
                                    endDrag = offset
                                },
                                onDrag = { change, _ ->
                                    endDrag = change.position
                                },
                                onDragEnd = {
                                    cropRect = Rect(
                                        startDrag.x.toInt().coerceAtMost(endDrag.x.toInt()),
                                        startDrag.y.toInt().coerceAtMost(endDrag.y.toInt()),
                                        startDrag.x.toInt().coerceAtLeast(endDrag.x.toInt()),
                                        startDrag.y.toInt().coerceAtLeast(endDrag.y.toInt())
                                    )
                                }
                            )
                        }
                ) {
                    if (cropRect.width() > 0 && cropRect.height() > 0) {
                        // Draw the cropping rectangle
                        Box(
                            modifier = Modifier
                                .offset(x = cropRect.left.dp, y = cropRect.top.dp)
                                .size(cropRect.width().dp, cropRect.height().dp)
                                .border(2.dp, MaterialTheme.colorScheme.primary)
                        )
                    }
                }
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun OcrCropScreenPreview() {
    MrComicTheme {
        val dummyBitmap = Bitmap.createBitmap(100, 100, Bitmap.Config.ARGB_8888)
        OcrCropScreen(imageBitmap = dummyBitmap, onOcrResult = {}, onNavigateBack = {})
    }
}


