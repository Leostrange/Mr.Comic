package io.leostrange.mrcomic.feature.library.opds

import io.leostrange.mrcomic.core.model.OpdsCatalogSource
import io.leostrange.mrcomic.core.model.OpdsEntry
import io.leostrange.mrcomic.core.model.OpdsFeed
import java.io.File

/** UI state for the OPDS catalog browser. */
data class OpdsCatalogUiState(
    val catalogs: List<OpdsCatalogSource> = emptyList(),
    val currentFeed: OpdsFeed? = null,
    val feedStack: List<String> = emptyList(),
    val isLoading: Boolean = false,
    val error: String? = null,
    val searchQuery: String = "",
    val isSearchMode: Boolean = false,
    val downloadProgress: Map<String, Float> = emptyMap(),
    val downloadedBooks: List<File> = emptyList(),
    val failedDownload: OpdsEntry? = null,
    val showCatalogPicker: Boolean = true
) {
    /** Backwards-compatible view of the first queued download result. */
    val downloadedBook: File?
        get() = downloadedBooks.firstOrNull()
}
