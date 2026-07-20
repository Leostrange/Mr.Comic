package io.leostrange.mrcomic.feature.reader.domain.preset

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ReaderStylePresetEntriesTest {
    private val first = ReaderStylePresetEntry("first", snapshot("First"))
    private val second = ReaderStylePresetEntry("second", snapshot("Second"))

    @Test
    fun entryAtSlot_clampsLegacySlotRange() {
        assertEquals(first, ReaderStylePresetEntries.entryAtSlot(listOf(first, second), 0))
        assertNull(ReaderStylePresetEntries.entryAtSlot(listOf(first, second), 99))
        assertNull(ReaderStylePresetEntries.entryAtSlot(emptyList(), 1))
    }

    @Test
    fun prepend_normalizesDuplicateIdsAndKeepsNewEntry() {
        val replacement = first.copy(snapshot = snapshot("Replacement"))

        assertEquals(listOf(replacement, second), ReaderStylePresetEntries.prepend(listOf(first, second), replacement))
    }

    @Test
    fun mutateOperations_preserveOrderAndNormalizeName() {
        val renamed = ReaderStylePresetEntries.rename(listOf(first, second), "second", "  ")
        val overwritten = ReaderStylePresetEntries.overwrite(
            renamed,
            "first",
            snapshot("Updated")
        )

        assertEquals(listOf("first", "second"), overwritten.map { it.id })
        assertEquals("Updated", overwritten.first().snapshot.displayName)
        assertNull(overwritten.last().snapshot.displayName)
        assertEquals(listOf(first), ReaderStylePresetEntries.delete(listOf(first, second), "second"))
    }

    @Test
    fun toLegacySlots_limitsSerializationToFirstThreeEntries() {
        val slots = ReaderStylePresetEntries.toLegacySlots(listOf(first, second, first.copy(id = "third"), first.copy(id = "fourth")))

        assertEquals(listOf(1, 2, 3), slots.map { it.index })
        assertEquals(3, slots.count { it.serialized != null })
    }

    private fun snapshot(displayName: String?) = ReaderStylePresetSnapshot(
        displayName = displayName,
        readerPreset = "CUSTOM",
        textFontSize = 18,
        textColorScheme = "DAY",
        textFontFamily = "Georgia",
        textLineHeight = 1.8f,
        textLetterSpacing = 0f,
        textWordSpacing = 0f,
        textParagraphSpacing = 0.2f,
        textAlignment = "left",
        textBold = false,
        brightness = 1f,
        immersiveMode = false,
        pageAnimation = "slide"
    )
}
