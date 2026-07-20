package io.leostrange.mrcomic.engine.formats.djvu

internal fun buildDjvuAnnotationsHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    annotations: DjvuAnnotations
): String {
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else ""
    val annotationText = annotations.text.takeIf { it.isNotBlank() }
        ?.let(::escapeDjvuAnnotationsHtml)
        ?.replace("\n", "<br>")
        ?: "У страницы есть annotation-layer."
    val body = """
        <div class="wrap">
          ${if (pageLabel.isBlank()) "" else """<div class="page-label">${escapeDjvuAnnotationsHtml(pageLabel)}</div>"""}
          <h1>${escapeDjvuAnnotationsHtml(fileName.substringBeforeLast('.').replace('_', ' '))}</h1>
          <p>У этой страницы извлечены встроенные примечания документа.</p>
          <section class="annotation-sheet">
            <strong>Примечания страницы</strong>
            <div>$annotationText</div>
          </section>
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
            .page-label {
              margin-bottom: 12px;
              font-size: 13px;
              opacity: 0.62;
              text-align: center;
            }
            h1 {
              margin: 0 0 0.85em;
              font-size: 1.4rem;
              line-height: 1.25;
              font-weight: 700;
              text-align: center;
            }
            p {
              font-size: 17px;
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

private fun escapeDjvuAnnotationsHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
