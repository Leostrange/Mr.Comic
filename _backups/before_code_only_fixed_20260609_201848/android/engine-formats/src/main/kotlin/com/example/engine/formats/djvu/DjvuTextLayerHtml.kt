package com.example.engine.formats.djvu

@Suppress("UNUSED_PARAMETER")
internal fun buildDjvuTextLayerHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    textLayer: DjvuTextLayer,
    hasCompressedFallback: Boolean,
    annotations: DjvuAnnotations? = null
): String {
    val annotationBlock = annotations?.let { renderAnnotations(it) }.orEmpty()
    val body = """
        <div class="wrap">
          <article class="sheet">${renderParagraphs(textLayer.text)}</article>
          $annotationBlock
        </div>
    """.trimIndent()

    return """
        <!DOCTYPE html>
        <html lang="ru">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width,initial-scale=1">
          <style>
            :root { color-scheme: dark light; }
            body {
              margin: 0;
              padding: 20px 18px 36px;
              font-family: Georgia, serif;
              background: transparent;
              color: inherit;
            }
            .wrap {
              max-width: 760px;
              margin: 0 auto;
              line-height: 1.7;
            }
            p {
              font-size: 17px;
              text-align: justify;
              text-indent: 1.5em;
            }
            .subtle-note {
              margin: 0 0 14px;
              font-size: 14px;
              opacity: 0.72;
            }
            .sheet {
              margin-top: 8px;
            }
            .sheet p {
              margin: 0 0 1em;
            }
            .sheet p:first-child {
              text-indent: 0;
            }
            .sheet p:last-child {
              margin-bottom: 0;
            }
            .annotation-sheet {
              margin-top: 16px;
              padding: 16px 18px;
              border-radius: 20px;
              background: rgba(128,128,128,0.06);
              font-family: Georgia, serif;
              font-size: 14px;
              line-height: 1.6;
              white-space: pre-wrap;
              word-break: break-word;
            }
          </style>
        </head>
        <body>$body</body>
        </html>
    """.trimIndent()
}

private fun renderParagraphs(text: String): String {
    val paragraphs = text
        .replace("\r\n", "\n")
        .replace('\r', '\n')
        .split(Regex("\n{2,}"))
        .map { it.trim() }
        .filter { it.isNotEmpty() }
    if (paragraphs.isEmpty()) {
        return "<p>Текстовый слой извлечён, но в нём нет читаемого содержимого.</p>"
    }
    return paragraphs.joinToString(separator = "") { paragraph ->
        "<p>${escapeDjvuTextHtml(paragraph).replace("\n", "<br>")}</p>"
    }
}

private fun renderAnnotations(annotations: DjvuAnnotations): String {
    val annotationText = annotations.text.takeIf { it.isNotBlank() }
        ?.let(::escapeDjvuTextHtml)
        ?.replace("\n", "<br>")
        ?: return ""
    return """
        <section class="annotation-sheet">
          <div>$annotationText</div>
        </section>
    """.trimIndent()
}

private fun escapeDjvuTextHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
