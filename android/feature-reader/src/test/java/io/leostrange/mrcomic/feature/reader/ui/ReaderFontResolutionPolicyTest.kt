package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * ARC-11 S6: font resolution policy tests (plain JUnit, no Android).
 */
class ReaderFontResolutionPolicyTest {

    private val builtIn = setOf(
        "Georgia", "Merriweather", "Open Sans", "Roboto Slab",
        "PT Serif", "Literata", "Lora", "Source Serif 4"
    )
    private val custom = setOf("My Fancy Font", "Some Imported Font")

    @Test
    fun resolve_builtIn_exactMatch() {
        assertEquals("Merriweather", ReaderFontResolutionPolicy.resolveFamily(
            selectedFamily = "Merriweather",
            builtInFamilies = builtIn,
            customFamilies = custom
        ))
    }

    @Test
    fun resolve_custom_exactMatch() {
        assertEquals("My Fancy Font", ReaderFontResolutionPolicy.resolveFamily(
            selectedFamily = "My Fancy Font",
            builtInFamilies = builtIn,
            customFamilies = custom
        ))
    }

    @Test
    fun resolve_null_fallsBack_toGeorgia() {
        assertEquals("Georgia", ReaderFontResolutionPolicy.resolveFamily(
            selectedFamily = null,
            builtInFamilies = builtIn,
            customFamilies = custom
        ))
    }

    @Test
    fun resolve_blank_fallsBack_toGeorgia() {
        assertEquals("Georgia", ReaderFontResolutionPolicy.resolveFamily(
            selectedFamily = "   ",
            builtInFamilies = builtIn,
            customFamilies = custom
        ))
    }

    @Test
    fun resolve_unknown_fallsBack_toGeorgia() {
        assertEquals("Georgia", ReaderFontResolutionPolicy.resolveFamily(
            selectedFamily = "BogusFont",
            builtInFamilies = builtIn,
            customFamilies = custom
        ))
    }

    @Test
    fun resolve_caseSensitive() {
        // "merriweather" != "Merriweather"
        assertEquals("Georgia", ReaderFontResolutionPolicy.resolveFamily(
            selectedFamily = "merriweather",
            builtInFamilies = builtIn,
            customFamilies = custom
        ))
    }

    @Test
    fun isBuiltIn_true() {
        assertTrue(ReaderFontResolutionPolicy.isBuiltIn("Georgia", builtIn))
    }

    @Test
    fun isBuiltIn_false_forCustom() {
        assertFalse(ReaderFontResolutionPolicy.isBuiltIn("My Fancy Font", builtIn))
    }

    @Test
    fun isEmpty_customFontResolution() {
        assertEquals("Georgia", ReaderFontResolutionPolicy.resolveFamily(
            selectedFamily = "My Fancy Font",
            builtInFamilies = builtIn,
            customFamilies = emptySet()
        ))
    }

    @Test
    fun resolve_worksWithEmptyBuiltInSet() {
        assertEquals("Georgia", ReaderFontResolutionPolicy.resolveFamily(
            selectedFamily = "Literata",
            builtInFamilies = emptySet(),
            customFamilies = custom
        ))
    }
}
