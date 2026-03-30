package com.example.engine.formats

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import com.example.engine.formats.epub.EpubFormatReader
import com.example.engine.formats.text.TextFormatReader
import kotlinx.coroutines.runBlocking
import org.junit.Test
import java.io.File

class FormatDiagnosticsTest {

    @Test
    fun dumpSkottEpubFrontMatter() = runBlocking {
        val sample = locate("S_Skott_Protiv_zerna_glubinnaya_istoriya_drevneyshih_gosudarstv.epub")
        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            println("SKOTT pageCount=" + reader.getPageCount())
            println("resolve cover=" + reader.resolveHrefToPage("cover.xhtml"))
            println("resolve ch1=" + reader.resolveHrefToPage("ch1.xhtml"))
            println("resolve ch1-1=" + reader.resolveHrefToPage("ch1-1.xhtml"))
            repeat(minOf(4, reader.getPageCount())) { index ->
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
        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            println("MOBI pageCount=" + reader.getPageCount())
            repeat(minOf(5, reader.getPageCount())) { index ->
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
        return File(userDir, name)
    }
}
