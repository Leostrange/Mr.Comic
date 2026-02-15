package com.example.feature.ocr.ui

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.example.feature.ocr.domain.BubbleDetector
import com.example.feature.ocr.domain.OcrEngine
import com.example.feature.ocr.domain.ImageProcessor
import com.example.core.model.TextRegion
import dagger.hilt.android.lifecycle.HiltViewModel
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.launch
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import javax.inject.Inject

@HiltViewModel
class OcrCropViewModel @Inject constructor(
    private val ocrEngine: OcrEngine,
    private val bubbleDetector: BubbleDetector,
    private val imageProcessor: ImageProcessor
) : ViewModel() {

    private val _textRegions = MutableStateFlow<List<TextRegion>>(emptyList())
    val textRegions: StateFlow<List<TextRegion>> = _textRegions

    private val _isProcessing = MutableStateFlow(false)
    val isProcessing: StateFlow<Boolean> = _isProcessing

    fun processImage(imageBytes: ByteArray, language: String = "en") {
        viewModelScope.launch {
            _isProcessing.value = true
            try {
                // Preprocess image
                val processedBytes = imageProcessor.preprocessImage(imageBytes)
                val bitmap = BitmapFactory.decodeByteArray(processedBytes, 0, processedBytes.size)
                if (bitmap != null) {
                    // Detect bubbles
                    val bubbles = bubbleDetector.detectBubbles(bitmap)
                    // Recognize text (simplified: recognize full image)
                    val regions = ocrEngine.recognize(bitmap, language)
                    // Mark regions as bubbles if they intersect
                    val markedRegions = regions.map { region ->
                        val isBubble = bubbles.any { bubble ->
                            region.boundingBox.x < bubble.x + bubble.width &&
                            region.boundingBox.x + region.boundingBox.width > bubble.x &&
                            region.boundingBox.y < bubble.y + bubble.height &&
                            region.boundingBox.y + region.boundingBox.height > bubble.y
                        }
                        region.copy(isBubble = isBubble)
                    }
                    _textRegions.value = markedRegions
                }
            } catch (e: Exception) {
                // Handle error
                _textRegions.value = emptyList()
            } finally {
                _isProcessing.value = false
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun OcrCropScreen(
    onImageCaptured: (List<TextRegion>) -> Unit,
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val viewModel: OcrCropViewModel = viewModel()
    val textRegions by viewModel.textRegions.collectAsState()
    val isProcessing by viewModel.isProcessing.collectAsState()

    var capturedImage by remember { mutableStateOf<Bitmap?>(null) }

    Column(modifier = modifier.fillMaxSize()) {
        TopAppBar(
            title = { Text("OCR Capture") },
            navigationIcon = {
                IconButton(onClick = onNavigateBack) {
                    // Add back icon
                }
            }
        )

        Box(modifier = Modifier.weight(1f)) {
            CameraPreviewScreen(onCapture = { /* TODO: Implement real capture */ })
        }

        if (isProcessing) {
            CircularProgressIndicator(modifier = Modifier.align(Alignment.CenterHorizontally))
        }

        Button(
            onClick = {
                // Simulate capture
                // In real implementation, get image from camera
                // For now, assume we have imageBytes
                val dummyBytes = ByteArray(0) // Placeholder
                viewModel.processImage(dummyBytes)
            },
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            enabled = !isProcessing
        ) {
            Text("Process Image")
        }

        if (textRegions.isNotEmpty()) {
            Button(
                onClick = { onImageCaptured(textRegions) },
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp)
            ) {
                Text("Proceed to Translation")
            }
        }
    }
}