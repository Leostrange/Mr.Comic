package com.example.engine.formats.fb2

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class Fb2SupportTest {

    @Test
    fun preprocessBytesNormalizesEntitiesAndEncodingDeclaration() {
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

        val normalized = Fb2Preprocessor.preprocess(raw)
        val text = normalized.toString(Charsets.UTF_8)

        assertTrue(text.contains("encoding=\"UTF-8\""))
        assertTrue(text.contains("A&amp;B"))
        assertTrue(text.contains("\u00A0"))
    }

    @Test
    fun metadataParserExtractsBookTitleAuthorLanguageAndGenre() {
        val xml = """
            <?xml version="1.0" encoding="UTF-8"?>
            <FictionBook xmlns="http://www.gribuser.ru/xml/fictionbook/2.0">
              <description>
                <title-info>
                  <genre>sf</genre>
                  <author>
                    <first-name>Arkady</first-name>
                    <last-name>Example</last-name>
                  </author>
                  <book-title>Sample &amp; FB2 Book</book-title>
                  <lang>ru</lang>
                </title-info>
              </description>
            </FictionBook>
        """.trimIndent()

        val metadata = Fb2MetadataParser.extract(xml)

        assertEquals("Sample & FB2 Book", metadata["title"])
        assertEquals("Arkady Example", metadata["author"])
        assertEquals("ru", metadata["language"])
        assertEquals("sf", metadata["genre"])
    }
}
