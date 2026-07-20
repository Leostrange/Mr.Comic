package io.leostrange.mrcomic.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Characterization tests for [EpubManifestParser].
 */
class EpubManifestParserTest {

    // ── parseOpfRegex ──────────────────────────────────────────────────────

    @Test
    fun parseOpfRegex_extractsManifestAndSpine() {
        val opf = """
            <package xmlns="http://www.idpf.org/2007/opf" version="3.0">
              <manifest>
                <item id="cover" href="cover.xhtml" media-type="application/xhtml+xml"/>
                <item id="ch1" href="ch1.xhtml" media-type="application/xhtml+xml"/>
                <item id="ch2" href="ch2.xhtml" media-type="application/xhtml+xml"/>
                <item id="ncx" href="toc.ncx" media-type="application/x-dtbncx+xml"/>
              </manifest>
              <spine toc="ncx">
                <itemref idref="cover"/>
                <itemref idref="ch1"/>
                <itemref idref="ch2"/>
              </spine>
            </package>
        """.trimIndent()

        val result = EpubManifestParser.parseOpfRegex(opf)

        assertEquals(4, result.manifest.size)
        assertEquals("cover.xhtml", result.manifest["cover"])
        assertEquals("ch1.xhtml", result.manifest["ch1"])
        assertEquals("toc.ncx", result.manifest["ncx"])
        assertEquals(listOf("cover", "ch1", "ch2"), result.spine)
        assertEquals("ncx", result.ncxId)
    }

    @Test
    fun parseOpfRegex_detectsNavProperty() {
        val opf = """
            <package xmlns="http://www.idpf.org/2007/opf" version="3.0">
              <manifest>
                <item id="nav" href="nav.xhtml" media-type="application/xhtml+xml" properties="nav"/>
                <item id="ch1" href="ch1.xhtml" media-type="application/xhtml+xml"/>
              </manifest>
              <spine>
                <itemref idref="ch1"/>
              </spine>
            </package>
        """.trimIndent()

        val result = EpubManifestParser.parseOpfRegex(opf)

        assertEquals("nav", result.ncxId)
    }

    @Test
    fun parseOpfRegex_skipsLinearNoItems() {
        val opf = """
            <package xmlns="http://www.idpf.org/2007/opf" version="3.0">
              <manifest>
                <item id="ch1" href="ch1.xhtml" media-type="application/xhtml+xml"/>
                <item id="notes" href="notes.xhtml" media-type="application/xhtml+xml"/>
              </manifest>
              <spine>
                <itemref idref="ch1"/>
                <itemref idref="notes" linear="no"/>
              </spine>
            </package>
        """.trimIndent()

        val result = EpubManifestParser.parseOpfRegex(opf)

        assertEquals(listOf("ch1"), result.spine)
    }

    @Test
    fun parseOpfRegex_handlesEmptyManifest() {
        val result = EpubManifestParser.parseOpfRegex("<package></package>")

        assertTrue(result.manifest.isEmpty())
        assertTrue(result.spine.isEmpty())
        assertNull(result.ncxId)
    }

    @Test
    fun parseOpfRegex_prefersExistingNcxId() {
        val opf = """
            <spine toc="spine-toc">
              <itemref idref="ch1"/>
            </spine>
        """.trimIndent()

        val result = EpubManifestParser.parseOpfRegex(opf, existingNcxId = "my-ncx")

        assertEquals("my-ncx", result.ncxId)
    }

    // ── detectPublisherEpub ────────────────────────────────────────────────

    @Test
    fun detectPublisherEpub_oreillyReturnsTrue() {
        // "O'Reilly" → lowercase "o'reilly" does NOT contain "oreilly" (apostrophe breaks it).
        // Use "oreilly" directly to match the function's substring check.
        assertTrue(EpubManifestParser.detectPublisherEpub(
            opfText = "oreilly publishing",
            manifest = emptyMap(),
            spine = emptyList()
        ))
    }

    @Test
    fun detectPublisherEpub_titlepageReturnsTrue() {
        assertTrue(EpubManifestParser.detectPublisherEpub(
            opfText = "",
            manifest = mapOf("id1" to "OPS/titlepage.xhtml"),
            spine = listOf("id1")
        ))
    }

    @Test
    fun detectPublisherEpub_coverWithManySpineReturnsTrue() {
        assertTrue(EpubManifestParser.detectPublisherEpub(
            opfText = "",
            manifest = mapOf("cover" to "cover.xhtml", "a" to "a.xhtml", "b" to "b.xhtml", "c" to "c.xhtml", "d" to "d.xhtml"),
            spine = listOf("cover", "a", "b", "c", "d")
        ))
    }

    @Test
    fun detectPublisherEpub_simpleEpubReturnsFalse() {
        assertFalse(EpubManifestParser.detectPublisherEpub(
            opfText = "standard epub",
            manifest = mapOf("ch1" to "ch1.xhtml"),
            spine = listOf("ch1")
        ))
    }

    // ── shouldRepairFrontMatter ────────────────────────────────────────────

    @Test
    fun shouldRepairFrontMatter_coverNotFirstReturnsTrue() {
        assertTrue(EpubManifestParser.shouldRepairFrontMatter(
            opfText = "cover.xhtml ch1.xhtml",
            manifest = mapOf("ch1" to "ch1.xhtml", "cover" to "cover.xhtml"),
            spine = listOf("ch1", "cover")
        ))
    }

    @Test
    fun shouldRepairFrontMatter_coverFirstReturnsFalse() {
        assertFalse(EpubManifestParser.shouldRepairFrontMatter(
            opfText = "cover.xhtml ch1.xhtml",
            manifest = mapOf("cover" to "cover.xhtml", "ch1" to "ch1.xhtml"),
            spine = listOf("cover", "ch1")
        ))
    }

    @Test
    fun shouldRepairFrontMatter_noCoverReturnsFalse() {
        assertFalse(EpubManifestParser.shouldRepairFrontMatter(
            opfText = "ch1.xhtml",
            manifest = mapOf("ch1" to "ch1.xhtml"),
            spine = listOf("ch1")
        ))
    }

    // ── extractOpfPathFromContainer ────────────────────────────────────────

    @Test
    fun extractOpfPathFromContainer_extractsPath() {
        val container = """
            <?xml version="1.0" encoding="UTF-8"?>
            <container xmlns="urn:oasis:names:tc:opendocument:xmlns:container" version="1.0">
              <rootfiles>
                <rootfile full-path="OEBPS/content.opf" media-type="application/oebps-package+xml"/>
              </rootfiles>
            </container>
        """.trimIndent()

        assertEquals("OEBPS/content.opf", EpubManifestParser.extractOpfPathFromContainer(container))
    }

    @Test
    fun extractOpfPathFromContainer_returnsNullForMissing() {
        assertNull(EpubManifestParser.extractOpfPathFromContainer("<container></container>"))
    }

    @Test
    fun extractOpfPathFromContainer_decodesUrl() {
        val container = """<rootfile full-path="OEBPS/%D0%BA%D0%BD%D0%B8%D0%B3%D0%B0.opf"/>"""

        assertNotNull(EpubManifestParser.extractOpfPathFromContainer(container))
    }
}
