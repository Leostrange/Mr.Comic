package com.example.engine.formats.text

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.model.ComicFormat
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.TocEntry
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.InputStream

class MobiFormatReader(
    private val context: Context,
    private val path: String,
    private val format: ComicFormat
) : FormatReader {

    private val payload: MobiReaderPayload by lazy { readMobiReflowablePayload(context, path) }
    private val document: ReflowableDocument get() = payload.document

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        document.pageCount
    }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        document.pageAt(index)
    }

    override fun getTableOfContents(): List<TocEntry> = document.toc

    override fun htmlBaseUrl(): String? {
        if (path.startsWith("content://")) return null
        val parent = File(path).parentFile ?: return null
        return parent.toURI().toString().trimEnd('/') + "/"
    }

    override suspend fun getMetadata(): Map<String, String> {
        return buildMap {
            put("format", format.name)
            put("engine", "mobi-reflowable-v1")
            payload.diagnostics?.let { diagnostics ->
                put("parserVersion", "2")
                put("declaredEncoding", diagnostics.declaredEncoding.toString())
                put("resolvedEncoding", diagnostics.resolvedEncoding)
                put("compression", diagnostics.compression.toString())
                put("textRecordCount", diagnostics.textRecordCount.toString())
                put("pageBreakCount", diagnostics.pageBreakCount.toString())
                put("containsMarkup", diagnostics.containsMarkup.toString())
            }
        }
    }

    override fun close() = Unit
}

internal fun readMobiReflowableDocument(context: Context, path: String): ReflowableDocument {
    return readMobiReflowablePayload(context, path).document
}

internal data class MobiReaderPayload(
    val document: ReflowableDocument,
    val diagnostics: MobiDiagnostics? = null
)

internal fun readMobiReflowablePayload(context: Context, path: String): MobiReaderPayload {
    val bytes = openMobiStream(context, path)?.use(InputStream::readBytes)
        ?: return MobiReaderPayload(ReflowableDocumentBuilder.error("Unable to read file."))
    val baseUrl = if (path.startsWith("content://")) {
        null
    } else {
        val parent = File(path).parentFile
        parent?.toURI()?.toString()?.trimEnd('/') + "/"
    }
    return when (val extracted = MobiTextSupport.extract(bytes)) {
        is MobiExtractionResult.Success -> {
            val document = if (extracted.isMarkup) {
                buildMobiMarkupDocument(
                    markup = extracted.content,
                    baseUrl = baseUrl
                )
            } else {
                ReflowableDocumentBuilder.fromPlainText(extracted.content)
            }
            MobiReaderPayload(document = document, diagnostics = extracted.diagnostics)
        }
        is MobiExtractionResult.Unsupported ->
            MobiReaderPayload(ReflowableDocumentBuilder.error(extracted.message))
    }
}

private fun buildMobiMarkupDocument(markup: String, baseUrl: String?): ReflowableDocument {
    val normalized = normalizeMobiMarkup(markup)
    val segments = splitMobiMarkupSegments(normalized)
    if (segments.size <= 1) {
        return ReflowableDocumentBuilder.fromMarkup(normalized, baseUrl)
    }

    val pages = segments.flatMap { segment ->
        ReflowableDocumentBuilder.fromMarkup(segment, baseUrl).pages
    }.filter { html ->
        html.replace(Regex("<[^>]+>"), " ").replace(Regex("\\s+"), " ").trim().isNotBlank()
    }

    return ReflowableDocument(
        pages = pages.ifEmpty { ReflowableDocumentBuilder.fromMarkup(normalized, baseUrl).pages }
    )
}

private fun normalizeMobiMarkup(markup: String): String {
    var normalized = markup
        .replace("\u0000", "")
        .replace(Regex("(?is)<guide\\b[^>]*>.*?</guide>"), "")
        .replace(Regex("(?is)</?(metadata|reference|mbp:frameset)\\b[^>]*>"), "")
        .trim()

    val hasBody = Regex("<body\\b", RegexOption.IGNORE_CASE).containsMatchIn(normalized)
    if (!hasBody) {
        val contentStart = listOf("<div", "<p", "<h1", "<h2", "<center", "<span", "<blockquote")
            .mapNotNull { marker ->
                normalized.indexOf(marker, ignoreCase = true).takeIf { it >= 0 }
            }
            .minOrNull()
        if (contentStart != null) {
            normalized = "<html><body>${normalized.substring(contentStart)}</body></html>"
        }
    }

    return normalized
}

private fun splitMobiMarkupSegments(markup: String): List<String> {
    val pagebreakRegex = Regex(
        """(?is)<(?:mbp:pagebreak|pagebreak)\b[^>]*(?:/?>|>.*?</(?:mbp:pagebreak|pagebreak)>)"""
    )
    return pagebreakRegex.split(markup)
        .map(String::trim)
        .filter { it.isNotBlank() }
}

private fun openMobiStream(context: Context, path: String): InputStream? = try {
    if (path.startsWith("content://")) {
        context.contentResolver.openInputStream(Uri.parse(path))
    } else {
        File(path).inputStream()
    }
} catch (_: Exception) {
    null
}
