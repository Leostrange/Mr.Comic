package com.example.engine.formats.djvu

internal fun buildDjvuVisualLayerHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    visualLayerPlan: DjvuVisualLayerPlan,
    pageInfo: DjvuPlaceholderPage? = null
): String = buildDjvuPlaceholderHtml(
    fileName = fileName,
    pageIndex = pageIndex,
    totalPages = totalPages,
    backendStatus = DjvuBackendStatus.Available("structured-iw44-render"),
    structure = null
)
