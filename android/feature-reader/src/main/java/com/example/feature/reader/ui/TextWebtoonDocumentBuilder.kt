package com.example.feature.reader.ui

internal object TextWebtoonDocumentBuilder {

    fun build(pages: List<CachedHtmlPage>): TextWebtoonCachedDocument {
        val first = pages.first()
        val head = extractHtmlTagContents(first.html, "head").orEmpty()
        val sections = pages.mapIndexed { index, page ->
            val body = extractHtmlTagContents(page.html, "body") ?: page.html
            """<section class="mrcomic-text-webtoon-section" data-mrcomic-page-index="$index">$body</section>"""
        }.joinToString(separator = "\n")
        val html = """
            <!doctype html>
            <html>
            <head>
            <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
            $head
            <style>
              html,body{width:100%;max-width:100%;overflow-x:hidden;}
              body{margin:0;box-sizing:border-box;}
              .mrcomic-text-webtoon-section{display:block;width:100%;max-width:100%;box-sizing:border-box;}
              .mrcomic-text-webtoon-section + .mrcomic-text-webtoon-section{margin-top:0;}
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

    private fun extractHtmlTagContents(html: String, tagName: String): String? {
        val regex = Regex(
            pattern = "(?is)<$tagName\\b[^>]*>(.*?)</$tagName>",
            options = setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        )
        return regex.find(html)?.groupValues?.getOrNull(1)
    }
}
