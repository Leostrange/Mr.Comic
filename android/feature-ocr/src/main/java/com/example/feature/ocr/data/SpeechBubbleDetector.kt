package com.example.feature.ocr.data

import android.graphics.Bitmap
import android.graphics.Rect
import android.util.Log
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Detects speech bubbles in comic/manga pages using contour detection
 * and heuristic analysis.
 *
 * This is a lightweight detector that works without ML models by analyzing
 * page layout and text block positions from OCR results.
 *
 * For production use, consider replacing with a YOLO/SSD model trained
 * on comic speech bubble datasets.
 */
@Singleton
class SpeechBubbleDetector @Inject constructor() {

    /**
     * Detect speech bubble regions on a comic page.
     *
     * @param bitmap The page image.
     * @param ocrBlocks OCR-detected text blocks with bounding boxes.
     * @return List of detected [SpeechBubble] regions.
     */
    fun detectBubbles(
        bitmap: Bitmap,
        ocrBlocks: List<OcrBlockResult>
    ): List<SpeechBubble> {
        if (ocrBlocks.isEmpty()) return emptyList()

        val bubbles = mutableListOf<SpeechBubble>()

        // Strategy 1: Group nearby OCR blocks into bubbles
        val clusters = clusterNearbyBlocks(ocrBlocks)

        for (cluster in clusters) {
            val bounds = computeClusterBounds(cluster)
            val text = cluster.joinToString(" ") { it.text }

            // Filter out very large regions (likely narration boxes, not bubbles)
            val pageArea = bitmap.width * bitmap.height
            val regionArea = bounds.width() * bounds.height()
            val areaRatio = regionArea.toFloat() / pageArea

            if (areaRatio > 0.4f) {
                // Too large — likely a full panel or narration
                continue
            }

            // Filter out very small regions (likely noise)
            if (areaRatio < 0.001f) {
                continue
            }

            bubbles.add(
                SpeechBubble(
                    bounds = bounds,
                    text = text,
                    confidence = cluster.map { it.confidence }.average().toFloat(),
                    blocks = cluster
                )
            )
        }

        return bubbles.sortedBy { it.bounds.top }
    }

    /**
     * Cluster OCR blocks that are spatially close to each other.
     * Blocks within [CLUSTER_DISTANCE] pixels are grouped together.
     */
    private fun clusterNearbyBlocks(blocks: List<OcrBlockResult>): List<List<OcrBlockResult>> {
        val remaining = blocks.toMutableList()
        val clusters = mutableListOf<List<OcrBlockResult>>()

        while (remaining.isNotEmpty()) {
            val seed = remaining.removeAt(0)
            val cluster = mutableListOf(seed)

            val iterator = remaining.iterator()
            while (iterator.hasNext()) {
                val candidate = iterator.next()
                if (isNearby(seed, candidate, CLUSTER_DISTANCE)) {
                    cluster.add(candidate)
                    iterator.remove()
                }
            }

            clusters.add(cluster)
        }

        return clusters
    }

    /**
     * Check if two OCR blocks are within [maxDistance] pixels of each other.
     */
    private fun isNearby(a: OcrBlockResult, b: OcrBlockResult, maxDistance: Int): Boolean {
        val aCenter = Rect(a.bounds).apply {
            offset(a.bounds.width() / 2, a.bounds.height() / 2)
        }
        val bCenter = Rect(b.bounds).apply {
            offset(b.bounds.width() / 2, b.bounds.height() / 2)
        }

        val dx = aCenter.centerX() - bCenter.centerX()
        val dy = aCenter.centerY() - bCenter.centerY()
        val distance = Math.sqrt((dx * dx + dy * dy).toDouble())

        return distance < maxDistance
    }

    /**
     * Compute the bounding rectangle that encompasses all blocks in a cluster.
     */
    private fun computeClusterBounds(cluster: List<OcrBlockResult>): Rect {
        val left = cluster.minOf { it.bounds.left }
        val top = cluster.minOf { it.bounds.top }
        val right = cluster.maxOf { it.bounds.right }
        val bottom = cluster.maxOf { it.bounds.bottom }

        // Add padding
        val padding = 8
        return Rect(
            (left - padding).coerceAtLeast(0),
            (top - padding).coerceAtLeast(0),
            right + padding,
            bottom + padding
        )
    }

    companion object {
        /** Maximum distance in pixels between OCR blocks to be considered in the same bubble. */
        const val CLUSTER_DISTANCE = 80
    }
}

/**
 * A detected speech bubble region on a comic page.
 */
data class SpeechBubble(
    val bounds: Rect,
    val text: String,
    val confidence: Float,
    val blocks: List<OcrBlockResult>
)

/**
 * An OCR-detected text block with bounding box.
 */
data class OcrBlockResult(
    val text: String,
    val bounds: Rect,
    val confidence: Float
)
