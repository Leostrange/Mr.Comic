package io.leostrange.mrcomic.engine.formats.base

import android.graphics.Bitmap

interface BitmapAllocator {
    fun acquire(
        width: Int,
        height: Int,
        config: Bitmap.Config = Bitmap.Config.ARGB_8888
    ): Bitmap

    fun release(bitmap: Bitmap)

    fun clear() = Unit

    fun trimMemory(level: Int) = Unit
}
