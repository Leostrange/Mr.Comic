package io.leostrange.mrcomic.engine.formats.epub

internal data class EpubContentEstimate(
    val textCharCount: Int,
    val imageTagCount: Int,
    val chunkCount: Int,
    val keepWholeBody: Boolean = false
)

internal data class EpubHtmlChunkBlock(
    val html: String,
    val visibleCharCount: Int
)

internal data class EpubEstimatedChunkBlock(
    val visibleCharCount: Int,
    val canSplitOversized: Boolean
)

internal sealed class EpubPage {
    data class Image(val entry: String) : EpubPage()
    /**
     * One XHTML spine item may be split into several chunks when its text content
     * exceeds the structural chunk budget. [extraEntries] are merged tiny spine items.
     */
    data class Html(
        val entry: String,
        val opfDir: String,
        val chunkIndex: Int = 0,
        val totalChunks: Int = 1,
        val extraEntries: List<String> = emptyList()
    ) : EpubPage()
    data class SyntheticHtml(
        val entry: String,
        val html: String,
        val chunkIndex: Int = 0,
        val totalChunks: Int = 1,
        val sourceEntries: List<String> = emptyList()
    ) : EpubPage()
}

/** Holds both the page list and the extracted TOC from one OPF pass. */
internal data class ParsedEpub(
    val pages: List<EpubPage>
)

internal data class ManifestBlueprint(
    val manifest: Map<String, String>,
    val spine: List<String>,
    val ncxId: String?,
    val opfDir: String,
    val flavor: String,
    val repairFrontMatter: Boolean
)

internal data class EpubCacheKey(
    val filePath: String,
    val fileSize: Long,
    val lastModified: Long
)

internal data class CachedParsedEpubPayload(
    val version: Int,
    val pages: List<CachedPage>
)

internal data class CachedPage(
    val type: String,
    val entry: String,
    val opfDir: String? = null,
    val chunkIndex: Int = 0,
    val totalChunks: Int = 1,
    val extraEntries: List<String> = emptyList(),
    val html: String? = null,
    val sourceEntries: List<String> = emptyList()
)

internal data class CachedManifestPayload(
    val version: Int,
    val manifest: Map<String, String>,
    val spine: List<String>,
    val ncxId: String?,
    val opfDir: String,
    val flavor: String,
    val repairFrontMatter: Boolean
)

internal fun EpubPage.toCachedPage(): CachedPage = when (this) {
    is EpubPage.Image -> CachedPage(
        type = "image",
        entry = entry
    )
    is EpubPage.Html -> CachedPage(
        type = "html",
        entry = entry,
        opfDir = opfDir,
        chunkIndex = chunkIndex,
        totalChunks = totalChunks,
        extraEntries = extraEntries
    )
    is EpubPage.SyntheticHtml -> CachedPage(
        type = "synthetic",
        entry = entry,
        html = html,
        chunkIndex = chunkIndex,
        totalChunks = totalChunks,
        sourceEntries = sourceEntries
    )
}

internal fun CachedPage.toEpubPage(): EpubPage? = when (type) {
    "image" -> entry.trim().takeIf { it.isNotBlank() }?.let(EpubPage::Image)
    "html" -> entry.trim().takeIf { it.isNotBlank() }?.let {
        EpubPage.Html(
            entry = it,
            opfDir = opfDir.orEmpty(),
            chunkIndex = chunkIndex,
            totalChunks = totalChunks.coerceAtLeast(1),
            extraEntries = extraEntries
        )
    }
    "synthetic" -> {
        val normalizedEntry = entry.trim()
        val normalizedHtml = html.orEmpty()
        if (normalizedEntry.isBlank() || normalizedHtml.isBlank()) null else {
            EpubPage.SyntheticHtml(
                entry = normalizedEntry,
                html = normalizedHtml,
                chunkIndex = chunkIndex,
                totalChunks = totalChunks.coerceAtLeast(1),
                sourceEntries = sourceEntries
            )
        }
    }
    else -> null
}
