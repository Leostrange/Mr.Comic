package io.leostrange.mrcomic.feature.reader.domain.navigation

import io.leostrange.mrcomic.core.model.ReaderLocator

internal class TextPageNavigator : ReaderContainerNavigator {
    override fun toLocator(position: ReaderContainerPosition): ReaderLocator {
        require(position is ReaderContainerPosition.TextPage)
        return ReaderLocator(
            href = position.href,
            progression = position.progression,
            fragment = position.fragment,
            pageIndex = position.sectionIndex,
            splitIndex = position.splitIndex,
            pageInSplit = position.pageInSplit,
            sectionIndex = position.sectionIndex,
            characterOffset = position.characterOffset
        )
    }

    override fun resolve(
        locator: ReaderLocator,
        bounds: ReaderNavigationBounds
    ): ReaderResolvedContainerPosition {
        val section = ReaderLocatorResolver.resolveTextSection(locator, bounds)
        val pageCount = bounds.pagesPerSection[section.sectionIndex]?.coerceAtLeast(1) ?: 1
        val requestedPage = locator.pageInSplit?.coerceAtLeast(0) ?: 0
        val resolvedPage = requestedPage.coerceAtMost(pageCount - 1)
        val source = if (requestedPage != resolvedPage) {
            ReaderNavigationResolutionSource.CLAMPED
        } else {
            section.source
        }
        return ReaderResolvedContainerPosition(
            position = ReaderContainerPosition.TextPage(
                sectionIndex = section.sectionIndex,
                splitIndex = locator.splitIndex?.coerceAtLeast(0) ?: 0,
                pageInSplit = resolvedPage,
                characterOffset = locator.characterOffset?.coerceAtLeast(0) ?: 0,
                progression = locator.progression?.coerceIn(0.0, 1.0),
                href = locator.href,
                fragment = locator.fragment
            ),
            source = source
        )
    }

    override fun next(
        position: ReaderContainerPosition,
        bounds: ReaderNavigationBounds
    ): ReaderContainerPosition {
        require(position is ReaderContainerPosition.TextPage)
        val section = position.sectionIndex.coerceIn(0, bounds.lastSectionIndex)
        val lastPage = ((bounds.pagesPerSection[section] ?: 1) - 1).coerceAtLeast(0)
        return when {
            position.pageInSplit < lastPage -> position.copy(pageInSplit = position.pageInSplit + 1)
            section < bounds.lastSectionIndex -> ReaderContainerPosition.TextPage(sectionIndex = section + 1)
            else -> position.copy(sectionIndex = section, pageInSplit = lastPage)
        }
    }

    override fun previous(
        position: ReaderContainerPosition,
        bounds: ReaderNavigationBounds
    ): ReaderContainerPosition {
        require(position is ReaderContainerPosition.TextPage)
        val section = position.sectionIndex.coerceIn(0, bounds.lastSectionIndex)
        return when {
            position.pageInSplit > 0 -> position.copy(pageInSplit = position.pageInSplit - 1)
            section > 0 -> {
                val previousSection = section - 1
                val previousLastPage = ((bounds.pagesPerSection[previousSection] ?: 1) - 1).coerceAtLeast(0)
                ReaderContainerPosition.TextPage(previousSection, pageInSplit = previousLastPage)
            }
            else -> position.copy(sectionIndex = 0, pageInSplit = 0)
        }
    }
}
