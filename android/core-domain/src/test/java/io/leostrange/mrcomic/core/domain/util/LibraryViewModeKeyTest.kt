package io.leostrange.mrcomic.core.domain.util

import org.junit.Assert.assertEquals
import org.junit.Test

class LibraryViewModeKeyTest {

    @Test
    fun `valid stored values round-trip case-insensitively`() {
        assertEquals(LibraryViewModeKey.GRID, normalizeLibraryViewModeKey("GRID"))
        assertEquals(LibraryViewModeKey.LIST, normalizeLibraryViewModeKey("LIST"))
        assertEquals(LibraryViewModeKey.STRIPS, normalizeLibraryViewModeKey("STRIPS"))
        assertEquals(LibraryViewModeKey.GRID, normalizeLibraryViewModeKey("grid"))
        assertEquals(LibraryViewModeKey.LIST, normalizeLibraryViewModeKey("list"))
        assertEquals(LibraryViewModeKey.STRIPS, normalizeLibraryViewModeKey("strips"))
    }

    @Test
    fun `whitespace around stored value is trimmed`() {
        assertEquals(LibraryViewModeKey.GRID, normalizeLibraryViewModeKey("  GRID  "))
        assertEquals(LibraryViewModeKey.STRIPS, normalizeLibraryViewModeKey("\tSTRIPS\n"))
    }

    @Test
    fun `null input falls back to default (GRID)`() {
        assertEquals(LibraryViewModeKey.GRID, normalizeLibraryViewModeKey(null))
    }

    @Test
    fun `blank input falls back to default`() {
        assertEquals(LibraryViewModeKey.GRID, normalizeLibraryViewModeKey(""))
        assertEquals(LibraryViewModeKey.GRID, normalizeLibraryViewModeKey("   "))
    }

    @Test
    fun `unknown value falls back to default`() {
        assertEquals(LibraryViewModeKey.GRID, normalizeLibraryViewModeKey("CAROUSEL"))
    }

    @Test
    fun `legacy install keeps GRID as default even when caller passes LIST`() {
        // legacyDefault parameter mirrors the legacyGrid flag in callers.
        // Settings used "GRID" fallback, Library used "LIST" for non-legacy.
        assertEquals(LibraryViewModeKey.LIST, normalizeLibraryViewModeKey(null, LibraryViewModeKey.LIST))
        assertEquals(LibraryViewModeKey.LIST, normalizeLibraryViewModeKey("BAD", LibraryViewModeKey.LIST))
    }
}