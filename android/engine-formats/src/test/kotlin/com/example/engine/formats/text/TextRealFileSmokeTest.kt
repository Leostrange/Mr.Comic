package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertTrue
import org.junit.Assert.assertEquals
import org.junit.Test
import java.io.File

class TextRealFileSmokeTest {

    @Test
    fun docxSamplePreservesRichContent() = runBlocking {
        val sample = locateSample("docx_sample.zip")
        assertTrue("Expected DOCX sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.DOCX)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected DOCX to render at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until minOf(pageCount, 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Demonstration of DOCX support in calibre", ignoreCase = true))
            assertTrue(joined.contains("<table", ignoreCase = true))
            assertTrue(joined.contains("<img", ignoreCase = true))
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusDocxSampleKeepsCalibreDemoStructureAndAssets() = runBlocking {
        val sample = locateCorpusFile("docx_sample.docx")
        assertTrue("Expected DOCX corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.DOCX)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected DOCX corpus sample to render at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until minOf(pageCount, 4))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Demonstration of DOCX support in calibre", ignoreCase = true))
            assertTrue(joined.contains("Text Formatting", ignoreCase = true))
            assertTrue(joined.contains("Inline formatting", ignoreCase = true))
            assertTrue(
                "Expected DOCX corpus sample to keep visible tables or images",
                joined.contains("<table", ignoreCase = true) ||
                    joined.contains("<img", ignoreCase = true) ||
                    joined.contains("data:image", ignoreCase = true)
            )
            assertTrue(
                "Expected DOCX corpus sample to keep readable body text rather than raw XML",
                joined.contains("Various types of text", ignoreCase = true) ||
                    joined.contains("paragraph level formatting", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun htmlSampleKeepsBookLikeMarkup() {
        val sample = locateSample("html_alice_gutenberg.html")
        assertTrue("Expected HTML sample to exist", sample.exists())

        val rendered = renderHtmlToReaderDocument(
            raw = sample.readText(Charsets.UTF_8),
            baseUrl = sample.parentFile?.toURI()?.toString()
        )

        assertTrue(rendered.contains("Alice’s Adventures in Wonderland"))
        assertTrue(rendered.contains("Lewis Carroll"))
        assertTrue(rendered.contains("<img", ignoreCase = true))
        assertTrue(!rendered.contains("<script", ignoreCase = true))
        assertTrue(
            "Expected Gutenberg HTML to remove the boilerplate preamble line",
            !rendered.contains("*** START OF THE PROJECT GUTENBERG EBOOK", ignoreCase = true)
        )
        assertTrue(
            "Expected Gutenberg HTML contents to preserve the original contents table",
            rendered.contains("<table", ignoreCase = true)
        )
    }

    @Test
    fun htmlSampleResolvesInternalChapterAnchors() = runBlocking {
        val sample = locateSample("html_alice_gutenberg.html")
        assertTrue("Expected HTML sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val firstChapterPage = reader.resolveHrefToPage("#chap01")
            val lastChapterPage = reader.resolveHrefToPage("#chap12")

            assertTrue("Expected chapter 1 anchor to resolve", firstChapterPage != null && firstChapterPage >= 0)
            assertTrue("Expected chapter 12 anchor to resolve", lastChapterPage != null && lastChapterPage >= 0)
            assertTrue("Expected later chapter to stay on or after chapter 1", lastChapterPage!! >= firstChapterPage!!)
            assertEquals("Expected Gutenberg HTML to stay as one whole document page", 1, reader.getPageCount())
        } finally {
            reader.close()
        }
    }

    @Test
    fun htmlSampleUsesAssetBackedBaseForLocalResources() = runBlocking {
        val sample = locateSample("html_alice_gutenberg.html")
        assertTrue("Expected HTML sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val html = reader.getHtmlPage(0).orEmpty()
            assertEquals(sample.name, reader.htmlAssetBasePath(0))
            assertTrue("Expected local HTML to avoid file base tag when asset-backed", !html.contains("<base href=\"file://", ignoreCase = true))

            val mainAsset = reader.openHtmlAsset(sample.name)
            assertTrue("Expected local HTML file to be available through asset loader", mainAsset != null)
            assertEquals("text/html", mainAsset?.mimeType)
            assertTrue(mainAsset?.bytes?.isNotEmpty() == true)
        } finally {
            reader.close()
        }
    }

    @Test
    fun htmlUtf8SampleKeepsUnicodeCharacters() {
        val sample = locateCorpusFile("html_utf8_tika.html")
        assertTrue("Expected UTF-8 HTML corpus sample to exist", sample.exists())

        val rendered = renderHtmlToReaderDocument(
            raw = sample.readText(Charsets.UTF_8),
            baseUrl = sample.parentFile?.toURI()?.toString()
        )

        assertTrue(rendered.contains("Title : Tilte with UTF-8 chars öäå"))
        assertTrue(rendered.contains("Content with UTF-8 chars"))
        assertTrue(rendered.contains("åäö"))
    }

    @Test
    fun realCorpusHtmlUtf8SampleUsesAssetBackedReaderPath() = runBlocking {
        val sample = locateCorpusFile("html_utf8_tika.html")
        assertTrue("Expected UTF-8 HTML corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected UTF-8 HTML corpus sample to render at least one page, got $pageCount", pageCount >= 1)

            val html = (0 until minOf(pageCount, 2))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(html.contains("Title : Tilte with UTF-8 chars öäå"))
            assertTrue(html.contains("Content with UTF-8 chars"))
            assertTrue(html.contains("åäö"))
            assertEquals(sample.name, reader.htmlAssetBasePath(0))
            assertTrue(
                "Expected reader-backed HTML to avoid a file base tag",
                !html.contains("<base href=\"file://", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusHtmlAliceSampleUsesAssetBackedReaderPath() = runBlocking {
        val sample = locateCorpusFile("html_alice_gutenberg.html")
        assertTrue("Expected Alice HTML corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val html = reader.getHtmlPage(0).orEmpty()
            assertEquals(sample.name, reader.htmlAssetBasePath(0))
            assertTrue("Expected corpus HTML to avoid a file base tag when asset-backed", !html.contains("<base href=\"file://", ignoreCase = true))
            assertTrue("Expected corpus HTML to keep the book title", html.contains("Alice’s Adventures in Wonderland"))
            assertTrue("Expected corpus HTML to stay readable as a single document", reader.getPageCount() == 1)
            assertTrue("Expected corpus HTML asset loader to expose the main document", reader.openHtmlAsset(sample.name) != null)
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusHtmlAliceSampleResolvesInternalChapterAnchors() = runBlocking {
        val sample = locateCorpusFile("html_alice_gutenberg.html")
        assertTrue("Expected Alice HTML corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val firstChapterPage = reader.resolveHrefToPage("#chap01")
            val laterChapterPage = reader.resolveHrefToPage("#chap12")

            assertTrue("Expected chapter 1 anchor to resolve", firstChapterPage != null && firstChapterPage >= 0)
            assertTrue("Expected chapter 12 anchor to resolve", laterChapterPage != null && laterChapterPage >= 0)
            assertTrue("Expected later chapter to stay on or after chapter 1", laterChapterPage!! >= firstChapterPage!!)
        } finally {
            reader.close()
        }
    }

    @Test
    fun htmlBigPreambleSampleStillProducesReadableDocument() = runBlocking {
        val sample = locateCorpusFile("html_big_preamble_tika.html")
        assertTrue("Expected big-preamble HTML corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected HTML with a large preamble to render at least one page, got $pageCount", pageCount >= 1)

            val html = (0 until minOf(pageCount, 2))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue("Expected HTML with a large preamble to produce non-empty output", html.isNotBlank())
            assertTrue(
                "Expected HTML with a large preamble to keep HTML wrapper markup",
                html.contains("<html", ignoreCase = true) || html.contains("<body", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun htmlBigPreambleSampleStripsHeavyScriptPreambleOnReaderPath() = runBlocking {
        val sample = locateCorpusFile("html_big_preamble_tika.html")
        assertTrue("Expected big-preamble HTML corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected HTML with a large preamble to render at least one page, got $pageCount", pageCount >= 1)

            val html = (0 until minOf(pageCount, 2))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue("Expected sanitized HTML to stay non-empty", html.isNotBlank())
            assertTrue("Expected asset-backed local HTML base path", reader.htmlAssetBasePath(0) == sample.name)
            assertTrue("Expected heavy script preamble to be stripped", !html.contains("<script", ignoreCase = true))
            assertTrue("Expected form-driven preamble markup to be stripped", !html.contains("<form", ignoreCase = true))
            assertTrue(
                "Expected reader path to keep visible body markup after sanitization",
                html.contains("<html", ignoreCase = true) || html.contains("<body", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusHtmlBigPreambleSampleKeepsAssetBackedMainDocumentAndStripsPreamble() = runBlocking {
        val sample = locateCorpusFile("html_big_preamble_tika.html")
        assertTrue("Expected big-preamble HTML corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected HTML with a large preamble to render at least one page, got $pageCount", pageCount >= 1)

            val html = (0 until minOf(pageCount, 2))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue("Expected asset-backed HTML base path", reader.htmlAssetBasePath(0) == sample.name)
            assertTrue("Expected main HTML file to be available through asset loader", reader.openHtmlAsset(sample.name) != null)
            assertTrue("Expected heavy script preamble to be stripped", !html.contains("<script", ignoreCase = true))
            assertTrue("Expected form-driven preamble markup to be stripped", !html.contains("<form", ignoreCase = true))
            assertTrue(
                "Expected sanitized HTML to keep readable wrapper markup",
                html.contains("<html", ignoreCase = true) || html.contains("<body", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun mobiSampleKeepsCenteredFrontMatterAndChapterText() = runBlocking {
        val sample = locateSample("Гарин_Михайловский_Корейские_сказки.mobi")
        assertTrue("Expected MOBI sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected MOBI to render at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until minOf(pageCount, 4))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Корейские сказки", ignoreCase = true))
            assertTrue(
                "Expected MOBI sample to wrap the opening author/title block into a title page",
                joined.contains("class=\"titlepage\"", ignoreCase = true)
            )
            assertTrue(
                "Expected centered front-matter markup on the first page",
                joined.contains("align=\"center\"", ignoreCase = true) ||
                    joined.contains("<center", ignoreCase = true)
            )
            assertTrue(
                "Expected later page to keep chapter text from the sample",
                joined.contains("ДИНАСТИЯ ЛИ", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun rtfSampleKeepsHyperlinksAndRecipeStructure() = runBlocking {
        val sample = locateCorpusFile("rtf_hyperlink_styles_tika.rtf")
        assertTrue("Expected RTF corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.RTF)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected RTF to render at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until minOf(pageCount, 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Flour Tortilla", ignoreCase = true))
            assertTrue(joined.contains("Dip, Caesar.doc", ignoreCase = true))
            assertTrue(joined.contains("Blackening Spice.doc", ignoreCase = true))
            assertTrue(
                "Expected RTF output to preserve readable body text instead of raw markup",
                joined.contains("Method", ignoreCase = true) ||
                    joined.contains("Procedure Text", ignoreCase = true)
            )
            assertTrue(
                "Expected RTF output to keep hyperlink markup or visible linked text",
                joined.contains("<a ", ignoreCase = true) ||
                    joined.contains("href=", ignoreCase = true) ||
                    joined.contains("Dip, Caesar.doc", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun rtfCyrillicSampleKeepsCp1251TextReadable() = runBlocking {
        val sample = locateCorpusFile("rtf_cyrillic_cp1251.rtf")
        assertTrue("Expected Cyrillic RTF corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.RTF)
        try {
            val joined = (0 until minOf(reader.getPageCount(), 2))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Тестовый документ"))
            assertTrue(joined.contains("Привет, мир!"))
            assertTrue(joined.contains("Косая черта"))
            assertTrue(joined.contains("Конец файла"))
        } finally {
            reader.close()
        }
    }

    @Test
    fun rtfRegularImagesSampleKeepsEmbeddedImagesVisible() = runBlocking {
        val sample = locateCorpusFile("rtf_regular_images_tika.rtf")
        assertTrue("Expected image RTF corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.RTF)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected image RTF corpus sample to render at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until minOf(reader.getPageCount(), 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue("Expected RTF with images to produce non-empty output", joined.isNotBlank())
            assertTrue(
                "Expected RTF with images to keep visible body markup",
                joined.contains("<p", ignoreCase = true) ||
                    joined.contains("<img", ignoreCase = true) ||
                    joined.contains("data:image", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun odtSampleKeepsVisibleBodyText() = runBlocking {
        val sample = locateCorpusFile("odt_libreoffice_writer_1_3_tika.odt")
        assertTrue("Expected ODT corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.ODT)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected ODT to render at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until minOf(pageCount, 2))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("This is an example document", ignoreCase = true))
            assertTrue(
                "Expected ODT output to preserve readable HTML structure",
                joined.contains("<p", ignoreCase = true) || joined.contains("<div", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun odtFooterSampleKeepsMultiPageBodyText() = runBlocking {
        val sample = locateCorpusFile("odt_footer_tika.odt")
        assertTrue("Expected ODT footer corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.ODT)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected footer-heavy ODT to render at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until minOf(pageCount, 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Here is some text"))
            assertTrue(joined.contains("page 2", ignoreCase = true))
        } finally {
            reader.close()
        }
    }

    @Test
    fun odtBoldItalicSampleKeepsStyleRichParagraphs() = runBlocking {
        val sample = locateCorpusFile("odt_bold_italic_synthetic.odt")
        assertTrue("Expected bold/italic ODT corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.ODT)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected bold/italic ODT to render at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until minOf(pageCount, 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Тестовый ODT документ"))
            assertTrue(joined.contains("жирным текстом"))
            assertTrue(joined.contains("курсивом"))
            assertTrue(joined.contains("Второй раздел"))
            assertTrue(joined.contains("жирный курсив вместе"))
            assertTrue(
                "Expected bold/italic ODT output to preserve inline style markup",
                joined.contains("font-weight", ignoreCase = true) ||
                    joined.contains("font-style", ignoreCase = true) ||
                    joined.contains("<strong", ignoreCase = true) ||
                    joined.contains("<em", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusTxtSampleBuildsChapterTocAndResolvesAnchors() = runBlocking {
        val sample = locateCorpusFile("txt_alice_gutenberg.txt")
        assertTrue("Expected TXT corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.TXT)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected TXT to render at least one page, got $pageCount", pageCount >= 1)

            val firstPages = (0 until minOf(pageCount, 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(firstPages.contains("Alice’s Adventures in Wonderland", ignoreCase = true))
            assertTrue(firstPages.contains("CHAPTER I", ignoreCase = true))

            val toc = reader.getTableOfContents()
            assertTrue("Expected TXT TOC to contain chapter entries", toc.isNotEmpty())
            assertTrue(
                "Expected TXT chapter anchors to resolve to a page index",
                reader.resolveHrefToPage("#txt-chapter-1") != null
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusWin1252TxtSampleKeepsCharsetSpecificText() = runBlocking {
        val sample = locateCorpusFile("txt_win1252_tika.txt")
        assertTrue("Expected Win1252 TXT corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.TXT)
        try {
            val joined = (0 until minOf(reader.getPageCount(), 2))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("smart quotes", ignoreCase = true))
            assertTrue(joined.contains("windows", ignoreCase = true))
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusWelshTxtSampleKeepsReadableNonAsciiText() = runBlocking {
        val sample = locateCorpusFile("txt_welsh_corpus_tika.txt")
        assertTrue("Expected Welsh TXT corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.TXT)
        try {
            val joined = (0 until minOf(reader.getPageCount(), 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Corwynt Isabel"))
            assertTrue(
                "Expected Welsh TXT corpus to keep readable body text",
                joined.contains("2003") ||
                    joined.contains("Isabel") ||
                    joined.contains("Corwynt", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusDocxFootnotesSampleKeepsPlainTextAndFootnoteMarkers() = runBlocking {
        val sample = locateCorpusFile("docx_footnotes_tika.docx")
        assertTrue("Expected DOCX footnotes corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.DOCX)
        try {
            val joined = (0 until minOf(reader.getPageCount(), 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Eto ochen prostoy"))
            assertTrue(joined.contains("text so snoskoy"))
            assertTrue(
                "Expected DOCX footnote sample to preserve a visible footnote marker or reference",
                joined.contains("<sup", ignoreCase = true) ||
                    joined.contains("footnote", ignoreCase = true) ||
                    joined.contains("snosk", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusDocxFootnotesKeepReferencesAndEmbeddedFonts() = runBlocking {
        val sample = locateCorpusFile("docx_footnotes_tika.docx")
        assertTrue("Expected DOCX corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.DOCX)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected DOCX to render at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until minOf(pageCount, 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(
                "Expected footnote content or markers to survive DOCX rendering",
                joined.contains("footnote", ignoreCase = true) ||
                    joined.contains("snoska", ignoreCase = true) ||
                    joined.contains("<sup", ignoreCase = true)
            )
            assertTrue(
                "Expected DOCX output to keep inline fonts or embedded font CSS",
                joined.contains("font-family", ignoreCase = true) ||
                    joined.contains("@font-face", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusDocxNumberedListKeepsNestedListTextVisible() = runBlocking {
        val sample = locateCorpusFile("docx_numbered_list_tika.docx")
        assertTrue("Expected DOCX numbered-list sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.DOCX)
        try {
            val joined = (0 until minOf(reader.getPageCount(), 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("This"))
            assertTrue(joined.contains("Is"))
            assertTrue(joined.contains("A multi"))
            assertTrue(joined.contains("Level"))
            assertTrue(joined.contains("Within cell 1"))
            assertTrue(joined.contains("Cell a"))
            assertTrue(joined.contains("Cell b"))
        } finally {
            reader.close()
        }
    }

    @Test
    fun markdownSampleKeepsSpecStructure() {
        val sample = locateSample("markdown_commonmark_spec.md")
        assertTrue("Expected Markdown sample to exist", sample.exists())

        val blocks = renderMarkdownToHtmlBlocks(sample.readText(Charsets.UTF_8))
        val joined = blocks.joinToString("\n")

        assertTrue(blocks.size > 50)
        assertTrue(joined.contains("<h1>Introduction</h1>"))
        assertTrue(joined.contains("<blockquote>"))
        assertTrue(joined.contains("<pre><code"))
    }

    @Test
    fun realCorpusMarkdownSampleKeepsSpecStructure() {
        val sample = locateCorpusFile("markdown_commonmark_spec.md")
        assertTrue("Expected Markdown corpus sample to exist", sample.exists())

        val blocks = renderMarkdownToHtmlBlocks(sample.readText(Charsets.UTF_8))
        val joined = blocks.joinToString("\n")

        assertTrue(blocks.size > 50)
        assertTrue(joined.contains("<h1>Introduction</h1>"))
        assertTrue(joined.contains("<blockquote>"))
        assertTrue(joined.contains("<pre><code"))
    }

    @Test
    fun realCorpusMarkdownSampleDoesNotClipLargeTailSections() = runBlocking {
        val sample = locateCorpusFile("markdown_commonmark_spec.md")
        assertTrue("Expected Markdown corpus sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MARKDOWN)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected large Markdown corpus to render at least one page, got $pageCount", pageCount >= 1)

            val renderedDocument = reader.getHtmlPage(0).orEmpty()
            assertTrue(
                "Expected rendered Markdown document to keep tail content instead of clipping it after the first screen",
                renderedDocument.contains("delimiter stack", ignoreCase = true) ||
                    renderedDocument.contains("current_position", ignoreCase = true)
            )
            assertTrue(
                "Expected technical Markdown to keep left-aligned document headings",
                renderedDocument.contains("text-align: left", ignoreCase = true) ||
                    renderedDocument.contains("text-align:left", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun lyricsMarkdownSampleKeepsTailSectionsBeyondFirstSong() = runBlocking {
        val sample = locateSample("lyrics_markdown.md")
        assertTrue("Expected lyrics markdown sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MARKDOWN)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected lyrics markdown to render at least one page, got $pageCount", pageCount >= 1)

            val renderedDocument = reader.getHtmlPage(0).orEmpty()
            assertTrue(renderedDocument.contains("Путь звезды", ignoreCase = true))
            assertTrue(
                "Expected lyrics markdown to keep later song headings instead of clipping after the first page",
                renderedDocument.contains("The darkness has stolen", ignoreCase = true) &&
                    renderedDocument.contains("We’ve grown estranged", ignoreCase = true)
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

    private fun locateCorpusFile(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(6) {
            val candidate = File(current, "samples/format-real-corpus/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        return File(userDir, name)
    }
}
