package com.example.core.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import com.example.core.reader.domain.MediaMetadata
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.MediaType
import com.example.core.reader.utils.ensureUriPermission
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import org.w3c.dom.Document
import org.w3c.dom.Element
import java.io.File
import java.io.InputStream
import javax.xml.parsers.DocumentBuilderFactory

/**
 * Reader for EPUB files (Fixed Layout EPUB comics)
 *
 * EPUB structure:
 * - META-INF/container.xml → points to content.opf
 * - content.opf → manifest, spine, metadata
 * - OEBPS/ or similar → content (XHTML, images)
 *
 * This reader extracts images from EPUB and renders them as pages.
 */
class EpubReader(
    private val context: Context
) : MediaReader {

    companion object {
        private const val TAG = "EpubReader"
        private const val CONTAINER_PATH = "META-INF/container.xml"

        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "gif", "webp", "bmp")
    }

    private var zipFile: ZipFile? = null
    private var tempFile: File? = null
    private var imageFiles: List<FileHeader> = emptyList()
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false

    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> = withContext(Dispatchers.IO) {
        try {
            cleanup()

            // Ensure we have permission to read the URI
            if (uri.scheme == "content") {
                if (!context.ensureUriPermission(uri)) {
                    return@withContext Result.failure(
                        SecurityException("No permission to access URI: $uri")
                    )
                }
            }

            // Copy to temp file for zip4j
            tempFile = File.createTempFile("epub_", ".epub", context.cacheDir)
            context.contentResolver.openInputStream(uri)?.use { input ->
                tempFile!!.outputStream().use { output ->
                    input.copyTo(output)
                }
            } ?: return@withContext Result.failure(
                IllegalStateException("Cannot open EPUB file: $uri")
            )

            // Open as ZIP
            zipFile = ZipFile(tempFile!!).apply {
                if (!isValidZipFile) {
                    return@withContext Result.failure(
                        IllegalStateException("Invalid EPUB file (not a valid ZIP)")
                    )
                }
            }

            // Parse EPUB structure
            val opfPath = findOpfPath() ?: return@withContext Result.failure(
                IllegalStateException("Invalid EPUB: cannot find content.opf")
            )

            // Parse OPF to get metadata and spine
            val opfData = parseOpf(opfPath)

            // Extract images from manifest
            imageFiles = extractImageFiles(opfData.imageIds, opfData.basePath)

            if (imageFiles.isEmpty()) {
                return@withContext Result.failure(
                    IllegalStateException("No images found in EPUB")
                )
            }

            // Create metadata
            metadata = MediaMetadata(
                title = opfData.title ?: uri.lastPathSegment,
                author = opfData.author,
                pageCount = imageFiles.size,
                type = MediaType.EPUB,
                publisher = opfData.publisher,
                language = opfData.language,
                description = opfData.description
            )

            isOpen = true
            Log.d(TAG, "✅ EPUB opened: ${imageFiles.size} pages, title: ${opfData.title}")
            Result.success(metadata!!)

        } catch (e: Exception) {
            Log.e(TAG, "❌ Failed to open EPUB", e)
            cleanup()
            Result.failure(
                IllegalStateException("Failed to open EPUB: ${e.message}", e)
            )
        }
    }

    override fun getPageCount(): Int? = imageFiles.size

    override suspend fun renderPage(
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): Result<Bitmap> = withContext(Dispatchers.IO) {
        try {
            if (!isOpen || zipFile == null) {
                return@withContext Result.failure(
                    IllegalStateException("EPUB reader not open")
                )
            }

            if (pageIndex < 0 || pageIndex >= imageFiles.size) {
                return@withContext Result.failure(
                    IllegalArgumentException("Invalid page index: $pageIndex")
                )
            }

            val fileHeader = imageFiles[pageIndex]

            // Extract and decode image
            zipFile!!.getInputStream(fileHeader).use { input ->
                val bitmap = BitmapFactory.decodeStream(input)
                    ?: return@withContext Result.failure(
                        IllegalStateException("Failed to decode image: ${fileHeader.fileName}")
                    )

                // Scale if needed
                val scaledBitmap = if (scale != 1.0f) {
                    val newWidth = (bitmap.width * scale).toInt()
                    val newHeight = (bitmap.height * scale).toInt()
                    Bitmap.createScaledBitmap(bitmap, newWidth, newHeight, true).also {
                        if (it != bitmap) bitmap.recycle()
                    }
                } else {
                    bitmap
                }

                Result.success(scaledBitmap)
            }

        } catch (e: Exception) {
            Log.e(TAG, "❌ Failed to render page $pageIndex", e)
            Result.failure(
                IllegalStateException("Failed to render page: ${e.message}", e)
            )
        }
    }

    override fun getMetadata(): MediaMetadata? = metadata

    override suspend fun close() = withContext(Dispatchers.IO) {
        cleanup()
    }

    override fun isOpen(): Boolean = isOpen

    private fun cleanup() {
        try {
            zipFile?.close()
            zipFile = null
        } catch (e: Exception) {
            Log.w(TAG, "Error closing zip file", e)
        }

        try {
            tempFile?.delete()
            tempFile = null
        } catch (e: Exception) {
            Log.w(TAG, "Error deleting temp file", e)
        }

        imageFiles = emptyList()
        metadata = null
        isOpen = false
    }

    /**
     * Find path to content.opf from META-INF/container.xml
     */
    private fun findOpfPath(): String? {
        return try {
            val containerHeader = zipFile?.getFileHeader(CONTAINER_PATH)
                ?: return null

            zipFile?.getInputStream(containerHeader)?.use { input ->
                val doc = parseXml(input)
                val rootfiles = doc.getElementsByTagName("rootfile")

                if (rootfiles.length > 0) {
                    val rootfile = rootfiles.item(0) as Element
                    rootfile.getAttribute("full-path")
                } else {
                    null
                }
            }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to parse container.xml", e)
            null
        }
    }

    /**
     * Parse content.opf to extract metadata and image references
     */
    private fun parseOpf(opfPath: String): OpfData {
        val opfHeader = zipFile?.getFileHeader(opfPath)
            ?: return OpfData()

        return try {
            zipFile?.getInputStream(opfHeader)?.use { input ->
                val doc = parseXml(input)

                // Extract metadata
                val title = doc.getElementsByTagName("dc:title")
                    .item(0)?.textContent

                val author = doc.getElementsByTagName("dc:creator")
                    .item(0)?.textContent

                val publisher = doc.getElementsByTagName("dc:publisher")
                    .item(0)?.textContent

                val language = doc.getElementsByTagName("dc:language")
                    .item(0)?.textContent

                val description = doc.getElementsByTagName("dc:description")
                    .item(0)?.textContent

                // Extract image IDs from manifest
                val imageIds = mutableListOf<String>()
                val manifest = doc.getElementsByTagName("item")
                for (i in 0 until manifest.length) {
                    val item = manifest.item(i) as Element
                    val mediaType = item.getAttribute("media-type")
                    if (mediaType.startsWith("image/")) {
                        val href = item.getAttribute("href")
                        if (href.isNotEmpty()) {
                            imageIds.add(href)
                        }
                    }
                }

                // Get base path from opf location
                val basePath = opfPath.substringBeforeLast('/', "")

                OpfData(
                    title = title,
                    author = author,
                    publisher = publisher,
                    language = language,
                    description = description,
                    imageIds = imageIds,
                    basePath = basePath
                )
            } ?: OpfData()
        } catch (e: Exception) {
            Log.w(TAG, "Failed to parse content.opf", e)
            OpfData()
        }
    }

    /**
     * Extract actual image FileHeaders from zip
     */
    private fun extractImageFiles(imageIds: List<String>, basePath: String): List<FileHeader> {
        val images = mutableListOf<FileHeader>()

        // Try to find images from OPF manifest first
        for (imageId in imageIds) {
            val fullPath = if (basePath.isEmpty()) imageId else "$basePath/$imageId"
            val header = zipFile?.getFileHeader(fullPath)
            if (header != null) {
                images.add(header)
            }
        }

        // If no images found in manifest, scan all files for images
        if (images.isEmpty()) {
            zipFile?.fileHeaders?.forEach { header ->
                if (isImageFile(header.fileName)) {
                    images.add(header)
                }
            }
        }

        // Sort by filename
        return images.sortedBy { it.fileName }
    }

    /**
     * Check if filename is an image
     */
    private fun isImageFile(filename: String): Boolean {
        val ext = filename.substringAfterLast('.', "").lowercase()
        return ext in IMAGE_EXTENSIONS && !filename.contains("cover", ignoreCase = true)
    }

    /**
     * Parse XML from input stream
     */
    private fun parseXml(input: InputStream): Document {
        val factory = DocumentBuilderFactory.newInstance()
        factory.isNamespaceAware = true
        val builder = factory.newDocumentBuilder()
        return builder.parse(input)
    }

    /**
     * Data class for OPF parsing results
     */
    private data class OpfData(
        val title: String? = null,
        val author: String? = null,
        val publisher: String? = null,
        val language: String? = null,
        val description: String? = null,
        val imageIds: List<String> = emptyList(),
        val basePath: String = ""
    )
}
