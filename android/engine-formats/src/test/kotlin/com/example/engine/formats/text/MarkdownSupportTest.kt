package com.example.engine.formats.text

import org.junit.Assert.assertTrue
import org.junit.Test

class MarkdownSupportTest {

    @Test
    fun rendersTablesAutolinksAndStrikethrough() {
        val markdown = """
            | Name | Value |
            | ---- | ----- |
            | Alpha | 42 |

            Visit https://example.com

            ~~deprecated~~
        """.trimIndent()

        val html = renderMarkdownToHtmlBlocks(markdown).joinToString("\n")

        assertTrue(html.contains("<table>"))
        assertTrue(html.contains("href=\"https://example.com\""))
        assertTrue(html.contains(">https://example.com<"))
        assertTrue(html.contains("<del>deprecated</del>"))
    }

    @Test
    fun rendersFencedCodeBlocksAndHeadings() {
        val markdown = """
            # Sample

            ```kotlin
            println("Hello")
            ```
        """.trimIndent()

        val html = renderMarkdownToHtmlBlocks(markdown).joinToString("\n")

        assertTrue(html.contains("<h1>Sample</h1>"))
        assertTrue(html.contains("<pre><code"))
        assertTrue(html.contains("println(&quot;Hello&quot;)") || html.contains("println(\"Hello\")"))
    }

    @Test
    fun escapesRawHtmlInsteadOfRenderingIt() {
        val markdown = """
            Before

            <script>alert('x')</script>
        """.trimIndent()

        val html = renderMarkdownToHtmlBlocks(markdown).joinToString("\n")

        assertTrue(!html.contains("<script>alert('x')</script>"))
        assertTrue(html.contains("&lt;script&gt;alert"))
    }

    @Test
    fun parsesRealCorpusSampleIntoManyBlocks() {
        val samplePath = locateCorpusFile("markdown_commonmark_spec.md")
        assertTrue("Expected real markdown corpus sample to exist", samplePath.exists())

        val blocks = renderMarkdownToHtmlBlocks(samplePath.readText(Charsets.UTF_8))

        assertTrue(blocks.size > 50)
        assertTrue(blocks.joinToString("\n").contains("<h1>"))
    }

    @Test
    fun realCorpusKeepsOrderedListsAndBlockquotes() {
        val samplePath = locateCorpusFile("markdown_commonmark_spec.md")
        assertTrue("Expected real markdown corpus sample to exist", samplePath.exists())

        val raw = samplePath.readText(Charsets.UTF_8)
        val html = renderMarkdownToHtmlBlocks(raw).joinToString("\n")

        assertTrue(raw.contains("How much indentation is needed for a sublist?"))
        assertTrue(raw.contains("The overriding design goal for Markdown's formatting syntax"))
        assertTrue(html.contains("<blockquote>"))
        assertTrue(html.contains("<li>"))
        assertTrue(html.contains("Introduction"))
    }

    private fun locateCorpusFile(name: String): java.io.File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = java.io.File(userDir).absoluteFile
        repeat(6) {
            val candidate = java.io.File(current, "samples/format-real-corpus/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        return java.io.File(userDir, name)
    }
}
