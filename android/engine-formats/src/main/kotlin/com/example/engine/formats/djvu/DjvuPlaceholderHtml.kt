package com.example.engine.formats.djvu

internal fun buildDjvuPlaceholderHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    backendStatus: DjvuBackendStatus?,
    structure: DjvuProbeResult?
): String {
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else ""
    val pageInfo = structure?.pages?.getOrNull(pageIndex)
    val dimensionLine = pageInfo?.info?.let { info ->
        listOfNotNull(
            if (info.width != null && info.height != null) "${info.width} × ${info.height}" else null,
            info.dpi?.let { "${it} dpi" }
        ).joinToString(" · ")
    }.orEmpty()

    val body = """
        <div class="wrap">
          <div class="cover-area">
            <div class="icon">📄</div>
            <h1>${escapeDjvuHtml(fileName)}</h1>
            ${if (pageLabel.isNotEmpty()) "<p class=\"page-label\">${escapeDjvuHtml(pageLabel)}</p>" else ""}
            ${if (dimensionLine.isNotEmpty()) "<p class=\"dim\">${escapeDjvuHtml(dimensionLine)}</p>" else ""}
          </div>
          <div class="info-card">
            <p>Данная страница DjVu содержит сканированное изображение.</p>
            <p>Растровый рендеринг для этого типа страницы пока не доступен в текущей версии приложения.</p>
          </div>
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
              padding: 0;
              font-family: -apple-system, system-ui, sans-serif;
              background: transparent;
              color: inherit;
            }
            .wrap {
              min-height: 100vh;
              display: flex;
              flex-direction: column;
              align-items: center;
              justify-content: center;
              padding: 24px 20px;
              box-sizing: border-box;
            }
            .cover-area {
              text-align: center;
              margin-bottom: 24px;
            }
            .icon {
              font-size: 48px;
              margin-bottom: 12px;
              opacity: 0.6;
            }
            h1 {
              margin: 0 0 8px;
              font-size: 20px;
              font-weight: 600;
              line-height: 1.3;
            }
            .page-label {
              margin: 0;
              font-size: 15px;
              opacity: 0.7;
            }
            .dim {
              margin: 4px 0 0;
              font-size: 13px;
              opacity: 0.5;
            }
            .info-card {
              max-width: 320px;
              padding: 16px 20px;
              border-radius: 16px;
              background: rgba(128,128,128,0.08);
              text-align: center;
            }
            .info-card p {
              margin: 0 0 8px;
              font-size: 14px;
              line-height: 1.5;
              opacity: 0.7;
            }
            .info-card p:last-child {
              margin-bottom: 0;
            }
          </style>
        </head>
        <body>$body</body>
        </html>
    """.trimIndent()
}

private fun escapeDjvuHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
