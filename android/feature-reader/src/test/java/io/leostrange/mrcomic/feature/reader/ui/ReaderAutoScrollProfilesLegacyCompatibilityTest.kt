package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderAutoScrollProfilesLegacyCompatibilityTest {
    @Test
    fun keyFor_eachReadingModeIsUnique() {
        val keys = setOf(
            ReaderAutoScrollProfiles.keyFor(ReadingMode.PAGE_LTR).name,
            ReaderAutoScrollProfiles.keyFor(ReadingMode.PAGE_RTL).name,
            ReaderAutoScrollProfiles.keyFor(ReadingMode.DUAL_PAGE).name,
            ReaderAutoScrollProfiles.keyFor(ReadingMode.WEBTOON).name,
        )
        assertEquals(4, keys.size)
    }

    @Test
    fun next_cyclesOnlyAmongSupportedPersistedPresets() {
        assertEquals(80f, ReaderAutoScrollProfiles.next(30f))
        assertEquals(180f, ReaderAutoScrollProfiles.next(80f))
        assertEquals(30f, ReaderAutoScrollProfiles.next(180f))
        assertEquals(30f, ReaderAutoScrollProfiles.next(0f))
    }

    @Test
    fun sanitize_recoversAValidPresetFromLegacyOrInvalidValue() {
        assertEquals(30f, ReaderAutoScrollProfiles.sanitize(0f))
        assertEquals(80f, ReaderAutoScrollProfiles.sanitize(77f))
        assertEquals(180f, ReaderAutoScrollProfiles.sanitize(500f))
    }
}
