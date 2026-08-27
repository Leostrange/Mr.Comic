package io.leostrange.mrcomic.feature.reader.domain.progress

/**
 * Owns the measured visual page counts for EPUB spine sections.
 *
 * A caller always receives a sorted, immutable snapshot from the same critical
 * section as a write or reset, so progress calculation cannot observe a
 * half-cleared or partially-updated collection.
 */
internal class EpubSectionPageCountStore {
    private val lock = Any()
    private val counts = mutableMapOf<Int, Int>()
    private var sessionEstimate: Int? = null

    fun reset() {
        synchronized(lock) {
            counts.clear()
            sessionEstimate = null
        }
    }

    fun recordAndSnapshot(sectionIndex: Int, pageCount: Int): Map<Int, Int> = synchronized(lock) {
        if (sectionIndex >= 0 && pageCount > 0) {
            counts[sectionIndex] = pageCount
            if (sessionEstimate == null) sessionEstimate = pageCount
        }
        sortedSnapshot()
    }

    fun stableEstimate(): Int? = synchronized(lock) { sessionEstimate }

    fun snapshot(): Map<Int, Int> = synchronized(lock) {
        sortedSnapshot()
    }

    private fun sortedSnapshot(): Map<Int, Int> = counts.toSortedMap().toMap()
}
