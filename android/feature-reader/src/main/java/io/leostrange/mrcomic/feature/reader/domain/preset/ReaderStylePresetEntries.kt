package io.leostrange.mrcomic.feature.reader.domain.preset

internal object ReaderStylePresetEntries {
    private const val LegacySlotCount = 3

    fun entryAtSlot(
        entries: List<ReaderStylePresetEntry>,
        slot: Int
    ): ReaderStylePresetEntry? = entries.getOrNull(slot.coerceIn(1, LegacySlotCount) - 1)

    fun prepend(
        entries: List<ReaderStylePresetEntry>,
        entry: ReaderStylePresetEntry
    ): List<ReaderStylePresetEntry> = normalize(listOf(entry) + entries)

    fun overwrite(
        entries: List<ReaderStylePresetEntry>,
        id: String,
        snapshot: ReaderStylePresetSnapshot
    ): List<ReaderStylePresetEntry> = entries.map { entry ->
        if (entry.id == id) entry.copy(snapshot = snapshot) else entry
    }

    fun delete(entries: List<ReaderStylePresetEntry>, id: String): List<ReaderStylePresetEntry> =
        entries.filterNot { it.id == id }

    fun rename(
        entries: List<ReaderStylePresetEntry>,
        id: String,
        displayName: String
    ): List<ReaderStylePresetEntry> {
        val normalizedName = displayName.trim().takeIf { it.isNotEmpty() }
        return entries.map { entry ->
            if (entry.id == id) entry.copy(snapshot = entry.snapshot.copy(displayName = normalizedName)) else entry
        }
    }

    fun normalize(entries: List<ReaderStylePresetEntry>): List<ReaderStylePresetEntry> =
        entries.distinctBy { it.id }

    fun toLegacySlots(entries: List<ReaderStylePresetEntry>): List<ReaderStylePresetSlot> =
        (1..LegacySlotCount).map { index ->
            ReaderStylePresetSlot(
                index = index,
                serialized = entries.getOrNull(index - 1)?.snapshot?.serialize()
            )
        }
}
