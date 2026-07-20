package io.leostrange.mrcomic.engine.formats.epub

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

/**
 * Regression test for the AB-BA lock-order inversion that lived in
 * [EpubFormatReader.close].
 *
 * The read path acquires a cache monitor (htmlCache / textEntryCache / pageHtmlCache)
 * and then `lock` (the ZipFile lifecycle guard) when it needs to load a page. The old
 * close() acquired `lock` first and then the cache monitors to clear them. Two threads
 * doing close() vs. read() therefore locked the same two mutexes in opposite order and
 * could deadlock.
 *
 * This test hammers close() concurrently with page reads; under the bug the JVM hangs
 * and the latch await times out. With the fix (cache clearing moved outside
 * synchronized(lock)) both threads always complete.
 */
class EpubCloseDeadlockTest {

    @Test
    fun concurrentCloseAndReadDoesNotDeadlock() = runBlocking {
        repeat(20) {
            val tempEpub = File.createTempFile("deadlock_epub_", ".epub")
            try {
                writeMinimalEpub(tempEpub)
                val reader = EpubFormatReader(ContextWrapper(null), tempEpub.absolutePath)
                // Prime the reader so the read path has real work to do.
                reader.getTextDocumentSections()
                val pageCount = reader.getPageCount()
                val done = CountDownLatch(1)
                val iterations = AtomicInteger(0)

                val readerThread = Thread {
                    try {
                        while (!done.await(0, TimeUnit.MILLISECONDS)) {
                            for (i in 0 until pageCount.coerceAtLeast(1)) {
                                runCatching { runBlocking { reader.getHtmlPage(i) } }
                            }
                            iterations.incrementAndGet()
                        }
                    } catch (_: InterruptedException) {
                    }
                }

                val closerThread = Thread {
                    runCatching { reader.close() }
                    done.countDown()
                }

                readerThread.isDaemon = true
                closerThread.isDaemon = true
                readerThread.start()
                closerThread.start()

                // If close() deadlocks against the read path this never returns.
                val completed = done.await(8, TimeUnit.SECONDS)
                closerThread.join(2000)
                readerThread.interrupt()
                readerThread.join(2000)
                assertTrue(
                    "close() vs read() deadlocked (reader iterations=${iterations.get()})",
                    completed
                )
            } finally {
                tempEpub.delete()
            }
        }
    }

    private fun writeMinimalEpub(file: File) {
        ZipOutputStream(file.outputStream().buffered()).use { zip ->
            putZipText(zip, "mimetype", "application/epub+zip")
            putZipText(
                zip, "container.xml", """
                    <?xml version="1.0"?>
                    <container version="1.0">
                      <rootfiles>
                        <rootfile full-path="content.opf" media-type="application/oebps-package+xml"/>
                      </rootfiles>
                    </container>
                """.trimIndent(), into = "META-INF/"
            )
            putZipText(
                zip, "content.opf", """
                    <?xml version="1.0"?>
                    <package version="2.0" xmlns="http://www.idpf.org/2007/opf" unique-identifier="bookid">
                      <metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
                        <dc:title>Deadlock</dc:title>
                        <dc:identifier id="bookid">dl-1</dc:identifier>
                        <dc:language>en</dc:language>
                      </metadata>
                      <manifest>
                        <item id="ch1" href="ch1.xhtml" media-type="application/xhtml+xml"/>
                        <item id="ncx" href="toc.ncx" media-type="application/x-dtbncx+xml"/>
                      </manifest>
                      <spine toc="ncx">
                        <itemref idref="ch1"/>
                      </spine>
                    </package>
                """.trimIndent()
            )
            putZipText(
                zip, "ch1.xhtml", """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <html><body><p>${"paragraph text. ".repeat(300)}</p></body></html>
                """.trimIndent()
            )
            putZipText(
                zip, "toc.ncx", """
                    <?xml version="1.0"?>
                    <ncx xmlns="http://www.daisy.org/z3986/2005/ncx/" version="2005-1">
                      <head><meta name="dtb:uid" content="dl-1"/></head>
                      <docTitle><text>Deadlock</text></docTitle>
                      <navMap>
                        <navPoint><navLabel><text>Ch1</text></navLabel><content src="ch1.xhtml"/></navPoint>
                      </navMap>
                    </ncx>
                """.trimIndent()
            )
        }
    }

    private fun putZipText(
        zip: ZipOutputStream,
        entryName: String,
        text: String,
        into: String = ""
    ) {
        val full = if (into.isEmpty()) entryName else "$into$entryName"
        zip.putNextEntry(ZipEntry(full))
        zip.write(text.toByteArray(Charsets.UTF_8))
        zip.closeEntry()
    }
}
