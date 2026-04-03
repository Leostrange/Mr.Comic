package com.example.engine.formats.base

internal const val READER_BASE_DOCUMENT_CSS = """
    body {
      margin: 0 auto;
      padding: 16px 22px 44px;
      max-width: 720px;
      box-sizing: border-box;
      font-family: Georgia, "Times New Roman", serif;
      font-size: 18px;
      line-height: 1.6;
      color: inherit;
      background: transparent;
      text-align: justify;
      overflow-wrap: break-word;
      word-break: normal;
      hyphens: auto;
      -webkit-hyphens: auto;
    }
    p, div.paragraph {
      margin: 0.4em 0;
      text-indent: 1.5em;
    }
    p:first-child,
    div.paragraph:first-child,
    h1 + p, h2 + p, h3 + p, h4 + p, h5 + p, h6 + p,
    h1 + div.paragraph, h2 + div.paragraph, h3 + div.paragraph,
    h4 + div.paragraph, h5 + div.paragraph, h6 + div.paragraph {
      text-indent: 0;
    }
    h1, h2, h3, h4, h5, h6 {
      text-align: center;
      text-indent: 0;
      font-weight: 700;
      line-height: 1.3;
      margin: 1.2em 0 0.5em;
      hyphens: none;
      -webkit-hyphens: none;
    }
    h1 { font-size: 1.7em; letter-spacing: 0.04em; text-transform: uppercase;
         padding-bottom: 0.3em; border-bottom: 1px solid rgba(120,120,120,0.15); }
    h2 { font-size: 1.35em; letter-spacing: 0.02em;
         padding-bottom: 0.2em; border-bottom: 1px solid rgba(120,120,120,0.10); }
    h3 { font-size: 1.15em; }
    h4 { font-size: 1.05em; }
    h5 { font-size: 1em; font-style: italic; }
    h6 { font-size: 0.95em; text-transform: uppercase; letter-spacing: 0.05em; }
    img { max-width: 100%; height: auto; display: block; margin: 8px auto; }
    figure { margin: 1rem 0; }
    figcaption { margin-top: 0.35rem; text-align: center; opacity: 0.78; font-size: 0.92em; }
    pre, code { white-space: pre-wrap; word-break: break-word; }
    code:not(pre code) {
      background: rgba(120,120,120,0.08); padding: 0.15em 0.35em;
      border-radius: 4px; font-size: 0.9em;
    }
    pre {
      margin: 1rem 0;
      padding: 0.85rem 1rem;
      border-radius: 14px;
      background: rgba(120,120,120,0.10);
      overflow-x: auto;
    }
    code { font-family: "JetBrains Mono", "Cascadia Code", Consolas, monospace; }
    ul, ol { padding-left: 1.8rem; margin: 0.8em 0; }
    li { line-height: 1.55; }
    li + li { margin-top: 0.25rem; }
    table { width: 100%; border-collapse: collapse; margin: 1rem 0; overflow-x: auto;
            font-size: 0.92em; }
    th, td { border: 1px solid rgba(120,120,120,0.35); padding: 0.5rem 0.65rem; text-align: left; }
    th { font-weight: 600; background: rgba(120,120,120,0.08); }
    thead th { background: rgba(120,120,120,0.12); }
    tbody tr:nth-child(even) { background: rgba(120,120,120,0.04); }
    hr { border: 0; border-top: 1px solid rgba(120,120,120,0.35); margin: 1rem 0; }
    del { opacity: 0.75; }
    a[href] {
      color: var(--mrcomic-reader-accent-color, #1a6f9a);
      text-decoration: underline;
      text-decoration-thickness: 0.08em;
      text-underline-offset: 0.14em;
    }
    .footnotes { margin-top: 1.25rem; font-size: 0.94em; }
    .footnotes ol { padding-left: 1.25rem; }
    blockquote {
      margin: 1rem 0;
      padding: 0.8rem 1rem;
      border-left: 3px solid rgba(120,120,120,0.35);
      background: rgba(120,120,120,0.03);
      border-radius: 0 8px 8px 0;
      text-indent: 0;
      text-align: left;
    }
    blockquote p { text-indent: 0; }
    center, [align="center"], .center { text-align: center; text-indent: 0; }
    [align="right"], .right { text-align: right; text-indent: 0; }
    [align="left"], .left { text-align: left; }
"""

internal const val READER_MOBI_DOCUMENT_CSS = """
    body {
      margin: 0 auto;
      padding: 16px 22px 44px;
      max-width: 680px;
      box-sizing: border-box;
      font-family: Georgia, "Times New Roman", serif;
      font-size: 1.05rem;
      line-height: 1.7;
      color: inherit;
    }
    p {
      margin: 0.4em 0;
      text-align: justify;
      text-indent: 1.5em;
    }
    table { width: 100%; border-collapse: collapse; margin: 1rem 0; font-size: 0.92em; }
    th, td { border: 1px solid rgba(120,120,120,0.35); padding: 0.5rem 0.65rem; text-align: left; }
    th { font-weight: 600; background: rgba(120,120,120,0.08); }
    p:first-child,
    h1 + p,
    h2 + p,
    h3 + p,
    h4 + p,
    h5 + p,
    h6 + p,
    center + p,
    [align="center"] + p {
      text-indent: 0;
    }
    h1, h2, h3, h4, h5, h6,
    center,
    [align="center"] {
      text-align: center;
      text-indent: 0;
    }
    p[align="center"],
    center p,
    .center,
    .center p {
      text-align: center;
      text-indent: 0;
    }
    p[align="center"],
    center,
    center p,
    .center,
    .center p {
      margin: 0.9em 0;
    }
    h1, h2, h3 {
      line-height: 1.3;
      margin: 1.6em 0 0.7em;
      font-weight: 700;
    }
    h1 {
      font-size: 1.7em;
      letter-spacing: 0.04em;
      text-transform: uppercase;
    }
    h2 {
      font-size: 1.35em;
      letter-spacing: 0.02em;
    }
    h3 {
      font-size: 1.15em;
    }
    h4, h5, h6 {
      font-size: 1em;
      margin: 1.2em 0 0.5em;
    }
    .chapter,
    .titlepage,
    .title-page {
      page-break-before: always;
      break-before: page;
    }
    .titlepage,
    .title-page {
      min-height: calc(100vh - 88px);
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      gap: 0.18rem;
    }
    .titlepage p,
    .title-page p,
    .titlepage h1,
    .titlepage h2,
    .titlepage h3,
    .title-page h1,
    .title-page h2,
    .title-page h3 {
      text-align: center !important;
      text-indent: 0 !important;
      margin-left: auto;
      margin-right: auto;
      max-width: 24em;
    }
    img { max-width: 100%; height: auto; display: block; margin: 0.8rem auto; }
    hr { border: 0; border-top: 1px solid rgba(120,120,120,0.3); margin: 1.5em 3em; }
    blockquote {
      margin: 1em 1.5em;
      padding-left: 1em;
      border-left: 3px solid rgba(120,120,120,0.3);
      font-style: italic;
    }
    a[href] {
      color: var(--mrcomic-reader-accent-color, #1a6f9a);
      text-decoration: underline;
      text-decoration-thickness: 0.08em;
      text-underline-offset: 0.14em;
    }
"""

internal const val READER_PRESERVE_LAYOUT_DOCUMENT_CSS = """
    html, body {
      width: 100% !important;
      max-width: none !important;
      margin: 0 !important;
      min-width: 0;
      box-sizing: border-box;
    }
    body {
      padding: 12px 18px 44px;
      width: 100% !important;
      max-width: none !important;
      box-sizing: border-box;
      word-wrap: break-word;
      overflow-wrap: break-word;
    }
    body > * {
      max-width: 100% !important;
      box-sizing: border-box;
    }
    img { max-width: 100% !important; height: auto !important; }
    pre, code { white-space: pre-wrap; word-break: break-word; }
    table { max-width: 100% !important; border-collapse: collapse; }
    a[href] {
      color: var(--mrcomic-reader-accent-color, #1a6f9a);
      text-decoration: underline;
      text-decoration-thickness: 0.08em;
      text-underline-offset: 0.14em;
    }
"""

internal const val EPUB_READER_DOCUMENT_CSS = """
    body{font-family:Georgia,'Times New Roman',serif;font-size:18px;line-height:1.6;
         padding:16px 22px 44px;color:#1a1a1a;background:#fafafa;
         max-width:720px;margin:0 auto;box-sizing:border-box;overflow-wrap:break-word;word-break:normal;
         hyphens:auto;-webkit-hyphens:auto;text-align:justify}
    p,div.paragraph{margin:0.4em 0;text-indent:1.5em}
    p:first-child,div.paragraph:first-child,
    h1+p,h2+p,h3+p,h4+p,h5+p,h6+p,
    h1+div.paragraph,h2+div.paragraph,h3+div.paragraph,h4+div.paragraph,h5+div.paragraph,h6+div.paragraph{text-indent:0}
    h1,h2,h3,h4,h5,h6{text-align:center;text-indent:0;margin:1.2em 0 0.5em;
                       font-weight:bold;hyphens:none;-webkit-hyphens:none}
    img{max-width:100%;height:auto;display:block;margin:8px auto}
    a[href]{color:var(--mrcomic-reader-accent-color,#1a6f9a);text-decoration:underline;
      text-decoration-thickness:0.08em;text-underline-offset:0.14em}
    blockquote,cite{margin:0.8em 1.5em;padding-left:1em;
                    border-left:3px solid #bbb;font-style:italic;color:#555;
                    hyphens:none;-webkit-hyphens:none}
    cite{display:block;margin-top:0.3em}
    table{width:100%;border-collapse:collapse;margin:1rem 0;font-size:0.92em}
    td,th{padding:0.5rem 0.65rem;border:1px solid rgba(120,120,120,0.35);text-align:left}
    th{font-weight:600;background:rgba(120,120,120,0.08)}
    tbody tr:nth-child(even){background:rgba(120,120,120,0.04)}
    .center,.align-center,[align="center"]{text-align:center !important;text-indent:0}
    .right,.align-right,[align="right"]{text-align:right !important;text-indent:0}
    .left,.align-left,[align="left"]{text-align:left !important}
    a.fn,a[epub\\:type~="noteref"],a[href*="FbAutId_"],a[href*="#FbAutId_"],a[href^="fbanchor://"],a[title][href*="#"]{
      font-size:0.75em;vertical-align:super;line-height:1;color:#1a6f9a;font-weight:bold;text-decoration:none}
    a.fn *,a[epub\\:type~="noteref"] *,a[href*="FbAutId_"] *,a[href*="#FbAutId_"] *,a[href^="fbanchor://"] *,a[title][href*="#"] *{
      color:#1a6f9a}
    p.note-item,aside[epub\\:type~="footnote"],section[epub\\:type~="footnote"]>p:first-child
      {margin:0.6em 0;padding-left:2.8em;text-indent:-2.8em;text-align:left}
    .note-num,.footnote-label{color:#1a6f9a;font-weight:bold;
      display:inline-block;min-width:2.8em;text-indent:0}
    body.mrcomic-epub-cover-only{
      padding:0 !important;max-width:none !important;margin:0 !important;
      min-height:100vh;display:flex;align-items:center;justify-content:center;
      text-align:center;background:transparent}
    body.mrcomic-epub-cover-only .epub-inline-cover,
    body.mrcomic-epub-cover-only figure[data-type="cover"],
    body.mrcomic-epub-cover-only svg.cover-svg{width:100%;margin:0}
    body.mrcomic-epub-cover-only img{
      width:100%;max-width:none;height:auto;max-height:calc(100vh - 16px);
      object-fit:contain;margin:0 auto}
    body.mrcomic-epub-cover-title{
      padding:12px 16px 36px;max-width:none !important;min-height:100vh;
      display:flex;flex-direction:column;justify-content:flex-start;text-align:center}
    body.mrcomic-epub-cover-title p,
    body.mrcomic-epub-cover-title h1,
    body.mrcomic-epub-cover-title h2,
    body.mrcomic-epub-cover-title h3{text-align:center !important;text-indent:0 !important}
    body.mrcomic-epub-cover-title .epub-inline-cover,
    body.mrcomic-epub-cover-title figure[data-type="cover"],
    body.mrcomic-epub-cover-title svg.cover-svg{
      width:100%;flex:1;display:flex;align-items:center;justify-content:center;
      margin:0 auto 0.9rem}
    body.mrcomic-epub-cover-title .epub-inline-cover img,
    body.mrcomic-epub-cover-title figure[data-type="cover"] img{
      width:auto;max-width:100%;max-height:68vh;margin:0 auto 0.9rem}
    body.mrcomic-epub-cover-title > *:not(.epub-inline-cover):not(figure[data-type="cover"]):not(svg.cover-svg){
      width:min(28rem,100%);margin-left:auto;margin-right:auto}
    body.mrcomic-epub-titlepage{
      min-height:calc(100vh - 88px);display:flex;flex-direction:column;
      justify-content:center;text-align:center;padding:12px 16px 36px}
    body.mrcomic-epub-titlepage p,
    body.mrcomic-epub-titlepage h1,
    body.mrcomic-epub-titlepage h2,
    body.mrcomic-epub-titlepage h3,
    body.mrcomic-epub-titlepage .title p{
      text-align:center !important;text-indent:0 !important}
    @media (prefers-color-scheme: dark) {
      body{color:#e8e8e8;background:#1a1a1a}
      h1,h2,h3,h4,h5,h6,.calibre5,.calibre12{color:#e8e8e8;background:#262626;border-color:#555}
      blockquote,cite{border-left-color:#555;color:#aaa}
      td,th{border-color:#444}
      a[href]{color:#5ab4dc}
      a.fn,a[epub\\:type~="noteref"],a[href*="FbAutId_"],a[href*="#FbAutId_"],a[href^="fbanchor://"],a[title][href*="#"],.note-num,.footnote-label{color:#5ab4dc}
      a.fn *,a[epub\\:type~="noteref"] *,a[href*="FbAutId_"] *,a[href*="#FbAutId_"] *,a[href^="fbanchor://"] *,a[title][href*="#"] *{color:#5ab4dc}
      }
  """

private val MANUAL_READER_COLOR_REGEX = Regex("^#(?:[0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$")

private fun normalizeReaderOverrideColor(value: String?): String? {
    val normalized = value?.trim().orEmpty()
    return normalized.takeIf { it.isNotEmpty() && MANUAL_READER_COLOR_REGEX.matches(it) }
}

private fun buildReaderOverrideCss(
    textColor: String? = null,
    backgroundColor: String? = null,
    accentColor: String? = null
): String {
    val resolvedTextColor = normalizeReaderOverrideColor(textColor)
    val resolvedBackgroundColor = normalizeReaderOverrideColor(backgroundColor)
    val resolvedAccentColor = normalizeReaderOverrideColor(accentColor)
    if (resolvedTextColor == null && resolvedBackgroundColor == null && resolvedAccentColor == null) {
        return ""
    }
    val declarations = buildList {
        resolvedTextColor?.let { add("  --mrcomic-reader-text-color: $it;") }
        resolvedBackgroundColor?.let { add("  --mrcomic-reader-background-color: $it;") }
        resolvedAccentColor?.let { add("  --mrcomic-reader-accent-color: $it;") }
    }.joinToString("\n")
    return """
        :root {
        $declarations
        }
        html, body {
          ${resolvedBackgroundColor?.let { "background: $it !important;" } ?: ""}
        }
        body,
        body:not([data-mrcomic-preserve-layout="true"]) * {
          ${resolvedTextColor?.let { "color: $it !important;" } ?: ""}
        }
        body:not([data-mrcomic-preserve-layout="true"]) * {
          ${resolvedBackgroundColor?.let { "background-color: transparent !important;" } ?: ""}
          background-image: none !important;
          box-shadow: none !important;
        }
        a, a *, .note-num, .footnote-label {
          ${resolvedAccentColor?.let { "color: $it !important;" } ?: ""}
        }
        h1, h2, h3, h4, h5, h6, blockquote, cite, table, td, th {
          ${resolvedTextColor?.let { "color: $it !important;" } ?: ""}
        }
        h1, h2, h3, h4, h5, h6 {
          background: transparent !important;
        }
    """.trimIndent()
}

internal fun buildReaderDocumentHead(
    baseCss: String,
    extraCss: String = "",
    extraHeadHtml: String = "",
    includeViewport: Boolean = true,
    textColorOverride: String? = null,
    backgroundColorOverride: String? = null,
    accentColorOverride: String? = null
): String {
    val parts = buildList {
        if (includeViewport) {
            add("""<meta name="viewport" content="width=device-width, initial-scale=1.0">""")
        }
        if (baseCss.isNotBlank()) {
            add("<style>${baseCss.trim()}</style>")
        }
        if (extraCss.isNotBlank()) {
            add("<style>${extraCss.trim()}</style>")
        }
        extraHeadHtml.trim().takeIf { it.isNotBlank() }?.let(::add)
        buildReaderOverrideCss(
            textColor = textColorOverride,
            backgroundColor = backgroundColorOverride,
            accentColor = accentColorOverride
        ).takeIf { it.isNotBlank() }?.let { add("<style>${it}</style>") }
    }
    return parts.joinToString("\n")
}

internal fun buildUnifiedReaderHtmlDocument(
    body: String,
    baseUrl: String? = null,
    extraCss: String = "",
    extraHeadHtml: String = "",
    baseCss: String = READER_BASE_DOCUMENT_CSS,
    preservePublisherLayout: Boolean = false,
    textColorOverride: String? = null,
    backgroundColorOverride: String? = null,
    accentColorOverride: String? = null
): String {
    val baseTag = baseUrl?.let { """  <base href="${it.replace("\"", "%22")}">""" }.orEmpty()
    val headHtml = buildReaderDocumentHead(
        baseCss = baseCss,
        extraCss = extraCss,
        extraHeadHtml = extraHeadHtml,
        includeViewport = true,
        textColorOverride = textColorOverride,
        backgroundColorOverride = backgroundColorOverride,
        accentColorOverride = accentColorOverride
    )
    val preserveLayoutAttr = if (preservePublisherLayout) """ data-mrcomic-preserve-layout="true"""" else ""
    return """
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="UTF-8">
          $baseTag
          $headHtml
        </head>
        <body$preserveLayoutAttr>$body</body>
        </html>
    """.trimIndent()
}
