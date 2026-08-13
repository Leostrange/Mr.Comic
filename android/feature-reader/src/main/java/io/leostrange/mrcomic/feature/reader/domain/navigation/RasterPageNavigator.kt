package io.leostrange.mrcomic.feature.reader.domain.navigation

import io.leostrange.mrcomic.core.model.ReaderLocator

internal class RasterPageNavigator : ReaderContainerNavigator {
    override fun toLocator(position: ReaderContainerPosition): ReaderLocator {
        require(position is ReaderContainerPosition.RasterPage)
        return ReaderLocator(position = position.pageIndex, pageIndex = position.pageIndex)
    }

    override fun resolve(locator: ReaderLocator, bounds: ReaderNavigationBounds): ReaderResolvedContainerPosition {
        val (page, source) = ReaderLocatorResolver.resolveRasterPage(locator, bounds)
        return ReaderResolvedContainerPosition(ReaderContainerPosition.RasterPage(page), source)
    }

    override fun next(position: ReaderContainerPosition, bounds: ReaderNavigationBounds): ReaderContainerPosition {
        require(position is ReaderContainerPosition.RasterPage)
        return ReaderContainerPosition.RasterPage((position.pageIndex + 1).coerceIn(0, bounds.lastPageIndex))
    }

    override fun previous(position: ReaderContainerPosition, bounds: ReaderNavigationBounds): ReaderContainerPosition {
        require(position is ReaderContainerPosition.RasterPage)
        return ReaderContainerPosition.RasterPage((position.pageIndex - 1).coerceIn(0, bounds.lastPageIndex))
    }
}
