package com.example.feature.ocr.data

import com.example.core.model.BubbleMaskShape
import com.example.core.model.OcrBlock
import com.example.core.model.OcrBlockType
import com.example.core.model.OverlayBlock
import com.example.core.model.OverlayDisplayMode
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationProviderType
import javax.inject.Inject
import javax.inject.Singleton
import kotlin.math.max

@Singleton
class BubbleReplacementPreviewPlanner @Inject constructor() {

    fun buildOverlayBlock(
        block: OcrBlock,
        translatedText: String,
        translationMode: TranslationMode? = null,
        provider: TranslationProviderType = TranslationProviderType.UNKNOWN,
        isOffline: Boolean = false
    ): OverlayBlock {
        val minDimension = minOf(block.bboxWidth, block.bboxHeight)
        val shape = when (block.blockType) {
            OcrBlockType.SPEECH -> if (block.bboxWidth > block.bboxHeight * 1.45f) {
                BubbleMaskShape.CAPSULE
            } else {
                BubbleMaskShape.ROUNDED_RECT
            }
            OcrBlockType.NARRATION -> BubbleMaskShape.RECTANGLE
            OcrBlockType.SFX -> BubbleMaskShape.NONE
            OcrBlockType.UNKNOWN -> BubbleMaskShape.ROUNDED_RECT
        }
        val prefersPreview = block.blockType == OcrBlockType.SPEECH || block.blockType == OcrBlockType.NARRATION
        val inset = when (block.blockType) {
            OcrBlockType.SPEECH -> (minDimension * 0.035f).coerceIn(1.5f, 10f)
            OcrBlockType.NARRATION -> (minDimension * 0.02f).coerceIn(1f, 6f)
            OcrBlockType.SFX -> 0f
            OcrBlockType.UNKNOWN -> (minDimension * 0.025f).coerceIn(1f, 8f)
        }
        val cornerRadius = when (shape) {
            BubbleMaskShape.CAPSULE -> max(block.bboxHeight * 0.38f, 12f)
            BubbleMaskShape.ROUNDED_RECT -> max(minDimension * 0.16f, 10f)
            BubbleMaskShape.RECTANGLE -> max(minDimension * 0.06f, 4f)
            BubbleMaskShape.NONE -> 0f
        }
        val backgroundOpacity = when (block.blockType) {
            OcrBlockType.SPEECH -> 0.84f
            OcrBlockType.NARRATION -> 0.88f
            OcrBlockType.SFX -> 0.72f
            OcrBlockType.UNKNOWN -> 0.8f
        }
        return OverlayBlock(
            ocrBlockId = block.id,
            translatedText = translatedText,
            translationMode = translationMode,
            provider = provider,
            isOffline = isOffline,
            displayMode = if (prefersPreview) OverlayDisplayMode.BUBBLE_PREVIEW else OverlayDisplayMode.OVERLAY,
            fontSize = if (block.blockType == OcrBlockType.SFX) 15f else 14f,
            padding = if (block.blockType == OcrBlockType.SFX) 6f else 8f,
            backgroundOpacity = backgroundOpacity,
            maskShape = shape,
            maskCornerRadius = cornerRadius,
            maskInset = inset,
            prefersReplacementPreview = prefersPreview
        )
    }
}
