package io.leostrange.mrcomic.feature.reader.ui

/** Applies newly persisted highlights to the active document without forcing a WebView reload. */
internal class ReaderHighlightRuntimeController(
    private val evaluateJavascript: (String) -> Unit
) {
    private var appliedScript: String? = null

    fun applyIfChanged(script: String) {
        if (script.isBlank() || script == appliedScript) return
        appliedScript = script
        evaluateJavascript(script)
    }

    fun onDocumentLoadRequested() {
        appliedScript = null
    }
}
