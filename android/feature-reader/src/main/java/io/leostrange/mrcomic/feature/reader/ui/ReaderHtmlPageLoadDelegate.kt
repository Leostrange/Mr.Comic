package io.leostrange.mrcomic.feature.reader.ui

import android.webkit.WebView

internal class ReaderHtmlPageLoadDelegate(
    private val textStyle: () -> ReaderHtmlTextStyle,
    private val pagedMode: () -> Boolean,
    private val isRtl: () -> Boolean,
    private val highlightsJs: () -> String
) {
    fun onPageFinished(view: WebView) {
        val readerView = view as? ReaderWebView
        readerView?.markLoadCommitted()
        readerView?.activeRuntimeGeneration
            ?.takeIf { it > 0L }
            ?.let { view.evaluateJavascript(readerWebViewProtocolBootstrapJs(it), null) }
        view.evaluateJavascript(JS_TAP_HANDLER, null)
        view.evaluateJavascript(
            textStyle().settingsScript(view, pagedMode(), isRtl())
        ) {
            readerView?.applyPagedLayout()
            readerView?.schedulePagedLayoutSettle()
            readerView?.resetFreeScrollAfterLoadIfNeeded()
        }
        if (pagedMode()) {
            readerView?.postDelayed({ readerView.applyPagedLayout() }, 80L)
            readerView?.postDelayed({ readerView.applyPagedLayout() }, 320L)
        }
        highlightsJs().takeIf { it.isNotBlank() }?.let { script ->
            readerView?.postDelayed({ view.evaluateJavascript(script, null) }, 500L)
        }
        if (!pagedMode()) view.evaluateJavascript(TEXT_WEBTOON_SECTION_OBSERVER_JS, null)
        view.post {
            view.requestLayout()
            view.invalidate()
        }
        readerView?.post { readerView.verifyVisibleContentOrFallback() }
    }
}

private const val TEXT_WEBTOON_SECTION_OBSERVER_JS =
    "(function(){try{if(window.__mrcomicSectionObserver)return;" +
        "var sections=document.querySelectorAll('.mrcomic-text-webtoon-section[data-mrcomic-page-index]');" +
        "if(!sections.length)return;window.__mrcomicSectionObserver=new IntersectionObserver(function(entries){" +
        "entries.forEach(function(e){if(e.isIntersecting){var idx=parseInt(" +
        "e.target.getAttribute('data-mrcomic-page-index'),10);if(!isNaN(idx)&&window._NativeReader){" +
        "window._NativeReader.onVisibleSectionChanged(idx);}}});},{root:null,threshold:0.1});" +
        "sections.forEach(function(s){window.__mrcomicSectionObserver.observe(s);});}catch(e){}})()"
