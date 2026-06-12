package com.example.engine.rendering.pool

import android.content.ComponentCallbacks2
import android.content.Context
import android.graphics.Bitmap
import com.example.engine.formats.base.RenderDeviceProfile
import com.example.engine.formats.base.RenderDeviceTier
import com.example.engine.formats.base.resolveRenderDeviceProfile
import io.mockk.every
import io.mockk.mockk
import io.mockk.mockkStatic
import io.mockk.unmockkStatic
import io.mockk.verify
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Before
import org.junit.Test

class BitmapPoolTest {

    private lateinit var pool: BitmapPool
    private val testProfile = RenderDeviceProfile(
        tier = RenderDeviceTier.MID_RANGE,
        defaultPreloadPages = 3,
        maxPreloadPages = 4,
        preloadBehindPages = 1,
        memoryCacheFractionDivisor = 12,
        bitmapPoolEntries = 4,
        imageDecodeBoost = 1.15f,
        imageTargetLongEdgePx = 2400,
        imageMaxPixels = 7_200_000L,
        imagePreferredConfig = Bitmap.Config.ARGB_8888,
        pdfViewportMultiplier = 1.18f,
        pdfMaxScale = 2.25f,
        pdfMaxRenderPixels = 7_500_000L,
        disableAnimations = false
    )

    @Before
    fun setUp() {
        mockkStatic("com.example.engine.formats.base.RenderDeviceProfileKt")
        mockkStatic(Bitmap::class)
        val context = mockk<Context>()
        every { context.resolveRenderDeviceProfile() } returns testProfile
        every { Bitmap.createBitmap(any<Int>(), any<Int>(), any<Bitmap.Config>()) } returns mockk(relaxed = true)
        pool = BitmapPool(context)
    }

    @After
    fun tearDown() {
        unmockkStatic("com.example.engine.formats.base.RenderDeviceProfileKt")
        unmockkStatic(Bitmap::class)
    }

    @Test
    fun acquire_createsNewBitmap_whenPoolEmpty() {
        val bitmap = pool.acquire(100, 200, Bitmap.Config.ARGB_8888)

        assertNotNull(bitmap)
    }

    @Test
    fun acquire_reusesBitmap_whenPoolHasMatchingEntry() {
        val original = mockk<Bitmap>(relaxed = true) {
            every { width } returns 100
            every { height } returns 200
            every { config } returns Bitmap.Config.ARGB_8888
            every { isRecycled } returns false
        }
        pool.release(original)

        val reused = pool.acquire(100, 200, Bitmap.Config.ARGB_8888)

        assertEquals(original, reused)
    }

    @Test
    fun acquire_createsNewBitmap_whenSizeMismatch() {
        val original = mockk<Bitmap>(relaxed = true) {
            every { width } returns 100
            every { height } returns 200
            every { config } returns Bitmap.Config.ARGB_8888
            every { isRecycled } returns false
        }
        pool.release(original)

        val result = pool.acquire(300, 400, Bitmap.Config.ARGB_8888)

        assertFalse(result === original)
    }

    @Test
    fun acquire_createsNewBitmap_whenConfigMismatch() {
        val original = mockk<Bitmap>(relaxed = true) {
            every { width } returns 100
            every { height } returns 200
            every { config } returns Bitmap.Config.RGB_565
            every { isRecycled } returns false
        }
        pool.release(original)

        val result = pool.acquire(100, 200, Bitmap.Config.ARGB_8888)

        assertFalse(result === original)
    }

    @Test
    fun release_recyclesBitmap_whenPoolFull() {
        repeat(4) {
            val bmp = mockk<Bitmap>(relaxed = true) {
                every { isRecycled } returns false
            }
            pool.release(bmp)
        }

        val overflow = mockk<Bitmap>(relaxed = true) {
            every { isRecycled } returns false
        }
        pool.release(overflow)

        verify { overflow.recycle() }
    }

    @Test
    fun release_doesNotRecycle_whenAlreadyRecycled() {
        val recycled = mockk<Bitmap>(relaxed = true) {
            every { isRecycled } returns true
        }

        pool.release(recycled)

        verify(exactly = 0) { recycled.recycle() }
    }

    @Test
    fun clear_recyclesAllPooledBitmaps() {
        val bitmaps = mutableListOf<Bitmap>()
        repeat(3) {
            val bmp = mockk<Bitmap>(relaxed = true) {
                every { isRecycled } returns false
            }
            bitmaps.add(bmp)
            pool.release(bmp)
        }

        pool.clear()

        bitmaps.forEach { verify { it.recycle() } }
    }

    @Test
    fun trimMemory_background_clearsAll() {
        val bmp = mockk<Bitmap>(relaxed = true) {
            every { isRecycled } returns false
        }
        pool.release(bmp)

        pool.trimMemory(ComponentCallbacks2.TRIM_MEMORY_BACKGROUND)

        verify { bmp.recycle() }
    }

    @Test
    fun trimMemory_runningLow_trimsToHalf() {
        repeat(4) {
            val bmp = mockk<Bitmap>(relaxed = true) {
                every { isRecycled } returns false
            }
            pool.release(bmp)
        }

        pool.trimMemory(ComponentCallbacks2.TRIM_MEMORY_RUNNING_LOW)
    }

    @Test
    fun trimMemory_uiHidden_doesNothing() {
        val bmp = mockk<Bitmap>(relaxed = true) {
            every { isRecycled } returns false
        }
        pool.release(bmp)

        pool.trimMemory(ComponentCallbacks2.TRIM_MEMORY_UI_HIDDEN)

        verify(exactly = 0) { bmp.recycle() }
    }
}
