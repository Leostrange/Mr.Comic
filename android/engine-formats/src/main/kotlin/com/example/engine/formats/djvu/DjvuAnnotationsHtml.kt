package com.example.engine.formats.djvu

internal fun buildDjvuAnnotationsHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    annotations: DjvuAnnotations
): String {
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else "Одностраничный annotation-layer"
    val compressedNote = if (annotations.hasCompressedChunks) {
        "<p><strong>Примечание:</strong> рядом также есть <code>ANTz</code>, но BZZ-декодер для compressed annotations пока не подключён.</p>"
    } else {
        ""
    }
    val annotationText = annotations.text.takeIf { it.isNotBlank() }
        ?.let(::escapeDjvuAnnotationsHtml)
        ?.replace("\n", "<br>")
        ?: "В этой странице есть только compressed annotations."
    val body = """
        <div class="wrap">
          <div class="badge">DjVu annotations</div>
          <h1>${escapeDjvuAnnotationsHtml(fileName)}</h1>
          <p><strong>${escapeDjvuAnnotationsHtml(pageLabel)}</strong></p>
          <p>Изображение страницы пока не отрисовывается, но встроенный annotation-layer уже извлечён и показан отдельно.</p>
          $compressedNote
          <section class="annotation-sheet">
            <strong>Annotations</strong>
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
            .badge {
              display: inline-block;
              padding: 6px 10px;
              border-radius: 999px;
              font-size: 12px;
              letter-spacing: 0.08em;
              text-transform: uppercase;
              background: rgba(128,128,128,0.16);
              margin-bottom: 14px;
            }
            h1 {
              margin: 0 0 12px;
              font-size: 26px;
              line-height: 1.2;
            }
            p {
              font-size: 17px;
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

private fun escapeDjvuAnnotationsHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
