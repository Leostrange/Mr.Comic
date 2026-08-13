package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.webkit.JavascriptInterface

internal class ReaderNativeJavaScriptBridge(
    private val webView: ReaderWebView,
    private val context: Context,
    private val onLeft: () -> Unit,
    private val onRight: () -> Unit,
    private val onCenter: () -> Unit,
    private val onAnchor: (String) -> Unit,
    private val onInlineNote: (String) -> Unit,
    private val onVisibleSectionChanged: (Int) -> Unit,
    private val onPageMetricsChanged: (Int, Int, Int) -> Unit
) {
    fun dispatchTap(xPercent: Float) {
        if (webView.pagedModeScrollLock) webView.suppressNextReaderClick()
        when {
            xPercent < LEFT_TAP_BOUNDARY -> turnOrNavigate(-1, onLeft)
            xPercent > RIGHT_TAP_BOUNDARY -> turnOrNavigate(1, onRight)
            else -> onCenter()
        }
    }

    @JavascriptInterface
    fun onTap(xPercent: Float) {
        webView.post {
            if (!webView.consumeNativeTapIfPresent()) dispatchTap(xPercent)
        }
    }

    @JavascriptInterface
    fun setTouchOnLink(onLink: Boolean) {
        webView.touchStartedOnLink = onLink
    }

    @JavascriptInterface
    fun onSwipe(direction: Int) {
        webView.post {
            if (webView.pagedModeScrollLock) {
                val pageDirection = if (direction < 0) -1 else 1
                turnOrNavigate(
                    direction = pageDirection,
                    boundary = if (pageDirection < 0) onLeft else onRight
                )
            }
        }
    }

    @JavascriptInterface
    fun onAnchorClick(id: String) {
        webView.post { onAnchor(id) }
    }

    @JavascriptInterface
    fun onInlineFootnote(text: String) {
        webView.post { onInlineNote(text) }
    }

    @JavascriptInterface
    fun onExternalLink(url: String) {
        webView.post {
            runCatching {
                context.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
            }
        }
    }

    @JavascriptInterface
    fun onVisibleSectionChanged(sectionIndex: Int) {
        webView.post { onVisibleSectionChanged(sectionIndex) }
    }

    private fun turnOrNavigate(direction: Int, boundary: () -> Unit) {
        if (!webView.pagedModeScrollLock) {
            boundary()
            return
        }
        webView.turnPagedColumn(
            delta = direction,
            onBoundary = boundary,
            onPageMetricsChanged = onPageMetricsChanged
        )
    }

    private companion object {
        const val LEFT_TAP_BOUNDARY = 0.3f
        const val RIGHT_TAP_BOUNDARY = 0.7f
    }
}
