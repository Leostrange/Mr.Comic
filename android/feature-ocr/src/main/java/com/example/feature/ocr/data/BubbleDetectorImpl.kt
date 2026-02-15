package com.example.feature.ocr.data

import android.graphics.Bitmap
import com.example.core.model.BoundingBox
import com.example.feature.ocr.domain.BubbleDetector
import javax.inject.Inject

class BubbleDetectorImpl @Inject constructor() : BubbleDetector {
    override fun detectBubbles(image: Bitmap): List<BoundingBox> {
        // Placeholder implementation: return empty list or simple detection
        // In real implementation, use image processing to detect speech bubbles
        return emptyList()
    }
}