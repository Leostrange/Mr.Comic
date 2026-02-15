package com.example.core.reader.pdf

import android.graphics.Bitmap

/**
 * Interface for PDF reader implementations.
 */
interface PdfReader : AutoCloseable {
    /**
     * Returns the total number of pages in the PDF document.
     */
    fun getPageCount(): Int

    /**
     * Renders a specific page to a bitmap.
     *
     * @param pageIndex The index of the page to render (0-based).
     * @param width The desired width of the bitmap.
     * @param height The desired height of the bitmap.
     * @return A Result containing the rendered Bitmap or an error.
     */
    fun renderPage(pageIndex: Int, width: Int, height: Int): Result<Bitmap>
}
