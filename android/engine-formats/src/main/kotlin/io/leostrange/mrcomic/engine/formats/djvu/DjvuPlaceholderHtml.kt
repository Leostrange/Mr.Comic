package io.leostrange.mrcomic.engine.formats.djvu

internal fun buildDjvuPlaceholderHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    backendStatus: DjvuBackendStatus?,
    structure: DjvuProbeResult?
): String {
    val statusSummary = when (backendStatus) {
        is DjvuBackendStatus.Available -> "DjVu backend ${backendStatus.backendName} already opened the document."
        is DjvuBackendStatus.Unavailable -> backendStatus.summary
        null -> "DjVu backend is currently unavailable."
    }
    val statusDetails = when (backendStatus) {
        is DjvuBackendStatus.Available ->
            "The file is already parsed by the DjVu backend, but raster page rendering is still being connected separately."
        is DjvuBackendStatus.Unavailable -> backendStatus.details
        null -> "The document stays in the library, but this build still uses a placeholder path for DjVu."
    }
    val pageInfo = structure?.pages?.getOrNull(pageIndex)
    val pageLabel = if (totalPages > 1) "Страница ${pageIndex + 1} из $totalPages" else "Одностраничный placeholder-режим"
    val topLevelSummary = structure
        ?.topLevelChunkIds
        ?.takeIf { it.isNotEmpty() }
        ?.joinToString(", ")
        ?: "не удалось извлечь верхнеуровневые chunk'и"
    val currentPageSummary = pageInfo
        ?.chunkIds
        ?.takeIf { it.isNotEmpty() }
        ?.joinToString(", ")
        ?: "страничные chunk'и пока не извлечены"
    val pageMetricsSummary = pageInfo
        ?.info
        ?.toSummary()
        ?: "геометрия страницы пока не извлечена"
    val pageSpanSummary = pageInfo
        ?.toByteRangeSummary()
        ?: "байтовый диапазон страницы пока не извлечён"

    val body = """
        <div class="wrap">
          <div class="badge">DjVu</div>
          <h1>${escapeDjvuHtml(fileName)}</h1>
          <p><strong>${escapeDjvuHtml(pageLabel)}</strong></p>
          <p>Файл распознан и импортирован, но в этой сборке пока не подключён рабочий встроенный DjVu renderer.</p>
          <p>Документ не потерян: он остаётся в библиотеке и откроется после подключения отдельного DjVu-движка.</p>
          <p><strong>Текущий статус:</strong> ${escapeDjvuHtml(statusSummary)}</p>
          <p>${escapeDjvuHtml(statusDetails)}</p>
          <p><strong>Контейнер:</strong> ${escapeDjvuHtml(structure?.formType ?: "unknown")}</p>
          <p><strong>Верхний уровень:</strong> ${escapeDjvuHtml(topLevelSummary)}</p>
          <p><strong>Страница ${pageIndex + 1}:</strong> ${escapeDjvuHtml(currentPageSummary)}</p>
          <p><strong>Размер страницы:</strong> ${escapeDjvuHtml(pageMetricsSummary)}</p>
          <p><strong>Сегмент файла:</strong> ${escapeDjvuHtml(pageSpanSummary)}</p>
          <ul>
            <li>поддержка DjVu уже вынесена в отдельный backend-слой</li>
            <li>текущий путь не ломает библиотеку, backup и импорт</li>
            <li>структура документа и page INFO уже читаются clean-room реализацией</li>
            <li>для каждой страницы уже известен её диапазон внутри контейнера</li>
            <li>реальный page render можно будет подключить отдельно, без перелома reader pipeline</li>
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

private fun DjvuPageInfo.toSummary(): String {
    val size = if (width != null && height != null) {
        "$width x $height px"
    } else {
        listOfNotNull(
            width?.let { "width $it px" },
            height?.let { "height $it px" }
        ).joinToString(", ")
    }
    return listOfNotNull(
        size.takeIf { it.isNotBlank() },
        dpi?.let { "$it dpi" }
    ).joinToString(", ").ifBlank { "геометрия страницы пока не извлечена" }
}

private fun DjvuPlaceholderPage.toByteRangeSummary(): String {
    val offset = fileOffset ?: return "байтовый диапазон страницы пока не извлечён"
    val length = byteLength ?: return "offset $offset bytes"
    return "offset $offset bytes, length $length bytes"
}

private fun escapeDjvuHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
