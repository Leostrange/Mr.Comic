package io.leostrange.mrcomic.engine.formats

import android.content.Context
import net.sf.sevenzipjbinding.SevenZip
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Process-wide one-time initialization of the SevenZip native bindings.
 * [SevenZip.initSevenZipFromPlatformJAR] extracts and loads the native
 * library; calling it on every archive open (as was done before) added
 * noticeable latency to opening CBZ/CBR/7z files. The [AtomicBoolean]
 * guard makes repeat calls no-ops.
 */
object SevenZipInitializer {
    private val initialized = AtomicBoolean(false)

    fun ensureInitialized(context: Context) {
        if (initialized.compareAndSet(false, true)) {
            runCatching { SevenZip.initSevenZipFromPlatformJAR(context.cacheDir) }
        }
    }
}
