package io.leostrange.mrcomic.engine.epub.readium

import io.leostrange.mrcomic.core.model.ReaderLocator
import io.leostrange.mrcomic.core.model.ReaderPreferenceSnapshot
import org.readium.r2.navigator.preferences.ColumnCount
import org.readium.r2.navigator.epub.EpubPreferences
import org.readium.r2.navigator.preferences.FontFamily
import org.readium.r2.navigator.preferences.Spread
import org.readium.r2.navigator.preferences.TextAlign
import org.readium.r2.navigator.preferences.Theme
import org.readium.r2.shared.ExperimentalReadiumApi
import org.readium.r2.shared.publication.Link
import org.readium.r2.shared.publication.Locator
import org.readium.r2.shared.publication.Publication
import java.util.Locale
import kotlin.math.abs

internal fun ReaderPreferenceSnapshot.toReadiumFontFamily(): FontFamily? =
    fontFamily?.trim()?.takeIf { it.isNotEmpty() }?.let(::FontFamily)

internal fun Double?.toReadiumBoundedValue(
    min: Double,
    max: Double
): Double? =
    this
        ?.takeIf { it.isFinite() }
        ?.coerceIn(min, max)

internal fun Double?.toReadiumResettableValue(
    min: Double,
    max: Double,
    resetValue: Double? = null
): Double? =
    when {
        this == null -> null
        !isFinite() -> resetValue
        else -> coerceIn(min, max)
    }

internal fun ReaderPreferenceSnapshot.toReadiumFontWeight(): Double? =
    fontWeight
        ?.takeIf { it.isFinite() && it > 0.0 }
        ?.let { requestedWeight ->
            if (requestedWeight <= 2.5) {
                requestedWeight.coerceIn(0.5, 2.5)
            } else {
                (requestedWeight / 400.0).coerceIn(0.5, 2.5)
            }
        }

@OptIn(ExperimentalReadiumApi::class)
fun ReaderPreferenceSnapshot.toReadiumEpubPreferences(): EpubPreferences {
    val safeTextAlign = textAlignment.toReadiumTextAlign()
    val safeTheme = themePreset.toReadiumTheme()
    val safeHyphens = hyphenation ?: true
    val safeFontFamily = runCatching { toReadiumFontFamily() }.getOrNull()
    val boundedFontWeight = toReadiumFontWeight()
        ?.takeIf(Double::isFinite)
        ?.coerceIn(0.0, 2.5)

    return runCatching {
        EpubPreferences(
            columnCount = ColumnCount.AUTO,
            fontFamily = safeFontFamily,
            fontSize = fontScale.toReadiumBoundedValue(0.6, 3.2),
            fontWeight = boundedFontWeight,
            hyphens = safeHyphens,
            letterSpacing = letterSpacing.toReadiumResettableValue(0.0, 0.5, resetValue = 0.0),
            lineHeight = lineHeight.toReadiumResettableValue(1.0, 2.0, resetValue = 1.0),
            pageMargins = pageMargins.toReadiumResettableValue(0.5, 2.0, resetValue = 1.0),
            paragraphSpacing = paragraphSpacing.toReadiumResettableValue(0.0, 2.0, resetValue = 0.0),
            publisherStyles = publisherStyles,
            scroll = scrolling,
            spread = Spread.NEVER,
            textAlign = safeTextAlign,
            textNormalization = true,
            theme = safeTheme,
            wordSpacing = wordSpacing.toReadiumResettableValue(0.0, 1.0, resetValue = 0.0)
        )
    }.getOrElse {
        runCatching {
            EpubPreferences(
                columnCount = ColumnCount.AUTO,
                hyphens = safeHyphens,
                publisherStyles = publisherStyles,
                scroll = scrolling,
                spread = Spread.NEVER,
                textAlign = safeTextAlign,
                textNormalization = true,
                theme = safeTheme
            )
        }.getOrElse {
            EpubPreferences()
        }
    }
}

internal data class ReadiumOpeningCandidate(
    val href: String,
    val title: String?,
    val rels: Set<String> = emptySet(),
    val mediaType: String? = null
)

internal fun selectReadiumOpeningCandidateIndex(
    readingOrder: List<ReadiumOpeningCandidate>
): Int? {
    if (readingOrder.isEmpty()) return null
    val explicitCoverDocumentIndex = readingOrder.indexOfFirst { candidate ->
        candidate.hasCoverRel() && !candidate.isImageLikeResource()
    }
    if (explicitCoverDocumentIndex >= 0) return explicitCoverDocumentIndex
    val explicitCoverIndex = readingOrder.indexOfFirst(ReadiumOpeningCandidate::hasCoverRel)
    if (explicitCoverIndex >= 0 && readingOrder.none { !it.isImageLikeResource() }) {
        return explicitCoverIndex
    }
    val explicitFrontMatterIndex = readingOrder.indexOfFirst { candidate ->
        if (candidate.isImageLikeResource()) return@indexOfFirst false
        val normalizedHref = candidate.href.lowercase()
        val normalizedTitle = candidate.title?.trim()?.lowercase().orEmpty()
        normalizedHref.contains("cover") ||
            normalizedHref.contains("titlepage") ||
            normalizedHref.contains("frontisp") ||
            normalizedHref.contains("frontmatter") ||
            normalizedTitle == "cover" ||
            normalizedTitle == "title page"
    }
    if (explicitFrontMatterIndex >= 0) return explicitFrontMatterIndex
    val heuristicWindow = minOf(readingOrder.lastIndex, 5)
    val matchIndex = readingOrder.indexOfFirstIndexed { index, candidate ->
        index <= heuristicWindow &&
            !candidate.isImageLikeResource() &&
            looksLikeReadiumFrontMatter(candidate)
    }
    if (matchIndex >= 0) return matchIndex
    val firstNonImageIndex = readingOrder.indexOfFirst { !it.isImageLikeResource() }
    return if (firstNonImageIndex >= 0) firstNonImageIndex else 0
}

fun Publication.resolveReadiumLocator(target: ReaderLocator?): Locator? {
    val safeTarget = target ?: return null
    if (!safeTarget.hasReadiumLocationHint()) return null
    val href = safeTarget.href?.trim().orEmpty()
    val normalizedHref = href.takeIf { it.isNotBlank() }?.normalizeReadiumHref()
    val linkFromHref = normalizedHref?.let(::findNavigableLink)
    val link = linkFromHref ?: return null
    val baseLocator = locatorFromLink(link) ?: return null
    val fragment = safeTarget.fragment
        ?.trim()
        ?.takeIf { it.isNotBlank() }
        ?: href.substringAfter('#', "").takeIf { it.isNotBlank() }
    return if (fragment != null) {
        baseLocator.copyWithLocations(
            fragments = listOf(fragment),
            progression = safeTarget.progression ?: baseLocator.locations.progression,
            position = safeTarget.position ?: baseLocator.locations.position,
            totalProgression = baseLocator.locations.totalProgression,
            otherLocations = baseLocator.locations.otherLocations
        )
    } else {
        baseLocator.copyWithLocations(
            fragments = baseLocator.locations.fragments,
            progression = safeTarget.progression ?: baseLocator.locations.progression,
            position = safeTarget.position ?: baseLocator.locations.position,
            totalProgression = baseLocator.locations.totalProgression,
            otherLocations = baseLocator.locations.otherLocations
        )
    }
}

fun Publication.resolveReaderPageIndex(target: ReaderLocator?): Int? {
    val href = target?.href?.trim().orEmpty()
    if (href.isBlank()) return null
    val normalizedHref = href.normalizeReadiumHref()
    val matchedReadingOrderIndex = readingOrder.indexOfFirst { candidate ->
        candidate.href.toString().matchesReadiumHref(normalizedHref)
    }
    if (matchedReadingOrderIndex >= 0) return matchedReadingOrderIndex

    val matchedLink = findNavigableLink(normalizedHref)
    if (matchedLink != null) {
        val matchedHref = matchedLink.href.toString().normalizeReadiumHref()
        val readingOrderIndex = readingOrder.indexOfFirst { candidate ->
            candidate.href.toString().matchesReadiumHref(matchedHref)
        }
        if (readingOrderIndex >= 0) return readingOrderIndex
    }

    return null
}

internal fun Publication.resolveReadiumReaderLocator(target: ReaderLocator?): ReaderLocator? {
    return resolveReadiumLocator(target)?.toReaderLocator()
}

internal fun Publication.resolveFallbackOpeningReaderLocator(): ReaderLocator? {
    val readingOrderLinks = readingOrder
    val readingOrderCandidateIndex = selectReadiumFallbackOpeningCandidateIndex(
        readingOrder = readingOrderLinks.map { link ->
            ReadiumOpeningCandidate(
                href = link.href.toString(),
                title = link.title,
                rels = link.rels,
                mediaType = link.mediaType?.toString()
            )
        }
    ) { index ->
        readingOrderLinks.getOrNull(index)?.let(::locatorFromLink) != null
    }
    if (readingOrderCandidateIndex != null) {
        val candidateLink = readingOrderLinks.getOrNull(readingOrderCandidateIndex)
        if (candidateLink != null) {
            return locatorFromLink(candidateLink)?.toReaderLocator()
        }
    }

    val navigableLinks = allNavigableLinks()
    val fallbackCandidateIndex = selectReadiumFallbackOpeningCandidateIndex(
        readingOrder = navigableLinks.map { link ->
            ReadiumOpeningCandidate(
                href = link.href.toString(),
                title = link.title,
                rels = link.rels,
                mediaType = link.mediaType?.toString()
            )
        }
    ) { index ->
        navigableLinks.getOrNull(index)?.let(::locatorFromLink) != null
    } ?: return null
    val fallbackCandidateLink = navigableLinks.getOrNull(fallbackCandidateIndex) ?: return null
    return locatorFromLink(fallbackCandidateLink)?.toReaderLocator()
}

internal fun selectReadiumFallbackOpeningCandidateIndex(
    readingOrder: List<ReadiumOpeningCandidate>,
    canOpen: (Int) -> Boolean
): Int? {
    val preferredIndex = selectReadiumOpeningCandidateIndex(readingOrder)
    if (
        preferredIndex != null &&
        !readingOrder[preferredIndex].isImageLikeResource() &&
        canOpen(preferredIndex)
    ) {
        return preferredIndex
    }
    val firstOpenDocumentIndex = readingOrder.indices.firstOrNull { index ->
        !readingOrder[index].isImageLikeResource() && canOpen(index)
    }
    if (firstOpenDocumentIndex != null) return firstOpenDocumentIndex
    if (preferredIndex != null && canOpen(preferredIndex)) return preferredIndex
    return readingOrder.indices.firstOrNull(canOpen)
}

internal fun ReaderLocator.hasReadiumLocationHint(): Boolean =
    !href.isNullOrBlank() || !fragment.isNullOrBlank()

fun ReaderLocator?.readiumNormalizedLocatorKey(): String? {
    val locator = this ?: return null
    val href = locator.href
        ?.takeIf { it.isNotBlank() }
        ?.normalizeReadiumHref()
        ?: return null
    val fragment = locator.fragment
        ?.takeIf { it.isNotBlank() }
        ?: locator.href
            ?.substringAfter('#', "")
            ?.takeIf { it.isNotBlank() }
        ?: ""
    val position = (locator.position ?: locator.pageIndex)?.toString().orEmpty()
    val progression = locator.progression
        ?.let { String.format(Locale.US, "%.4f", it) }
        .orEmpty()
    return listOf(
        href.lowercase(Locale.US),
        fragment,
        position,
        progression
    ).joinToString(separator = "|")
}

fun areEquivalentReadiumLocators(
    currentLocator: ReaderLocator?,
    targetLocator: ReaderLocator?
): Boolean {
    val current = currentLocator ?: return false
    val target = targetLocator ?: return false
    val currentHref = current.href?.takeIf { it.isNotBlank() }?.normalizeReadiumHref()
    val targetHref = target.href?.takeIf { it.isNotBlank() }?.normalizeReadiumHref()
    if (currentHref == null || targetHref == null) {
        return false
    }
    if (!currentHref.equals(targetHref, ignoreCase = true)) {
        return false
    }

    val currentFragment = current.fragment
        ?.takeIf { it.isNotBlank() }
        ?: current.href?.substringAfter('#', "")?.takeIf { it.isNotBlank() }
    val targetFragment = target.fragment
        ?.takeIf { it.isNotBlank() }
        ?: target.href?.substringAfter('#', "")?.takeIf { it.isNotBlank() }
    if (currentFragment != targetFragment) {
        return false
    }

    val currentPosition = current.position ?: current.pageIndex
    val targetPosition = target.position ?: target.pageIndex
    if (currentPosition != null && targetPosition != null && currentPosition != targetPosition) {
        return false
    }

    val currentProgression = current.progression
    val targetProgression = target.progression
    if (
        currentProgression != null &&
        targetProgression != null &&
        abs(currentProgression - targetProgression) >= 0.0005
    ) {
        return false
    }

    return true
}

fun Locator.toReaderLocator(): ReaderLocator =
    ReaderLocator(
        href = buildString {
            append(href.toString())
            val fragment = locations.fragments.firstOrNull()
            if (!fragment.isNullOrBlank()) {
                append('#')
                append(fragment)
            }
        },
        progression = locations.progression,
        position = locations.position,
        title = title,
        fragment = locations.fragments.firstOrNull()
    )

private fun Publication.allNavigableLinks(): List<Link> =
    buildList {
        addAll(readingOrder)
        addAll(resources)
        addAll(links)
        addAll(flattenLinks(tableOfContents))
    }

private fun Publication.findNavigableLink(normalizedHref: String): Link? =
    allNavigableLinks().firstOrNull { candidate ->
        candidate.href.toString().matchesReadiumHref(normalizedHref)
    }

private fun flattenLinks(links: List<Link>): List<Link> =
    buildList {
        links.forEach { link ->
            add(link)
            if (link.children.isNotEmpty()) {
                addAll(flattenLinks(link.children))
            }
        }
    }

internal fun String.normalizeReadiumHref(): String =
    substringBefore('#').trimStart('/')

internal fun String.matchesReadiumHref(normalizedHref: String): Boolean =
    normalizeReadiumHref().equals(normalizedHref, ignoreCase = true) ||
        normalizeReadiumHref().endsWith("/$normalizedHref", ignoreCase = true) ||
        normalizedHref.endsWith("/${normalizeReadiumHref()}", ignoreCase = true)

private fun looksLikeReadiumFrontMatter(candidate: ReadiumOpeningCandidate): Boolean {
    if (candidate.isImageLikeResource()) {
        return false
    }
    if (candidate.hasCoverRel()) {
        return true
    }
    val normalizedHref = candidate.href.lowercase()
    if (
        normalizedHref.contains("cover") ||
        normalizedHref.contains("titlepage") ||
        normalizedHref.contains("frontisp") ||
        normalizedHref.contains("frontmatter")
    ) {
        return true
    }
    val normalizedTitle = candidate.title?.trim()?.lowercase().orEmpty()
    return normalizedTitle == "cover" || normalizedTitle == "title page"
}

private fun ReadiumOpeningCandidate.hasCoverRel(): Boolean =
    rels.any { rel ->
        rel.equals("cover", ignoreCase = true) ||
            rel.equals("titlepage", ignoreCase = true) ||
            rel.equals("frontcover", ignoreCase = true)
    }

private fun ReadiumOpeningCandidate.isImageLikeResource(): Boolean {
    val normalizedType = mediaType
        ?.substringBefore(';')
        ?.trim()
        ?.lowercase()
    if (normalizedType?.startsWith("image/") == true) {
        return true
    }
    val normalizedHref = href
        .substringBefore('#')
        .substringBefore('?')
        .trim()
        .lowercase()
    return normalizedHref.endsWith(".jpg") ||
        normalizedHref.endsWith(".jpeg") ||
        normalizedHref.endsWith(".png") ||
        normalizedHref.endsWith(".webp") ||
        normalizedHref.endsWith(".avif") ||
        normalizedHref.endsWith(".gif") ||
        normalizedHref.endsWith(".bmp") ||
        normalizedHref.endsWith(".svg")
}

private inline fun <T> List<T>.indexOfFirstIndexed(predicate: (Int, T) -> Boolean): Int {
    for (index in indices) {
        if (predicate(index, this[index])) {
            return index
        }
    }
    return -1
}

private fun String?.toReadiumTheme(): Theme? = runCatching {
    when {
        this.isNullOrBlank() -> Theme.LIGHT
        contains("SEPIA", ignoreCase = true) -> Theme.SEPIA
        contains("NIGHT", ignoreCase = true) ||
            contains("DARK", ignoreCase = true) ||
            contains("BLACK", ignoreCase = true) ||
            contains("OLED", ignoreCase = true) ||
            contains("AMOLED", ignoreCase = true) -> Theme.DARK
        else -> Theme.LIGHT
    }
}.getOrNull()

private fun String?.toReadiumTextAlign(): TextAlign = when (this?.lowercase()) {
    "center" -> TextAlign.CENTER
    "left" -> TextAlign.LEFT
    "right" -> TextAlign.RIGHT
    "start" -> TextAlign.START
    "end" -> TextAlign.END
    else -> TextAlign.JUSTIFY
}
