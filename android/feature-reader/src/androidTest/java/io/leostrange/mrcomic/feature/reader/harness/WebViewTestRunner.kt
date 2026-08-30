package io.leostrange.mrcomic.feature.reader.harness

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Canvas
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.view.View
import android.view.ViewGroup
import android.webkit.WebViewClient
import androidx.test.platform.app.InstrumentationRegistry
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicReference

/**
 * Инфраструктура для запуска тестов в реальном WebView.
 * Управляет жизненным циклом WebView и предоставляет JS bridge для callback'ов.
 */
class WebViewTestRunner(
    private val context: Context,
    val eventProbe: ReaderRuntimeEventProbe = ReaderRuntimeEventProbe()
) {

    private var webView: WebView? = null
    private var lastPageCount = 0
    private var lastPageIndex = 0

    private val instrumentation
        get() = InstrumentationRegistry.getInstrumentation()

    val jsBridge = "MrComicTestBridge"

    fun createWebView(): WebView {
        val reference = AtomicReference<WebView>()
        instrumentation.runOnMainSync {
            val wv = WebView(context).apply {
                settings.javaScriptEnabled = true
                settings.domStorageEnabled = true
                settings.allowFileAccess = true
                layoutParams = ViewGroup.LayoutParams(1080, 1920)
                measure(
                    View.MeasureSpec.makeMeasureSpec(1080, View.MeasureSpec.EXACTLY),
                    View.MeasureSpec.makeMeasureSpec(1920, View.MeasureSpec.EXACTLY)
                )
                layout(0, 0, 1080, 1920)
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
            }
            reference.set(wv)
            webView = wv
        }
        return reference.get()
    }

    fun loadHtml(html: String, baseUrl: String = "file:///android_asset/"): Long {
        val generation = eventProbe.beginLoad(
            documentId = "$baseUrl|length=${html.length}|hash=${html.hashCode()}"
        )
        val latch = CountDownLatch(1)
        instrumentation.runOnMainSync {
            webView?.webViewClient = object : WebViewClient() {
                override fun onPageStarted(view: WebView?, url: String?, favicon: Bitmap?) {
                    eventProbe.record(generation, ReaderRuntimeEventType.PAGE_STARTED, url)
                }

                override fun onPageCommitVisible(view: WebView?, url: String?) {
                    eventProbe.record(generation, ReaderRuntimeEventType.PAGE_COMMITTED, url)
                }

                override fun onPageFinished(view: WebView?, url: String?) {
                    eventProbe.record(generation, ReaderRuntimeEventType.PAGE_FINISHED, url)
                    latch.countDown()
                }

                override fun onReceivedError(
                    view: WebView?,
                    request: WebResourceRequest?,
                    error: WebResourceError?
                ) {
                    if (request?.isForMainFrame == true) {
                        eventProbe.record(
                            generation,
                            ReaderRuntimeEventType.LOAD_FAILED,
                            "${error?.errorCode}:${error?.description}"
                        )
                    }
                }
            }
            webView?.loadDataWithBaseURL(baseUrl, html, "text/html", "UTF-8", null)
        }
        check(latch.await(10, TimeUnit.SECONDS)) { "WebView did not finish loading HTML within 10 seconds" }
        // Allow layout and pagination scripts to settle after the navigation callback.
        Thread.sleep(500)
        val textLength = executeJs(
            "(document.body && document.body.innerText ? document.body.innerText.trim().length : 0)"
        ).toIntOrNull() ?: 0
        eventProbe.record(
            generation,
            if (textLength > 0) ReaderRuntimeEventType.CONTENT_READY else ReaderRuntimeEventType.CONTENT_EMPTY,
            "textLength=$textLength"
        )
        return generation
    }

    fun executeJs(script: String): String {
        val result = AtomicReference("")
        val latch = CountDownLatch(1)
        instrumentation.runOnMainSync {
            webView?.evaluateJavascript(script) { value ->
                result.set(value?.removeSurrounding("\"") ?: "")
                latch.countDown()
            } ?: latch.countDown()
        }
        check(latch.await(5, TimeUnit.SECONDS)) { "WebView JavaScript did not return within 5 seconds" }
        return result.get()
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
        val reference = AtomicReference<Bitmap>()
        instrumentation.runOnMainSync {
            val wv = webView ?: throw IllegalStateException("WebView not created")
            val bitmap = Bitmap.createBitmap(wv.width, wv.height, Bitmap.Config.ARGB_8888)
            wv.draw(Canvas(bitmap))
            reference.set(bitmap)
        }
        return reference.get()
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
        val generation = eventProbe.activeGeneration
        instrumentation.runOnMainSync {
            webView?.stopLoading()
            webView?.destroy()
            webView = null
        }
        if (generation > 0L) {
            eventProbe.record(generation, ReaderRuntimeEventType.DISPOSED)
        }
    }
}
