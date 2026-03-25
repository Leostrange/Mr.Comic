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
        if (ensureDocument() != null) return null
        val totalPages = ensurePlaceholderProbe()?.pageCount?.coerceAtLeast(1) ?: 1
        if (index < 0 || index >= totalPages) return null
        return buildPlaceholderHtml(pageIndex = index, totalPages = totalPages)
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

    private fun buildPlaceholderHtml(pageIndex: Int, totalPages: Int): String {
        val fileName = resolveFileName()
        val status = backend.status as? DjvuBackendStatus.Unavailable
        val statusSummary = status?.summary ?: "DjVu backend is currently unavailable."
        val statusDetails = status?.details ?: "The document stays in the library, but this build still uses a placeholder path for DjVu."
        val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else "Одностраничный placeholder-режим"

        val body = """
            <div class="wrap">
              <div class="badge">DjVu</div>
              <h1>${escapeHtml(fileName)}</h1>
              <p><strong>${escapeHtml(pageLabel)}</strong></p>
              <p>Файл распознан и импортирован, но в этой сборке пока не подключён рабочий встроенный DjVu renderer.</p>
              <p>Документ не потерян: он остаётся в библиотеке и откроется после подключения отдельного DjVu-движка.</p>
              <p><strong>Текущий статус:</strong> ${escapeHtml(statusSummary)}</p>
              <p>${escapeHtml(statusDetails)}</p>
              <ul>
                <li>поддержка DjVu уже вынесена в отдельный backend-слой</li>
                <li>текущий путь не ломает библиотеку, backup и импорт</li>
                <li>реальный page render можно будет подключить отдельно, без перелома reader pipeline</li>
              </ul>
            </div>
        """.trimIndent()

        return """
            <!DOCTYPE html>
            <html lang="ru">
            <head>
              <meta charset="UTF-8">
              <meta name="viewport" content="width=device-width,initial-scale=1">
              <style>
                :root { color-scheme: dark light; }
                body {
                  margin: 0;
                  padding: 24px 18px 36px;
                  font-family: Georgia, serif;
                  background: transparent;
                  color: inherit;
                }
                .wrap {
                  max-width: 720px;
                  margin: 0 auto;
                  line-height: 1.6;
                }
                .badge {
                  display: inline-block;
                  padding: 6px 10px;
                  border-radius: 999px;
                  font-size: 12px;
                  letter-spacing: 0.08em;
                  text-transform: uppercase;
                  background: rgba(128,128,128,0.16);
                  margin-bottom: 14px;
                }
                h1 {
                  margin: 0 0 12px;
                  font-size: 26px;
                  line-height: 1.2;
                }
                p, li {
                  font-size: 17px;
                }
                ul {
                  padding-left: 20px;
                }
              </style>
            </head>
            <body>$body</body>
            </html>
        """.trimIndent()
    }

    private fun escapeHtml(text: String): String = text
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")

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
