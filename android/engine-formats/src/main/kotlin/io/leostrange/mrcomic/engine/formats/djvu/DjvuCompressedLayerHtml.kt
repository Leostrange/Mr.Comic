package io.leostrange.mrcomic.engine.formats.djvu

internal fun buildDjvuCompressedLayerHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    hasCompressedTextLayer: Boolean,
    hasCompressedAnnotations: Boolean,
    pageInfo: DjvuPlaceholderPage? = null,
    visualLayerPlan: DjvuVisualLayerPlan? = null
): String {
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else ""
    val detectedLayers = buildList {
        if (hasCompressedTextLayer) add("текст")
        if (hasCompressedAnnotations) add("примечания")
    }.joinToString(", ").ifBlank { "данные страницы" }
    val pageMetricsSummary = pageInfo?.info?.toCompressedLayerSummary()
    val visualSummary = visualLayerPlan?.let { plan ->
        buildList {
            plan.backgroundLayer?.let { add(it) }
            plan.foregroundLayer?.let { add(it) }
            plan.maskLayer?.let { add(it) }
        }.joinToString(", ")
    }
    val body = """
        <div class="wrap">
          ${if (pageLabel.isBlank()) "" else """<div class="page-label">${escapeDjvuCompressedHtml(pageLabel)}</div>"""}
          <h1>${escapeDjvuCompressedHtml(fileName.substringBeforeLast('.').replace('_', ' '))}</h1>
          <p>У этой страницы уже найдены встроенные ${escapeDjvuCompressedHtml(detectedLayers)}, но визуальный слой документа пока ещё не собран полностью.</p>
          ${pageMetricsSummary?.let { "<p class=\"meta\">${escapeDjvuCompressedHtml(it)}</p>" }.orEmpty()}
          ${if (visualSummary.isNullOrBlank()) "" else "<p class=\"meta\">Слои: ${escapeDjvuCompressedHtml(visualSummary)}</p>"}
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

private fun DjvuPageInfo.toCompressedLayerSummary(): String = listOfNotNull(
    if (width != null && height != null) "$width x $height px" else null,
    dpi?.let { "$it dpi" }
).joinToString(", ").ifBlank { "геометрия страницы пока не извлечена" }

private fun escapeDjvuCompressedHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
