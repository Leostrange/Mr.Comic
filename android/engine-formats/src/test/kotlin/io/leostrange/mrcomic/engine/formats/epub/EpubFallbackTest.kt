package io.leostrange.mrcomic.engine.formats.epub

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Test
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class EpubFallbackTest {

    @Test
    fun fallbackWithoutOpfSkipsNavigationAndEmptyNestedPages() = runBlocking {
        val tempEpub = File.createTempFile("fallback_epub_", ".epub")
        try {
            ZipOutputStream(tempEpub.outputStream().buffered()).use { zip ->
                putZipText(zip, "OPS/toc01.xhtml", """
                    <html><body><nav><a href="title.xhtml">Title</a><a href="ch1.xhtml">Chapter</a></nav></body></html>
                """.trimIndent())
                putZipText(zip, "OPS/empty.xhtml", """<html><body>   </body></html>""")
                putZipText(zip, "OPS/title.xhtml", """
                    <html><body><h1>Fallback Title</h1><p>Author Name</p></body></html>
                """.trimIndent())
                putZipText(zip, "OPS/ch1.xhtml", """
                    <html><body><p>This is a real fallback chapter page with visible text.</p></body></html>
                """.trimIndent())
                putZipBytes(zip, "OPS/images/cover.jpg", byteArrayOf(1, 2, 3, 4, 5))
            }

            val reader = EpubFormatReader(ContextWrapper(null), tempEpub.absolutePath)
            try {
                assertEquals(3, reader.getPageCount())
                assertNull(reader.resolveHrefToPage("toc01.xhtml"))
                assertNull(reader.resolveHrefToPage("empty.xhtml"))
                assertNotNull(reader.resolveHrefToPage("title.xhtml"))
                assertNotNull(reader.resolveHrefToPage("ch1.xhtml"))
            } finally {
                reader.close()
            }
        } finally {
            tempEpub.delete()
        }
    }

    private fun putZipText(zip: ZipOutputStream, entryName: String, text: String) {
        putZipBytes(zip, entryName, text.toByteArray(Charsets.UTF_8))
    }

    private fun putZipBytes(zip: ZipOutputStream, entryName: String, bytes: ByteArray) {
        zip.putNextEntry(ZipEntry(entryName))
        zip.write(bytes)
        zip.closeEntry()
    }
}
