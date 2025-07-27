package com.example.feature.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import android.graphics.Rect
import com.djvu.android.DjvuContext
import com.djvu.android.DjvuDocument
import com.example.feature.reader.domain.BookReader
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File

/**
 * A [BookReader] implementation for reading DJVU files.
 *
 * @param context The Android context.
 */
class DjvuReader(
    private val context: Context
) : BookReader {

    private var djvuContext: DjvuContext? = null
    private var djvuDocument: DjvuDocument? = null

    override suspend fun open(uri: Uri): Int {
        return withContext(Dispatchers.IO) {
            runCatching {
                djvuContext = DjvuContext()
                djvuDocument = djvuContext?.open(uri, context.contentResolver)
                djvuDocument?.pageCount ?: 0
            }.getOrDefault(0)
        }
    }

    override fun renderPage(pageIndex: Int): Bitmap? {
        val doc = djvuDocument ?: return null
        if (pageIndex < 0 || pageIndex >= doc.pageCount) {
            return null
        }

        return runCatching {
            val page = doc.getPage(pageIndex)
            val bitmap = Bitmap.createBitmap(page.width, page.height, Bitmap.Config.ARGB_8888)
            page.renderBitmap(bitmap, Rect(0, 0, page.width, page.height))
            bitmap
        }.getOrNull()
    }

    override fun close() {
        djvuDocument?.close()
        djvuDocument = null
        djvuContext?.close()
        djvuContext = null
    }
}