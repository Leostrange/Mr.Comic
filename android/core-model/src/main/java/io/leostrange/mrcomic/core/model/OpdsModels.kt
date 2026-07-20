package io.leostrange.mrcomic.core.model

/**
 * OPDS (Open Publication Distribution System) data models.
 *
 * OPDS is an Atom/XML-based standard for distributing electronic books.
 * Catalogs contain feeds with navigation links and book acquisition entries.
 */

/** A top-level OPDS feed (Atom <feed> document). */
data class OpdsFeed(
    val title: String,
    val entries: List<OpdsEntry>,
    val links: List<OpdsLink>,
    val nextLink: String? = null,
    val searchLink: String? = null
)

/** A single entry in an OPDS feed (Atom <entry>). */
data class OpdsEntry(
    val title: String,
    val author: String? = null,
    val summary: String? = null,
    val thumbnailUrl: String? = null,
    val updated: String? = null,
    val links: List<OpdsLink> = emptyList()
) {
    /** Returns the first acquisition link (downloadable book). */
    val acquisitionLink: OpdsLink?
        get() = links.firstOrNull { it.isAcquisition }

    /** Returns the first navigation link (sub-catalog). */
    val navigationLink: OpdsLink?
        get() = links.firstOrNull { it.isNavigation }

    /** Whether this entry is a downloadable book. */
    val isBook: Boolean
        get() = acquisitionLink != null

    /** Whether this entry is a sub-catalog / category. */
    val isCatalog: Boolean
        get() = navigationLink != null && !isBook
}

/** A link within an OPDS entry or feed. */
data class OpdsLink(
    val href: String,
    val rel: String,
    val type: String? = null,
    val title: String? = null
) {
    /** Whether this link is an acquisition (download) link. */
    val isAcquisition: Boolean
        get() = rel.startsWith("http://opds-spec.org/acquisition") ||
            rel == "http://opds-spec.org/acquisition/open-access"

    /** Whether this link is a navigation (sub-catalog) link. */
    val isNavigation: Boolean
        get() = rel == "subsection" || rel == "alternate" ||
            rel == "http://opds-spec.org/featured" ||
            rel == "http://opds-spec.org/new" ||
            rel == "http://opds-spec.org/popular"

    /** Whether this link is a search link. */
    val isSearch: Boolean
        get() = rel == "search" || rel == "http://opds-spec.org/search"

    /** Whether this link points to a next page. */
    val isNext: Boolean
        get() = rel == "next"

    /** Whether this link is a thumbnail image. */
    val isThumbnail: Boolean
        get() = rel == "http://opds-spec.org/image/thumbnail" ||
            rel == "http://opds-spec.org/thumbnail"
}

/** A pre-configured OPDS catalog source. */
data class OpdsCatalogSource(
    val name: String,
    val url: String,
    val description: String = "",
    val isSearchable: Boolean = false
)
