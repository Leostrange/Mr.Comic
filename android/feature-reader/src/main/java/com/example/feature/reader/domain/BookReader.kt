package com.example.feature.reader.domain

import android.graphics.Bitmap
import android.net.Uri

/**
 * An interface for a generic book/comic reader that handles different file formats.
 */
interface BookReader {
    /**
     * Opens and prepares the book file for reading, extracting pages if necessary.
     * @param uri The URI of the book file.
     * @return The total number of pages in the book.
     */
    suspend fun open(uri: Uri): Int

    /**
     * Renders a specific page into a Bitmap from its file path.
     * @param pageIndex The zero-based index of the page to render.
     * @return A Bitmap of the page, or null if rendering fails.
     */
    fun renderPage(pageIndex: Int): Bitmap?

    /**
     * Closes the reader and cleans up any resources, such as temporary files.
     */
    fun close()
}