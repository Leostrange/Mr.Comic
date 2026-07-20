package io.leostrange.mrcomic.engine.formats.epub

internal fun simplifySingleImageSvgContent(html: String): String {
    val svgBlockRegex = Regex(
        """<svg\b[^>]*>.*?</svg>""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )
    val imageHrefRegex = Regex(
        """<image\b[^>]*?\b(?:xlink:)?href\s*=\s*["']([^"']+)["'][^>]*(?:/?>|>.*?</image>)""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )
    return svgBlockRegex.replace(html) { match ->
        val hrefMatches = imageHrefRegex.findAll(match.value).toList()
        if (hrefMatches.size != 1) {
            match.value
        } else {
            val imageSrc = hrefMatches.first().groupValues[1]
            """<div class="epub-inline-cover"><img src="$imageSrc" alt="" style="max-width:100%;height:auto;display:block;margin:0 auto;"/></div>"""
        }
    }
}
