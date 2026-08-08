package io.leostrange.mrcomic.engine.formats

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.api.FormatProvider
import io.leostrange.mrcomic.engine.api.FormatReaderHandle
import io.leostrange.mrcomic.engine.formats.base.FormatDetector
import io.leostrange.mrcomic.engine.formats.base.FormatFactory
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Wraps FormatFactory and FormatDetector to implement the FormatProvider interface
 * from engine-api, allowing core-domain to depend on engine-api only.
 */
@Singleton
class FormatProviderImpl @Inject constructor(
    private val formatFactory: FormatFactory
) : FormatProvider {

    override fun detectByExtension(path: String): ComicFormat =
        FormatDetector.detectByExtension(path)

    override fun createReader(path: String, format: ComicFormat): FormatReaderHandle? {
        val reader = formatFactory.createReader(path, format) ?: return null
        return FormatReaderHandleImpl(reader)
    }

    override suspend fun getPages(reader: FormatReaderHandle): List<Bitmap> {
        val handle = reader as FormatReaderHandleImpl
        val count = handle.getPageCount()
        return (0 until count).mapNotNull { handle.getPage(it) }
    }

    override fun closeReader(reader: FormatReaderHandle) {
        (reader as? FormatReaderHandleImpl)?.close()
    }
}

private class FormatReaderHandleImpl(
    private val delegate: FormatReader
) : FormatReaderHandle {
    override suspend fun getPageCount(): Int =
        try { delegate.getPageCount() } catch (_: Exception) { 0 }

    override suspend fun getPage(index: Int): Bitmap? =
        try { delegate.getPage(index) } catch (_: Exception) { null }

    override fun close() {
        try { delegate.close() } catch (_: Exception) {}
    }
}
