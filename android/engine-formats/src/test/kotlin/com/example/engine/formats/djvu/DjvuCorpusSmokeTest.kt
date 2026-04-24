package com.example.engine.formats.djvu

import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.io.File

class DjvuCorpusSmokeTest {

    @Test
    fun sampleDjvuFirstPageAtLeastProducesStructuredSource() {
        val sample = locateSample("novaya_teoriya_razvitiya_obshchestva_bez_oshibok_marksa_i_le.djvu")
        val probe = sample.inputStream().use(DjvuProbe::probe)
        assertNotNull("Expected DjVu sample to be probeable", probe)
    }

    @Test
    fun sampleDjvuFirstPageExtractsReadableTextLayer() {
        val sample = locateSample("novaya_teoriya_razvitiya_obshchestva_bez_oshibok_marksa_i_le.djvu")
        val bytes = sample.readBytes()
        val probe = sample.inputStream().use(DjvuProbe::probe) ?: error("probe failed")
        val page = probe.pages.first()
        val rawPageBytes = bytes.copyOfRange(
            page.fileOffset!!.toInt(),
            (page.fileOffset + page.byteLength!!).toInt()
        )
        val standalone = buildStandaloneDjvuDocumentBytes(rawPageBytes) ?: error("standalone failed")
        val txtzPayload = extractChunkPayload(standalone, "TXTz")
        val textLayer = extractDjvuTextLayer(standalone)
        val compressedText = hasCompressedDjvuTextLayer(standalone)
        val annotations = extractDjvuAnnotations(standalone)

        assertNotNull("Expected TXTz payload in the sample", txtzPayload)
        assertNotNull("Expected readable DjVu text layer", textLayer)
        assertTrue(
            "Expected decoded text layer to contain sample title",
            textLayer!!.text.contains("Новая теория", ignoreCase = true)
        )
        assertFalse("Expected compressed-text fallback to be bypassed", compressedText)
        assertTrue(
            "Expected annotations to be absent or secondary on the first page",
            annotations == null || annotations.text.length < textLayer.text.length
        )
    }

    @Test
    fun sampleDjvuTextHtmlAvoidsDiagnosticChrome() {
        val html = buildDjvuTextLayerHtml(
            fileName = "novaya_teoriya_razvitiya_obshchestva_bez_oshibok_marksa_i_le.djvu",
            pageIndex = 0,
            totalPages = 1,
            textLayer = DjvuTextLayer(
                text = "Новая теория развития общества\n\nПервая глава",
                sourceChunkId = "TXTz",
                isCompressed = true
            ),
            hasCompressedFallback = false,
            annotations = null
        )

        assertTrue(html.contains("Новая теория развития общества"))
        assertFalse(html.contains("Страница 1 из", ignoreCase = true))
        assertFalse(html.contains("novaya_teoriya", ignoreCase = true))
    }

    private fun locateSample(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(6) {
            val candidate = File(current, "Epub bug/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        val fallback = File(userDir, name)
        assumeTrue("Optional local DjVu sample missing: $name", fallback.exists())
        return fallback
    }

    private fun extractChunkPayload(documentBytes: ByteArray, chunkId: String): ByteArray? {
        var offset = 16
        while (offset + 8 <= documentBytes.size) {
            val currentChunkId = documentBytes.copyOfRange(offset, offset + 4).decodeToString()
            val chunkSize = ((documentBytes[offset + 4].toInt() and 0xFF) shl 24) or
                ((documentBytes[offset + 5].toInt() and 0xFF) shl 16) or
                ((documentBytes[offset + 6].toInt() and 0xFF) shl 8) or
                (documentBytes[offset + 7].toInt() and 0xFF)
            val payloadStart = offset + 8
            val payloadEnd = payloadStart + chunkSize
            if (payloadEnd > documentBytes.size) return null
            if (currentChunkId == chunkId) {
                return documentBytes.copyOfRange(payloadStart, payloadEnd)
            }
            offset = payloadEnd + if (chunkSize % 2 == 1) 1 else 0
        }
        return null
    }
}
