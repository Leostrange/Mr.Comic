package io.leostrange.mrcomic.feature.reader.domain.progress

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class EpubSectionPageCountStoreTest {
    @Test
    fun recordAndSnapshot_returnsCountsInSectionOrder() {
        val store = EpubSectionPageCountStore()

        store.recordAndSnapshot(sectionIndex = 4, pageCount = 3)
        val snapshot = store.recordAndSnapshot(sectionIndex = 0, pageCount = 2)

        assertEquals(listOf(0, 4), snapshot.keys.toList())
        assertEquals(mapOf(0 to 2, 4 to 3), snapshot)
    }

    @Test
    fun reset_removesEveryPreviouslyRecordedCount() {
        val store = EpubSectionPageCountStore()
        store.recordAndSnapshot(sectionIndex = 0, pageCount = 2)

        store.reset()

        assertTrue(store.snapshot().isEmpty())
    }

    @Test
    fun invalidMeasurements_doNotChangeTheSnapshot() {
        val store = EpubSectionPageCountStore()
        store.recordAndSnapshot(sectionIndex = 1, pageCount = 4)

        val snapshot = store.recordAndSnapshot(sectionIndex = -1, pageCount = 0)

        assertEquals(mapOf(1 to 4), snapshot)
    }
}
