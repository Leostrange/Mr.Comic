package com.example.engine.formats.djvu

internal fun buildDjvuVisualLayerHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    visualLayerPlan: DjvuVisualLayerPlan,
    pageInfo: DjvuPlaceholderPage? = null
): String {
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else ""
    val geometry = pageInfo?.info?.toVisualLayerSummary()
    val detectedLayers = buildList {
        visualLayerPlan.backgroundLayer?.let { add(it) }
        visualLayerPlan.foregroundLayer?.let { add(it) }
        visualLayerPlan.maskLayer?.let { add(it) }
        if (visualLayerPlan.includedChunkCount > 0) add("INCL x${visualLayerPlan.includedChunkCount}")
    }.joinToString(", ")

    val body = """
        <div class="wrap">
          ${if (pageLabel.isBlank()) "" else """<div class="page-label">${escapeDjvuVisualHtml(pageLabel)}</div>"""}
          <h1>${escapeDjvuVisualHtml(fileName.substringBeforeLast('.').replace('_', ' '))}</h1>
          <p>Для этой страницы уже распознана графическая композиция документа, но полноценная отрисовка изображения ещё не завершена.</p>
          ${if (detectedLayers.isBlank()) "" else "<p class=\"meta\">Слои: ${escapeDjvuVisualHtml(detectedLayers)}</p>"}
          ${geometry?.let { "<p class=\"meta\">${escapeDjvuVisualHtml(it)}</p>" }.orEmpty()}
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
            .meta {
              font-size: 14px;
              opacity: 0.74;
            }
          </style>
        </head>
        <body>$body</body>
        </html>
    """.trimIndent()
}

private fun DjvuPageInfo.toVisualLayerSummary(): String = listOfNotNull(
    if (width != null && height != null) "$width x $height px" else null,
    dpi?.let { "$it dpi" }
).joinToString(", ").ifBlank { "геометрия страницы пока не извлечена" }

private fun escapeDjvuVisualHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
