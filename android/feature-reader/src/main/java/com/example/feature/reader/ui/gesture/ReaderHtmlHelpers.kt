package com.example.feature.reader.ui.gesture

import org.json.JSONTokener

/**
 * Pure HTML/JS helpers for the reader.
 *
 * Extracted from ReaderScreen so the string-manipulation logic can be
 * tested without WebView/Compose dependencies. All functions are stateless.
 */
internal object ReaderHtmlHelpers {

    /**
     * Injects a `<style>` with body inset padding into [html] just before `</head>`.
     * Called at load time so the first WebView paint already has the right padding.
     */
    fun injectBodyInsetCss(
        html: String,
        topPx: Int,
        bottomPx: Int,
        horizontalPx: Int = 0,
        maxWidthPx: Int = 0,
        isRtl: Boolean = false
    ): String {
        val horizontalCss = if (horizontalPx > 0) {
            "padding-left:${horizontalPx}px!important;padding-right:${horizontalPx}px!important;"
        } else ""
        val maxWidthCss = if (maxWidthPx > 0) {
            "max-width:${maxWidthPx}px!important;margin-left:auto!important;margin-right:auto!important;"
        } else ""
        val rtlCss = if (isRtl) "direction:rtl!important;text-align:right!important;unicode-bidi:embed!important;" else ""
        val style = "<style id='__mrcomic_body_inset'>" +
            "body{padding-top:${topPx}px!important;padding-bottom:${bottomPx}px!important;$horizontalCss$maxWidthCss$rtlCss}" +
            "</style>"
        val headCloseIdx = html.indexOf("</head>").takeIf { it >= 0 }
            ?: html.indexOf("</HEAD>").takeIf { it >= 0 }
        return if (headCloseIdx != null) {
            html.substring(0, headCloseIdx) + style + html.substring(headCloseIdx)
        } else {
            style + html
        }
    }

    /**
     * Decodes a paged-layout metrics JSON string from WebView.
     */
    data class PagedLayoutMetrics(
        val handled: Boolean = false,
        val pageIndex: Int = 0,
        val pageCount: Int = 1,
        val clipHeight: Int = 0,
        val usableHeight: Int = 0
    )

    fun decodePagedLayoutMetrics(rawValue: String?): PagedLayoutMetrics? = runCatching {
        val decoded = JSONTokener(rawValue ?: return null).nextValue()?.toString().orEmpty()
        val json = JSONTokener(decoded).nextValue() as? org.json.JSONObject ?: return null
        PagedLayoutMetrics(
            handled = json.optBoolean("handled", false),
            pageIndex = json.optInt("pageIndex", 0).coerceAtLeast(0),
            pageCount = json.optInt("pageCount", 1).coerceAtLeast(1),
            clipHeight = json.optInt("clipHeight", 0).coerceAtLeast(0),
            usableHeight = json.optInt("usableHeight", 0).coerceAtLeast(0)
        )
    }.getOrNull()

    /**
     * Injects a bootstrap theme style into HTML before the closing </head> tag.
     * Sets background and text colors for the reader.
     */
    fun buildThemedHtmlDocument(html: String, bg: String, fg: String): String {
        val bootstrapStyle = """
            <style id="__reader_bootstrap_theme">
              html, body { background: $bg !important; color: $fg !important; }
              body:not([data-mrcomic-preserve-layout="true"]) { margin: 0 !important; color: $fg !important; }
              body:not([data-mrcomic-preserve-layout="true"]) a[href] {
                color: var(--mrcomic-reader-accent-color, #1a6f9a) !important;
                text-decoration: underline !important;
              }
              body [bgcolor], body [style*="background-color:#fff"], body [style*="background:#fff"],
              body [style*="background-color:white"], body [style*="background:white"] {
                background-color: transparent !important; background-image: none !important;
              }
            </style>
        """.trimIndent()

        return when {
            Regex("(?i)</head>").containsMatchIn(html) ->
                html.replaceFirst(Regex("(?i)</head>"), "$bootstrapStyle</head>")
            Regex("(?i)<body[^>]*>").containsMatchIn(html) ->
                html.replaceFirst(Regex("(?i)<body([^>]*)>"), "<body$1>$bootstrapStyle")
            Regex("(?i)<html[^>]*>").containsMatchIn(html) ->
                html.replaceFirst(Regex("(?i)<html([^>]*)>"), "<html$1><head>$bootstrapStyle</head>")
            else ->
                "<html><head>$bootstrapStyle</head><body>$html</body></html>"
        }
    }
}
