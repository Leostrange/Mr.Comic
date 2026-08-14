package io.leostrange.mrcomic.engine.formats.epub

import android.util.Log
import io.leostrange.mrcomic.engine.formats.base.log.perfNowMs
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import java.net.URLDecoder
import java.nio.charset.Charset

/**
 * Builds spine pages from OPF manifest data.
 *
 * Extracted from EpubFormatReader to reduce its size.
 * Handles the multi-phase spine building pipeline:
 * 1. [buildSpinePages] — iterate spine items and build raw page list
 * 2. [normalizeNoteSections] — consolidate adjacent note sections
 * 3. [mergeTitleOnlyPages] — attach standalone chapter titles to their body
 * 4. [filterZeroWeightPages] — remove pages with zero visible content
 */
internal class SpineBuilder(
    private val contentAnalyzer: EpubContentAnalyzer,
    private val findHeader: (ZipFile, String) -> FileHeader?,
    private val detectCharset: (ByteArray) -> Charset,
    private val normalizePath: (String) -> String,
    private val imageExtensions: Set<String>,
    private val xhtmlExtensions: Set<String>,
    private val epubFlavorStandard: String,
    private val epubFlavorFb2: String,
    private val epubFlavorCalibre: String,
    private val epubFlavorPublisher: String
) {
    /** Mutable state shared across build phases. */
    private class SpineBuildContext {
        val rawResult = mutableListOf<EpubPage>()
        val htmlVisibleChars = mutableMapOf<String, Int>()
        val imageOnlyHtmlEntries = mutableSetOf<String>()
        val keepWholeBodyEntries = mutableSetOf<String>()
        val protectedFrontMatterEntries = mutableSetOf<String>()
    }

    /**
     * Builds pages from OPF manifest data.
     *
     * @param manifest Map of manifest id → href
     * @param spine List of spine item idrefs
     * @param opfDir Directory containing the OPF file
     * @param zip ZIP file containing the EPUB
     * @param forceWholeHtmlEntries If true, don't chunk large HTML files
     * @param flavor EPUB flavor constant
     * @param allowFallback If true, fall back to content pages on empty result
     * @return List of [EpubPage] items
     */
    fun buildPagesFromOpf(
        manifest: Map<String, String>,
        spine: List<String>,
        opfDir: String,
        zip: ZipFile,
        forceWholeHtmlEntries: Boolean = false,
        flavor: String = epubFlavorStandard,
        allowFallback: Boolean = true
    ): List<EpubPage> {
        val isSpecialFlavor = flavor in setOf(epubFlavorFb2, epubFlavorCalibre, epubFlavorPublisher)
        val ctx = SpineBuildContext()

        val __t0 = perfNowMs()
        buildSpinePages(manifest, spine, opfDir, zip, forceWholeHtmlEntries, isSpecialFlavor, ctx)
        if (isSpecialFlavor) {
            return if (ctx.rawResult.isNotEmpty()) ctx.rawResult
            else if (allowFallback) fallbackContentPages(zip) else emptyList()
        }
        runCatching { Log.i("EpubPerf", "  phase.spineLoop: ${perfNowMs() - __t0} ms (${ctx.rawResult.size} raw pages)") }

        val __t1 = perfNowMs()
        val normalized = normalizeNoteSections(ctx.rawResult, zip)
        runCatching { Log.i("EpubPerf", "  phase.normalize: ${perfNowMs() - __t1} ms") }

        val __t2 = perfNowMs()
        val merged = mergeTitleOnlyPages(normalized, ctx, zip)
        val filtered = filterZeroWeightPages(merged, ctx)
        runCatching { Log.i("EpubPerf", "  phase.merge: ${perfNowMs() - __t2} ms") }

        return if (filtered.isNotEmpty()) filtered else if (allowFallback) fallbackContentPages(zip) else emptyList()
    }

    /** Phase 1: iterate spine items and build raw [EpubPage] list. */
    private fun buildSpinePages(
        manifest: Map<String, String>,
        spine: List<String>,
        opfDir: String,
        zip: ZipFile,
        forceWholeHtmlEntries: Boolean,
        isSpecialFlavor: Boolean,
        ctx: SpineBuildContext
    ) {
        spineLoop@ for (idref in spine) {
            val rawHref = manifest[idref] ?: continue
            val hrefDecoded = try { URLDecoder.decode(rawHref, "UTF-8") } catch (_: Exception) { rawHref }
            val href = hrefDecoded.substringBefore('#')
            val entry = normalizePath(if (opfDir.isEmpty()) href else "$opfDir/$href")
            val ext = entry.substringAfterLast('.', "").lowercase()
            val header = findHeader(zip, entry) ?: continue
            when {
                ext in imageExtensions ->
                    ctx.rawResult.add(EpubPage.Image(entry))
                ext in xhtmlExtensions -> {
                    val isProtectedFrontMatter = contentAnalyzer.isProtectedFrontMatterEntry(entry)
                    if (isProtectedFrontMatter) ctx.protectedFrontMatterEntries += entry
                    val estimate = if (forceWholeHtmlEntries || isProtectedFrontMatter) {
                        EpubContentEstimate(1, 0, 1, keepWholeBody = true)
                    } else {
                        val __et = perfNowMs()
                        val e = contentAnalyzer.estimateContent(zip, entry)
                        runCatching { Log.i("EpubPerf", "    estimateContent[$entry]: ${perfNowMs() - __et} ms (chunks=${e.chunkCount})") }
                        e
                    }
                    val charCount = estimate.textCharCount
                    val imgCount = estimate.imageTagCount
                    ctx.htmlVisibleChars[entry] = charCount.coerceAtLeast(if (imgCount > 0) 1 else 0)
                    if (charCount == 0 && imgCount > 0) ctx.imageOnlyHtmlEntries += entry
                    if (estimate.keepWholeBody) ctx.keepWholeBodyEntries += entry
                    if (charCount == 0 && imgCount == 0) {
                        if (isSpecialFlavor && header.uncompressedSize > 0) {
                            ctx.rawResult.add(EpubPage.Html(entry, opfDir, 0, 1))
                        }
                        continue@spineLoop
                    }
                    repeat(estimate.chunkCount) { i ->
                        ctx.rawResult.add(EpubPage.Html(entry, opfDir, i, estimate.chunkCount))
                    }
                }
            }
        }
    }

    /** Phase 2: consolidate adjacent note sections into synthetic pages. */
    private fun normalizeNoteSections(rawResult: List<EpubPage>, zip: ZipFile): List<EpubPage> {
        val normalized = mutableListOf<EpubPage>()
        var i = 0
        while (i < rawResult.size) {
            val pg = rawResult[i]
            if (pg is EpubPage.Html && pg.totalChunks == 1 && contentAnalyzer.isNotesTitlePage(zip, pg.entry)) {
                val noteEntries = mutableListOf<String>()
                var j = i + 1
                while (j < rawResult.size) {
                    val nxt = rawResult[j] as? EpubPage.Html ?: break
                    if (nxt.totalChunks != 1 || !contentAnalyzer.isFootnotePage(zip, nxt.entry)) break
                    noteEntries.add(nxt.entry)
                    j++
                }
                if (noteEntries.isNotEmpty()) {
                    normalized.addAll(contentAnalyzer.buildSyntheticNotePages(pg.entry, noteEntries, zip))
                    i = j
                    continue
                }
            }
            normalized.add(pg)
            i++
        }
        return normalized
    }

    /** Phase 3: attach a standalone chapter title to the following body page. */
    private fun mergeTitleOnlyPages(
        normalized: List<EpubPage>,
        ctx: SpineBuildContext,
        zip: ZipFile
    ): List<EpubPage> {
        val merged = mutableListOf<EpubPage>()
        var i = 0
        while (i < normalized.size) {
            val pg = normalized[i]
            if (pg is EpubPage.Html && pg.totalChunks == 1) {
                val charCount = ctx.htmlVisibleChars[pg.entry] ?: 0
                // Title-only page followed by a body page — prepend title into body.
                // Intentionally broad: runs for ALL tiny title-only pages, including those in
                // keepWholeBodyEntries (e.g. FB2EPUB span-wrapped titles). A page containing
                // only a chapter heading (<160 chars, no body paragraphs) should never be a
                // standalone reader page — it always merges into the following body page.
                if (charCount in 1..CHUNK_CHARS_PER_PAGE / 4 &&
                    contentAnalyzer.isTitleOnlySpinePage(zip, pg.entry)
                ) {
                    val nextPg = normalized.getOrNull(i + 1)
                    if (nextPg is EpubPage.Html && nextPg.totalChunks == 1) {
                        val titleBody = contentAnalyzer.readTextEntry(zip, pg.entry)
                            ?.let { extractBodyContent(it) } ?: ""
                        val bodyHtml = contentAnalyzer.readTextEntry(zip, nextPg.entry) ?: ""
                        val bodyContent = extractBodyContent(bodyHtml)
                        val mergedHtml = contentAnalyzer.buildSyntheticHtml(
                            titleBody + bodyContent, includeTitle = false
                        )
                        merged.add(
                            EpubPage.SyntheticHtml(
                                entry = nextPg.entry,
                                html = mergedHtml,
                                chunkIndex = 0,
                                totalChunks = 1,
                                sourceEntries = listOf(pg.entry, nextPg.entry)
                            )
                        )
                        i += 2 // skip both title and body pages
                        continue
                    }
                }
            }
            merged.add(pg)
            i++
        }
        return merged
    }

    /** Phase 4: remove pages with zero visible content. */
    private fun filterZeroWeightPages(merged: List<EpubPage>, ctx: SpineBuildContext): List<EpubPage> =
        merged.filter { pg ->
            when (pg) {
                is EpubPage.Html -> {
                    val chars = ctx.htmlVisibleChars[pg.entry] ?: 0
                    chars > 0 || ctx.keepWholeBodyEntries.contains(pg.entry)
                }
                else -> true
            }
        }

    /** Fallback: discover pages by scanning ZIP entries. */
    private fun fallbackContentPages(zip: ZipFile): List<EpubPage> =
        zip.fileHeaders
            .filter { !it.isDirectory }
            .sortedBy { it.fileName }
            .mapNotNull { header ->
                val name = header.fileName.substringAfterLast('/')
                val ext = name.substringAfterLast('.', "").lowercase()
                val base = name.substringBeforeLast('.')
                when {
                    ext in imageExtensions -> EpubPage.Image(header.fileName)
                    ext in xhtmlExtensions &&
                        !NAV_FILE_RE.containsMatchIn(base) &&
                        contentAnalyzer.shouldIncludeFallbackHtml(zip, header) ->
                        EpubPage.Html(header.fileName, header.fileName.substringBeforeLast('/', ""))
                    else -> null
                }
            }

    companion object {
        private val NAV_FILE_RE = Regex("""(?:toc|nav|navigation|ncx|contents?)""", RegexOption.IGNORE_CASE)
    }
}
