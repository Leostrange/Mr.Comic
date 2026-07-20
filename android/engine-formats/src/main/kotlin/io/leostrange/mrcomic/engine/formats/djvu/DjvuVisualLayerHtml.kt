package io.leostrange.mrcomic.engine.formats.djvu

internal fun buildDjvuVisualLayerHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    visualLayerPlan: DjvuVisualLayerPlan,
    pageInfo: DjvuPlaceholderPage? = null
): String {
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else ""
    val geometry = pageInfo?.info?.toVisualLayerSummary()
    val width = pageInfo?.info?.width?.coerceAtLeast(1) ?: 900
    val height = pageInfo?.info?.height?.coerceAtLeast(1) ?: 1300
    val detectedLayers = buildList {
        visualLayerPlan.backgroundLayer?.let { add(it) }
        visualLayerPlan.foregroundLayer?.let { add(it) }
        visualLayerPlan.maskLayer?.let { add(it) }
        if (visualLayerPlan.includedChunkCount > 0) add("INCL x${visualLayerPlan.includedChunkCount}")
    }.joinToString(", ")
    val unsupportedFeatures = visualLayerPlan.unsupportedRenderFeatures
    val diagnostics = buildList {
        if (detectedLayers.isNotBlank()) add(detectedLayers)
        addAll(unsupportedFeatures)
    }
    val supportNotice = if (unsupportedFeatures.isEmpty()) {
        "Визуальный слой DjVu"
    } else {
        "Скан DjVu с композитными слоями"
    }

    val body = """
        <div class="wrap">
          ${if (pageLabel.isBlank()) "" else """<div class="page-label">${escapeDjvuVisualHtml(pageLabel)}</div>"""}
          <div class="scan" role="img" aria-label="${escapeDjvuVisualHtml(fileName)}">
            <div class="scan-inner">
              <div class="scan-title">${escapeDjvuVisualHtml(fileName.substringBeforeLast('.').replace('_', ' '))}</div>
              <div class="scan-note">${escapeDjvuVisualHtml(supportNotice)}</div>
            </div>
          </div>
          <div class="meta-row">
            ${geometry?.let { "<span>${escapeDjvuVisualHtml(it)}</span>" }.orEmpty()}
            ${diagnostics.joinToString("") { "<span>${escapeDjvuVisualHtml(it)}</span>" }}
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
              padding: 12px 10px 28px;
              font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
              background: #111;
              color: rgba(255,255,255,0.78);
            }
            .wrap {
              max-width: min(100%, 900px);
              margin: 0 auto;
            }
            .page-label {
              margin-bottom: 8px;
              font-size: 13px;
              opacity: 0.62;
              text-align: center;
            }
            .scan {
              width: 100%;
              aspect-ratio: $width / $height;
              min-height: 72vh;
              max-height: none;
              box-sizing: border-box;
              background:
                linear-gradient(90deg, rgba(0,0,0,0.04) 0, rgba(0,0,0,0) 11%, rgba(0,0,0,0.035) 19%, rgba(0,0,0,0) 33%),
                repeating-linear-gradient(0deg, rgba(0,0,0,0.035) 0 1px, transparent 1px 22px),
                #f5f1e8;
              border: 1px solid rgba(0,0,0,0.22);
              box-shadow: 0 8px 24px rgba(0,0,0,0.28);
              color: #151515;
              display: flex;
              align-items: center;
              justify-content: center;
              overflow: hidden;
            }
            .scan-inner {
              width: 74%;
              text-align: center;
              opacity: 0.72;
              border-top: 2px solid rgba(0,0,0,0.3);
              border-bottom: 2px solid rgba(0,0,0,0.3);
              padding: 18px 0;
            }
            .scan-title {
              font-family: Georgia, "Times New Roman", serif;
              font-size: 20px;
              line-height: 1.32;
              overflow-wrap: anywhere;
            }
            .scan-note {
              margin-top: 12px;
              font-size: 12px;
              letter-spacing: 0.08em;
              text-transform: uppercase;
              opacity: 0.58;
            }
            .meta-row {
              display: flex;
              flex-wrap: wrap;
              gap: 8px;
              justify-content: center;
              margin-top: 10px;
              font-size: 12px;
              opacity: 0.68;
            }
            .meta-row span {
              padding: 3px 7px;
              border-radius: 999px;
              background: rgba(255,255,255,0.08);
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
    .replace("\"", "&quot;")
    .replace("'", "&#39;")
