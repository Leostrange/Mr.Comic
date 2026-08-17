package io.leostrange.mrcomic.engine.rendering.cache

import android.content.Context
import android.graphics.Bitmap
import io.leostrange.mrcomic.engine.api.RenderDeviceProfile
import io.leostrange.mrcomic.engine.api.RenderDeviceTier
import io.leostrange.mrcomic.engine.api.resolveRenderDeviceProfile
import io.mockk.every
import io.mockk.mockk
import io.mockk.mockkStatic
import io.mockk.unmockkStatic
import io.mockk.verify
import org.junit.After
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class TieredBitmapCacheTest {

    @Before
    fun setUp() {
        mockkStatic("io.leostrange.mrcomic.engine.api.RenderDeviceProfileKt")
    }

    @After
    fun tearDown() {
        unmockkStatic("io.leostrange.mrcomic.engine.api.RenderDeviceProfileKt")
    }

    @Test
    fun lruEviction_doesNotRecycleBitmapThatMayStillBeDisplayed() {
        val context = mockk<Context>()
        every { context.resolveRenderDeviceProfile() } returns TEST_PROFILE
        val bitmap = mockk<Bitmap>(relaxed = true) {
            every { isRecycled } returns false
            every { allocationByteCount } returns 4 * 1024
        }
        val cache = TieredBitmapCache(context)

        cache.put("visible-page", bitmap)
        cache.trimToSize(0)

        verify(exactly = 0) { bitmap.recycle() }
    }

    private companion object {
        val TEST_PROFILE = RenderDeviceProfile(
            tier = RenderDeviceTier.MID_RANGE,
            defaultPreloadPages = 3,
            maxPreloadPages = 4,
            preloadBehindPages = 1,
            memoryCacheFractionDivisor = 12,
            bitmapPoolEntries = 8,
            imageDecodeBoost = 1.15f,
            imageTargetLongEdgePx = 2400,
            imageMaxPixels = 7_200_000L,
            imagePreferredConfig = Bitmap.Config.ARGB_8888,
            pdfViewportMultiplier = 1.18f,
            pdfMaxScale = 2.25f,
            pdfMaxRenderPixels = 7_500_000L,
            disableAnimations = false
        )
    }
}
