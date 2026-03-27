package com.example.engine.formats.djvu

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.engine.formats.base.FormatReader
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import java.io.File

class DjvuFormatReader(
    private val context: Context,
    private val path: String,
    private val backend: DjvuBackend
) : FormatReader {

    private val openMutex = Mutex()
    private val probeMutex = Mutex()
    @Volatile private var isClosed = false
    private var document: DjvuDocument? = null
    private var placeholderProbe: DjvuProbeResult? = null

    override suspend fun getPageCount(): Int =
        ensureDocument()?.getPageCount()?.coerceAtLeast(1)
            ?: ensurePlaceholderProbe()?.pageCount?.coerceAtLeast(1)
            ?: 1

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? {
        val currentDocument = ensureDocument() ?: return null
        if (index < 0) return null
        return currentDocument.renderPage(index, renderQuality)
    }

    override suspend fun getHtmlPage(index: Int): String? {
        val currentDocument = ensureDocument()
        if (currentDocument != null) {
            return currentDocument.getHtmlPage(index)
        }
        val structure = ensurePlaceholderProbe()
        val totalPages = structure?.pageCount?.coerceAtLeast(1) ?: 1
        if (index < 0 || index >= totalPages) return null
        return buildDjvuPlaceholderHtml(
            fileName = resolveFileName(),
            pageIndex = index,
            totalPages = totalPages,
            backendStatus = backend.status,
            structure = structure
        )
    }

    override fun htmlBaseUrl(): String? {
        if (path.startsWith("content://")) return null
        val parent = File(path).parentFile ?: return null
        return Uri.fromFile(parent).toString().trimEnd('/') + "/"
    }

    override suspend fun getMetadata(): Map<String, String> {
        val currentDocument = ensureDocument()
        val placeholderInfo = if (currentDocument == null) ensurePlaceholderProbe() else null
        return buildMap {
            put("format", "DjVu")
            put("fileName", resolveFileName())
            when (val status = backend.status) {
                is DjvuBackendStatus.Available -> put("djvuBackend", status.backendName)
                is DjvuBackendStatus.Unavailable -> {
                    put("djvuBackend", status.backendName)
                    put("djvuStatus", status.summary)
                }
            }
            placeholderInfo?.let {
                put("djvuFormType", it.formType)
                put("djvuPageCount", it.pageCount.toString())
                if (it.topLevelChunkIds.isNotEmpty()) {
                    put("djvuTopLevelChunks", it.topLevelChunkIds.joinToString(","))
                }
            }
            currentDocument?.getMetadata()?.forEach { (key, value) -> put(key, value) }
        }
    }

    override fun close() {
        isClosed = true
        document?.close()
        document = null
    }

    private suspend fun ensureDocument(): DjvuDocument? {
        if (isClosed) return null
        document?.let { return it }
        return openMutex.withLock {
            if (isClosed) return@withLock null
            document?.let { return@withLock it }
            backend.open(path)?.also { document = it }
        }
    }

    private suspend fun ensurePlaceholderProbe(): DjvuProbeResult? {
        if (isClosed) return null
        placeholderProbe?.let { return it }
        return probeMutex.withLock {
            if (isClosed) return@withLock null
            placeholderProbe?.let { return@withLock it }
            openInputStream()?.use(DjvuProbe::probe)?.also { placeholderProbe = it }
        }
    }

    private fun resolveFileName(): String = runCatching {
        if (path.startsWith("content://")) {
            context.contentResolver.query(
                Uri.parse(path),
                arrayOf(android.provider.OpenableColumns.DISPLAY_NAME),
                null,
                null,
                null
            )?.use { cursor ->
                if (cursor.moveToFirst()) cursor.getString(0) else null
            }
        } else {
            File(path).name
        }
    }.getOrNull().orEmpty().ifBlank { "DjVu document" }

    private fun openInputStream() = when {
        path.startsWith("content://") -> context.contentResolver.openInputStream(Uri.parse(path))
        else -> File(path).takeIf(File::exists)?.inputStream()
    }
}
