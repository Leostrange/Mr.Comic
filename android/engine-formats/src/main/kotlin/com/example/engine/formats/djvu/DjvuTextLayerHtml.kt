package com.example.engine.formats.djvu

internal fun buildDjvuTextLayerHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    textLayer: DjvuTextLayer,
    hasCompressedFallback: Boolean,
    annotations: DjvuAnnotations? = null
): String {
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else "Одностраничный текстовый слой"
    val compressedNote = if (hasCompressedFallback) {
        """<p class="subtle-note">Дополнительно у документа есть сжатый текстовый слой.</p>"""
    } else {
        ""
    }
    val annotationBlock = annotations?.let { renderAnnotations(it) }.orEmpty()
    val body = """
        <div class="wrap">
          <div class="meta-row">
            <div class="badge">DjVu</div>
            <div class="page-label">${escapeDjvuTextHtml(pageLabel)}</div>
          </div>
          <h1>${escapeDjvuTextHtml(fileName)}</h1>
          $compressedNote
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
              padding: 24px 18px 36px;
              font-family: Georgia, serif;
              background: transparent;
              color: inherit;
            }
            .wrap {
              max-width: 760px;
              margin: 0 auto;
              line-height: 1.7;
            }
            .meta-row {
              display: flex;
              align-items: center;
              justify-content: space-between;
              gap: 12px;
              margin-bottom: 12px;
              flex-wrap: wrap;
            }
            .badge {
              display: inline-block;
              padding: 6px 10px;
              border-radius: 999px;
              font-size: 12px;
              letter-spacing: 0.08em;
              text-transform: uppercase;
              background: rgba(128,128,128,0.16);
            }
            .page-label {
              font-size: 14px;
              opacity: 0.72;
            }
            h1 {
              margin: 0 0 18px;
              font-size: 24px;
              line-height: 1.2;
            }
            p {
              font-size: 17px;
            }
            .subtle-note {
              margin: 0 0 14px;
              font-size: 14px;
              opacity: 0.72;
            }
            .sheet {
              margin-top: 8px;
              padding: 18px 20px;
              border-radius: 22px;
              background: rgba(128,128,128,0.08);
            }
            .sheet p {
              margin: 0 0 1em;
            }
            .sheet p:last-child {
              margin-bottom: 0;
            }
            .annotation-sheet {
              margin-top: 16px;
              padding: 16px 18px;
              border-radius: 20px;
              background: rgba(128,128,128,0.06);
              font-family: "Courier New", monospace;
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
    val compressedNote = if (annotations.hasCompressedChunks) {
        "<p><strong>Примечание:</strong> рядом также есть <code>ANTz</code>, но BZZ-декодер для compressed annotations пока не подключён.</p>"
    } else {
        ""
    }
    val annotationText = annotations.text.takeIf { it.isNotBlank() }
        ?.let(::escapeDjvuTextHtml)
        ?.replace("\n", "<br>")
        ?: "В этой странице есть только compressed annotations."
    return """
        <section class="annotation-sheet">
          <strong>Annotations</strong>
          $compressedNote
          <div>$annotationText</div>
        </section>
    """.trimIndent()
}

private fun escapeDjvuTextHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
