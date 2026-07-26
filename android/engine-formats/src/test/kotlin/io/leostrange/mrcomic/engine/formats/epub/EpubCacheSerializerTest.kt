package io.leostrange.mrcomic.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Test

class EpubCacheSerializerTest {

    @Test
    fun `manifest round-trip preserves all fields`() {
        val original = ManifestBlueprint(
            manifest = mapOf("ch1" to "chapter1.xhtml", "ch2" to "chapter2.xhtml"),
            spine = listOf("ch1", "ch2"),
            ncxId = "ncx",
            opfDir = "OEBPS",
            flavor = "standard",
            repairFrontMatter = false
        )
        val json = EpubCacheSerializer.serializeManifestBlueprint(original)
        val restored = EpubCacheSerializer.deserializeManifestBlueprint(json)

        assertNotNull(restored)
        assertEquals(original.manifest, restored!!.manifest)
        assertEquals(original.spine, restored.spine)
        assertEquals(original.ncxId, restored.ncxId)
        assertEquals(original.opfDir, restored.opfDir)
        assertEquals(original.flavor, restored.flavor)
        assertEquals(original.repairFrontMatter, restored.repairFrontMatter)
    }

    @Test
    fun `manifest deserialize rejects wrong version`() {
        val json = """{"version":999,"manifest":{"a":"b"},"spine":["a"],"ncxId":null,"opfDir":"","flavor":"standard","repairFrontMatter":false}"""
        assertNull(EpubCacheSerializer.deserializeManifestBlueprint(json))
    }

    @Test
    fun `manifest deserialize rejects empty manifest`() {
        val json = """{"version":${EpubCacheSerializer.MANIFEST_CACHE_VERSION},"manifest":{},"spine":["a"],"ncxId":null,"opfDir":"","flavor":"standard","repairFrontMatter":false}"""
        assertNull(EpubCacheSerializer.deserializeManifestBlueprint(json))
    }

    @Test
    fun `manifest deserialize rejects empty spine`() {
        val json = """{"version":${EpubCacheSerializer.MANIFEST_CACHE_VERSION},"manifest":{"a":"b"},"spine":[],"ncxId":null,"opfDir":"","flavor":"standard","repairFrontMatter":false}"""
        assertNull(EpubCacheSerializer.deserializeManifestBlueprint(json))
    }

    @Test
    fun `manifest deserialize defaults blank flavor to standard`() {
        val original = ManifestBlueprint(
            manifest = mapOf("ch1" to "chapter1.xhtml"),
            spine = listOf("ch1"),
            ncxId = null,
            opfDir = "OEBPS",
            flavor = "",
            repairFrontMatter = false
        )
        val json = EpubCacheSerializer.serializeManifestBlueprint(original)
        val restored = EpubCacheSerializer.deserializeManifestBlueprint(json)
        assertNotNull(restored)
        assertEquals("standard", restored!!.flavor)
    }

    @Test
    fun `parsed epub round-trip preserves pages`() {
        val original = ParsedEpub(
            pages = listOf(
                EpubPage.Image(entry = "img/cover.jpg"),
                EpubPage.Html(entry = "text/ch1.xhtml", opfDir = "OEBPS", chunkIndex = 0, totalChunks = 1),
                EpubPage.Html(entry = "text/ch1.xhtml", opfDir = "OEBPS", chunkIndex = 1, totalChunks = 2),
                EpubPage.SyntheticHtml(
                    entry = "synthetic_notes_0.html",
                    html = "<html><body>notes</body></html>",
                    sourceEntries = listOf("notes1.html", "notes2.html"),
                    chunkIndex = 0,
                    totalChunks = 1
                )
            )
        )
        val json = EpubCacheSerializer.serializeParsedEpub(original)
        val restored = EpubCacheSerializer.deserializeParsedEpub(json)

        assertNotNull(restored)
        assertEquals(original.pages.size, restored!!.pages.size)
        assertEquals(original.pages[0], restored.pages[0])
        assertEquals(original.pages[1], restored.pages[1])
        assertEquals(original.pages[2], restored.pages[2])
        assertEquals(original.pages[3], restored.pages[3])
    }

    @Test
    fun `parsed epub deserialize rejects wrong version`() {
        val json = """{"version":999,"pages":[]}"""
        assertNull(EpubCacheSerializer.deserializeParsedEpub(json))
    }

    @Test
    fun `parsed epub deserialize rejects empty pages`() {
        val json = """{"version":${EpubCacheSerializer.STRUCTURE_CACHE_VERSION},"pages":[]}"""
        assertNull(EpubCacheSerializer.deserializeParsedEpub(json))
    }
}
