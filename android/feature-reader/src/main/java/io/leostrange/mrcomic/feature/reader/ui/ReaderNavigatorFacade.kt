package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReaderLocator
import io.leostrange.mrcomic.feature.reader.domain.navigation.RasterPageNavigator
import io.leostrange.mrcomic.feature.reader.domain.navigation.RasterWebtoonNavigator
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderContainerNavigator
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderContainerPosition
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderNavigationBounds
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderResolvedContainerPosition
import io.leostrange.mrcomic.feature.reader.domain.navigation.TextPageNavigator
import io.leostrange.mrcomic.feature.reader.domain.navigation.TextWebtoonNavigator

internal object ReaderNavigatorFacade {
    private val navigators: Map<ReaderContainerKind, ReaderContainerNavigator> = mapOf(
        ReaderContainerKind.TEXT_PAGE to TextPageNavigator(),
        ReaderContainerKind.TEXT_WEBTOON to TextWebtoonNavigator(),
        ReaderContainerKind.RASTER_PAGE to RasterPageNavigator(),
        ReaderContainerKind.RASTER_WEBTOON to RasterWebtoonNavigator()
    )

    fun locator(
        kind: ReaderContainerKind,
        primaryIndex: Int,
        pageInSection: Int = 0,
        characterOffset: Int = 0,
        fragment: String? = null
    ): ReaderLocator = navigator(kind).toLocator(
        when (kind) {
            ReaderContainerKind.TEXT_PAGE -> ReaderContainerPosition.TextPage(
                sectionIndex = primaryIndex,
                pageInSplit = pageInSection,
                characterOffset = characterOffset,
                fragment = fragment
            )
            ReaderContainerKind.TEXT_WEBTOON -> ReaderContainerPosition.TextWebtoon(
                sectionIndex = primaryIndex,
                characterOffset = characterOffset,
                fragment = fragment
            )
            ReaderContainerKind.RASTER_PAGE -> ReaderContainerPosition.RasterPage(primaryIndex)
            ReaderContainerKind.RASTER_WEBTOON -> ReaderContainerPosition.RasterWebtoon(primaryIndex)
        }
    )

    fun resolve(
        locator: ReaderLocator,
        kind: ReaderContainerKind,
        bounds: ReaderNavigationBounds
    ): ReaderResolvedContainerPosition = navigator(kind).resolve(locator, bounds)

    fun primaryIndex(position: ReaderContainerPosition): Int = when (position) {
        is ReaderContainerPosition.TextPage -> position.sectionIndex
        is ReaderContainerPosition.TextWebtoon -> position.sectionIndex
        is ReaderContainerPosition.RasterPage -> position.pageIndex
        is ReaderContainerPosition.RasterWebtoon -> position.pageIndex
    }

    fun textSection(position: ReaderContainerPosition): Int? = when (position) {
        is ReaderContainerPosition.TextPage -> position.sectionIndex
        is ReaderContainerPosition.TextWebtoon -> position.sectionIndex
        else -> null
    }

    private fun navigator(kind: ReaderContainerKind): ReaderContainerNavigator =
        checkNotNull(navigators[kind]) { "Missing navigator for $kind" }
}
