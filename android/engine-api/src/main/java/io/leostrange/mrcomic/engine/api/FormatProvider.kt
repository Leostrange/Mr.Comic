package io.leostrange.mrcomic.engine.api

import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.ComicFormat

/**
 * Abstraction for format detection and reader creation.
 * Implementations live in engine-formats; consumers in core-domain
 * depend only on this interface via engine-api.
 */
interface FormatProvider {
    /**
     * Detect format from file extension.
     */
    fun detectByExtension(path: String): ComicFormat

    /**
     * Create a reader for the given path and format.
     * Returns null if the format is not supported.
     */
    fun createReader(path: String, format: ComicFormat): FormatReaderHandle?

    /**
     * Get pages from a reader as bitmaps.
     */
    suspend fun getPages(reader: FormatReaderHandle): List<Bitmap>

    /**
     * Close a reader.
     */
    fun closeReader(reader: FormatReaderHandle)
}

/**
 * Opaque handle to a format reader, so engine-api doesn't depend on engine-formats types.
 */
interface FormatReaderHandle {
    suspend fun getPageCount(): Int
    suspend fun getPage(index: Int): Bitmap?
    fun close()
}
