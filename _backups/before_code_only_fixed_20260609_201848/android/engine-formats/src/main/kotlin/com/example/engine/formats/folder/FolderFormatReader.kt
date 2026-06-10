package com.example.engine.formats.folder

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import androidx.documentfile.provider.DocumentFile
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.decodeBitmapFromStream
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.RenderDeviceProfile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

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

    private val imageFiles: List<DocumentFile> by lazy {
        try {
            val uri = Uri.parse(path)
            val docFile = DocumentFile.fromTreeUri(context, uri) ?: DocumentFile.fromSingleUri(context, uri)
            val candidates = docFile?.listFiles()
                ?.filter { it.isFile }
                ?.sortedBy { it.name }
                ?: emptyList()

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
            val uri = imageFiles[index].uri
            decodeBitmapFromStream(
                context = context,
                openStream = { context.contentResolver.openInputStream(uri) },
                deviceProfile = deviceProfile,
                bitmapAllocator = bitmapAllocator,
                renderQuality = renderQuality
            )
        } catch (e: Exception) {
            Log.e(TAG, "Failed to decode image at $index", e)
            null
        }
    }

    override fun close() { /* stateless */ }

    private fun looksLikeImageFile(file: DocumentFile): Boolean {
        if (file.type in IMAGE_MIMES) return true
        val ext = file.name?.lowercase()?.substringAfterLast('.', "") ?: return false
        return ext in IMAGE_EXTENSIONS
    }

    private fun isBitmapFile(file: DocumentFile): Boolean {
        return runCatching {
            context.contentResolver.openInputStream(file.uri)?.use { input ->
                val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
                BitmapFactory.decodeStream(input, null, options)
                options.outWidth > 0 && options.outHeight > 0
            } ?: false
        }.getOrElse { error ->
            Log.w(TAG, "Failed to probe folder image candidate: ${file.uri}", error)
            false
        }
    }
}
