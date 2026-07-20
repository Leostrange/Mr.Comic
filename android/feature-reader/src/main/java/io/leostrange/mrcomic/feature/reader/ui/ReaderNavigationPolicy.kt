package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode

/** Pure visual-page geometry shared by paged and vertical reader modes. */
internal object ReaderNavigationPolicy {

    fun normalizePage(page: Int, mode: ReadingMode, totalPages: Int): Int {
        val clamped = page.coerceIn(0, (totalPages - 1).coerceAtLeast(0))
        return if (mode == ReadingMode.DUAL_PAGE) (clamped / 2) * 2 else clamped
    }

    fun visiblePages(page: Int, mode: ReadingMode, totalPages: Int): List<Int> {
        val normalizedPage = normalizePage(page, mode, totalPages)
        return if (mode == ReadingMode.DUAL_PAGE && normalizedPage + 1 < totalPages) {
            listOf(normalizedPage, normalizedPage + 1)
        } else {
            listOf(normalizedPage)
        }
    }

    fun pageStep(mode: ReadingMode): Int = if (mode == ReadingMode.DUAL_PAGE) 2 else 1
}
