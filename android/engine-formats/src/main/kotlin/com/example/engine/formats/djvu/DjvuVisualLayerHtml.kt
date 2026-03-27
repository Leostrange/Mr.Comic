package com.example.engine.formats.djvu

internal fun buildDjvuVisualLayerHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    visualLayerPlan: DjvuVisualLayerPlan,
    pageInfo: DjvuPlaceholderPage? = null
): String {
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else "Одностраничный DjVu"
    val geometry = pageInfo?.info?.toVisualLayerSummary() ?: "геометрия страницы пока не извлечена"
    val detectedLayers = buildList {
        visualLayerPlan.backgroundLayer?.let { add("background: $it") }
        visualLayerPlan.foregroundLayer?.let { add("foreground: $it") }
        visualLayerPlan.maskLayer?.let { add("mask: $it") }
        visualLayerPlan.paletteChunk?.let { add("palette: $it") }
        if (visualLayerPlan.includedChunkCount > 0) add("INCL x${visualLayerPlan.includedChunkCount}")
    }.joinToString(", ")
    val nextDecoders = buildList {
        if (visualLayerPlan.usesIw44) add("IW44")
        if (visualLayerPlan.usesJb2) add("JB2")
        if (visualLayerPlan.includedChunkCount > 0) add("resource inclusion graph")
    }.joinToString(", ").ifBlank { "visual composite decode" }
    val chunkSummary = visualLayerPlan.chunkIds.joinToString(", ").ifBlank { "нет прямых chunk-идентификаторов" }

    val body = """
        <div class="wrap">
          <div class="badge">DjVu visual plan</div>
          <h1>${escapeDjvuVisualHtml(fileName)}</h1>
          <p><strong>${escapeDjvuVisualHtml(pageLabel)}</strong></p>
          <p>У этой страницы уже распознана визуальная композиция, но полный composite-render ещё не подключён.</p>
          <p><strong>Обнаруженные слои:</strong> ${escapeDjvuVisualHtml(detectedLayers)}</p>
          <p><strong>Размер страницы:</strong> ${escapeDjvuVisualHtml(geometry)}</p>
          <p><strong>Chunk-профиль:</strong> <code>${escapeDjvuVisualHtml(chunkSummary)}</code></p>
          <ul>
            <li><code>BG44 / FG44</code> указывают на IW44-слои изображения</li>
            <li><code>Sjbz</code> указывает на JB2-маску/shape layer</li>
            <li><code>INCL</code> значит, что страница ссылается на внешние общие ресурсы</li>
            <li>следующий шаг для этой ветки: подключение декодера ${escapeDjvuVisualHtml(nextDecoders)}</li>
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

private fun DjvuPageInfo.toVisualLayerSummary(): String = listOfNotNull(
    if (width != null && height != null) "$width x $height px" else null,
    dpi?.let { "$it dpi" }
).joinToString(", ").ifBlank { "геометрия страницы пока не извлечена" }

private fun escapeDjvuVisualHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
