package io.leostrange.mrcomic.feature.reader.ui

internal data class ReaderHtmlSourceLoadRequest(
    val source: ReaderHtmlPageSource,
    val pagedMode: Boolean,
    val topPaddingPx: Int,
    val bottomPaddingPx: Int,
    val horizontalPaddingPx: Int,
    val maxWidthPx: Int,
    val isRtl: Boolean,
    val fragment: String?,
    val sectionIndex: Int?,
    val characterOffset: Int?,
    /** Semantic target captured before a non-paged WebView document reload. */
    val freeScrollRestoreTarget: ReaderWebViewRestoreTarget? = null
)

internal fun readerHtmlSourceRequiresLoad(
    activeToken: String?,
    activePagedMode: Boolean?,
    requestedToken: String,
    requestedPagedMode: Boolean,
): Boolean = activeToken != requestedToken || activePagedMode != requestedPagedMode

internal fun loadReaderHtmlSourceIfChanged(
    webView: ReaderWebView,
    runtimeOwner: ReaderWebViewRuntimeOwner,
    request: ReaderHtmlSourceLoadRequest
): Boolean {
    val source = request.source
    val cached = webView.activeLoadToken
    if (!readerHtmlSourceRequiresLoad(
            activeToken = cached,
            activePagedMode = webView.activeLoadPagedMode,
            requestedToken = source.loadToken,
            requestedPagedMode = request.pagedMode,
        )
    ) {
        return false
    }
    if (
        cached != null && !request.pagedMode && source is ReaderHtmlPageSource.Inline &&
        source.html.contains("data-mrcomic-text-webtoon-document")
    ) {
        if (request.freeScrollRestoreTarget != null) {
            webView.primeFreeScrollRestoreTarget(request.freeScrollRestoreTarget)
        } else {
            webView.prepareFreeScrollReloadPreservingPosition()
        }
    }
    val restoreTarget = restoreTarget(webView, request)
    val generation = runtimeOwner.beginLoad(source.loadToken, restoreTarget)
    webView.markLoadRequested(source.loadToken, source.baseUrl(), generation, request.pagedMode)
    when (source) {
        is ReaderHtmlPageSource.FileUrl -> loadFileSource(webView, source, request)
        is ReaderHtmlPageSource.Inline -> loadInlineSource(webView, source, request)
    }
    webView.post {
        webView.requestLayout()
        webView.invalidate()
    }
    return true
}

private fun restoreTarget(
    webView: ReaderWebView,
    request: ReaderHtmlSourceLoadRequest
): ReaderWebViewRestoreTarget? {
    val freeScrollTarget = request.freeScrollRestoreTarget ?: webView.pendingFreeScrollRestoreTarget
    if (
        request.fragment == null && request.sectionIndex == null &&
        request.characterOffset == null && freeScrollTarget == null
    ) {
        return null
    }
    return ReaderWebViewRestoreTarget(
        fragment = request.fragment,
        sectionIndex = request.sectionIndex,
        characterOffset = request.characterOffset ?: freeScrollTarget?.characterOffset,
        progression = freeScrollTarget?.progression
    )
}

private fun loadFileSource(
    webView: ReaderWebView,
    source: ReaderHtmlPageSource.FileUrl,
    request: ReaderHtmlSourceLoadRequest
) {
    webView.loadUrl(source.url)
    val fallback = injectBodyInsetCss(
        html = source.fallbackHtml,
        topPx = request.topPaddingPx,
        bottomPx = if (request.pagedMode) 0 else request.bottomPaddingPx,
        horizontalPx = request.horizontalPaddingPx,
        maxWidthPx = request.maxWidthPx,
        isRtl = request.isRtl
    )
    webView.scheduleInlineFallback(source.loadToken, source.fallbackBaseUrl, fallback)
}

private fun loadInlineSource(
    webView: ReaderWebView,
    source: ReaderHtmlPageSource.Inline,
    request: ReaderHtmlSourceLoadRequest
) {
    val htmlWithInset = injectBodyInsetCss(
        html = source.html,
        topPx = if (request.pagedMode) 0 else request.topPaddingPx,
        bottomPx = if (request.pagedMode) 0 else request.bottomPaddingPx,
        horizontalPx = request.horizontalPaddingPx,
        maxWidthPx = request.maxWidthPx,
        isRtl = request.isRtl
    )
    webView.loadDataWithBaseURL(source.baseUrl, htmlWithInset, "text/html", "UTF-8", null)
    webView.scheduleInlineFallback(source.loadToken, source.baseUrl, htmlWithInset, delayMillis = 900L)
}

private fun ReaderHtmlPageSource.baseUrl(): String = when (this) {
    is ReaderHtmlPageSource.FileUrl -> fallbackBaseUrl
    is ReaderHtmlPageSource.Inline -> baseUrl
}
