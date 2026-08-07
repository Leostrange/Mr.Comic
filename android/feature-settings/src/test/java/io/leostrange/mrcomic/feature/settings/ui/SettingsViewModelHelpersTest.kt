package io.leostrange.mrcomic.feature.settings.ui

import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
class SettingsViewModelHelpersTest {

    // ── JSONObject.firstString ──

    @Test
    fun `firstString returns first matching key`() {
        val json = JSONObject("""{"name":"Alice","title":"","nullVal":"null"}""")
        assertEquals("Alice", json.firstString("name", "title"))
    }

    @Test
    fun `firstString skips empty and null strings`() {
        val json = JSONObject("""{"name":"","title":"Alice","nullVal":"null"}""")
        assertEquals("Alice", json.firstString("name", "title"))
    }

    @Test
    fun `firstString skips literal null string`() {
        val json = JSONObject("""{"name":"null"}""")
        assertNull(json.firstString("name"))
    }

    @Test
    fun `firstString returns null when no key matches`() {
        val json = JSONObject("""{"name":""}""")
        assertNull(json.firstString("name", "title"))
    }

    @Test
    fun `firstString returns null when key is missing`() {
        val json = JSONObject("""{}""")
        assertNull(json.firstString("name"))
    }

    @Test
    fun `firstString trims whitespace from result`() {
        val json = JSONObject("""{"name":"  Alice  "}""")
        assertEquals("Alice", json.firstString("name"))
    }

    // ── JSONObject.firstInt ──

    @Test
    fun `firstInt returns integer value`() {
        val json = JSONObject("""{"count":42}""")
        assertEquals(42, json.firstInt("count"))
    }

    @Test
    fun `firstInt reads float and truncates`() {
        val json = JSONObject("""{"count":42.9}""")
        assertEquals(42, json.firstInt("count"))
    }

    @Test
    fun `firstInt reads string integer`() {
        val json = JSONObject("""{"count":"42"}""")
        assertEquals(42, json.firstInt("count"))
    }

    @Test
    fun `firstInt returns null when missing`() {
        val json = JSONObject("""{}""")
        assertNull(json.firstInt("count"))
    }

    // ── JSONObject.firstFloat ──

    @Test
    fun `firstFloat returns float value`() {
        val json = JSONObject("""{"ratio":1.5}""")
        assertEquals(1.5f, json.firstFloat("ratio"))
    }

    @Test
    fun `firstFloat reads string with comma`() {
        val json = JSONObject("""{"ratio":"1,5"}""")
        assertEquals(1.5f, json.firstFloat("ratio"))
    }

    @Test
    fun `firstFloat returns null when missing`() {
        val json = JSONObject("""{}""")
        assertNull(json.firstFloat("ratio"))
    }

    // ── JSONObject.firstBoolean ──

    @Test
    fun `firstBoolean reads boolean true`() {
        val json = JSONObject("""{"enabled":true}""")
        assertEquals(true, json.firstBoolean("enabled"))
    }

    @Test
    fun `firstBoolean reads int 1 as true`() {
        val json = JSONObject("""{"enabled":1}""")
        assertEquals(true, json.firstBoolean("enabled"))
    }

    @Test
    fun `firstBoolean reads int 0 as false`() {
        val json = JSONObject("""{"enabled":0}""")
        assertEquals(false, json.firstBoolean("enabled"))
    }

    @Test
    fun `firstBoolean reads string true variants`() {
        assertEquals(true, JSONObject("""{"enabled":"true"}""").firstBoolean("enabled"))
        assertEquals(true, JSONObject("""{"enabled":"1"}""").firstBoolean("enabled"))
        assertEquals(true, JSONObject("""{"enabled":"yes"}""").firstBoolean("enabled"))
        assertEquals(true, JSONObject("""{"enabled":"on"}""").firstBoolean("enabled"))
    }

    @Test
    fun `firstBoolean reads string false variants`() {
        assertEquals(false, JSONObject("""{"enabled":"false"}""").firstBoolean("enabled"))
        assertEquals(false, JSONObject("""{"enabled":"0"}""").firstBoolean("enabled"))
        assertEquals(false, JSONObject("""{"enabled":"no"}""").firstBoolean("enabled"))
        assertEquals(false, JSONObject("""{"enabled":"off"}""").firstBoolean("enabled"))
    }

    @Test
    fun `firstBoolean returns null for unrecognized string`() {
        assertNull(JSONObject("""{"enabled":"maybe"}""").firstBoolean("enabled"))
    }

    @Test
    fun `firstBoolean returns null when missing`() {
        assertNull(JSONObject("""{}""").firstBoolean("enabled"))
    }

    // ── normalizeImportedTextColorScheme ──

    @Test
    fun `normalizeImportedTextColorScheme maps DAY variants`() {
        assertEquals("DAY", normalizeImportedTextColorScheme("day"))
        assertEquals("DAY", normalizeImportedTextColorScheme("light"))
        assertEquals("DAY", normalizeImportedTextColorScheme("paper"))
        assertEquals("DAY", normalizeImportedTextColorScheme("default"))
    }

    @Test
    fun `normalizeImportedTextColorScheme maps SEPIA variants`() {
        assertEquals("SEPIA", normalizeImportedTextColorScheme("sepia"))
        assertEquals("SEPIA", normalizeImportedTextColorScheme("warm"))
    }

    @Test
    fun `normalizeImportedTextColorScheme maps NIGHT variants`() {
        assertEquals("NIGHT", normalizeImportedTextColorScheme("night"))
        assertEquals("NIGHT", normalizeImportedTextColorScheme("dark"))
        assertEquals("NIGHT", normalizeImportedTextColorScheme("oled"))
        assertEquals("NIGHT", normalizeImportedTextColorScheme("amoled"))
        assertEquals("NIGHT", normalizeImportedTextColorScheme("black"))
    }

    @Test
    fun `normalizeImportedTextColorScheme returns null for unknown`() {
        assertNull(normalizeImportedTextColorScheme("unknown"))
        assertNull(normalizeImportedTextColorScheme(null))
    }

    // ── normalizeImportedTextAlignment ──

    @Test
    fun `normalizeImportedTextAlignment maps justify and left`() {
        assertEquals("justify", normalizeImportedTextAlignment("justify"))
        assertEquals("justify", normalizeImportedTextAlignment("justified"))
        assertEquals("left", normalizeImportedTextAlignment("left"))
        assertEquals("left", normalizeImportedTextAlignment("start"))
    }

    @Test
    fun `normalizeImportedTextAlignment maps right and center`() {
        assertEquals("right", normalizeImportedTextAlignment("right"))
        assertEquals("right", normalizeImportedTextAlignment("end"))
        assertEquals("center", normalizeImportedTextAlignment("center"))
        assertEquals("center", normalizeImportedTextAlignment("centre"))
        assertEquals("center", normalizeImportedTextAlignment("middle"))
    }

    @Test
    fun `normalizeImportedTextAlignment returns null for unknown`() {
        assertNull(normalizeImportedTextAlignment("top"))
        assertNull(normalizeImportedTextAlignment(null))
    }

    // ── normalizeImportedPageAnimation ──

    @Test
    fun `normalizeImportedPageAnimation maps NONE and SLIDE`() {
        assertEquals("NONE", normalizeImportedPageAnimation("none"))
        assertEquals("NONE", normalizeImportedPageAnimation("off"))
        assertEquals("SLIDE", normalizeImportedPageAnimation("slide"))
        assertEquals("SLIDE", normalizeImportedPageAnimation("page"))
        assertEquals("SLIDE", normalizeImportedPageAnimation("swipe"))
    }

    @Test
    fun `normalizeImportedPageAnimation maps FADE`() {
        assertEquals("FADE", normalizeImportedPageAnimation("fade"))
        assertEquals("FADE", normalizeImportedPageAnimation("dissolve"))
    }

    @Test
    fun `normalizeImportedPageAnimation returns null for unknown`() {
        assertNull(normalizeImportedPageAnimation("bounce"))
        assertNull(normalizeImportedPageAnimation(null))
    }

    // ── formatSize ──

    @Test
    fun `formatSize formats bytes`() {
        assertEquals("0 B", formatSize(0))
        assertEquals("512 B", formatSize(512))
    }

    @Test
    fun `formatSize formats kilobytes`() {
        assertEquals("1.0 KB", formatSize(1024))
        assertEquals("15.5 KB", formatSize(15872))
    }

    @Test
    fun `formatSize formats megabytes`() {
        assertEquals("1.0 MB", formatSize(1048576))
        assertEquals("2.5 MB", formatSize(2621440))
    }

    @Test
    fun `formatSize formats gigabytes`() {
        assertEquals("1.00 GB", formatSize(1073741824))
    }

    // ── preset keys ──

    @Test
    fun `libraryThemePresetKey returns correct keys`() {
        assertEquals(
            io.leostrange.mrcomic.core.data.preferences.PreferencesKeys.LIBRARY_THEME_PRESET_1,
            libraryThemePresetKey(1)
        )
        assertEquals(
            io.leostrange.mrcomic.core.data.preferences.PreferencesKeys.LIBRARY_THEME_PRESET_2,
            libraryThemePresetKey(2)
        )
        assertEquals(
            io.leostrange.mrcomic.core.data.preferences.PreferencesKeys.LIBRARY_THEME_PRESET_3,
            libraryThemePresetKey(3)
        )
        // Clamping: values outside 1..3
        assertEquals(
            io.leostrange.mrcomic.core.data.preferences.PreferencesKeys.LIBRARY_THEME_PRESET_1,
            libraryThemePresetKey(0)
        )
        assertEquals(
            io.leostrange.mrcomic.core.data.preferences.PreferencesKeys.LIBRARY_THEME_PRESET_3,
            libraryThemePresetKey(99)
        )
    }
}
