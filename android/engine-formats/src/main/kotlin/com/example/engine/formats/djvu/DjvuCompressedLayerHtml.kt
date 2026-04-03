package com.example.engine.formats.djvu

internal fun buildDjvuCompressedLayerHtml(
    fileName: String,
    pageIndex: Int,
    totalPages: Int,
    hasCompressedTextLayer: Boolean,
    hasCompressedAnnotations: Boolean,
    pageInfo: DjvuPlaceholderPage? = null,
    visualLayerPlan: DjvuVisualLayerPlan? = null
): String = buildDjvuPlaceholderHtml(
    fileName = fileName,
    pageIndex = pageIndex,
    totalPages = totalPages,
    backendStatus = DjvuBackendStatus.Available("structured-iw44-render"),
    structure = null
)
