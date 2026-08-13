package io.leostrange.mrcomic.feature.reader.domain.navigation

import io.leostrange.mrcomic.core.model.ReaderLocator

internal class TextWebtoonNavigator : ReaderContainerNavigator {
    override fun toLocator(position: ReaderContainerPosition): ReaderLocator {
        require(position is ReaderContainerPosition.TextWebtoon)
        return ReaderLocator(
            href = position.href,
            progression = position.progression,
            fragment = position.fragment,
            pageIndex = position.sectionIndex,
            sectionIndex = position.sectionIndex,
            characterOffset = position.characterOffset
        )
    }

    override fun resolve(locator: ReaderLocator, bounds: ReaderNavigationBounds): ReaderResolvedContainerPosition {
        val section = ReaderLocatorResolver.resolveTextSection(locator, bounds)
        return ReaderResolvedContainerPosition(
            position = ReaderContainerPosition.TextWebtoon(
                sectionIndex = section.sectionIndex,
                characterOffset = locator.characterOffset?.coerceAtLeast(0) ?: 0,
                progression = locator.progression?.coerceIn(0.0, 1.0),
                href = locator.href,
                fragment = locator.fragment
            ),
            source = section.source
        )
    }

    override fun next(position: ReaderContainerPosition, bounds: ReaderNavigationBounds): ReaderContainerPosition {
        require(position is ReaderContainerPosition.TextWebtoon)
        return ReaderContainerPosition.TextWebtoon(
            sectionIndex = (position.sectionIndex + 1).coerceIn(0, bounds.lastSectionIndex)
        )
    }

    override fun previous(position: ReaderContainerPosition, bounds: ReaderNavigationBounds): ReaderContainerPosition {
        require(position is ReaderContainerPosition.TextWebtoon)
        return ReaderContainerPosition.TextWebtoon(
            sectionIndex = (position.sectionIndex - 1).coerceIn(0, bounds.lastSectionIndex)
        )
    }
}
