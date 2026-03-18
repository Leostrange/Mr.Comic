package com.example.engine.formats.rar

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import android.util.Log
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.decodeBitmapFromByteArray
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.RenderDeviceProfile
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.ByteArrayOutputStream
import java.io.File

class RarFormatReader(
    private val context: Context,
    private val path: String,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator
) : FormatReader {

    companion object {
        private const val TAG = "RarFormatReader"
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    }

    private val lock = Any()
    private var archive: Archive? = null
    private var tempFile: File? = null
    private val imageHeaders: List<FileHeader> by lazy { openArchive()?.fileHeaders?.filter { !it.isDirectory && isImageHeader(it) }?.sortedBy { it.fileName } ?: emptyList() }

    private fun openArchive(): Archive? {
        synchronized(lock) {
            return try {
                if (archive != null) return archive
                val archiveFile = if (path.startsWith("content://")) {
                    copyToTempRar(Uri.parse(path))
                } else {
                    File(path)
                } ?: return null

                archive = Archive(archiveFile)
                archive
            } catch (e: Exception) {
                Log.e(TAG, "Failed to open RAR", e)
                null
            }
        }
    }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { imageHeaders.size }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        if (index < 0 || index >= imageHeaders.size) return@withContext null
        // synchronized(lock): junrar не потокобезопасен — одновременные вызовы extractFile
        // из нескольких корутин могут испортить внутреннее состояние архива.
        synchronized(lock) {
            try {
                val header = imageHeaders[index]
                val baos = ByteArrayOutputStream()
                openArchive()?.extractFile(header, baos)
                val bytes = baos.toByteArray()
                decodeBitmapFromByteArray(
                    context = context,
                    bytes = bytes,
                    deviceProfile = deviceProfile,
                    bitmapAllocator = bitmapAllocator,
                    renderQuality = renderQuality
                )
            } catch (e: Throwable) {
                Log.e(TAG, "Failed to decode RAR page $index: ${e.javaClass.simpleName}: ${e.message}", e)
                null
            }
        }
    }

    override fun close() {
        synchronized(lock) {
            try { archive?.close() } catch (_: Exception) {}
            archive = null
            tempFile?.let { file ->
                runCatching { file.delete() }
                    .onFailure { Log.w(TAG, "Failed to delete temp RAR: ${file.absolutePath}", it) }
            }
            tempFile = null
        }
    }

    private fun isImageHeader(h: FileHeader): Boolean {
        val ext = h.fileName.lowercase().substringAfterLast('.', "")
        return ext in IMAGE_EXTENSIONS
    }

    private fun copyToTempRar(uri: Uri): File? {
        return try {
            val cacheDir = File(context.cacheDir, "rar_cache").apply { mkdirs() }
            val file = File(cacheDir, "cbr_${uri.hashCode()}_${System.currentTimeMillis()}.rar")
            context.contentResolver.openInputStream(uri)?.use { input ->
                file.outputStream().use { output -> input.copyTo(output) }
            } ?: return null
            tempFile = file
            file
        } catch (e: Exception) {
            Log.e(TAG, "Failed to copy content RAR to temp", e)
            null
        }
    }
}
