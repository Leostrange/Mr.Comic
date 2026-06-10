package com.example.engine.formats

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import com.example.engine.formats.epub.EpubFormatReader
import com.example.engine.formats.text.TextFormatReader
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
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
    fun dumpPodSolntsemEpubPages() = runBlocking {
        val sample = locate("Под солнцем_868805.epub")
        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            println("POD pageCount=" + reader.getPageCount())
            repeat(minOf(15, reader.getPageCount())) { index ->
                val html = reader.getHtmlPage(index).orEmpty()
                val bodyText = Jsoup.parse(html).body().text()
                    .replace(Regex("\\s+"), " ")
                    .trim()
                val visible = html
                    .replace(Regex("<[^>]+>"), " ")
                    .replace(Regex("\\s+"), " ")
                    .trim()
                println("---- POD PAGE $index len=${html.length} visible=${visible.length} body=${bodyText.length} assetBase=${reader.htmlAssetBasePath(index)} ----")
                println(bodyText.take(1000))
                println("HTML_START=" + html.take(600))
                if (index in 3..5) {
                    val bodyIdx = html.indexOf("<body", ignoreCase = true)
                    println("HTML_BODY_$index=" + if (bodyIdx >= 0) html.substring(bodyIdx, minOf(html.length, bodyIdx + 1200)) else "NO_BODY")
                }
            }
            val extractChunk = EpubFormatReader::class.java.getDeclaredMethod(
                "extractChunk",
                String::class.java,
                Int::class.javaPrimitiveType,
                Int::class.javaPrimitiveType
            ).apply { isAccessible = true }
            val raw = java.util.zip.ZipFile(sample).use { zip ->
                zip.getInputStream(zip.getEntry("OPS/ch1-2.xhtml")).reader(Charsets.UTF_8).readText()
            }
            for (chunkIndex in 0..2) {
                val rawChunk = extractChunk.invoke(reader, raw, chunkIndex, 99) as String
                val rawBodyText = Jsoup.parse(rawChunk).body().text().replace(Regex("\\s+"), " ").trim()
                println("RAW_CHUNK[$chunkIndex] body=${rawBodyText.length} ${rawBodyText.take(600)}")
                println(rawChunk.take(600))
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
            val referenceCandidate = File(current, "reference/formats/samples/$name")
            if (referenceCandidate.exists()) return referenceCandidate
            current = current.parentFile ?: return@repeat
        }
        return File(userDir, name)
    }
}
