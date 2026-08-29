package io.leostrange.mrcomic.feature.reader.domain.crop

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderMarginCropTest {

    @Test
    fun clampCapsEachSideAtMaxFraction() {
        val crop = ReaderMarginCrop(enabled = true, left = 0.5f, top = -0.4f, right = 0.1f, bottom = 0f)
        val clamped = crop.clamped()
        assertEquals(ReaderMarginCrop.MAX_SIDE_FRACTION, clamped.left, 1e-6f)
        assertEquals(0f, clamped.top, 1e-6f)
        assertEquals(0.1f, clamped.right, 1e-6f)
        assertEquals(0f, clamped.bottom, 1e-6f)
    }

    @Test
    fun symmetricEnforceKeepsLargerSideOfEachAxis() {
        val crop = ReaderMarginCrop(
            enabled = true,
            left = 0.10f,
            right = 0.04f,
            top = 0.02f,
            bottom = 0.08f,
            symmetric = true
        )
        val enforced = crop.withSymmetricEnforced()
        assertEquals(0.10f, enforced.left, 1e-6f)
        assertEquals(0.10f, enforced.right, 1e-6f)
        assertEquals(0.08f, enforced.top, 1e-6f)
        assertEquals(0.08f, enforced.bottom, 1e-6f)
    }

    @Test
    fun symmetricEnforceKeepsAsymmetricValuesWhenDisabled() {
        val crop = ReaderMarginCrop(left = 0.10f, right = 0.04f, symmetric = false)
        val enforced = crop.withSymmetricEnforced()
        assertEquals(0.10f, enforced.left, 1e-6f)
        assertEquals(0.04f, enforced.right, 1e-6f)
    }

    @Test
    fun pairsAveragedProducesEqualAxes() {
        val averaged = ReaderMarginCrop(left = 0.10f, right = 0.02f, top = 0f, bottom = 0.06f)
            .withPairsAveraged()
        assertEquals(0.06f, averaged.left, 1e-6f)
        assertEquals(0.06f, averaged.right, 1e-6f)
        assertEquals(0.03f, averaged.top, 1e-6f)
        assertEquals(0.03f, averaged.bottom, 1e-6f)
    }

    @Test
    fun setSideMirrorsOppositeSideInSymmetricMode() {
        val updated = ReaderMarginCrop(enabled = true, symmetric = true)
            .withSide(ReaderMarginCropSide.LEFT, 0.07f)
        assertEquals(0.07f, updated.left, 1e-6f)
        assertEquals(0.07f, updated.right, 1e-6f)
        assertEquals(0f, updated.top, 1e-6f)
    }

    @Test
    fun setSideKeepsOppositeSideIndependentWhenAsymmetric() {
        val updated = ReaderMarginCrop(symmetric = false, right = 0.05f)
            .withSide(ReaderMarginCropSide.LEFT, 0.09f)
        assertEquals(0.09f, updated.left, 1e-6f)
        assertEquals(0.05f, updated.right, 1e-6f)
    }

    @Test
    fun setSideDoesNotImplicitlyEnableCrop() {
        val updated = ReaderMarginCrop(enabled = false, symmetric = false)
            .withSide(ReaderMarginCropSide.TOP, 0.10f)
        assertFalse(updated.enabled)
        assertTrue(updated.hasVisibleCrop)
        assertFalse(updated.isActive)
    }

    @Test
    fun seededFromLegacyFillsAllSides() {
        val seeded = ReaderMarginCrop().seededFromLegacy(horizontal = 0.10f, vertical = 0.05f)
        assertEquals(0.10f, seeded.left, 1e-6f)
        assertEquals(0.10f, seeded.right, 1e-6f)
        assertEquals(0.05f, seeded.top, 1e-6f)
        assertEquals(0.05f, seeded.bottom, 1e-6f)
    }

    @Test
    fun effectiveSidesAreZeroWhenUnsupportedOrDisabled() {
        val crop = ReaderMarginCrop(enabled = true, left = 0.1f, right = 0.1f, top = 0.05f, bottom = 0.05f)
        assertTrue(crop.effectiveSides(supported = false).isZero)
        assertTrue(crop.copy(enabled = false).effectiveSides(supported = true).isZero)
        val effective = crop.effectiveSides(supported = true)
        assertFalse(effective.isZero)
        assertEquals(0.1f, effective.left, 1e-6f)
        assertEquals(0.05f, effective.top, 1e-6f)
        assertEquals(0.1f, effective.right, 1e-6f)
        assertEquals(0.05f, effective.bottom, 1e-6f)
    }

    @Test
    fun sideEnumRoundTripsStoredValues() {
        ReaderMarginCropSide.entries.forEach { side ->
            assertEquals(side, ReaderMarginCropSide.fromStored(side.storedValue))
        }
        assertEquals(null, ReaderMarginCropSide.fromStored("diagonal"))
    }
}
