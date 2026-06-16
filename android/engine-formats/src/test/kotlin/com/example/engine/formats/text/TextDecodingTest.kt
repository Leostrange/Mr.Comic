package com.example.engine.formats.text

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.nio.charset.Charset

class TextDecodingTest {

    @Test
    fun decodesValidUtf8WithoutBom() {
        val bytes = "Cwm fjord bank glyphs.".toByteArray(Charsets.UTF_8)

        val decoded = decodeTextBytes(bytes)

        assertEquals("Cwm fjord bank glyphs.", decoded)
    }

    @Test
    fun decodesWindows1252WhenUtf8IsInvalid() {
        val original = "These smart quotes should survive: “test”"
        val bytes = original.toByteArray(Charset.forName("windows-1252"))

        val decoded = decodeTextBytes(bytes)

        assertEquals(original, decoded)
    }

    @Test
    fun prefersWindows1251ForBomlessCyrillicText() {
        val original = "Привет, мир. Это проверка cp1251."
        val bytes = original.toByteArray(Charset.forName("windows-1251"))

        val decoded = decodeTextBytes(bytes)

        assertEquals(original, decoded)
    }

    @Test
    fun detectsUtf16LeWithoutBom() {
        val original = "Hello from UTF-16"
        val bytes = original.toByteArray(Charsets.UTF_16LE)

        val decoded = decodeTextBytes(bytes)

        assertEquals(original, decoded)
    }

    @Test
    fun decodesWesternCorpusSampleWithoutReplacementGlyphs() {
        val samplePath = locateCorpusFile("txt_win1252_tika.txt")
        assumeTrue("real corpus sample not available", samplePath.exists())

        val decoded = decodeTextBytes(samplePath.readBytes())

        assertTrue(decoded.contains("smart quotes"))
        assertTrue(decoded.contains("“windows”"))
        assertTrue(!decoded.contains('�'))
    }

    private fun locateCorpusFile(name: String): java.io.File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = java.io.File(userDir).absoluteFile
        repeat(6) {
            val candidate = java.io.File(current, "samples/format-real-corpus/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        return java.io.File(userDir, name)
    }
}
