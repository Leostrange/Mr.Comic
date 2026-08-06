package io.leostrange.mrcomic.engine.formats.text

import android.net.Uri
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import org.jsoup.nodes.Document
import java.io.File
import java.io.InputStream

private const val MAX_TEXT_SOURCE_BYTES = 96 * 1024 * 1024

internal fun TextFormatReader.reflowableDocumentSections(document: ReflowableDocument): List<TextDocumentSection> {
    val baseUrl = htmlBaseUrl()
    return (0 until document.pageCount)
        .mapNotNull { index -> document.pageAt(index) }
        .mapIndexed { index, html ->
            TextDocumentSection(index = index, html = html, baseUrl = baseUrl)
        }
        .ifEmpty { singleSection(wrapHtml("<p>Unable to read file.</p>"), baseUrl) }
}

internal fun TextFormatReader.mobiDocumentSections(): List<TextDocumentSection> =
    reflowableDocumentSections(mobiDocument ?: ReflowableDocumentBuilder.error("Unable to read file."))

internal fun TextFormatReader.singleSection(html: String, baseUrl: String? = htmlBaseUrl()): List<TextDocumentSection> =
    listOf(TextDocumentSection(index = 0, html = html, baseUrl = baseUrl))

internal fun TextFormatReader.sectionHtmlDocument(raw: String): TextDocumentData {
    val readerBaseUrl = htmlBaseUrl()
    val footnotes = extractReaderHtmlFootnotes(raw)
    val contentHtml = footnotes.contentHtml
    val preservePublisherLayout = shouldPreserveHtmlPublisherLayout(contentHtml)
    val pages = if (isGutenbergHtml(contentHtml)) {
        paginateHtmlDocument(
            raw = contentHtml,
            baseUrl = readerBaseUrl,
            preservePublisherLayout = true,
            baseCss = PRESERVE_LAYOUT_HTML_CSS,
            keepWholeDocument = true
        )
    } else {
        paginateHtmlDocument(
            raw = contentHtml,
            baseUrl = readerBaseUrl,
            preservePublisherLayout = preservePublisherLayout,
            baseCss = if (preservePublisherLayout) {
                PRESERVE_LAYOUT_HTML_CSS
            } else {
                DEFAULT_READER_HTML_CSS
            },
            keepWholeDocument = true
        )
    }
    val anchored = addHtmlHeadingAnchorsToPages(pages)
    val sections = if (preservePublisherLayout || isGutenbergHtml(contentHtml)) {
        anchored.pages.mapIndexed { index, html ->
            TextDocumentSection(index = index, html = html, baseUrl = readerBaseUrl)
        }
    } else {
        val reflowSections = ReflowableDocumentBuilder.sectionsFromMarkup(contentHtml, readerBaseUrl)
        injectHeadingIdsFromAnchoredPages(reflowSections, anchored.pages)
    }
    val splitSections = splitLargeSections(sections.withSequentialIndices())
    return TextDocumentData(
        sections = splitSections,
        chapterAnchors = anchored.anchors,
        footnoteMap = footnotes.footnoteMap
    )
}

internal fun TextFormatReader.sectionMarkdownDocument(raw: String): TextDocumentData {
    val markdown = markdownDocumentBlocks(raw)
    return TextDocumentData(
        sections = ReflowableDocumentBuilder.sectionsFromHtmlBlocks(markdown.blocks)
            .withSequentialIndices(),
        chapterAnchors = markdown.anchors
    )
}

internal fun TextFormatReader.readSourceText(): String? {
    val bytes = readSourceBytes() ?: return null
    return decodeTextBytes(bytes)
}

internal fun TextFormatReader.readSourceBytes(): ByteArray? =
    openStream()?.use { input -> input.readBytesBounded(MAX_TEXT_SOURCE_BYTES) }

private fun InputStream.readBytesBounded(maxBytes: Int): ByteArray? {
    val output = java.io.ByteArrayOutputStream(minOf(maxBytes, 64 * 1024))
    val buffer = ByteArray(16 * 1024)
    var total = 0
    while (true) {
        val read = read(buffer)
        if (read < 0) break
        total += read
        if (total > maxBytes) return null
        output.write(buffer, 0, read)
    }
    return output.toByteArray()
}

internal fun TextFormatReader.openStream(): InputStream? = try {
    if (path.startsWith("content://")) {
        context.contentResolver.openInputStream(Uri.parse(path))
    } else {
        File(path).inputStream()
    }
} catch (_: Exception) {
    null
}
