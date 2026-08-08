package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.text.ReflowableTextFormatReader
import io.leostrange.mrcomic.engine.api.TextDocumentSection
import io.leostrange.mrcomic.engine.formats.text.pagination.DocumentTextPaginator
import io.leostrange.mrcomic.engine.api.TextPaginationConstraints
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

internal data class TextPagePaginationSnapshot(
    val pages: List<CachedHtmlPage>,
    val engineSectionByDisplayPage: IntArray
)

/**
 * Builds display pages for [ReaderContainerKind.TEXT_PAGE] from engine sections.
 */
internal class TextPagePaginationController(
    private val documentPaginator: DocumentTextPaginator = DocumentTextPaginator()
) {
    // @Volatile: ensureBuilt() runs on Dispatchers.IO while isReady()/getDisplayPage()/
    // displayPageForEngine() read these from the main thread. Without @Volatile the JVM
    // memory model lets the main thread observe a stale or partially-published snapshot
    // (null when non-null on the writer thread, or an inconsistent snapshot/cacheKey pair),
    // which manifests as NPEs or wrong page-index mapping right after a pagination build.
    @Volatile private var snapshot: TextPagePaginationSnapshot? = null
    @Volatile private var cacheKey: String? = null

    fun clear() {
        snapshot = null
        cacheKey = null
    }

    fun isReady(): Boolean = snapshot != null

    fun displayPageCount(): Int = snapshot?.pages?.size ?: 0

    fun getDisplayPage(index: Int): CachedHtmlPage? = snapshot?.pages?.getOrNull(index)

    fun enginePageForDisplay(displayIndex: Int): Int? =
        snapshot?.engineSectionByDisplayPage?.getOrNull(displayIndex)

    fun displayPageForEngine(enginePage: Int): Int {
        val snap = snapshot ?: return enginePage.coerceAtLeast(0)
        if (snap.engineSectionByDisplayPage.isEmpty()) return 0
        val normalizedEnginePage = enginePage.coerceAtLeast(0)
        val direct = snap.engineSectionByDisplayPage.indexOfFirst { it >= normalizedEnginePage }
        if (direct >= 0) return direct
        return snap.engineSectionByDisplayPage.lastIndex.coerceAtLeast(0)
    }

    suspend fun ensureBuilt(
        reader: FormatReader,
        constraints: TextPaginationConstraints,
        key: String
    ): TextPagePaginationSnapshot = withContext(Dispatchers.IO) {
        snapshot?.takeIf { cacheKey == key }?.let { return@withContext it }

        val sections = when (reader) {
            is ReflowableTextFormatReader -> {
                reader.getTextDocumentSections().ifEmpty {
                    loadEngineSectionsFromHtmlPages(reader, reader.getPageCount().coerceAtLeast(1))
                }
            }
            else -> loadEngineSectionsFromHtmlPages(reader, reader.getPageCount().coerceAtLeast(1))
        }
        val result = documentPaginator.paginateSections(sections, constraints)
        val engineByDisplay = IntArray(result.pages.size)
        val displayPages = result.pages.mapIndexed { displayIndex, subPage ->
            engineByDisplay[displayIndex] = subPage.sectionIndex
            val section = sections.getOrNull(subPage.sectionIndex)
            // The section's `id` is the authoritative asset base (XHTML entry / file name).
            // Do NOT fall back to reader.htmlAssetBasePath(sectionIndex): that method is
            // index-semantics-sensitive and, for EPUB, mixing a section index with a
            // page-index lookup can resolve a different page's entry, breaking relative
            // CSS/image resolution for flat-layout books (entries without a '/').
            val assetBasePath = section?.id?.takeIf { it.isNotBlank() }
            CachedHtmlPage(
                html = subPage.html,
                assetBasePath = assetBasePath
            )
        }
        TextPagePaginationSnapshot(
            pages = displayPages,
            engineSectionByDisplayPage = engineByDisplay
        ).also {
            snapshot = it
            cacheKey = key
        }
    }
}

private suspend fun loadEngineSectionsFromHtmlPages(
    reader: FormatReader,
    engineCount: Int
): List<TextDocumentSection> = buildList {
    for (engineIndex in 0 until engineCount) {
        val html = reader.getHtmlPage(engineIndex) ?: continue
        add(
            TextDocumentSection(
                index = engineIndex,
                html = html,
                baseUrl = reader.htmlBaseUrl()
            )
        )
    }
}

internal fun ReaderUiState.textPagePaginationKey(
    viewportWidthPx: Int,
    viewportHeightPx: Int,
    systemTopInsetPx: Int = 0,
    systemBottomInsetPx: Int = 0
): String = listOf(
    viewportWidthPx,
    viewportHeightPx,
    systemTopInsetPx,
    systemBottomInsetPx,
    textFontSize,
    textLineHeight,
    textLetterSpacing,
    textWordSpacing,
    textParagraphSpacing,
    textBold
).joinToString("|")

internal fun ReaderUiState.toTextPaginationConstraints(
    viewportWidthPx: Int,
    viewportHeightPx: Int,
    systemTopInsetPx: Int = 0,
    systemBottomInsetPx: Int = 0
): TextPaginationConstraints = TextPaginationConstraints(
    viewportWidthPx = viewportWidthPx.coerceAtLeast(320),
    viewportHeightPx = viewportHeightPx.coerceAtLeast(480),
    contentTopInsetPx = systemTopInsetPx,
    contentBottomInsetPx = systemBottomInsetPx,
    fontSizeSp = textFontSize,
    lineHeight = textLineHeight,
    letterSpacingEm = textLetterSpacing,
    wordSpacingEm = textWordSpacing,
    paragraphSpacingEm = textParagraphSpacing,
    bold = textBold
)
