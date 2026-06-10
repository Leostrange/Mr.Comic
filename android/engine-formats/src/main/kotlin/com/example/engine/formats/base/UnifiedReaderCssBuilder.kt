package com.example.engine.formats.base

internal const val READER_BASE_DOCUMENT_CSS = """
    body {
      margin: 0 auto;
      padding: 16px 16px 44px;
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
      hyphens: none;
      -webkit-hyphens: none;
      -webkit-user-select: none;
      user-select: none;
    }
    p, div.paragraph {
      margin: 0.2em 0;
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
    h1 { font-size: clamp(1.1em, 1.7em, 2rem); letter-spacing: 0.04em; text-transform: uppercase; }
    h2 { font-size: clamp(1.05em, 1.35em, 1.6rem); letter-spacing: 0.02em; }
    h3 { font-size: clamp(1em, 1.15em, 1.3rem); }
    h4, h5, h6 { font-size: 1em; }
    img { width: auto; max-width: 100% !important; height: auto !important; display: block; margin: 8px auto; }
    a[href] { -webkit-user-select: text; user-select: text; }
    figure { margin: 1rem 0; }
    figcaption { margin-top: 0.35rem; text-align: center; opacity: 0.78; font-size: 0.92em; }
    pre, code { white-space: pre-wrap; word-break: break-word; }
    pre {
      margin: 1rem 0;
      padding: 0.85rem 1rem;
      border-radius: 14px;
      background: rgba(120,120,120,0.10);
      overflow-x: auto;
    }
    code { font-family: "JetBrains Mono", "Cascadia Code", Consolas, monospace; }
    ul, ol { padding-left: 1.5rem; margin: 0.8em 0; }
    li + li { margin-top: 0.25rem; }
    table { width: 100%; border-collapse: collapse; margin: 1rem 0; display: block; overflow-x: auto; }
    th, td { padding: 0.5rem 0.65rem; text-align: left; }
    table[border] th, table[border] td { border: 1px solid rgba(120,120,120,0.35); }
    table:not([border]) th, table:not([border]) td { border: none; }
    th { font-weight: 600; }
    hr { border: 0; border-top: 1px solid rgba(120,120,120,0.35); margin: 1rem 0; }
    del { opacity: 0.75; }
    div, section, article, aside, span, main, header, footer { border: none; }
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
      padding-left: 1rem;
      border-left: 3px solid rgba(120,120,120,0.35);
      text-indent: 0;
      text-align: left;
    }
    center, [align="center"], .center { text-align: center; text-indent: 0; }
    [align="right"], .right { text-align: right; text-indent: 0; }
    [align="left"], .left { text-align: left; }
"""

internal const val READER_MOBI_DOCUMENT_CSS = """
    body {
      margin: 0 auto;
      padding: 16px 16px 44px;
      max-width: 680px;
      box-sizing: border-box;
      font-family: Georgia, "Times New Roman", serif;
      font-size: 1.05rem;
      line-height: 1.7;
      color: inherit;
      -webkit-user-select: none;
      user-select: none;
    }
    p {
      margin: 0.2em 0;
      text-align: justify;
      text-indent: 1.5em;
    }
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
      font-size: clamp(1.1em, 1.7em, 2rem);
      letter-spacing: 0.04em;
      text-transform: uppercase;
    }
    h2 {
      font-size: clamp(1.05em, 1.35em, 1.6rem);
      letter-spacing: 0.02em;
    }
    h3 {
      font-size: clamp(1em, 1.15em, 1.3rem);
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
    img { width: auto; max-width: 100% !important; height: auto !important; display: block; margin: 0.8rem auto; }
    a[href] { -webkit-user-select: text; user-select: text; }
    hr { border: 0; border-top: 1px solid rgba(120,120,120,0.3); margin: 1.5em 3em; }
    blockquote {
      margin: 1em 1.5em;
      padding-left: 1em;
      border-left: 3px solid rgba(120,120,120,0.3);
      font-style: italic;
    }
    div, section, article, aside, span, main, header, footer { border: none; }
    a[href] {
      color: var(--mrcomic-reader-accent-color, #1a6f9a);
      text-decoration: underline;
      text-decoration-thickness: 0.08em;
      text-underline-offset: 0.14em;
    }
"""

internal const val READER_PRESERVE_LAYOUT_DOCUMENT_CSS = """
    body {
      margin: 0;
      padding: 8px 16px 44px;
      box-sizing: border-box;
      word-wrap: break-word;
      overflow-wrap: break-word;
      -webkit-user-select: none;
      user-select: none;
    }
    img { width: auto; max-width: 100% !important; height: auto !important; }
    pre, code { white-space: pre-wrap; word-break: break-word; }
    table { max-width: 100%; border-collapse: collapse; }
    div, section, article, aside, span, main, header, footer { border: none; }
    a[href] {
      color: var(--mrcomic-reader-accent-color, #1a6f9a);
      text-decoration: underline;
      text-decoration-thickness: 0.08em;
      text-underline-offset: 0.14em;
      -webkit-user-select: text;
      user-select: text;
    }
"""

internal const val EPUB_READER_DOCUMENT_CSS = """
    body{font-family:Georgia,'Times New Roman',serif;font-size:18px;line-height:1.6;
         padding:16px 16px 44px;color:#1a1a1a;background:#fafafa;
         max-width:720px;margin:0 auto;box-sizing:border-box;overflow-wrap:break-word;word-break:normal;
         hyphens:none;-webkit-hyphens:none;text-align:justify;
         -webkit-user-select:none;user-select:none}
    p,div.paragraph{margin:0.2em 0;text-indent:1.5em}
    p:first-child,div.paragraph:first-child,
    h1+p,h2+p,h3+p,h4+p,h5+p,h6+p,
    h1+div.paragraph,h2+div.paragraph,h3+div.paragraph,h4+div.paragraph,h5+div.paragraph,h6+div.paragraph{text-indent:0}
    h1,h2,h3,h4,h5,h6{text-align:center;text-indent:0;margin:1.2em 0 0.5em;
                       font-weight:bold;hyphens:none;-webkit-hyphens:none}
    img{width:auto;max-width:100%!important;height:auto!important;display:block;margin:8px auto}
    a[href]{color:var(--mrcomic-reader-accent-color,#1a6f9a);text-decoration:underline;
      text-decoration-thickness:0.08em;text-underline-offset:0.14em;
      -webkit-user-select:text;user-select:text}
    blockquote,cite{margin:0.8em 1.5em;padding-left:1em;
                    border-left:3px solid #bbb;font-style:italic;color:#555;
                    hyphens:none;-webkit-hyphens:none}
    cite{display:block;margin-top:0.3em}
    table{width:100%;border-collapse:collapse}
    td,th{padding:4px 8px}
    table[border] td,table[border] th{border:1px solid #ccc}
    table:not([border]) td,table:not([border]) th{border:none}
    div,section,article,aside,span,main,header,footer{border:none}
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
        body:not([data-mrcomic-preserve-layout="true"]),
        body:not([data-mrcomic-preserve-layout="true"]) * {
          ${resolvedTextColor?.let { "color: $it !important;" } ?: ""}
        }
        body:not([data-mrcomic-preserve-layout="true"]) * {
          ${resolvedBackgroundColor?.let { "background-color: transparent !important;" } ?: ""}
          background-image: none !important;
          box-shadow: none !important;
        }
        body:not([data-mrcomic-preserve-layout="true"]) a,
        body:not([data-mrcomic-preserve-layout="true"]) a *,
        body:not([data-mrcomic-preserve-layout="true"]) .note-num,
        body:not([data-mrcomic-preserve-layout="true"]) .footnote-label {
          ${resolvedAccentColor?.let { "color: $it !important;" } ?: ""}
        }
        body:not([data-mrcomic-preserve-layout="true"]) h1,
        body:not([data-mrcomic-preserve-layout="true"]) h2,
        body:not([data-mrcomic-preserve-layout="true"]) h3,
        body:not([data-mrcomic-preserve-layout="true"]) h4,
        body:not([data-mrcomic-preserve-layout="true"]) h5,
        body:not([data-mrcomic-preserve-layout="true"]) h6,
        body:not([data-mrcomic-preserve-layout="true"]) blockquote,
        body:not([data-mrcomic-preserve-layout="true"]) cite,
        body:not([data-mrcomic-preserve-layout="true"]) table,
        body:not([data-mrcomic-preserve-layout="true"]) td,
        body:not([data-mrcomic-preserve-layout="true"]) th {
          ${resolvedTextColor?.let { "color: $it !important;" } ?: ""}
        }
        body:not([data-mrcomic-preserve-layout="true"]) h1,
        body:not([data-mrcomic-preserve-layout="true"]) h2,
        body:not([data-mrcomic-preserve-layout="true"]) h3,
        body:not([data-mrcomic-preserve-layout="true"]) h4,
        body:not([data-mrcomic-preserve-layout="true"]) h5,
        body:not([data-mrcomic-preserve-layout="true"]) h6 {
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
