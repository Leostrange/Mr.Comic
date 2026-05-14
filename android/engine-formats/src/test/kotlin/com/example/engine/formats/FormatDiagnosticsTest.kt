package com.example.engine.formats

import android.content.Context
import com.example.core.model.ComicFormat
import com.example.engine.formats.epub.EpubFormatReader
import com.example.engine.formats.text.TextFormatReader
import io.mockk.mockk
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.io.File

class FormatDiagnosticsTest {
    private val testContext: Context
        get() = mockk(relaxed = true)

    @Test
    fun dumpSkottEpubFrontMatter() = runBlocking {
        val sample = locate("S_Skott_Protiv_zerna_glubinnaya_istoriya_drevneyshih_gosudarstv.epub")
        val reader = EpubFormatReader(testContext, sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            val firstPage = reader.getHtmlPage(0).orEmpty()
            val coverPage = reader.resolveHrefToPage("cover.xhtml")
            val ch1Page = reader.resolveHrefToPage("ch1.xhtml")
            assertTrue("Expected SKOTT EPUB pages", pageCount > 0)
            assertTrue("Expected first SKOTT page HTML", firstPage.isNotBlank())
            assertNotNull("Expected cover.xhtml href target", coverPage)
            assertNotNull("Expected ch1.xhtml href target", ch1Page)
            println("SKOTT pageCount=$pageCount")
            println("resolve cover=$coverPage")
            println("resolve ch1=$ch1Page")
            println("resolve ch1-1=" + reader.resolveHrefToPage("ch1-1.xhtml"))
            repeat(minOf(4, pageCount)) { index ->
                val html = reader.getHtmlPage(index).orEmpty()
                println("---- SKOTT PAGE $index ----")
                println(html.take(2500))
            }
        } finally {
            reader.close()
        }
    }

    @Test
    fun dumpMobiFrontMatter() = runBlocking {
        val sample = locate("Гарин_Михайловский_Корейские_сказки.mobi")
        val reader = TextFormatReader(testContext, sample.absolutePath, ComicFormat.MOBI)
        try {
            val pageCount = reader.getPageCount()
            val firstPage = reader.getHtmlPage(0).orEmpty()
            assertTrue("Expected MOBI pages", pageCount > 0)
            assertTrue("Expected first MOBI page HTML", firstPage.isNotBlank())
            println("MOBI pageCount=$pageCount")
            repeat(minOf(5, pageCount)) { index ->
                val html = reader.getHtmlPage(index).orEmpty()
                println("---- MOBI PAGE $index ----")
                println(html.take(2200))
            }
        } finally {
            reader.close()
        }
    }

    private fun locate(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(6) {
            val candidate = File(current, "Epub bug/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        val fallback = File(userDir, name)
        assumeTrue("Missing diagnostic sample: $name; searched Epub bug/ upward from $userDir", fallback.exists())
        return fallback
    }
}
