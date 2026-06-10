package com.example.engine.formats.fb2

import android.content.ContextWrapper
import org.junit.Assert.assertTrue
import org.junit.Test

class Fb2SupportTest {

    @Test
    fun preprocessBytesNormalizesEntitiesAndEncodingDeclaration() {
        val reader = Fb2FormatReader(ContextWrapper(null), "/tmp/unused.fb2")
        val preprocess = Fb2FormatReader::class.java.getDeclaredMethod("preprocessBytes", ByteArray::class.java)
        preprocess.isAccessible = true

        val raw = """
            <?xml version="1.0" encoding="windows-1251"?>
            <FictionBook xmlns="http://www.gribuser.ru/xml/fictionbook/2.0">
              <body>
                <section>
                  <title><p>Глава 1</p></title>
                  <p>A&B &nbsp; text</p>
                </section>
              </body>
            </FictionBook>
        """.trimIndent().toByteArray(Charsets.UTF_8)

        val normalized = preprocess.invoke(reader, raw) as ByteArray
        val text = normalized.toString(Charsets.UTF_8)

        assertTrue(text.contains("encoding=\"UTF-8\""))
        assertTrue(text.contains("A&amp;B"))
        assertTrue(text.contains("\u00A0"))
    }
}
