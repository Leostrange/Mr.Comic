package com.example.mrcomic.ui

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Crop
import androidx.compose.material.icons.filled.Rotate90DegreesCcw
import androidx.compose.material.icons.filled.BrightnessHigh
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.graphics.ColorMatrix
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme
import android.graphics.Bitmap
import android.graphics.Matrix
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.graphics.asAndroidBitmap

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ImageEditingScreen(
    imageBitmap: ImageBitmap,
    onApplyChanges: (ImageBitmap) -> Unit,
    onCancel: () -> Unit
) {
    var currentBitmap by remember { mutableStateOf(imageBitmap) }
    var rotationAngle by remember { mutableStateOf(0f) }
    var brightnessValue by remember { mutableStateOf(0f) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Редактирование изображения") },
                navigationIcon = {
                    IconButton(onClick = onCancel) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Отмена")
                    }
                },
                actions = {
                    IconButton(onClick = { onApplyChanges(currentBitmap) }) {
                        Icon(Icons.Default.Check, contentDescription = "Применить")
                    }
                }
            )
        }
    ) {\n        paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .background(Color.Black),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Image(
                bitmap = currentBitmap,
                contentDescription = null,
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f),
                contentScale = ContentScale.Fit,
                colorFilter = ColorFilter.colorMatrix(ColorMatrix().apply { 
                    setScale(1f + brightnessValue, 1f + brightnessValue, 1f + brightnessValue, 1f)
                })
            )
            Spacer(modifier = Modifier.height(16.dp))
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp),
                horizontalArrangement = Arrangement.SpaceAround,
                verticalAlignment = Alignment.CenterVertically
            ) {
                // Rotate
                IconButton(onClick = {
                    rotationAngle = (rotationAngle + 90f) % 360f
                    val matrix = Matrix()
                    matrix.postRotate(90f)
                    val rotatedBitmap = Bitmap.createBitmap(currentBitmap.asAndroidBitmap(), 0, 0, currentBitmap.width, currentBitmap.height, matrix, true)
                    currentBitmap = rotatedBitmap.asImageBitmap()
                }) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        Icon(Icons.Default.Rotate90DegreesCcw, contentDescription = "Повернуть")
                        Text("Повернуть", style = MaterialTheme.typography.labelSmall)
                    }
                }
                // Brightness
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(Icons.Default.BrightnessHigh, contentDescription = "Яркость")
                    Text("Яркость", style = MaterialTheme.typography.labelSmall)
                    Slider(
                        value = brightnessValue,
                        onValueChange = { brightnessValue = it },
                        valueRange = -1f..1f,
                        steps = 0,
                        modifier = Modifier.width(120.dp)
                    )
                }
                // Crop (placeholder for now)
                IconButton(onClick = { /* TODO: Implement cropping */ }) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        Icon(Icons.Default.Crop, contentDescription = "Обрезать")
                        Text("Обрезать", style = MaterialTheme.typography.labelSmall)
                    }
                }
            }
            Spacer(modifier = Modifier.height(16.dp))
        }
    }
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun ImageEditingScreenPreview() {
    MrComicTheme {
        // You'll need to provide a sample ImageBitmap for the preview
        // For now, a placeholder will be used.
        val dummyBitmap = Bitmap.createBitmap(100, 100, Bitmap.Config.ARGB_8888).asImageBitmap()
        ImageEditingScreen(imageBitmap = dummyBitmap, onApplyChanges = {}, onCancel = {})
    }
}


