package io.leostrange.mrcomic.feature.library

import io.leostrange.mrcomic.core.model.Comic

internal data class LibraryScreenStateFacts(
    val uniqueAuthorCount: Int,
    val uniqueGenreCount: Int,
    val preferredQuestSeriesName: String?
)

internal fun resolveLibraryScreenStateFacts(
    rawAuthors: List<String?>,
    rawGenres: List<String?>,
    recentlyRead: List<Comic>
): LibraryScreenStateFacts = LibraryScreenStateFacts(
    uniqueAuthorCount = rawAuthors.normalizedDistinctCount(),
    uniqueGenreCount = rawGenres.normalizedDistinctCount(),
    preferredQuestSeriesName = recentlyRead.firstOrNull()
        ?.series
        ?.trim()
        ?.takeIf { it.isNotBlank() }
)

private fun List<String?>.normalizedDistinctCount(): Int = mapNotNull { value ->
    value?.trim()?.takeIf { it.isNotBlank() }
}.distinct().size
