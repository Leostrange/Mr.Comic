package io.leostrange.mrcomic.engine.formats.folder

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import androidx.documentfile.provider.DocumentFile
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.formats.base.decodeBitmapFromStream
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceProfile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.InputStream

class FolderFormatReader(
    private val context: Context,
    private val path: String,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator
) : FormatReader {

    companion object {
        private const val TAG = "FolderFormatReader"
        private const val MAX_BITMAP_FALLBACK_PROBE = 50
        private val IMAGE_MIMES = setOf("image/jpeg", "image/png", "image/webp", "image/gif", "image/bmp")
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    }

    private val imageFiles: List<FolderImageSource> by lazy {
        try {
            val candidates = if (path.startsWith("content://")) {
                documentImageCandidates()
            } else {
                localImageCandidates(path)
            }

            val byMimeOrExtension = candidates.filter(::looksLikeImageFile)
            if (byMimeOrExtension.isNotEmpty()) {
                byMimeOrExtension
            } else {
                candidates.asSequence()
                    .take(MAX_BITMAP_FALLBACK_PROBE)
                    .filter(::isBitmapFile)
                    .toList()
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to list folder", e)
            emptyList()
        }
    }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { imageFiles.size }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        if (index < 0 || index >= imageFiles.size) return@withContext null
        try {
            val source = imageFiles[index]
            decodeBitmapFromStream(
                context = context,
                openStream = source.openStream,
                deviceProfile = deviceProfile,
                bitmapAllocator = bitmapAllocator,
                renderQuality = renderQuality
            ) ?: source.openStream()?.use(BitmapFactory::decodeStream)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to decode image at $index", e)
            null
        }
    }

    override fun close() { /* stateless */ }

    private fun documentImageCandidates(): List<FolderImageSource> {
        val uri = Uri.parse(path)
        val directory = DocumentFile.fromTreeUri(context, uri) ?: DocumentFile.fromSingleUri(context, uri)
        return directory?.listFiles()
            ?.filter { it.isFile }
            ?.sortedBy { it.name }
            ?.map { file ->
                FolderImageSource(file.name.orEmpty(), file.type) {
                    context.contentResolver.openInputStream(file.uri)
                }
            }
            .orEmpty()
    }

    private fun looksLikeImageFile(file: FolderImageSource): Boolean {
        if (file.mimeType in IMAGE_MIMES) return true
        val ext = file.name.lowercase().substringAfterLast('.', "")
        return ext in IMAGE_EXTENSIONS
    }

    private fun isBitmapFile(file: FolderImageSource): Boolean {
        return runCatching {
            file.openStream()?.use { input ->
                val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
                BitmapFactory.decodeStream(input, null, options)
                options.outWidth > 0 && options.outHeight > 0
            } ?: false
        }.getOrElse { error ->
            Log.w(TAG, "Failed to probe folder image candidate: ${file.name}", error)
            false
        }
    }
}

private data class FolderImageSource(
    val name: String,
    val mimeType: String?,
    val openStream: () -> InputStream?
)

private fun localImageCandidates(path: String): List<FolderImageSource> {
    val directory = when {
        path.startsWith("file://") -> Uri.parse(path).path?.let(::File)
        else -> File(path)
    } ?: return emptyList()
    return directory.listFiles()
        ?.asSequence()
        ?.filter { it.isFile }
        ?.sortedBy { it.name }
        ?.map { file -> FolderImageSource(file.name, null) { file.inputStream() } }
        ?.toList()
        .orEmpty()
}
