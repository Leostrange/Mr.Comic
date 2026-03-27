package com.example.engine.formats.djvu

internal fun buildDjvuCompressedLayerHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    hasCompressedTextLayer: Boolean,
    hasCompressedAnnotations: Boolean,
    pageInfo: DjvuPlaceholderPage? = null,
    visualLayerPlan: DjvuVisualLayerPlan? = null
): String {
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else "Одностраничный compressed-layer fallback"
    val detectedLayers = buildList {
        if (hasCompressedTextLayer) add("TXTz")
        if (hasCompressedAnnotations) add("ANTz")
    }.joinToString(", ")
    val pageMetricsSummary = pageInfo?.info?.toCompressedLayerSummary() ?: "геометрия страницы пока не извлечена"
    val visualSummary = visualLayerPlan?.let { plan ->
        buildList {
            plan.backgroundLayer?.let { add("background: $it") }
            plan.foregroundLayer?.let { add("foreground: $it") }
            plan.maskLayer?.let { add("mask: $it") }
            plan.paletteChunk?.let { add("palette: $it") }
            if (plan.includedChunkCount > 0) add("INCL x${plan.includedChunkCount}")
        }.joinToString(", ")
    }
    val body = """
        <div class="wrap">
          <div class="badge">DjVu compressed</div>
          <h1>${escapeDjvuCompressedHtml(fileName)}</h1>
          <p><strong>${escapeDjvuCompressedHtml(pageLabel)}</strong></p>
          <p>У этой страницы уже обнаружены сжатые слои <code>${escapeDjvuCompressedHtml(detectedLayers)}</code>, но BZZ-декодер пока ещё не подключён.</p>
          <p>Это значит, что документ импортирован корректно, page-структура прочитана, и ридер уже понимает, что внутри есть полезные данные страницы.</p>
          <p><strong>Размер страницы:</strong> ${escapeDjvuCompressedHtml(pageMetricsSummary)}</p>
          ${if (visualSummary.isNullOrBlank()) "" else "<p><strong>Визуальные слои:</strong> ${escapeDjvuCompressedHtml(visualSummary)}</p>"}
          <ul>
            <li><code>TXTz</code> хранит сжатый текстовый слой страницы</li>
            <li><code>ANTz</code> хранит сжатые аннотации / mapareas</li>
            <li>следующий шаг для этой ветки: подключение BZZ-декодера</li>
          </ul>
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
              max-width: 720px;
              margin: 0 auto;
              line-height: 1.6;
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
            p, li {
              font-size: 17px;
            }
            ul {
              padding-left: 20px;
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
