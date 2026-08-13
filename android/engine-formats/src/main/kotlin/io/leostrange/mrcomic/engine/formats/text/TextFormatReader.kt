package io.leostrange.mrcomic.engine.formats.text

import android.content.Context
import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.FormatReaderWebResource
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.net.URLDecoder
import javax.inject.Inject

internal data class TxtChapterAnchor(
    val id: String,
    val title: String
)

internal data class TextDocumentData(
    val sections: List<TextDocumentSection>,
    val chapterAnchors: List<TxtChapterAnchor> = emptyList(),
    val footnoteMap: Map<String, String> = emptyMap()
) {
    val pages: List<String> get() = sections.map { it.html }
}

class TextFormatReader @Inject constructor(
    @ApplicationContext internal val context: Context,
    internal val path: String,
    internal val format: ComicFormat
) : FormatReader, ReflowableTextFormatReader {

    internal val mobiPayload: MobiReaderPayload? by lazy {
        when (format) {
            ComicFormat.MOBI, ComicFormat.AZW3 -> readMobiReflowablePayload(context, path)
            else -> null
        }
    }
    internal val mobiDocument: ReflowableDocument? get() = mobiPayload?.document
    internal val documentData: TextDocumentData by lazy { parseDocument() }
    internal val htmlPages: List<String> get() = documentData.pages
    internal val anchorPageIndex: Map<String, Int> by lazy { buildAnchorPageIndex() }
    internal val tocEntries: List<TocEntry> by lazy { buildTableOfContents() }

    override fun rendersHtmlContent(): Boolean = true

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        htmlPages.size.coerceAtLeast(1)
    }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        htmlPages.getOrNull(index.coerceIn(0, (htmlPages.size - 1).coerceAtLeast(0)))
    }

    override suspend fun getTextDocumentSections(): List<TextDocumentSection> = withContext(Dispatchers.IO) {
        documentData.sections
    }

    override fun getTableOfContents(): List<TocEntry> = tocEntries

    override suspend fun getMetadata(): Map<String, String> = withContext(Dispatchers.IO) {
        when (format) {
            ComicFormat.MOBI, ComicFormat.AZW3 -> buildMap {
                put("format", format.name)
                put("engine", "mobi-reflowable-v1")
                put("parserVersion", "2")
                mobiPayload?.diagnostics?.let { diagnostics ->
                    put("declaredEncoding", diagnostics.declaredEncoding.toString())
                    put("resolvedEncoding", diagnostics.resolvedEncoding)
                    put("compression", diagnostics.compression.toString())
                    put("textRecordCount", diagnostics.textRecordCount.toString())
                    put("pageBreakCount", diagnostics.pageBreakCount.toString())
                    put("containsMarkup", diagnostics.containsMarkup.toString())
                }
                mobiPayload?.unsupportedDetails?.let { details ->
                    put("unsupportedReason", details.reason)
                    details.declaredEncoding?.let { put("declaredEncoding", it.toString()) }
                    details.compression?.let { put("compression", it.toString()) }
                    details.textRecordCount?.let { put("textRecordCount", it.toString()) }
                    details.encryptionType?.let { put("encryptionType", it.toString()) }
                    put("containsHuffCdicTables", details.containsHuffCdicTables.toString())
                }
            }
            ComicFormat.HTML -> mapOf(
                "format" to format.name,
                "engine" to "html-reflowable-v1",
                "anchorCount" to documentData.chapterAnchors.size.toString()
            )
            ComicFormat.MARKDOWN -> mapOf(
                "format" to format.name,
                "engine" to "markdown-reflowable-v1",
                "anchorCount" to documentData.chapterAnchors.size.toString()
            )
            ComicFormat.TXT -> mapOf(
                "format" to format.name,
                "engine" to "txt-reflowable-v1",
                "anchorCount" to documentData.chapterAnchors.size.toString()
            )
            else -> emptyMap()
        }
    }

    override fun htmlBaseUrl(): String? {
        if (path.startsWith("content://")) return null
        val parent = File(path).parentFile ?: return null
        return parent.toURI().toString().trimEnd('/') + "/"
    }

    override fun htmlAssetBasePath(index: Int): String? {
        if (!supportsHtmlAssetLoading()) return null
        if (index !in htmlPages.indices) return null
        return File(path).name
    }

    override fun openHtmlAsset(path: String): FormatReaderWebResource? {
        if (!supportsHtmlAssetLoading()) return null
        val rootDir = File(this.path).parentFile ?: return null
        val requestedPath = URLDecoder.decode(path, Charsets.UTF_8.name())
            .substringBefore('#')
            .substringBefore('?')
            .trim()
            .trimStart('/')
            .orEmpty()
            .ifBlank { File(this.path).name }
        val target = runCatching {
            File(rootDir, requestedPath).canonicalFile
        }.getOrNull() ?: return null
        val canonicalRoot = runCatching { rootDir.canonicalFile }.getOrNull() ?: return null
        if (!target.path.startsWith(canonicalRoot.path, ignoreCase = true) || !target.isFile) {
            return null
        }

        val extension = target.extension.lowercase()
        val textualResource = extension in setOf("html", "htm", "css", "js", "txt", "xml", "svg")
        val bytes = if (textualResource) {
            decodeTextBytes(target.readBytes()).toByteArray(Charsets.UTF_8)
        } else {
            target.readBytes()
        }
        return FormatReaderWebResource(
            mimeType = textReaderMimeTypeFor(extension),
            bytes = bytes,
            encoding = if (textualResource) "utf-8" else null
        )
    }

    override fun resolveHrefToPage(href: String): Int? {
        val normalizedHref = href.trim()
        if (normalizedHref.isBlank()) return null

        val hrefWithoutQuery = normalizedHref.substringBefore('?')
        val filePart = hrefWithoutQuery.substringBefore('#').trim().trimStart('/')
        val fragment = hrefWithoutQuery.substringAfter('#', "").trim()

        if (fragment.isNotBlank()) {
            anchorPageIndex[fragment]?.let { return it }
        }

        if (filePart.isBlank() || path.startsWith("content://")) return null

        val currentFile = File(path)
        val requestedName = filePart.substringAfterLast('/')
        val requestedStem = requestedName.substringBeforeLast('.', requestedName)
        return when {
            requestedName.equals(currentFile.name, ignoreCase = true) -> 0
            requestedStem.equals(currentFile.nameWithoutExtension, ignoreCase = true) -> 0
            else -> null
        }
    }

    override fun getFootnoteText(anchorId: String): String? {
        val map = documentData.footnoteMap
        if (map.isEmpty()) return null
        return textFootnoteLookupCandidates(anchorId).firstNotNullOfOrNull { candidate ->
            map[candidate]
        }
    }

    override fun close() = Unit

    private fun textFootnoteLookupCandidates(anchorId: String): List<String> {
        val raw = anchorId.trim()
        if (raw.isBlank()) return emptyList()
        val withoutScheme = raw
            .removePrefix("noteref://")
            .removePrefix("noteref:")
            .removePrefix("fbanchor://")
            .removePrefix("fbanchor:")
        val decoded = runCatching { URLDecoder.decode(withoutScheme, Charsets.UTF_8.name()) }
            .getOrDefault(withoutScheme)
            .trim()
        val fragment = decoded
            .substringAfter('#', decoded)
            .substringAfterLast('/')
            .trim()
            .trimStart('#')
        val fileAndFragment = decoded.trimStart('/')
        return listOf(
            raw,
            decoded,
            fileAndFragment,
            fragment,
            "#$fragment",
            "fn$fragment",
            "fnt$fragment",
            "note$fragment",
            "footnote$fragment",
            "back$fragment",
            "sup$fragment",
            "text-fn$fragment",
            "pn$fragment",
            "ann$fragment",
            "annotation$fragment",
            "docx-footnote-$fragment"
        ).map { it.trim() }
            .filter { it.isNotEmpty() && it != "#" }
            .distinct()
    }

    private fun parseDocument(): TextDocumentData {
        return when (format) {
            ComicFormat.MOBI,
            ComicFormat.AZW3 -> {
                val sections = mobiDocumentSections()
                TextDocumentData(
                    sections = sections,
                    footnoteMap = mobiPayload?.footnoteMap.orEmpty()
                )
            }
            ComicFormat.RTF -> {
                val document = readRtfReflowableDocument(context, path)
                TextDocumentData(
                    sections = reflowableDocumentSections(document),
                    footnoteMap = document.footnoteMap
                )
            }
            ComicFormat.DOCX -> {
                val document = readDocxReflowableDocument(context, path)
                TextDocumentData(
                    sections = reflowableDocumentSections(document),
                    footnoteMap = document.footnoteMap
                )
            }
            ComicFormat.ODT -> {
                val document = readOdtReflowableDocument(context, path)
                TextDocumentData(
                    sections = reflowableDocumentSections(document),
                    footnoteMap = document.footnoteMap
                )
            }
            else -> {
                val raw = readSourceText()
                    ?: return TextDocumentData(singleSection(wrapHtml("<p>Unable to read file.</p>")))
                when (format) {
                    ComicFormat.HTML -> sectionHtmlDocument(raw)
                    ComicFormat.MARKDOWN -> sectionMarkdownDocument(raw)
                    ComicFormat.TXT -> sectionTxtDocument(raw)
                    else -> TextDocumentData(
                        sections = ReflowableDocumentBuilder.sectionsFromHtmlBlocks(textBlocks(raw))
                            .withSequentialIndices()
                    )
                }
            }
        }
    }

    private fun supportsHtmlAssetLoading(): Boolean =
        format == ComicFormat.HTML && !path.startsWith("content://")

}
