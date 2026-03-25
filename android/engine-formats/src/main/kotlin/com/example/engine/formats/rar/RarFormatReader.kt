package com.example.engine.formats.rar

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.RenderDeviceProfile
import com.example.engine.formats.base.decodeBitmapFromByteArray
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.sf.sevenzipjbinding.ExtractOperationResult
import net.sf.sevenzipjbinding.IInArchive
import net.sf.sevenzipjbinding.ISequentialOutStream
import net.sf.sevenzipjbinding.PropID
import net.sf.sevenzipjbinding.SevenZip
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.RandomAccessFile

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

    private data class ArchivePage(
        val itemIndex: Int,
        val path: String
    )

    private val lock = Any()
    private var archive: IInArchive? = null
    private var randomAccessFile: RandomAccessFile? = null
    private var inputStream: RandomAccessFileInStream? = null
    private var tempFile: File? = null

    private val pageItems: List<ArchivePage> by lazy { collectPageItems() }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { pageItems.size }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        val page = pageItems.getOrNull(index) ?: return@withContext null
        synchronized(lock) {
            val bytes = extractEntryBytes(page.itemIndex) ?: return@withContext null
            decodeBitmapFromByteArray(
                context = context,
                bytes = bytes,
                deviceProfile = deviceProfile,
                bitmapAllocator = bitmapAllocator,
                renderQuality = renderQuality
            ) ?: BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
        }
    }

    override fun close() {
        synchronized(lock) {
            try {
                archive?.close()
            } catch (_: Exception) {
            }
            try {
                inputStream?.close()
            } catch (_: Exception) {
            }
            try {
                randomAccessFile?.close()
            } catch (_: Exception) {
            }
            archive = null
            inputStream = null
            randomAccessFile = null
            tempFile?.let { file ->
                runCatching { file.delete() }
                    .onFailure { Log.w(TAG, "Failed to delete temp RAR: ${file.absolutePath}", it) }
            }
            tempFile = null
        }
    }

    private fun collectPageItems(): List<ArchivePage> {
        synchronized(lock) {
            return try {
                val inArchive = ensureArchive() ?: return emptyList()
                val candidates = (0 until inArchive.numberOfItems)
                    .mapNotNull { itemIndex ->
                        val itemPath = inArchive.getStringProperty(itemIndex, PropID.PATH)?.trim().orEmpty()
                        if (itemPath.isBlank() || inArchive.getProperty(itemIndex, PropID.IS_FOLDER).asBooleanFlag()) {
                            null
                        } else {
                            ArchivePage(itemIndex = itemIndex, path = itemPath)
                        }
                    }
                    .sortedBy { it.path }

                val byExtension = candidates.filter { isImagePath(it.path) }
                if (byExtension.isNotEmpty()) return byExtension

                // Fallback for archives whose page files have missing or non-standard extensions.
                candidates.filter { page -> extractEntryBytes(page.itemIndex)?.isBitmapBytes() == true }
            } catch (error: Throwable) {
                Log.e(TAG, "Failed to list RAR entries", error)
                emptyList()
            }
        }
    }

    private fun ensureArchive(): IInArchive? {
        synchronized(lock) {
            archive?.let { return it }
            return try {
                val archiveFile = if (path.startsWith("content://")) {
                    copyToTempRar(Uri.parse(path))
                } else {
                    File(path)
                } ?: return null

                randomAccessFile = RandomAccessFile(archiveFile, "r")
                inputStream = RandomAccessFileInStream(randomAccessFile)
                SevenZip.openInArchive(null, inputStream).also { archive = it }
            } catch (error: Throwable) {
                Log.e(TAG, "Failed to open RAR: $path", error)
                null
            }
        }
    }

    private fun extractEntryBytes(itemIndex: Int): ByteArray? {
        val inArchive = ensureArchive() ?: return null
        val bytes = ByteArrayOutputStream()
        val result = inArchive.extractSlow(itemIndex, object : ISequentialOutStream {
            override fun write(data: ByteArray?): Int {
                if (data == null || data.isEmpty()) return 0
                bytes.write(data)
                return data.size
            }
        })
        return if (result == ExtractOperationResult.OK) {
            bytes.toByteArray()
        } else {
            Log.w(TAG, "RAR extract failed for item $itemIndex with result $result")
            null
        }
    }

    private fun isImagePath(name: String): Boolean {
        val ext = name.lowercase().substringAfterLast('.', "")
        return ext in IMAGE_EXTENSIONS
    }

    private fun ByteArray.isBitmapBytes(): Boolean {
        val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(this, 0, size, options)
        return options.outWidth > 0 && options.outHeight > 0
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
        } catch (error: Exception) {
            Log.e(TAG, "Failed to copy content RAR to temp", error)
            null
        }
    }
}

private fun Any?.asBooleanFlag(): Boolean = when (this) {
    is Boolean -> this
    is Number -> toInt() != 0
    is String -> equals("true", ignoreCase = true) || equals("1")
    else -> false
}
