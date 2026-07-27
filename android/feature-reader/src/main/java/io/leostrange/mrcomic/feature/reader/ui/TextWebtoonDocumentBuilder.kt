package io.leostrange.mrcomic.feature.reader.ui

internal object TextWebtoonDocumentBuilder : WebtoonDocumentBuilder {

    /**
     * Build the full HTML document from scratch (first batch only).
     */
    override fun build(pages: List<CachedHtmlPage>): TextWebtoonCachedDocument {
        val first = pages.first()
        val originalStyles = extractStyleContents(first.html)
        val sections = buildSectionsHtml(pages, startIndex = 0)
        val html = wrapDocument(originalStyles, sections)
        return TextWebtoonCachedDocument(
            html = html,
            assetBasePath = first.assetBasePath
        )
    }

    /**
     * Append new pages to an existing document without rebuilding.
     * Inserts new sections just before `</body>`.
     */
    override fun appendPages(
        existingHtml: String,
        newPages: List<CachedHtmlPage>,
        startIndex: Int
    ): TextWebtoonCachedDocument {
        val newSections = buildSectionsHtml(newPages, startIndex)
        // Insert before closing </body>
        val bodyCloseIndex = existingHtml.lastIndexOf("</body>")
        val appendedHtml = if (bodyCloseIndex >= 0) {
            existingHtml.substring(0, bodyCloseIndex) +
                newSections + "\n" +
                existingHtml.substring(bodyCloseIndex)
        } else {
            // Fallback: if </body> not found, rebuild
            val first = newPages.firstOrNull()
            val styles = first?.let { extractStyleContents(it.html) }.orEmpty()
            wrapDocument(styles, newSections)
        }
        return TextWebtoonCachedDocument(
            html = appendedHtml,
            assetBasePath = null
        )
    }

    private fun buildSectionsHtml(pages: List<CachedHtmlPage>, startIndex: Int): String =
        pages.mapIndexed { i, page ->
            val body = extractHtmlTagContents(page.html, "body") ?: page.html
            val index = startIndex + i
            """<section class="mrcomic-text-webtoon-section" data-mrcomic-page-index="$index">$body</section>"""
        }.joinToString(separator = "\n")

    private fun wrapDocument(originalStyles: String, sections: String): String = """
        <!doctype html>
        <html>
        <head>
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
        $originalStyles
        <style>
          html,body{width:100%;max-width:100%;overflow-x:hidden;}
          body{margin:0;padding:0;box-sizing:border-box;}
           .mrcomic-text-webtoon-section{
             display:block;width:100%;max-width:100%;
             box-sizing:border-box;
             margin:0;padding:0;
             line-height:normal;
           }
           .mrcomic-text-webtoon-section + .mrcomic-text-webtoon-section{
             margin-top:1.25rem;
           }
           .mrcomic-text-webtoon-section>*:first-child{margin-top:0!important;}
          .mrcomic-text-webtoon-section>*:last-child{margin-bottom:0!important;}
          .mrcomic-text-webtoon-section img{
            max-width:100%;height:auto;display:block;
            margin:0 auto;padding:0;
          }
        </style>
        </head>
        <body data-mrcomic-text-webtoon-document="true">
        $sections
        </body>
        </html>
    """.trimIndent()

    /**
     * Extract all <style> block contents from the HTML to preserve original
     * EPUB/format CSS (cover, title, chapter headings, etc.).
     */
    private fun extractStyleContents(html: String): String {
        val regex = Regex(
            pattern = "(?is)<style[^>]*>(.*?)</style>",
            options = setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        )
        return regex.findAll(html)
            .map { it.groupValues[1].trim() }
            .filter { it.isNotBlank() }
            .joinToString(separator = "\n") { "<style>$it</style>" }
    }

    private fun extractHtmlTagContents(html: String, tagName: String): String? {
        val regex = Regex(
            pattern = "(?is)<$tagName\\b[^>]*>(.*?)</$tagName>",
            options = setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        )
        return regex.find(html)?.groupValues?.getOrNull(1)
    }
}
