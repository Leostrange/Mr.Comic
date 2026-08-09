package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * ARC-11 S3 ChromeInsetsPlan — pure-Kotlin data-class тесты.
 * Проверяет, что measured reserve, auto-hide reserve, final visible
 * reserve и CSS-инсеты вычисляются как раньше в inline-блоке
 * ReaderScreen.kt. Без Compose, без Robolectric.
 */
class ChromeInsetsPlanTest {

    private val systemTop = 60
    private val systemBottom = 70
    private val sentence = 16
    private val densityScale = 2.0f
    private val overlayEstimate = 36
    private val maxStable = 200

    @Test
    fun measuredTopReserve_whenChromeIsVisible_usesBothOverlayAndChrome() {
        val plan = ChromeInsetsPlan.compute(
            chromeIsVisible = true,
            measuredHeaderOverlayPx = 120,
            measuredFooterOverlayPx = 80,
            measuredTopChromePx = 180,
            measuredBottomChromePx = 90,
            systemTopInsetPx = systemTop,
            systemBottomInsetPx = systemBottom,
            stableTopChromeReservePx = 100,
            stableBottomChromeReservePx = 80,
            baselineTopChromeReservePx = 100,
            baselineBottomChromeReservePx = 80,
            estimatedOverlayContentPx = overlayEstimate,
            maxStableTopChromeReservePx = maxStable,
            textSentenceInsetPx = sentence,
            densityScale = densityScale,
        )

        // measuredHeader: 120 - 60 = 60; measuredTopChrome: 180 - 60 = 120
        // chromeIsVisible → maxOf(60, 120) = 120, capped 200 → 120
        assertEquals(120, plan.measuredTopReservePx)
    }

    @Test
    fun measuredTopReserve_whenChromeIsHidden_usesOverlayAndEstimate() {
        val plan = ChromeInsetsPlan.compute(
            chromeIsVisible = false,
            measuredHeaderOverlayPx = 120,
            measuredFooterOverlayPx = 80,
            measuredTopChromePx = 180,
            measuredBottomChromePx = 90,
            systemTopInsetPx = systemTop,
            systemBottomInsetPx = systemBottom,
            stableTopChromeReservePx = 100,
            stableBottomChromeReservePx = 80,
            baselineTopChromeReservePx = 100,
            baselineBottomChromeReservePx = 80,
            estimatedOverlayContentPx = 50,
            maxStableTopChromeReservePx = maxStable,
            textSentenceInsetPx = sentence,
            densityScale = densityScale,
        )

        // hidden: maxOf((120-60)=60, estimate=50) = 60
        assertEquals(60, plan.measuredTopReservePx)
    }

    @Test
    fun measuredTopReserve_cappedAtMaxStable() {
        val plan = ChromeInsetsPlan.compute(
            chromeIsVisible = true,
            measuredHeaderOverlayPx = 9999,
            measuredFooterOverlayPx = 80,
            measuredTopChromePx = 9999,
            measuredBottomChromePx = 90,
            systemTopInsetPx = systemTop,
            systemBottomInsetPx = systemBottom,
            stableTopChromeReservePx = 100,
            stableBottomChromeReservePx = 80,
            baselineTopChromeReservePx = 100,
            baselineBottomChromeReservePx = 80,
            estimatedOverlayContentPx = overlayEstimate,
            maxStableTopChromeReservePx = 100,
            textSentenceInsetPx = sentence,
            densityScale = densityScale,
        )

        // capped at maxStable=100
        assertEquals(100, plan.measuredTopReservePx)
    }

    @Test
    fun measuredBottomReserve_whenChromeIsVisible_maxesOverlayAndChrome_minusInsets() {
        val plan = ChromeInsetsPlan.compute(
            chromeIsVisible = true,
            measuredHeaderOverlayPx = 120,
            measuredFooterOverlayPx = 200,
            measuredTopChromePx = 180,
            measuredBottomChromePx = 160,
            systemTopInsetPx = systemTop,
            systemBottomInsetPx = systemBottom,
            stableTopChromeReservePx = 100,
            stableBottomChromeReservePx = 80,
            baselineTopChromeReservePx = 100,
            baselineBottomChromeReservePx = 80,
            estimatedOverlayContentPx = overlayEstimate,
            maxStableTopChromeReservePx = maxStable,
            textSentenceInsetPx = sentence,
            densityScale = densityScale,
        )

        // footer: 200-70=130; bottomChrome: 160-70=90; max=130
        assertEquals(130, plan.measuredBottomReservePx)
    }

    @Test
    fun finalVisibleReserve_zeroWhenChromeHidden() {
        val plan = ChromeInsetsPlan.compute(
            chromeIsVisible = false,
            measuredHeaderOverlayPx = 300,
            measuredFooterOverlayPx = 200,
            measuredTopChromePx = 300,
            measuredBottomChromePx = 200,
            systemTopInsetPx = systemTop,
            systemBottomInsetPx = systemBottom,
            stableTopChromeReservePx = 200,
            stableBottomChromeReservePx = 180,
            baselineTopChromeReservePx = 200,
            baselineBottomChromeReservePx = 180,
            estimatedOverlayContentPx = overlayEstimate,
            maxStableTopChromeReservePx = maxStable,
            textSentenceInsetPx = sentence,
            densityScale = densityScale,
        )

        // visibleChromeContentReservePx with chromeIsVisible=false → 0
        assertEquals(0, plan.topChromeReservePx)
        assertEquals(0, plan.bottomChromeReservePx)
    }

    @Test
    fun autoHideFloor_worksAsExpected() {
        val plan = ChromeInsetsPlan.compute(
            chromeIsVisible = false,
            measuredHeaderOverlayPx = 100,
            measuredFooterOverlayPx = 100,
            measuredTopChromePx = 0,
            measuredBottomChromePx = 0,
            systemTopInsetPx = systemTop,
            systemBottomInsetPx = systemBottom,
            stableTopChromeReservePx = 120,
            stableBottomChromeReservePx = 100,
            baselineTopChromeReservePx = 120,
            baselineBottomChromeReservePx = 100,
            estimatedOverlayContentPx = 30,
            maxStableTopChromeReservePx = maxStable,
            textSentenceInsetPx = sentence,
            densityScale = densityScale,
        )

        // autoHide top: maxOf(30, 120, (100-60)=40) = 120
        assertEquals(120, plan.autoHideTopReservePx)
        // autoHide bottom: maxOf(30, 100, (100-70)=30) = 100
        assertEquals(100, plan.autoHideBottomReservePx)
    }

    @Test
    fun cssInsets_includeSentenceGutter_whenNoChromeReserve() {
        // Chrome not visible → topChromeReservePx = 0 → sentence gutter added
        val plan = ChromeInsetsPlan.compute(
            chromeIsVisible = false,
            measuredHeaderOverlayPx = 60,
            measuredFooterOverlayPx = 70,
            measuredTopChromePx = 0,
            measuredBottomChromePx = 0,
            systemTopInsetPx = systemTop,
            systemBottomInsetPx = systemBottom,
            stableTopChromeReservePx = 0,
            stableBottomChromeReservePx = 0,
            baselineTopChromeReservePx = 0,
            baselineBottomChromeReservePx = 0,
            estimatedOverlayContentPx = 0,
            maxStableTopChromeReservePx = maxStable,
            textSentenceInsetPx = sentence,
            densityScale = densityScale,
        )

        // topChromeReserve=0 → sentenceInset added
        val expectedTopPx = systemTop + 0 + sentence // 60+16=76
        assertEquals(expectedTopPx, plan.textContentTopInsetPx)
        // bottomChromeReserve=0 → sentenceInset added
        val expectedBottomPx = systemBottom + 0 + sentence // 70+16=86
        assertEquals(expectedBottomPx, plan.textContentBottomInsetPx)
        // CSS: 76/2.0f ≈ 38; 86/2f ≈ 43
        assertEquals(38, plan.textContentTopInsetCssPx)
        assertEquals(43, plan.textContentBottomInsetCssPx)
    }
}
