package io.leostrange.mrcomic.engine.api

import io.leostrange.mrcomic.core.model.ComicFormat

/**
 * Creates format readers for a path and detected format.
 *
 * Implemented by engine-formats (FormatFactory); feature modules depend on
 * this interface so they never import the implementation module directly.
 */
interface ReaderFactory {
    /**
     * Creates a reader for [path] with the given [format].
     * Returns null if the format is not supported or the file is unreadable.
     */
    fun createReader(path: String, format: ComicFormat): FormatReader?
}
