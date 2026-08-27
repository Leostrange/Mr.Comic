package io.leostrange.mrcomic.engine.formats.epub

import io.leostrange.mrcomic.engine.formats.base.TocEntry
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.parser.Parser as JsoupXmlParser
import java.net.URLDecoder
import java.nio.charset.Charset

/**
 * Parses EPUB TOC documents (NCX / nav.xhtml) and resolves href page indices.
 *
 * Extracted from [EpubFormatReader] to separate TOC parsing logic from
 * spine construction and HTML rendering.
 */
internal class EpubTocResolver(
    private val pages: List<EpubPage>,
    private val sectionIndexMapper: (Int) -> Int,
    private val findHeader: (ZipFile, String) -> FileHeader?,
    private val detectCharset: (ByteArray) -> Charset,
    private val textEntryReader: (ZipFile, String) -> String?,
    private val zipProvider: () -> ZipFile?,
    private val extractChunk: (String, Int, Int) -> String
) {
    // ── Public API ──────────────────────────────────────────────────────────

    fun parseToc(
        zip: ZipFile,
        opfDir: String,
        ncxHref: String
    ): List<TocEntry> {
        val decoded = try { URLDecoder.decode(ncxHref, "UTF-8") } catch (_: Exception) { ncxHref }
        val ncxEntry = EpubArchiveAccess.normalizePath(
            if (opfDir.isEmpty()) decoded else "$opfDir/$decoded"
        )
        val header = findHeader(zip, ncxEntry) ?: return emptyList()

        return try {
            val ext = ncxEntry.substringAfterLast('.', "").lowercase()
            if (ext == "ncx") parseNcx(zip, header, ncxEntry, opfDir)
            else parseNavXhtml(zip, header, ncxEntry, opfDir)
        } catch (_: Exception) {
            emptyList()
        }
    }

    fun resolveHrefToPage(href: String): Int? {
        val normalizedHref = href.replace('\\', '/')
        val hrefWithoutQuery = normalizedHref.substringBefore('?')
        val filePart = hrefWithoutQuery.substringBefore('#').trim().trimStart('/')
        val fragment = hrefWithoutQuery.substringAfter('#', "").trim()

        if (fragment.isNotBlank()) {
            resolveAnchorHrefToPage(filePart, fragment)?.let { return sectionIndexMapper(it) }
        }

        if (filePart.isBlank()) return null

        val baseResult = resolveFileNameToPageIndex(filePart)?.let { sectionIndexMapper(it) }
        if (baseResult != null) return baseResult

        return pages.indices.firstOrNull { index ->
            val page = pages[index]
            when (page) {
                is EpubPage.Html -> page.entry.endsWith(filePart, ignoreCase = true)
                is EpubPage.SyntheticHtml ->
                    page.entry.endsWith(filePart, ignoreCase = true) ||
                        page.sourceEntries.any { it.endsWith(filePart, ignoreCase = true) }
                else -> false
            }
        }?.let { sectionIndexMapper(it) }
    }

    // ── NCX parsing ─────────────────────────────────────────────────────────

    private fun parseNcx(
        zip: ZipFile,
        header: FileHeader,
        ncxEntry: String,
        opfDir: String
    ): List<TocEntry> {
        data class RawNav(val title: String, val src: String, val order: Int)

        val raw = zip.getInputStream(header).use { stream ->
            val bytes = stream.readBytes()
            bytes.toString(detectCharset(bytes))
        }
        val document = Jsoup.parse(raw, "", JsoupXmlParser.xmlParser())
        document.outputSettings(Document.OutputSettings().prettyPrint(false))

        val result = document.getElementsByTag("navPoint")
            .mapNotNull { navPoint ->
                val title = navPoint.getElementsByTag("text").firstOrNull()
                    ?.text()?.trim().orEmpty()
                val src = navPoint.getElementsByTag("content").firstOrNull()
                    ?.attr("src")?.trim().orEmpty()
                val order = navPoint.attr("playOrder").toIntOrNull() ?: 0
                if (title.isBlank() || src.isBlank()) null else RawNav(title, src, order)
            }
        val ncxDir = ncxEntry.substringBeforeLast('/', "")
        return result.sortedBy { it.order }.mapNotNull { nav ->
            if (EpubFootnoteResolver.isFootnoteTocEntry(nav.src, nav.title)) return@mapNotNull null
            val href = try { URLDecoder.decode(nav.src, "UTF-8") } catch (_: Exception) { nav.src }
            val anchorId = href.substringAfter('#', "").takeIf { it.isNotBlank() }
            srcToPageIndex(href, ncxDir, fallbackBaseDir = opfDir)?.let {
                TocEntry(nav.title, it, anchorId = anchorId, sectionIndex = it)
            }
        }
    }

    private fun parseNavXhtml(
        zip: ZipFile,
        header: FileHeader,
        navEntry: String,
        opfDir: String
    ): List<TocEntry> {
        val raw = zip.getInputStream(header).use { decodeEpubText(it.readBytes()) }
        val navDir = navEntry.substringBeforeLast('/', "")

        val linkRe = Regex(
            """<a\b[^>]+\bhref\s*=\s*["']([^"'#][^"']*)["'][^>]*>(.*?)</a>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        )
        val result = mutableListOf<TocEntry>()
        for (match in linkRe.findAll(raw)) {
            val href = try { URLDecoder.decode(match.groupValues[1], "UTF-8") } catch (_: Exception) { match.groupValues[1] }
            val title = CHUNK_HTML_TAG_RE.replace(match.groupValues[2], "").trim()
            if (title.isEmpty()) continue
            if (EpubFootnoteResolver.isFootnoteTocEntry(href, title)) continue
            val anchorId = href.substringAfter('#', "").takeIf { it.isNotBlank() }
            val pageIdx = srcToPageIndex(href, navDir, fallbackBaseDir = opfDir) ?: continue
            result.add(TocEntry(title, pageIdx, anchorId = anchorId, sectionIndex = pageIdx))
        }
        return result
    }

    // ── Href resolution ─────────────────────────────────────────────────────

    private fun srcToPageIndex(
        href: String,
        baseDir: String,
        fallbackBaseDir: String? = null
    ): Int? {
        val filePart = href.substringBefore('#').trim().trimStart('/')
        if (filePart.isBlank()) return null
        val legacyIndex = findPageIndexByEntryCandidates(
            candidates = buildEntryCandidates(filePart, baseDir, fallbackBaseDir)
        ) ?: return null
        return sectionIndexMapper(legacyIndex)
    }

    private fun resolveFileNameToPageIndex(filePart: String): Int? {
        return findPageIndexByEntryCandidates(candidates = buildEntryCandidates(filePart))
    }

    private fun resolveAnchorHrefToPage(filePart: String, fragment: String): Int? {
        val decodedFragment = try {
            URLDecoder.decode(fragment, "UTF-8")
        } catch (_: Exception) {
            fragment
        }.trim()
        val anchorCandidates = listOf(fragment, decodedFragment)
            .map { it.trim() }
            .filter { it.isNotBlank() }
            .distinct()
        if (anchorCandidates.isEmpty()) return null

        val entryCandidates = if (filePart.isBlank()) emptyList()
        else buildEntryCandidates(filePart)

        return pages.indices.firstOrNull { index ->
            val page = pages[index]
            (entryCandidates.isEmpty() || pageMatchesEntryCandidates(page, entryCandidates)) &&
                pageContainsAnyAnchor(page, anchorCandidates)
        }
    }

    // ── Page matching ───────────────────────────────────────────────────────

    private fun pageContainsEntry(page: EpubPage, entry: String, suffixMatch: Boolean = false): Boolean {
        val htmlPage = page as? EpubPage.Html ?: return false
        val candidates = buildList {
            add(htmlPage.entry)
            addAll(htmlPage.extraEntries)
        }
        return candidates.any { candidate ->
            if (suffixMatch) candidate.endsWith(entry, ignoreCase = true)
            else candidate.equals(entry, ignoreCase = true)
        }
    }

    private fun pageMatchesEntryCandidates(page: EpubPage, candidates: List<String>): Boolean {
        return candidates.any { candidate ->
            when (page) {
                is EpubPage.Html -> pageContainsEntry(page, candidate) ||
                    pageContainsEntry(page, candidate, suffixMatch = true)
                is EpubPage.SyntheticHtml ->
                    page.entry.equals(candidate, ignoreCase = true) ||
                        page.entry.endsWith(candidate, ignoreCase = true) ||
                        page.sourceEntries.any { it.equals(candidate, ignoreCase = true) } ||
                        page.sourceEntries.any { it.endsWith(candidate, ignoreCase = true) }
                else -> false
            }
        }
    }

    private fun pageContainsAnyAnchor(page: EpubPage, anchors: List<String>): Boolean {
        return when (page) {
            is EpubPage.Html -> {
                val primaryHtml = readTextEntryForPageChunk(page.entry, page.chunkIndex, page.totalChunks)
                if (primaryHtml != null && htmlContainsAnyAnchor(primaryHtml, anchors)) return true
                page.extraEntries.any { entry ->
                    textEntryReader(zipProvider() ?: return@any false, entry)
                        ?.let { htmlContainsAnyAnchor(it, anchors) } ?: false
                }
            }
            is EpubPage.SyntheticHtml -> htmlContainsAnyAnchor(page.html, anchors)
            else -> false
        }
    }

    private fun readTextEntryForPageChunk(entry: String, chunkIndex: Int, totalChunks: Int): String? {
        val zip = zipProvider() ?: return null
        val raw = textEntryReader(zip, entry) ?: return null
        return if (totalChunks <= 1) raw else extractChunk(raw, chunkIndex, totalChunks)
    }

    private fun htmlContainsAnyAnchor(html: String, anchors: List<String>): Boolean = runCatching {
        val document = Jsoup.parse(html)
        document.select("[id], a[name]").any { element ->
            val id = element.id().trim()
            val name = element.attr("name").trim()
            anchors.any { anchor ->
                id.equals(anchor, ignoreCase = true) || name.equals(anchor, ignoreCase = true)
            }
        }
    }.getOrDefault(false)

    // ── Entry candidate building ────────────────────────────────────────────

    private fun buildEntryCandidates(
        filePart: String,
        vararg baseDirs: String?
    ): List<String> {
        val normalizedFilePart = EpubArchiveAccess.normalizePath(filePart.trimStart('/'))
        val fileNameOnly = normalizedFilePart.substringAfterLast('/')
        return buildSet {
            add(normalizedFilePart)
            if (fileNameOnly.isNotBlank()) add(fileNameOnly)
            baseDirs.forEach { rawBaseDir ->
                val trimmedBaseDir = rawBaseDir?.trim()?.trim('/').orEmpty()
                if (trimmedBaseDir.isNotBlank()) {
                    add(EpubArchiveAccess.normalizePath("$trimmedBaseDir/$normalizedFilePart"))
                    if (fileNameOnly.isNotBlank()) {
                        add(EpubArchiveAccess.normalizePath("$trimmedBaseDir/$fileNameOnly"))
                    }
                }
            }
        }.toList()
    }

    private fun findPageIndexByEntryCandidates(candidates: List<String>): Int? {
        candidates.forEach { candidate ->
            val exactIdx = pages.indexOfFirst { page ->
                when (page) {
                    is EpubPage.Html -> page.chunkIndex == 0 && pageContainsEntry(page, candidate)
                    is EpubPage.SyntheticHtml -> page.chunkIndex == 0 && (
                        page.entry.equals(candidate, ignoreCase = true) ||
                            page.sourceEntries.any { it.equals(candidate, ignoreCase = true) }
                        )
                    else -> false
                }
            }
            if (exactIdx >= 0) return exactIdx
        }
        candidates.forEach { candidate ->
            val suffixIdx = pages.indexOfFirst { page ->
                when (page) {
                    is EpubPage.Html -> page.chunkIndex == 0 && pageContainsEntry(page, candidate, suffixMatch = true)
                    is EpubPage.SyntheticHtml -> page.chunkIndex == 0 && (
                        page.entry.endsWith(candidate, ignoreCase = true) ||
                            page.sourceEntries.any { it.endsWith(candidate, ignoreCase = true) }
                        )
                    else -> false
                }
            }
            if (suffixIdx >= 0) return suffixIdx
        }
        return null
    }
}
