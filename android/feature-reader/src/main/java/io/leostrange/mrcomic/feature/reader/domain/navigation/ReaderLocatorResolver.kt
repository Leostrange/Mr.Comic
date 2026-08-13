package io.leostrange.mrcomic.feature.reader.domain.navigation

import io.leostrange.mrcomic.core.model.ReaderLocator
import kotlin.math.floor

internal object ReaderLocatorResolver {
    data class TextSectionResolution(
        val sectionIndex: Int,
        val source: ReaderNavigationResolutionSource
    )

    fun resolveTextSection(
        locator: ReaderLocator,
        bounds: ReaderNavigationBounds
    ): TextSectionResolution {
        if (bounds.sectionCount <= 0) {
            return TextSectionResolution(0, ReaderNavigationResolutionSource.START)
        }

        val hrefSection = locator.href
            ?.let(::normalizeHref)
            ?.let { normalized ->
                bounds.hrefToSection.entries.firstOrNull { normalizeHref(it.key) == normalized }?.value
            }
        if (hrefSection != null) {
            val clamped = hrefSection.coerceIn(0, bounds.lastSectionIndex)
            val exact = locator.sectionIndex == clamped && locator.pageIndex == clamped && hrefSection == clamped
            return TextSectionResolution(
                clamped,
                when {
                    hrefSection != clamped -> ReaderNavigationResolutionSource.CLAMPED
                    exact -> ReaderNavigationResolutionSource.EXACT
                    else -> ReaderNavigationResolutionSource.HREF
                }
            )
        }

        locator.sectionIndex?.let { section ->
            val clamped = section.coerceIn(0, bounds.lastSectionIndex)
            return TextSectionResolution(
                clamped,
                if (clamped == section && locator.pageIndex == section) {
                    ReaderNavigationResolutionSource.EXACT
                } else if (clamped == section) {
                    ReaderNavigationResolutionSource.SECTION
                } else {
                    ReaderNavigationResolutionSource.CLAMPED
                }
            )
        }

        locator.pageIndex?.let { page ->
            val clamped = page.coerceIn(0, bounds.lastSectionIndex)
            return TextSectionResolution(
                clamped,
                if (clamped == page) ReaderNavigationResolutionSource.PAGE else ReaderNavigationResolutionSource.CLAMPED
            )
        }

        locator.progression?.takeIf { it.isFinite() }?.let { progression ->
            val clampedProgression = progression.coerceIn(0.0, 1.0)
            val section = floor(clampedProgression * bounds.sectionCount).toInt()
                .coerceIn(0, bounds.lastSectionIndex)
            return TextSectionResolution(section, ReaderNavigationResolutionSource.PROGRESSION)
        }

        locator.position?.let { legacyPage ->
            val clamped = legacyPage.coerceIn(0, bounds.lastSectionIndex)
            return TextSectionResolution(
                clamped,
                if (clamped == legacyPage) ReaderNavigationResolutionSource.PAGE else ReaderNavigationResolutionSource.CLAMPED
            )
        }

        return TextSectionResolution(0, ReaderNavigationResolutionSource.START)
    }

    fun resolveRasterPage(locator: ReaderLocator, bounds: ReaderNavigationBounds): Pair<Int, ReaderNavigationResolutionSource> {
        if (bounds.pageCount <= 0) return 0 to ReaderNavigationResolutionSource.START
        val candidate = locator.pageIndex ?: locator.position
        if (candidate != null) {
            val clamped = candidate.coerceIn(0, bounds.lastPageIndex)
            return clamped to if (clamped == candidate) {
                ReaderNavigationResolutionSource.EXACT
            } else {
                ReaderNavigationResolutionSource.CLAMPED
            }
        }
        locator.progression?.takeIf { it.isFinite() }?.let { progression ->
            val page = floor(progression.coerceIn(0.0, 1.0) * bounds.pageCount).toInt()
                .coerceIn(0, bounds.lastPageIndex)
            return page to ReaderNavigationResolutionSource.PROGRESSION
        }
        return 0 to ReaderNavigationResolutionSource.START
    }

    fun normalizeHref(href: String): String =
        href.substringBefore('#').trim().trim('/').replace('\\', '/').lowercase()
}
