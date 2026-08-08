package io.leostrange.mrcomic.engine.rendering.pool

import android.content.ComponentCallbacks2
import android.content.Context
import android.graphics.Bitmap
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.api.resolveRenderDeviceProfile
import dagger.hilt.android.qualifiers.ApplicationContext
import java.util.concurrent.ConcurrentLinkedQueue
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class BitmapPool @Inject constructor(
    @ApplicationContext context: Context
) : BitmapAllocator {

    private val pool = ConcurrentLinkedQueue<Bitmap>()
    private val maxSize = context.resolveRenderDeviceProfile().bitmapPoolEntries

    /** Reuse or create a bitmap of the given dimensions */
    override fun acquire(width: Int, height: Int, config: Bitmap.Config): Bitmap {
        val candidate = pool.poll()
        return if (candidate != null && !candidate.isRecycled &&
            candidate.width == width && candidate.height == height && candidate.config == config
        ) {
            candidate.eraseColor(0)
            candidate
        } else {
            if (candidate != null && !candidate.isRecycled) candidate.recycle()
            Bitmap.createBitmap(width, height, config)
        }
    }

    /** Return bitmap to pool for reuse */
    override fun release(bitmap: Bitmap) {
        if (!bitmap.isRecycled && pool.size < maxSize) {
            pool.offer(bitmap)
        } else if (!bitmap.isRecycled) {
            bitmap.recycle()
        }
    }

    override fun clear() {
        while (pool.isNotEmpty()) pool.poll()?.recycle()
    }

    @Suppress("DEPRECATION")
    override fun trimMemory(level: Int) {
        when {
            level == ComponentCallbacks2.TRIM_MEMORY_UI_HIDDEN -> return
            level >= ComponentCallbacks2.TRIM_MEMORY_BACKGROUND -> clear()
            level >= ComponentCallbacks2.TRIM_MEMORY_RUNNING_LOW -> trimToSize((maxSize / 2).coerceAtLeast(0))
        }
    }

    private fun trimToSize(targetSize: Int) {
        while (pool.size > targetSize) {
            pool.poll()?.takeIf { !it.isRecycled }?.recycle()
        }
    }
}
