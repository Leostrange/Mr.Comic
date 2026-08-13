package io.leostrange.mrcomic.feature.reader.domain.navigation

import io.leostrange.mrcomic.core.model.ReaderLocator

internal enum class ReaderNavigationResolutionSource {
    EXACT,
    HREF,
    SECTION,
    PAGE,
    PROGRESSION,
    CLAMPED,
    START
}

internal sealed interface ReaderContainerPosition {
    data class TextPage(
        val sectionIndex: Int,
        val splitIndex: Int = 0,
        val pageInSplit: Int = 0,
        val characterOffset: Int = 0,
        val progression: Double? = null,
        val href: String? = null,
        val fragment: String? = null
    ) : ReaderContainerPosition

    data class TextWebtoon(
        val sectionIndex: Int,
        val characterOffset: Int = 0,
        val progression: Double? = null,
        val href: String? = null,
        val fragment: String? = null
    ) : ReaderContainerPosition

    data class RasterPage(val pageIndex: Int) : ReaderContainerPosition
    data class RasterWebtoon(val pageIndex: Int) : ReaderContainerPosition
}

internal data class ReaderNavigationBounds(
    val sectionCount: Int,
    val pageCount: Int,
    val hrefToSection: Map<String, Int> = emptyMap(),
    val pagesPerSection: Map<Int, Int> = emptyMap()
) {
    val lastSectionIndex: Int get() = (sectionCount - 1).coerceAtLeast(0)
    val lastPageIndex: Int get() = (pageCount - 1).coerceAtLeast(0)
}

internal data class ReaderResolvedContainerPosition(
    val position: ReaderContainerPosition,
    val source: ReaderNavigationResolutionSource
)

internal interface ReaderContainerNavigator {
    fun toLocator(position: ReaderContainerPosition): ReaderLocator
    fun resolve(locator: ReaderLocator, bounds: ReaderNavigationBounds): ReaderResolvedContainerPosition
    fun next(position: ReaderContainerPosition, bounds: ReaderNavigationBounds): ReaderContainerPosition
    fun previous(position: ReaderContainerPosition, bounds: ReaderNavigationBounds): ReaderContainerPosition
}
