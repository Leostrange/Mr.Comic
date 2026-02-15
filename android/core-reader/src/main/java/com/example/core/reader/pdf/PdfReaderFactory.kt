package com.example.core.reader.pdf

import android.content.Context
import android.net.Uri

/**
 * Factory for creating PDF readers.
 * Currently uses PdfBoxReader as the implementation.
 */
class PdfReaderFactory {
    
    /**
     * Tries to open a PDF using available readers.
     */
    fun openPdfWithFallback(context: Context, uri: Uri): Result<PdfReader> {
        return try {
            // Try wrapping initialization in Result
            val reader = PdfBoxReader(context, uri)
            Result.success(reader)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
