package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.util.Log
import android.view.ViewGroup
import android.webkit.RenderProcessGoneDetail
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.webkit.WebViewAssetLoader

internal class ReaderHtmlWebViewClient(
    private val context: Context,
    private val assetLoader: WebViewAssetLoader?,
    private val backgroundColor: () -> Int,
    private val onAnchor: (String) -> Unit,
    private val onPageFinishedAction: (WebView, String) -> Unit
) : WebViewClient() {
    override fun shouldInterceptRequest(
        view: WebView,
        request: WebResourceRequest
    ): WebResourceResponse? = assetLoader?.shouldInterceptRequest(request.url)
        ?: super.shouldInterceptRequest(view, request)

    override fun onPageStarted(view: WebView, url: String?, favicon: Bitmap?) {
        Log.d(HTML_READER_TAG, "WebView page started: ${url ?: "about:blank"}")
        view.setBackgroundColor(backgroundColor())
    }

    override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
        val uri = request.url
        val readerView = view as? ReaderWebView
        val currentDocumentUrl = readerView?.activeDocumentBaseUrl ?: view.url
        if (
            request.isForMainFrame &&
            shouldBlockReaderAssetSpineNavigation(
                pagedModeScrollLock = readerView?.pagedModeScrollLock == true,
                currentUrl = currentDocumentUrl,
                targetUri = uri
            )
        ) {
            Log.d(HTML_READER_TAG, "Blocked inline spine navigation: $currentDocumentUrl -> $uri")
            return true
        }
        val currentBaseUrl = view.url?.substringBefore('#')
        val requestedBaseUrl = uri.toString().substringBefore('#')
        if (
            request.isForMainFrame && uri.fragment != null &&
            currentBaseUrl != null && requestedBaseUrl == currentBaseUrl
        ) {
            return false
        }
        return when (uri.scheme?.lowercase()) {
            "fbanchor" -> {
                val id = uri.host ?: uri.path?.trimStart('/').orEmpty()
                if (id.isNotEmpty()) view.post { onAnchor(id) }
                true
            }
            "http", "https", "mailto", "tel" -> handleExternalOrAssetUrl(
                view = view,
                request = request,
                currentDocumentUrl = currentDocumentUrl
            )
            else -> false
        }
    }

    override fun onPageFinished(view: WebView, url: String) {
        Log.d(HTML_READER_TAG, "WebView page finished: $url")
        onPageFinishedAction(view, url)
    }

    override fun onPageCommitVisible(view: WebView, url: String?) {
        Log.d(HTML_READER_TAG, "WebView page commit visible: ${url ?: "about:blank"}")
        (view as? ReaderWebView)?.markLoadCommitted()
        view.post {
            view.requestLayout()
            view.invalidate()
        }
    }

    override fun onReceivedError(
        view: WebView,
        request: WebResourceRequest,
        error: WebResourceError
    ) {
        if (request.url.lastPathSegment == "favicon.ico") return
        val reason = "${error.errorCode}:${error.description}"
        Log.w(HTML_READER_TAG, "WebView error for ${request.url}: $reason")
        if (request.isForMainFrame) {
            (view as? ReaderWebView)?.reportRuntimeLoadFailure(reason)
        }
        super.onReceivedError(view, request, error)
    }

    override fun onRenderProcessGone(view: WebView, detail: RenderProcessGoneDetail): Boolean {
        Log.e(
            HTML_READER_TAG,
            "Renderer process gone: didCrash=${detail.didCrash()}, " +
                "rendererPriorityAtExit=${detail.rendererPriorityAtExit()}"
        )
        view.stopLoading()
        (view.parent as? ViewGroup)?.removeView(view)
        view.destroy()
        return true
    }

    private fun handleExternalOrAssetUrl(
        view: WebView,
        request: WebResourceRequest,
        currentDocumentUrl: String?
    ): Boolean {
        val uri = request.url
        val isReaderAssetUrl = uri.scheme?.equals("https", ignoreCase = true) == true &&
            uri.host?.equals("appassets.androidplatform.net", ignoreCase = true) == true
        if (isReaderAssetUrl) {
            val readerView = view as? ReaderWebView
            return request.isForMainFrame && readerView?.pagedModeScrollLock == true &&
                shouldBlockReaderAssetSpineNavigation(true, currentDocumentUrl, uri)
        }
        runCatching { context.startActivity(Intent(Intent.ACTION_VIEW, uri)) }
        return true
    }
}
