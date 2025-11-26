package com.example.feature.reader

import com.example.feature.reader.ui.gestures.ZoomController
import com.example.feature.reader.ui.gestures.ZoomMode
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.unit.IntSize
import kotlinx.coroutines.test.runTest
import org.junit.Test
import org.junit.Assert.*
import kotlin.math.abs

/**
 * Validation tests for reading modes after PR #120 merge
 * Tests zoom calculations, scale modes, and gesture handling logic
 */
class ReadingModesValidationTest {

    // Test image and screen sizes
    private val portraitImageSize = IntSize(width = 1200, height = 1800)
    private val landscapeImageSize = IntSize(width = 1800, height = 1200)
    private val screenSize = IntSize(width = 1080, height = 1920)

    @Test
    fun `test FIT_WIDTH scale calculation for portrait image`() {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        val expectedScale = screenSize.width.toFloat() / portraitImageSize.width.toFloat()
        val actualScale = controller.calculateFitWidthScale()

        assertEquals(expectedScale, actualScale, 0.001f)
        assertEquals(0.9f, actualScale, 0.001f) // 1080 / 1200 = 0.9
    }

    @Test
    fun `test FIT_HEIGHT scale calculation for portrait image`() {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "height"
        )

        val expectedScale = screenSize.height.toFloat() / portraitImageSize.height.toFloat()
        val actualScale = controller.calculateFitHeightScale()

        assertEquals(expectedScale, actualScale, 0.001f)
        assertEquals(1.067f, actualScale, 0.01f) // 1920 / 1800 ≈ 1.067
    }

    @Test
    fun `test FIT_SCREEN scale calculation chooses minimum`() {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "fit"
        )

        val widthScale = screenSize.width.toFloat() / portraitImageSize.width.toFloat()
        val heightScale = screenSize.height.toFloat() / portraitImageSize.height.toFloat()
        val expectedScale = kotlin.math.min(widthScale, heightScale)
        val actualScale = controller.calculateFitScreenScale()

        assertEquals(expectedScale, actualScale, 0.001f)
        assertEquals(widthScale, actualScale, 0.001f) // Should choose width scale (smaller)
    }

    @Test
    fun `test FILL scale calculation chooses maximum`() {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "fill"
        )

        val widthScale = screenSize.width.toFloat() / portraitImageSize.width.toFloat()
        val heightScale = screenSize.height.toFloat() / portraitImageSize.height.toFloat()
        val expectedScale = kotlin.math.max(widthScale, heightScale)
        val actualScale = controller.calculateFillScale()

        assertEquals(expectedScale, actualScale, 0.001f)
        assertEquals(heightScale, actualScale, 0.001f) // Should choose height scale (larger)
    }

    @Test
    fun `test FIT_SCREEN for landscape image`() {
        val controller = ZoomController(
            imageSize = landscapeImageSize,
            screenSize = screenSize,
            initialScaleMode = "fit"
        )

        val widthScale = screenSize.width.toFloat() / landscapeImageSize.width.toFloat()
        val heightScale = screenSize.height.toFloat() / landscapeImageSize.height.toFloat()
        val expectedScale = kotlin.math.min(widthScale, heightScale)
        val actualScale = controller.calculateFitScreenScale()

        assertEquals(expectedScale, actualScale, 0.001f)
        // For landscape image on portrait screen, width scale should be smaller
        assertEquals(widthScale, actualScale, 0.001f)
    }

    @Test
    fun `test zoom cycle order`() = runTest {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        // Start at FIT_WIDTH
        assertEquals(ZoomMode.FIT_WIDTH, controller.currentMode)

        // Cycle should go: WIDTH -> HEIGHT -> FIT -> FILL -> WIDTH
        controller.cycleZoomMode(Offset.Zero)
        assertEquals(ZoomMode.FIT_HEIGHT, controller.currentMode)

        controller.cycleZoomMode(Offset.Zero)
        assertEquals(ZoomMode.FIT_SCREEN, controller.currentMode)

        controller.cycleZoomMode(Offset.Zero)
        assertEquals(ZoomMode.FILL, controller.currentMode)

        controller.cycleZoomMode(Offset.Zero)
        assertEquals(ZoomMode.FIT_WIDTH, controller.currentMode)
    }

    @Test
    fun `test zoom mode from string conversion`() = runTest {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        controller.setZoomModeFromString("height")
        assertEquals(ZoomMode.FIT_HEIGHT, controller.currentMode)

        controller.setZoomModeFromString("fit")
        assertEquals(ZoomMode.FIT_SCREEN, controller.currentMode)

        controller.setZoomModeFromString("fill")
        assertEquals(ZoomMode.FILL, controller.currentMode)

        controller.setZoomModeFromString("width")
        assertEquals(ZoomMode.FIT_WIDTH, controller.currentMode)

        // Test case-insensitive
        controller.setZoomModeFromString("WIDTH")
        assertEquals(ZoomMode.FIT_WIDTH, controller.currentMode)

        // Test invalid string defaults to WIDTH
        controller.setZoomModeFromString("invalid")
        assertEquals(ZoomMode.FIT_WIDTH, controller.currentMode)
    }

    @Test
    fun `test base scale matches current mode`() {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        assertEquals(controller.calculateFitWidthScale(), controller.getBaseScale(), 0.001f)

        // Change mode and verify base scale updates
        controller.currentMode = ZoomMode.FIT_HEIGHT
        assertEquals(controller.calculateFitHeightScale(), controller.getBaseScale(), 0.001f)

        controller.currentMode = ZoomMode.FIT_SCREEN
        assertEquals(controller.calculateFitScreenScale(), controller.getBaseScale(), 0.001f)

        controller.currentMode = ZoomMode.FILL
        assertEquals(controller.calculateFillScale(), controller.getBaseScale(), 0.001f)
    }

    @Test
    fun `test isAtBaseScale detection`() = runTest {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        // Initially should be at base scale
        assertTrue(controller.isAtBaseScale())

        // After pinch zoom, should not be at base scale
        controller.scale.snapTo(controller.getBaseScale() * 1.5f)
        assertFalse(controller.isAtBaseScale())

        // When very close (within 1%), should still detect as base scale
        controller.scale.snapTo(controller.getBaseScale() * 1.005f)
        assertTrue(controller.isAtBaseScale())
    }

    @Test
    fun `test zoom out minimum limit`() = runTest {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        val baseScale = controller.getBaseScale()
        val expectedMinScale = baseScale * 0.5f

        // Try to zoom out beyond limit by simulating pinch
        controller.scale.snapTo(baseScale)
        controller.applyPinchZoom(0.3f, Offset.Zero) // Zoom out significantly

        // Should not go below 50% of base scale
        assertTrue(controller.scale.value >= expectedMinScale)
    }

    @Test
    fun `test zoom in maximum limit`() = runTest {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        // Try to zoom in beyond limit
        controller.scale.snapTo(4.5f)
        controller.applyPinchZoom(2.0f, Offset.Zero) // Zoom in significantly

        // Should not exceed 5.0f
        assertTrue(controller.scale.value <= 5.0f)
    }

    @Test
    fun `test zero size image handles gracefully`() {
        val controller = ZoomController(
            imageSize = IntSize(0, 0),
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        // Should return 1.0 for all calculations
        assertEquals(1.0f, controller.calculateFitWidthScale(), 0.001f)
        assertEquals(1.0f, controller.calculateFitHeightScale(), 0.001f)
        assertEquals(1.0f, controller.calculateFitScreenScale(), 0.001f)
        assertEquals(1.0f, controller.calculateFillScale(), 0.001f)
    }

    @Test
    fun `test partial zero size image handles gracefully`() {
        // Zero width
        val controllerZeroWidth = ZoomController(
            imageSize = IntSize(0, 1800),
            screenSize = screenSize,
            initialScaleMode = "width"
        )
        assertEquals(1.0f, controllerZeroWidth.calculateFitWidthScale(), 0.001f)

        // Zero height
        val controllerZeroHeight = ZoomController(
            imageSize = IntSize(1200, 0),
            screenSize = screenSize,
            initialScaleMode = "height"
        )
        assertEquals(1.0f, controllerZeroHeight.calculateFitHeightScale(), 0.001f)
    }

    @Test
    fun `test scale mode synchronization from state`() = runTest {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        assertEquals(ZoomMode.FIT_WIDTH, controller.currentMode)

        // Simulate UI state change
        controller.updateScaleModeFromState("height")
        assertEquals(ZoomMode.FIT_HEIGHT, controller.currentMode)

        // Should not update if already at that mode
        val currentScale = controller.scale.value
        controller.updateScaleModeFromState("height")
        assertEquals(ZoomMode.FIT_HEIGHT, controller.currentMode)
        // Scale should remain the same
        assertEquals(currentScale, controller.scale.value, 0.001f)
    }

    @Test
    fun `test zoom sensitivity adjustment`() = runTest {
        val normalController = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            zoomSensitivity = 1.0f,
            initialScaleMode = "width"
        )

        val sensitiveController = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            zoomSensitivity = 2.0f,
            initialScaleMode = "width"
        )

        val baseScale = normalController.getBaseScale()
        
        normalController.scale.snapTo(baseScale)
        sensitiveController.scale.snapTo(baseScale)

        val zoomFactor = 1.1f // 10% zoom in
        
        // Note: applyPinchZoom applies sensitivity internally
        // Formula: adjustedZoomFactor = 1 + (zoomFactor - 1) * sensitivity
        // Normal: 1 + (1.1 - 1) * 1.0 = 1.1
        // Sensitive: 1 + (1.1 - 1) * 2.0 = 1.2
        
        normalController.applyPinchZoom(zoomFactor, Offset.Zero)
        sensitiveController.applyPinchZoom(zoomFactor, Offset.Zero)

        // Sensitive controller should zoom more with same gesture
        assertTrue(sensitiveController.scale.value > normalController.scale.value)
    }

    @Test
    fun `test reset to base scale clears offset`() = runTest {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        // Zoom in and pan
        controller.scale.snapTo(2.0f)
        controller.offsetX.snapTo(100f)
        controller.offsetY.snapTo(100f)

        assertNotEquals(0f, controller.offsetX.value, 0.001f)
        assertNotEquals(0f, controller.offsetY.value, 0.001f)

        // Reset should clear offset
        controller.resetToBaseScale()

        assertEquals(0f, controller.offsetX.value, 0.001f)
        assertEquals(0f, controller.offsetY.value, 0.001f)
        assertEquals(controller.getBaseScale(), controller.scale.value, 0.001f)
    }

    @Test
    fun `test force reset when zoomed out too much`() = runTest {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        val baseScale = controller.getBaseScale()
        
        // Zoom out to 75% of base scale (below 80% threshold)
        controller.scale.snapTo(baseScale * 0.75f)
        
        controller.forceResetIfNeeded()

        // Should reset to base scale
        assertEquals(baseScale, controller.scale.value, 0.01f)
    }

    @Test
    fun `test no force reset when above threshold`() = runTest {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "width"
        )

        val baseScale = controller.getBaseScale()
        val testScale = baseScale * 0.85f // Above 80% threshold
        
        controller.scale.snapTo(testScale)
        
        controller.forceResetIfNeeded()

        // Should NOT reset
        assertEquals(testScale, controller.scale.value, 0.001f)
    }

    @Test
    fun `test aspect ratio preservation in FIT mode`() {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "fit"
        )

        val fitScale = controller.calculateFitScreenScale()
        val scaledWidth = portraitImageSize.width * fitScale
        val scaledHeight = portraitImageSize.height * fitScale

        // At least one dimension should fit screen exactly
        val fitsWidth = abs(scaledWidth - screenSize.width) < 1f
        val fitsHeight = abs(scaledHeight - screenSize.height) < 1f

        assertTrue("Image should fit screen in at least one dimension", fitsWidth || fitsHeight)

        // Neither dimension should exceed screen
        assertTrue("Scaled width should not exceed screen", scaledWidth <= screenSize.width + 1f)
        assertTrue("Scaled height should not exceed screen", scaledHeight <= screenSize.height + 1f)
    }

    @Test
    fun `test aspect ratio preservation in FILL mode`() {
        val controller = ZoomController(
            imageSize = portraitImageSize,
            screenSize = screenSize,
            initialScaleMode = "fill"
        )

        val fillScale = controller.calculateFillScale()
        val scaledWidth = portraitImageSize.width * fillScale
        val scaledHeight = portraitImageSize.height * fillScale

        // Both dimensions should be at least screen size (may crop)
        assertTrue("Scaled width should cover screen", scaledWidth >= screenSize.width - 1f)
        assertTrue("Scaled height should cover screen", scaledHeight >= screenSize.height - 1f)

        // At least one dimension should match screen exactly
        val fillsWidth = abs(scaledWidth - screenSize.width) < 1f
        val fillsHeight = abs(scaledHeight - screenSize.height) < 1f

        assertTrue("Image should fill screen exactly in at least one dimension", fillsWidth || fillsHeight)
    }
}
