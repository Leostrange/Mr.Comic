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
        return withContext(Dispatchers.IO) {
            try {
                val file = copyUriToFile(context, uri)
                if (!file.exists() || file.length() == 0L) {
                    throw IllegalStateException("Файл не найден или пустой")
                }
                
                val pages = when (detectFormat(file)) {
                    Format.PDF -> {
                        try {
                            PdfPageRendererSafe(context, file).getAllPages()
                        } catch (e: Exception) {
                            throw Exception("Ошибка при чтении PDF: ${e.message}", e)
                        }
                    }
                    Format.CBZ -> {
                        try {
                            CbzReaderSafe(file).getPages()
                        } catch (e: Exception) {
                            throw Exception("Ошибка при чтении CBZ: ${e.message}", e)
                        }
                    }
                    Format.CBR -> {
                        try {
                            CbrReaderSafe(file).getPages()
                        } catch (e: Exception) {
                            throw Exception("Ошибка при чтении CBR: ${e.message}", e)
                        }
                    }
                    else -> {
                        throw UnsupportedOperationException("Неподдерживаемый формат файла")
                    }
                }
                
                if (pages.isEmpty()) {
                    throw IllegalStateException("В файле не найдено страниц для отображения")
                }
                
                pages
            } catch (e: Exception) {
                // Cleanup temp file if it exists
                try {
                    val tempFile = File(context.cacheDir, "tmp_")
                    context.cacheDir.listFiles()?.filter { 
                        it.name.startsWith("tmp_") 
                    }?.forEach { it.delete() }
                } catch (cleanupException: Exception) {
                    // Ignore cleanup errors
                }
                throw e
            }
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
        file.name.endsWith(".epub", true) -> Format.EPUB
        else -> Format.UNKNOWN
    }
}


