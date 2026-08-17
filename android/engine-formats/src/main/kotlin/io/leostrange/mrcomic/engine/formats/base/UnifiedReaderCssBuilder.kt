package io.leostrange.mrcomic.engine.formats.base

internal fun buildReaderDocumentCss(
    maxWidth: String = "960px",
    padding: String = "0 0.75em",
    bodyMargin: String = "0 auto",
    fontSize: String = "18px",
    lineHeight: String = "1.6",
    bodyColor: String = "inherit",
    bodyBackground: String = "transparent",
    textAlignOnBody: Boolean = true,
    includeHyphens: Boolean = false,
    includeTypography: Boolean = true,
    includeRichElements: Boolean = true,
    headingFontWeight: String = "700",
    headingLineHeight: String = "1.3",
    headingMargin: String = "1.2em 0 0.5em",
    imgMargin: String = "8px auto",
    hrMargin: String = "1rem 0",
    blockquoteStyle: String = "",
    extraCss: String = ""
): String = buildString {
    val hyphenDecl = if (includeHyphens) {
        "hyphens: auto; -webkit-hyphens: auto; word-break: normal;"
    } else {
        "hyphens: manual; -webkit-hyphens: manual; word-break: normal;"
    }
    append("""
    :root {
      --mrcomic-font-size: $fontSize;
      --mrcomic-line-height: $lineHeight;
      --mrcomic-font-family: Georgia, "Times New Roman", serif;
      --mrcomic-letter-spacing: 0em;
      --mrcomic-word-spacing: 0em;
      --mrcomic-paragraph-spacing: 0.2em;
      --mrcomic-text-align: ${if (textAlignOnBody) "justify" else "left"};
      --mrcomic-font-weight: normal;
      --mrcomic-hyphens: manual;
      --mrcomic-max-width: $maxWidth;
      --mrcomic-padding: $padding;
      --mrcomic-body-margin: $bodyMargin;
      --mrcomic-heading-font-weight: $headingFontWeight;
      --mrcomic-heading-line-height: $headingLineHeight;
      --mrcomic-heading-margin: $headingMargin;
      --mrcomic-img-margin: $imgMargin;
      --mrcomic-hr-margin: $hrMargin;
    }
    body {
      margin: var(--mrcomic-body-margin);
      padding: var(--mrcomic-padding);
      max-width: var(--mrcomic-max-width);
      box-sizing: border-box;
      font-family: var(--mrcomic-font-family);
      font-size: var(--mrcomic-font-size);
      line-height: var(--mrcomic-line-height);
      color: $bodyColor;
      background: $bodyBackground;
      ${if (textAlignOnBody) "text-align: var(--mrcomic-text-align);" else ""}
      overflow-wrap: break-word;
      word-break: normal;
      letter-spacing: var(--mrcomic-letter-spacing);
      word-spacing: var(--mrcomic-word-spacing);
      font-weight: var(--mrcomic-font-weight);
      $hyphenDecl
    }
    body:not([data-mrcomic-preserve-layout="true"]) * {
      font-family: inherit !important;
    }
    """.trimIndent())

    if (includeTypography) {
        append("""
    p, div.paragraph {
      margin: var(--mrcomic-paragraph-spacing) 0;
      ${if (!textAlignOnBody) "text-align: var(--mrcomic-text-align); " else ""}text-indent: 1.5em;
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
      font-weight: var(--mrcomic-heading-font-weight);
      line-height: var(--mrcomic-heading-line-height);
      margin: var(--mrcomic-heading-margin);
      $hyphenDecl
    }
    h1 { font-size: clamp(1.1em, 1.7em, 2rem); letter-spacing: 0.04em; text-transform: uppercase; }
    h2 { font-size: clamp(1.05em, 1.35em, 1.6rem); letter-spacing: 0.02em; }
    h3 { font-size: clamp(1em, 1.15em, 1.3rem); }
    h4, h5, h6 { font-size: 1em; }
    """.trimIndent())
    }

    append("""
    img { width: auto; max-width: 100% !important; height: auto !important; display: block; margin: var(--mrcomic-img-margin); page-break-inside: avoid; break-inside: avoid; }
    a[href] { -webkit-user-select: text; user-select: text; }
    """.trimIndent())

    if (includeRichElements) {
        append("""
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
    table { width: 100%; max-width: 100%; border-collapse: collapse; margin: 1rem 0; table-layout: auto; }
    table.auto-layout { table-layout: auto; }
    .table-wrapper, .mrcomic-table-scroll { width: 100%; overflow-x: auto; -webkit-overflow-scrolling: touch; }
    .mrcomic-table-scroll table { border-collapse: collapse; margin: 0.8em 0; table-layout: auto; width: auto; max-width: 100%; }
    .mrcomic-table-scroll td, .mrcomic-table-scroll th { padding: 0.4rem 0.6rem; border: 1px solid rgba(120,120,120,0.3); text-align: left; word-wrap: break-word; }
    th, td { padding: 0.5rem 0.65rem; text-align: left; word-wrap: break-word; overflow-wrap: break-word; max-width: 100%; }
    table[border] th, table[border] td { border: 1px solid rgba(120,120,120,0.35); }
    table:not([border]) th, table:not([border]) td { border: none; }
    th { font-weight: 600; }
    hr { border: 0; border-top: 1px solid rgba(120,120,120,0.35); margin: var(--mrcomic-hr-margin); }
    del { opacity: 0.75; }
    .footnotes { margin-top: 1.25rem; font-size: 0.94em; }
    .footnotes ol { padding-left: 1.25rem; }
    blockquote {
      ${blockquoteStyle.ifBlank {
        "margin: 1rem 0; padding-left: 1rem; border-left: 3px solid rgba(120,120,120,0.35); text-indent: 0; text-align: left;"
      }}
    }
    center, [align="center"], .center { text-align: center; text-indent: 0; }
    [align="right"], .right { text-align: right; text-indent: 0; }
    [align="left"], .left { text-align: left; }
    """.trimIndent())
    }

    append("""
    div, section, article, aside, span, main, header, footer { border: none; }
    a[href] {
      color: var(--mrcomic-reader-accent-color, #1a6f9a);
      text-decoration: underline;
      text-decoration-thickness: 0.08em;
      text-underline-offset: 0.14em;
    }
    """.trimIndent())

    if (extraCss.isNotBlank()) {
        append("\n$extraCss")
    }
}

internal val READER_BASE_DOCUMENT_CSS =
    buildReaderDocumentCss()

internal val READER_MOBI_DOCUMENT_CSS =
    buildReaderDocumentCss(
        maxWidth = "680px",
        fontSize = "1.05rem",
        lineHeight = "1.7",
        textAlignOnBody = false,
        headingMargin = "1.6em 0 0.7em",
        imgMargin = "0.8rem auto",
        hrMargin = "1.5em 3em",
        blockquoteStyle = "margin: 1em 1.5em; padding-left: 1em; border-left: 3px solid rgba(120,120,120,0.3); font-style: italic;",
        extraCss = """
    h4, h5, h6 { margin: 1.2em 0 0.5em; }
    .chapter, .titlepage, .title-page { page-break-before: always; break-before: page; }
    p[align="center"], center p, .center, .center p { text-align: center; text-indent: 0; }
    p[align="center"], center, center p, .center, .center p { margin: 0.9em 0; }
    center, [align="center"] { text-align: center; text-indent: 0; }
    center + p, [align="center"] + p { text-indent: 0; }
        """.trimIndent()
    )

internal val READER_PRESERVE_LAYOUT_DOCUMENT_CSS =
    buildReaderDocumentCss(
        bodyMargin = "0",
        padding = "8px 16px 44px",
        includeTypography = false,
        includeRichElements = false,
        imgMargin = "auto",
        extraCss = """
    word-wrap: break-word;
    pre, code { white-space: pre-wrap; word-break: break-word; }
    table { max-width: 100%; border-collapse: collapse; }
        """.trimIndent()
    ).replace("display: block; margin: auto;", "")

internal val EPUB_READER_DOCUMENT_CSS =
    buildReaderDocumentCss(
        bodyColor = "#1a1a1a",
        bodyBackground = "#fafafa",
        headingFontWeight = "bold",
        headingLineHeight = "normal",
        includeHyphens = false,
        includeRichElements = false,
        blockquoteStyle = "margin: 0.8em 1.5em; padding-left: 1em; border-left: 3px solid #bbb; font-style: italic; color: #555; hyphens: none; -webkit-hyphens: none;",
        extraCss = """
    cite { display: block; margin-top: 0.3em; border-left: 3px solid #bbb; font-style: italic; color: #555; hyphens: none; -webkit-hyphens: none; }
    table { width: 100%; border-collapse: collapse; }
    td, th { padding: 4px 8px; }
    table[border] td, table[border] th { border: 1px solid #ccc; }
    table:not([border]) td, table:not([border]) th { border: none; }
    .center, .align-center, [align="center"] { text-align: center !important; text-indent: 0; }
    .right, .align-right, [align="right"] { text-align: right !important; text-indent: 0; }
    .left, .align-left, [align="left"] { text-align: left !important; }
    a.fn, a[epub\\:type~="noteref"], a[href*="FbAutId_"], a[href*="#FbAutId_"], a[href^="fbanchor://"], a[title][href*="#"] {
      font-size: 0.75em; vertical-align: super; line-height: 1; color: #1a6f9a; font-weight: bold; text-decoration: none; }
    a.fn *, a[epub\\:type~="noteref"] *, a[href*="FbAutId_"] *, a[href*="#FbAutId_"] *, a[href^="fbanchor://"] *, a[title][href*="#"] * {
      color: #1a6f9a; }
    p.note-item, aside[epub\\:type~="footnote"], section[epub\\:type~="footnote"] > p:first-child {
      margin: 0.6em 0; padding-left: 2.8em; text-indent: -2.8em; text-align: left; }
    section[epub\\:type~="footnotes"],
    [epub\\:type~="footnote"],
    [role="doc-footnote"], [role="doc-endnote"],
    div[id^="fn"], div[id^="note"] {
      display: none !important;
      position: absolute !important;
      width: 0 !important;
      height: 0 !important;
      overflow: hidden !important;
    }
    .note-num, .footnote-label { color: #1a6f9a; font-weight: bold; display: inline-block; min-width: 2.8em; text-indent: 0; }
    @media (prefers-color-scheme: dark) {
      body { color: #e8e8e8; background: #1a1a1a; }
      h1, h2, h3, h4, h5, h6, .calibre5, .calibre12 { color: #e8e8e8; background: #262626; border-color: #555; }
      blockquote, cite { border-left-color: #555; color: #aaa; }
      td, th { border-color: #444; }
      a[href] { color: #5ab4dc; }
      a.fn, a[epub\\:type~="noteref"], a[href*="FbAutId_"], a[href*="#FbAutId_"], a[href^="fbanchor://"], a[title][href*="#"], .note-num, .footnote-label { color: #5ab4dc; }
      a.fn *, a[epub\\:type~="noteref"] *, a[href*="FbAutId_"] *, a[href*="#FbAutId_"] *, a[href^="fbanchor://"] *, a[title][href*="#"] * { color: #5ab4dc; }
    }
        """.trimIndent()
    )

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
      font-family: inherit !important;
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
    accentColorOverride: String? = null,
    lang: String? = null
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
    val langAttr = if (!lang.isNullOrBlank()) """ lang="$lang"""" else ""
    return """
        <!DOCTYPE html>
        <html$langAttr>
        <head>
          <meta charset="UTF-8">
          $baseTag
          $headHtml
        </head>
        <body$preserveLayoutAttr>$body</body>
        </html>
    """.trimIndent()
}
