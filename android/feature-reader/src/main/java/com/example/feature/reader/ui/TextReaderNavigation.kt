package com.example.feature.reader.ui

internal object TextReaderNavigation {

    /**
     * Moon+ model: engine spine page + optional split inside chapter + screen page in split.
     * Phase 1: EPUB WebView JS page index maps to [pageInSplit]; persist in Phase 3.
     */
    data class ResolvedTextPosition(
        val enginePage: Int,
        val splitIndex: Int = 0,
        val pageInSplit: Int = 0
    )

    fun resolveTextPosition(
        enginePage: Int,
        splitIndex: Int = 0,
        pageInSplit: Int = 0
    ): ResolvedTextPosition = ResolvedTextPosition(
        enginePage = enginePage.coerceAtLeast(0),
        splitIndex = splitIndex.coerceAtLeast(0),
        pageInSplit = pageInSplit.coerceAtLeast(0)
    )

    fun tocDisplayPage(
        state: ReaderUiState,
        controller: TextReaderController,
        enginePageIndex: Int
    ): Int {
        if (!shouldUseKotlinTextPagePagination(
                state.readerContainerKind,
                state.comic?.format
            ) || !controller.isTextPagePaginationReady()
        ) {
            return enginePageIndex
        }
        return controller.displayPageForEngine(enginePageIndex)
    }

    fun enginePageForUiPage(
        state: ReaderUiState,
        controller: TextReaderController,
        page: Int
    ): Int {
        if (shouldUseKotlinTextPagePagination(state.readerContainerKind, state.comic?.format) &&
            controller.isTextPagePaginationReady()
        ) {
            return controller.enginePageForDisplay(page) ?: page
        }
        return page
    }

    fun resolveNavigationPage(
        state: ReaderUiState,
        controller: TextReaderController,
        page: Int,
        progressSource: ReaderNavigationProgressSource
    ): Int {
        if (!shouldUseKotlinTextPagePagination(state.readerContainerKind, state.comic?.format) ||
            !controller.isTextPagePaginationReady()
        ) {
            return page
        }
        return when (progressSource) {
            ReaderNavigationProgressSource.JUMP ->
                controller.displayPageForEngine(page)
            else -> page
        }
    }
}
