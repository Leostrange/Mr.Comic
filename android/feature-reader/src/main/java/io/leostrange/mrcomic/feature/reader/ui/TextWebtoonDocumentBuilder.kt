package io.leostrange.mrcomic.feature.reader.ui

internal object TextWebtoonDocumentBuilder {

    fun build(pages: List<CachedHtmlPage>): TextWebtoonCachedDocument {
        val first = pages.first()
        // Extract original CSS from the first page to preserve cover/title/section styling.
        // This ensures EPUB frontispiece, title pages, and chapter headings keep their
        // original formatting in the webtoon vertical scroll.
        val originalStyles = extractStyleContents(first.html)
        // Use a fixed head structure instead of extracting from page content.
        // This ensures consistent HTML across batches — the head never changes
        // when new pages are appended, preventing layout shifts.
        val sections = pages.mapIndexed { index, page ->
            val body = extractHtmlTagContents(page.html, "body") ?: page.html
            """<section class="mrcomic-text-webtoon-section" data-mrcomic-page-index="$index">$body</section>"""
        }.joinToString(separator = "\n")
        val html = """
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
        return TextWebtoonCachedDocument(
            html = html,
            assetBasePath = first.assetBasePath
        )
    }

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
