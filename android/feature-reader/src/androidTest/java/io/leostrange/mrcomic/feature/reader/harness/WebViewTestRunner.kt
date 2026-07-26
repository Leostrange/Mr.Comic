package io.leostrange.mrcomic.feature.reader.harness

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.test.platform.app.InstrumentationRegistry
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

/**
 * Инфраструктура для запуска тестов в реальном WebView.
 * Управляет жизненным циклом WebView и предоставляет JS bridge для callback'ов.
 */
class WebViewTestRunner(private val context: Context) {

    private var webView: WebView? = null
    private val pageLoadedLatch = CountDownLatch(1)
    private var lastPageCount = 0
    private var lastPageIndex = 0

    val jsBridge = "MrComicTestBridge"

    fun createWebView(): WebView {
        val wv = WebView(context).apply {
            settings.javaScriptEnabled = true
            settings.domStorageEnabled = true
            settings.allowFileAccess = true
            addJavascriptInterface(object {
                @android.webkit.JavascriptInterface
                fun onPageCountChanged(count: Int) {
                    lastPageCount = count
                }

                @android.webkit.JavascriptInterface
                fun onSelectionChanged(text: String) { /* no-op for now */ }

                @android.webkit.JavascriptInterface
                fun onProgressChanged(page: Int, total: Int, percentage: Double) {
                    lastPageIndex = page
                }
            }, jsBridge)

            webViewClient = object : WebViewClient() {
                override fun onPageFinished(view: WebView?, url: String?) {
                    pageLoadedLatch.countDown()
                }
            }
        }
        webView = wv
        return wv
    }

    fun loadHtml(html: String, baseUrl: String = "file:///android_asset/") {
        val latch = CountDownLatch(1)
        webView?.post {
            webView?.loadDataWithBaseURL(baseUrl, html, "text/html", "UTF-8", null)
        }
        // Wait for page load
        pageLoadedLatch.await(10, TimeUnit.SECONDS)
        // Extra wait for WebView rendering
        Thread.sleep(500)
    }

    fun executeJs(script: String): String {
        var result = ""
        val latch = CountDownLatch(1)
        webView?.evaluateJavascript(script) { value ->
            result = value?.removeSurrounding("\"") ?: ""
            latch.countDown()
        }
        latch.await(5, TimeUnit.SECONDS)
        return result
    }

    fun getPageCount(): Int = lastPageCount
    fun getCurrentPageIndex(): Int = lastPageIndex

    fun getCurrentPageText(): String {
        return executeJs(
            """
            (function() {
                var el = document.querySelector('.current-page') || document.body;
                return el ? el.innerText : '';
            })()
            """.trimIndent()
        )
    }

    fun goToPage(page: Int) {
        executeJs("window.scrollToPage?.($page)")
    }

    fun setFontSize(px: Int) {
        executeJs(
            """
            (function() {
                document.documentElement.style.setProperty('--mrcomic-font-size', '${px}px');
                document.body.style.fontSize = '${px}px';
            })()
            """.trimIndent()
        )
    }

    fun setHyphenation(enabled: Boolean) {
        val value = if (enabled) "auto" else "manual"
        executeJs(
            """
            (function() {
                document.body.style.hyphens = '$value';
                document.body.style.webkitHyphens = '$value';
            })()
            """.trimIndent()
        )
    }

    fun setWidows(count: Int) {
        executeJs("document.body.style.widows = '$count'")
    }

    fun setOrphans(count: Int) {
        executeJs("document.body.style.orphans = '$count'")
    }

    fun setReadingMode(mode: String) {
        executeJs("window.__mrcomicReadingMode = '$mode'")
    }

    fun captureScreenshot(): Bitmap {
        val wv = webView ?: throw IllegalStateException("WebView not created")
        val bitmap = Bitmap.createBitmap(wv.width, wv.height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bitmap)
        wv.draw(canvas)
        return bitmap
    }

    fun getVisibleText(): String {
        return executeJs(
            """
            (function() {
                var range = document.createRange();
                range.selectNodeContents(document.body);
                var rects = range.getClientRects();
                return document.body.innerText;
            })()
            """.trimIndent()
        )
    }

    fun destroy() {
        webView?.destroy()
        webView = null
    }
}
