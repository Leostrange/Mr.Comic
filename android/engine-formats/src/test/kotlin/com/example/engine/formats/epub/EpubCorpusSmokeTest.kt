package com.example.engine.formats.epub

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

class EpubCorpusSmokeTest {

    @Test
    fun skottSampleBuildsVisibleHtmlPages() = runBlocking {
        val sample = locateSample("S_Skott_Protiv_zerna_glubinnaya_istoriya_drevneyshih_gosudarstv.epub")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected multiple EPUB pages, got $pageCount", pageCount > 5)

            val firstPages = (0 until minOf(pageCount, 4))
                .mapNotNull { index -> reader.getHtmlPage(index) }

            assertTrue("Expected at least one visible HTML page", firstPages.isNotEmpty())
            val joined = firstPages.joinToString("\n")
            val visibleText = joined
                .replace(Regex("<[^>]+>"), " ")
                .replace(Regex("\\s+"), " ")
                .trim()
            assertTrue(
                "Expected visible text or cover media in rendered HTML",
                visibleText.length > 120 || joined.contains("<img", ignoreCase = true)
            )
            assertTrue(
                "Expected rendered EPUB markup to be normalized",
                !joined.contains("<span><div", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun vibeSampleKeepsRichPublisherMarkup() = runBlocking {
        val sample = locateSample("vibe.coding.the.future.of.programming.epub")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount > 1)

            val firstPage = (0 until minOf(pageCount, 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .firstOrNull { html ->
                    html.contains("Vibe Coding", ignoreCase = true) ||
                        html.contains("Early Release Readers", ignoreCase = true)
                }

            assertNotNull("Expected a rich publisher page near the beginning", firstPage)
            assertTrue(
                "Expected publisher CSS classes/markup to survive rendering",
                firstPage!!.contains("class=", ignoreCase = true) ||
                    firstPage.contains("<section", ignoreCase = true) ||
                    firstPage.contains("<figure", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    private fun locateSample(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(6) {
            val candidate = File(current, "Epub bug/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        return File(userDir, name)
    }
}
