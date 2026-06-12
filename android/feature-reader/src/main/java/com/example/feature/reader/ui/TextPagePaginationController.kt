package com.example.feature.reader.ui

import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.text.ReflowableTextFormatReader
import com.example.engine.formats.text.TextDocumentSection
import com.example.engine.formats.text.pagination.DocumentTextPaginator
import com.example.engine.formats.text.pagination.TextPaginationConstraints
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
    private var snapshot: TextPagePaginationSnapshot? = null
    private var cacheKey: String? = null

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
            val assetBasePath = section?.id?.takeIf { it.contains('/') }
                ?: reader.htmlAssetBasePath(subPage.sectionIndex)
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
    viewportHeightPx: Int
): String = listOf(
    viewportWidthPx,
    viewportHeightPx,
    textFontSize,
    textLineHeight,
    textLetterSpacing,
    textWordSpacing,
    textParagraphSpacing,
    textBold
).joinToString("|")

internal fun ReaderUiState.toTextPaginationConstraints(
    viewportWidthPx: Int,
    viewportHeightPx: Int
): TextPaginationConstraints = TextPaginationConstraints(
    viewportWidthPx = viewportWidthPx.coerceAtLeast(320),
    viewportHeightPx = viewportHeightPx.coerceAtLeast(480),
    fontSizeSp = textFontSize,
    lineHeight = textLineHeight,
    letterSpacingEm = textLetterSpacing,
    wordSpacingEm = textWordSpacing,
    paragraphSpacingEm = textParagraphSpacing,
    bold = textBold
)
