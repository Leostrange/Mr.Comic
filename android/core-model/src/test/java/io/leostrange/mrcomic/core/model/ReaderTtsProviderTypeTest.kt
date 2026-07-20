package io.leostrange.mrcomic.core.model

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderTtsProviderTypeTest {

    @Test
    fun fromStored_defaults_to_system() {
        assertEquals(ReaderTtsProviderType.SYSTEM, ReaderTtsProviderType.fromStored(null))
        assertEquals(ReaderTtsProviderType.SYSTEM, ReaderTtsProviderType.fromStored("unknown"))
    }

    @Test
    fun fromStored_matches_known_value() {
        assertEquals(ReaderTtsProviderType.OPENAI, ReaderTtsProviderType.fromStored("OPENAI"))
        assertEquals(ReaderTtsProviderType.AZURE, ReaderTtsProviderType.fromStored("azure"))
    }
}
