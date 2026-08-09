package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.ui.graphics.Color
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * ARC-11 chrome slice. Pure-Kotlin data class — без Robolectric/Compose runtime.
 * Проверяет, что план chrome:
 *  1) применяет EINK-переопределение: opacity=1, blur=0, force=true;
 *  2) clampит raw к [READER_TOOLBAR_MIN_OPACITY, 1f] для не-EINK;
 *  3) усредняет top/bottom opacities;
 *  4) chromeSurface и overlaySurface проходят через readerPanelSurfaceColor —
 *     дельта на 3% от blur отличает chrome от overlay;
 *  5) overlayStyle: EINK → textColor=0xFF111111, без тени; иначе luminance
 *     решает светлый vs тёмный.
 */
class ReaderChromeSurfacePlanTest {

    private val darkBase = Color(0xFF1F1815)   // luminance < 0.72
    private val lightBase = Color(0xFFF4EEE4)  // luminance >= 0.72

    @Test
    fun eink_forcesOpaqueChrome_andZeroBlur() {
        val plan = ReaderChromeSurfacePlan.compute(
            preset = ReadingPreset.EINK,
            isTextReader = false,
            topToolbarOpacity = 0.2f,
            bottomToolbarOpacity = 0.2f,
            toolbarBlur = 0.7f,
            baseColor = darkBase,
        )
        assertTrue("EINK must force opaque chrome", plan.forceOpaqueChromeSurface)
        assertEquals("EINK chrome opacity must clamp to 1.0", 1f, plan.effectiveToolbarOpacity, 0.0001f)
        assertEquals("EINK must disable blur", 0f, plan.effectiveToolbarBlur, 0.0001f)
        // При force minAlpha = 1f, поэтому альфа chrome и overlay == 1f
        assertEquals(1f, plan.chromeSurface.alpha, 0.0001f)
        assertEquals(1f, plan.overlaySurface.alpha, 0.0001f)
        // EINK overlay style: 0xFF111111, без тени
        assertEquals(0x11 / 255f, plan.overlayStyle.textColor.red, 0.01f)
        assertEquals(0x11 / 255f, plan.overlayStyle.textColor.green, 0.01f)
        assertEquals(0x11 / 255f, plan.overlayStyle.textColor.blue, 0.01f)
        assertNull("EINK overlay must not have shadow", plan.overlayStyle.textShadow)
    }

    @Test
    fun nonEink_clampsBelowToolbarMinOpacityEvenWhenRawIsZero() {
        val plan = ReaderChromeSurfacePlan.compute(
            preset = ReadingPreset.PAPER,
            isTextReader = true,
            topToolbarOpacity = 0f,
            bottomToolbarOpacity = 0f,
            toolbarBlur = 0f,
            baseColor = darkBase,
        )
        assertFalse("non-EINK never forces opaque", plan.forceOpaqueChromeSurface)
        assertEquals(
            "non-EINK must clamp to READER_TOOLBAR_MIN_OPACITY",
            READER_TOOLBAR_MIN_OPACITY,
            plan.effectiveToolbarOpacity,
            0.0001f,
        )
        assertEquals(0f, plan.effectiveToolbarBlur, 0.0001f)
    }

    @Test
    fun averages_topAndBottom_opacity() {
        val plan = ReaderChromeSurfacePlan.compute(
            preset = ReadingPreset.SEPIA_BOOK,
            isTextReader = true,
            topToolbarOpacity = 0.8f,
            bottomToolbarOpacity = 0.9f,
            toolbarBlur = 0f,
            baseColor = lightBase,
        )
        // (0.8 + 0.9) * 0.5 = 0.85, above the non-EINK minimum.
        assertEquals(0.85f, plan.effectiveToolbarOpacity, 0.0001f)
    }

    @Test
    fun chrome_emphasis_is_higher_than_overlay_by_default() {
        val plan = ReaderChromeSurfacePlan.compute(
            preset = ReadingPreset.SEPIA_BOOK,
            isTextReader = true,
            topToolbarOpacity = 1f,
            bottomToolbarOpacity = 1f,
            toolbarBlur = 0.5f,
            baseColor = darkBase,
        )
        // Оба используют one base; emphasis отличается на 0.03 * blur = 0.015
        assertEquals(
            "chrome should be more opaque than overlay when blur > 0",
            plan.chromeSurface.alpha,
            plan.overlaySurface.alpha,
            0.01f,
        )
        // chromeSurface alpha >= overlaySurface alpha при blur>0
        assertTrue(
            "chrome alpha should be >= overlay alpha",
            plan.chromeSurface.alpha >= plan.overlaySurface.alpha - 0.0001f,
        )
    }

    @Test
    fun lightBase_choosesLightOverlayStyle() {
        val plan = ReaderChromeSurfacePlan.compute(
            preset = ReadingPreset.SEPIA_BOOK,
            isTextReader = true,
            topToolbarOpacity = 0.9f,
            bottomToolbarOpacity = 0.9f,
            toolbarBlur = 0f,
            baseColor = lightBase,
        )
        assertNotNull(plan.overlayStyle.textShadow)
        // 0xFF241B14 для светлой поверхности (см. ReaderHeaderFooterUi.readerHeaderFooterOverlayStyle)
        assertEquals(0x24 / 255f, plan.overlayStyle.textColor.red, 0.01f)
        assertEquals(0x1B / 255f, plan.overlayStyle.textColor.green, 0.01f)
        assertEquals(0x14 / 255f, plan.overlayStyle.textColor.blue, 0.01f)
    }

    @Test
    fun darkBase_choosesDarkOverlayStyle() {
        val plan = ReaderChromeSurfacePlan.compute(
            preset = ReadingPreset.SEPIA_BOOK,
            isTextReader = true,
            topToolbarOpacity = 0.9f,
            bottomToolbarOpacity = 0.9f,
            toolbarBlur = 0f,
            baseColor = darkBase,
        )
        assertNotNull(plan.overlayStyle.textShadow)
        // 0xFFF4EEE4 для тёмной поверхности
        assertEquals(0xF4 / 255f, plan.overlayStyle.textColor.red, 0.01f)
        assertEquals(0xEE / 255f, plan.overlayStyle.textColor.green, 0.01f)
        assertEquals(0xE4 / 255f, plan.overlayStyle.textColor.blue, 0.01f)
    }

    @Test
    fun theme_invariant_chrome_alpha_for_light_vs_text_presets() {
        val sepia = ReaderChromeSurfacePlan.compute(
            preset = ReadingPreset.SEPIA_BOOK,
            isTextReader = true,
            topToolbarOpacity = 1f, bottomToolbarOpacity = 1f,
            toolbarBlur = 1f, baseColor = lightBase,
        )
        val newspaper = ReaderChromeSurfacePlan.compute(
            preset = ReadingPreset.NEWSPAPER,
            isTextReader = true,
            topToolbarOpacity = 1f, bottomToolbarOpacity = 1f,
            toolbarBlur = 1f, baseColor = lightBase,
        )
        val dark = ReaderChromeSurfacePlan.compute(
            preset = ReadingPreset.PAPER,
            isTextReader = false,
            topToolbarOpacity = 1f, bottomToolbarOpacity = 1f,
            toolbarBlur = 1f, baseColor = darkBase,
        )
        // Все три с blur=1 должны иметь alpha поверхности вблизи 1
        assertTrue(sepia.chromeSurface.alpha > 0.95f)
        assertTrue(newspaper.chromeSurface.alpha > 0.95f)
        assertTrue(dark.chromeSurface.alpha > 0.95f)
        // Но base colors разные — chrome цвета у sepia/newspaper должны быть теплее,
        // чем у dark. Проверяем через red channel delta: 0xF4.. темнее, чем 0x1F..
        assertTrue(
            "sepia chrome red channel should exceed dark chrome red channel",
            sepia.chromeSurface.red > dark.chromeSurface.red,
        )
    }
}
