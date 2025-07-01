package reader

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File

class MrComicReader(private val context: Context, private val uri: Uri) {
    enum class Format { PDF, CBZ, CBR, EPUB, UNKNOWN }

    suspend fun readPages(): List<Bitmap> {
        val file = copyUriToFile(context, uri)
        return when (detectFormat(file)) {
            Format.PDF -> PdfPageRendererSafe(context, file).getAllPages()
            Format.CBZ -> CbzReaderSafe(file).getPages()
            Format.CBR -> CbrReaderSafe(file).getPages()
            else -> emptyList()
        }
    }

    fun isEpub(): Boolean {
        val name = uri.lastPathSegment ?: return false
        return name.endsWith(".epub", ignoreCase = true)
    }

    private fun detectFormat(file: File): Format = when {
        file.name.endsWith(".pdf", true) -> Format.PDF
        file.name.endsWith(".cbz", true) -> Format.CBZ
        file.name.endsWith(".cbr", true) -> Format.CBR
        else -> Format.UNKNOWN
    }
}


