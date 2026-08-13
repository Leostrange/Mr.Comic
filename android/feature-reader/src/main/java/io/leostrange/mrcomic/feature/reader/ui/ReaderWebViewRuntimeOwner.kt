package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log

internal class ReaderWebViewRuntimeOwner(
    val loadController: ReaderWebViewLoadController = ReaderWebViewLoadController()
) {
    fun beginLoad(documentIdentity: String, restoreTarget: ReaderWebViewRestoreTarget?): Long {
        val generation = loadController.runtimeState.generation + 1L
        loadController.dispatch(
            ReaderWebViewRuntimeEvent.LoadRequested(
                documentIdentity = documentIdentity,
                generation = generation,
                restoreTarget = restoreTarget
            )
        )
        return generation
    }

    fun onWebViewEvent(
        webView: ReaderWebView,
        event: ReaderWebViewEvent,
        pagedMode: Boolean,
        onConsumeAnchor: () -> Unit,
        onConsumeSection: () -> Unit
    ) {
        val runtimeEvent = event.toRuntimeEvent(pagedMode) ?: return
        executeEffects(
            webView = webView,
            effects = loadController.dispatch(runtimeEvent),
            onConsumeAnchor = onConsumeAnchor,
            onConsumeSection = onConsumeSection
        )
    }

    fun dispose() {
        loadController.dispatch(ReaderWebViewRuntimeEvent.Disposed)
    }

    fun release(webView: ReaderWebView) {
        dispose()
        webView.evaluateJavascript(
            "(function(){try{if(window.__mrcomicSectionObserver){" +
                "window.__mrcomicSectionObserver.disconnect();window.__mrcomicSectionObserver=null;}}catch(e){}})()",
            null
        )
        webView.removeJavascriptInterface("_NativeReader")
        (webView.parent as? android.view.ViewGroup)?.removeView(webView)
        webView.stopLoading()
        webView.loadUrl("about:blank")
        webView.destroy()
    }

    private fun executeEffects(
        webView: ReaderWebView,
        effects: List<ReaderWebViewRuntimeEffect>,
        onConsumeAnchor: () -> Unit,
        onConsumeSection: () -> Unit
    ) {
        effects.forEach { effect ->
            when (effect) {
                is ReaderWebViewRuntimeEffect.LoadDocument -> {
                    if (effect.fallback && effect.generation == webView.activeRuntimeGeneration) {
                        webView.loadInlineFallbackNow()
                    }
                }
                is ReaderWebViewRuntimeEffect.Restore -> webView.restoreRuntimeTarget(
                    generation = effect.generation,
                    target = effect.target
                ) { restored ->
                    if (!restored) {
                        Log.w(HTML_READER_TAG, "Restore target was not found for generation=${effect.generation}")
                    } else {
                        if (!effect.target.fragment.isNullOrBlank()) onConsumeAnchor()
                        if (effect.target.sectionIndex != null) onConsumeSection()
                    }
                    executeEffects(
                        webView = webView,
                        effects = loadController.dispatch(
                            ReaderWebViewRuntimeEvent.RestoreAcknowledged(effect.generation)
                        ),
                        onConsumeAnchor = onConsumeAnchor,
                        onConsumeSection = onConsumeSection
                    )
                }
                is ReaderWebViewRuntimeEffect.PublishReady -> Unit
                is ReaderWebViewRuntimeEffect.ShowTerminalError -> {
                    Log.e(HTML_READER_TAG, "Reader runtime failed: ${effect.reason}")
                    webView.alpha = 1f
                }
            }
        }
    }
}
