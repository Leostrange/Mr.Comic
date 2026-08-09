package io.leostrange.mrcomic.engine.formats.fb2

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.io.File

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35])
class Fb2FrontMatterTest {

    @Test
    fun coverSynopsisTocAndFirstChapterRemainSeparateAndLinked() = runBlocking {
        val sample = File.createTempFile("mrcomic-front-matter", ".fb2")
        sample.writeText(
            """
            <?xml version="1.0" encoding="UTF-8"?>
            <FictionBook xmlns="http://www.gribuser.ru/xml/fictionbook/2.0"
                         xmlns:l="http://www.w3.org/1999/xlink">
              <description>
                <title-info>
                  <book-title>Reality is Careless</book-title>
                  <lang>ru</lang>
                  <coverpage><image l:href="#cover.png"/></coverpage>
                </title-info>
              </description>
              <body>
                <section id="synopsis">
                  <p><image l:href="#cover.png"/></p>
                  <p>Он очнулся в камере без имени и без прошлого.</p>
                  <p>Меньше суток до смерти.</p>
                </section>
                <section id="toc">
                  <title><p>Оглавление</p></title>
                  <p><a l:href="#ch0">Пролог: Глазами Объекта I</a></p>
                  <p><a l:href="#ch1">Глава 1: Прибытие в новую реальность</a></p>
                </section>
                <section id="ch0">
                  <title><p>Пролог: Глазами Объекта I</p></title>
                  <p>Боль.</p>
                  <p>Это было первое, что я осознал.</p>
                </section>
                <section id="ch1">
                  <title><p>Глава 1: Прибытие в новую реальность</p></title>
                  <p>Солнце еще не поднялось над шпилями небоскребов.</p>
                </section>
              </body>
              <binary id="cover.png" content-type="image/png">iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=</binary>
            </FictionBook>
            """.trimIndent()
        )

        val reader = Fb2FormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pages = (0 until reader.getPageCount()).mapNotNull { reader.getHtmlPage(it) }
            assertTrue("Expected cover, TOC, and chapter pages, got ${pages.size}; metadata=${reader.getMetadata()}", pages.size >= 4)

            assertTrue(pages[0].contains("mrcomic-cover-section"))
            assertTrue(pages[0].contains("data:image/png;base64"))
            assertTrue(pages[0].contains("Он очнулся"))
            assertFalse("TOC must not be appended to the cover page", pages[0].contains("Оглавление"))

            assertTrue(pages[1].contains("Оглавление"))
            assertTrue(pages[1].contains("href=\"#ch0\""))
            assertFalse("The first chapter must start after the TOC", pages[1].contains("Боль."))

            assertTrue(pages[2].contains("Пролог: Глазами Объекта I"))
            assertTrue(pages[2].contains("Боль."))

            val toc = reader.getTableOfContents()
            assertEquals("Пролог: Глазами Объекта I", toc[0].title)
            assertEquals("Глава 1: Прибытие в новую реальность", toc[1].title)
            assertEquals(2, toc[0].pageIndex)
            assertEquals(3, toc[1].pageIndex)
            assertEquals(2, reader.resolveHrefToPage("#ch0"))
            assertEquals(3, reader.resolveHrefToPage("#ch1"))

            assertTrue(pages[3].contains("Глава 1: Прибытие в новую реальность"))
            assertTrue(pages[3].contains("Солнце еще не поднялось"))
        } finally {
            reader.close()
            sample.delete()
        }
    }
}
