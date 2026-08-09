package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.os.Build
import android.util.Log
import android.webkit.JavascriptInterface
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.viewinterop.AndroidView
import androidx.webkit.WebViewAssetLoader
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.reader.ui.gesture.ReaderHtmlHelpers
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import kotlin.math.roundToInt

private const val MAX_INLINE_HTML_SOURCE_LENGTH = 6_000_000

private sealed interface ReaderHtmlPageSource {
    val loadToken: String

    data class FileUrl(
        val url: String,
        val fallbackBaseUrl: String,
        val fallbackHtml: String
    ) : ReaderHtmlPageSource {
        override val loadToken: String = "file:$url"
    }

    data class Inline(val baseUrl: String, val html: String) : ReaderHtmlPageSource {
        override val loadToken: String = "inline:${html.hashCode()}"
    }
}

private fun readerAssetDocumentBaseUrl(documentPath: String): String =
    "${HTML_READER_BASE_URL}content/${documentPath.trimStart('/')}"

private fun readerHtmlCacheFile(context: Context, themedHtml: String): File {
    val cacheDir = File(context.cacheDir, "reader_html_pages").apply { mkdirs() }
    val fileName = "page_${Integer.toHexString(themedHtml.hashCode())}.html"
    return File(cacheDir, fileName)
}

private suspend fun buildReaderHtmlPageSource(
    context: Context,
    html: String,
    bg: String,
    fg: String,
    resolvedBaseUrl: String
): ReaderHtmlPageSource {
    val themedHtml = withContext(Dispatchers.Default) {
        ReaderHtmlHelpers.buildThemedHtmlDocument(html, bg, fg)
    }
    return withContext(Dispatchers.IO) {
        if (themedHtml.length <= MAX_INLINE_HTML_SOURCE_LENGTH) {
            ReaderHtmlPageSource.Inline(
                baseUrl = resolvedBaseUrl,
                html = themedHtml
            )
        } else {
            runCatching {
                val tmpFile = readerHtmlCacheFile(context, themedHtml)
                tmpFile.writeText(themedHtml, Charsets.UTF_8)
                ReaderHtmlPageSource.FileUrl(
                    url = "file://${tmpFile.absolutePath}",
                    fallbackBaseUrl = resolvedBaseUrl,
                    fallbackHtml = themedHtml
                )
            }.getOrElse { error ->
                Log.w(HTML_READER_TAG, "Failed to cache reader HTML page, falling back to inline load", error)
                ReaderHtmlPageSource.Inline(
                    baseUrl = resolvedBaseUrl,
                    html = themedHtml
                )
            }
        }
    }
}

internal fun readerHtmlPageSourceReloadKey(
    html: String,
    resolvedBaseUrl: String,
    cacheDirPath: String
): String = listOf(
    html.length,
    html.hashCode(),
    resolvedBaseUrl,
    cacheDirPath
).joinToString(separator = "|")

@Composable
private fun rememberReaderHtmlPageSource(
    controller: ReaderWebViewLoadController,
    html: String,
    bg: String,
    fg: String,
    resolvedBaseUrl: String
): ReaderHtmlPageSource? {
    val context = LocalContext.current
    val cacheDirPath = context.cacheDir.absolutePath
    val reloadKey = remember(html, resolvedBaseUrl, cacheDirPath) {
        readerHtmlPageSourceReloadKey(html, resolvedBaseUrl, cacheDirPath)
    }
    var pageSource by remember { mutableStateOf<ReaderHtmlPageSource?>(null) }
    LaunchedEffect(reloadKey) {
        // ARC-11 slice 2: the controller is the single source of truth for
        // whether a rebuild is required. Two consecutive effects with the
        // same key therefore no-op, even when the keys happen to remount.
        if (!controller.shouldRebuildSource(reloadKey)) return@LaunchedEffect
        val source = buildReaderHtmlPageSource(
            context = context,
            html = html,
            bg = bg,
            fg = fg,
            resolvedBaseUrl = resolvedBaseUrl
        )
        controller.markLoadRequested(source.loadToken, reloadKey)
        pageSource = source
    }
    return pageSource
}

internal fun buildThemedHtmlDocument(html: String, bg: String, fg: String): String =
    ReaderHtmlHelpers.buildThemedHtmlDocument(html, bg, fg)

/**
 * Injects a `<style>` with the correct body inset padding into [html] just before `</head>`.
 * Called at load time so the first WebView paint already has the right padding, eliminating
 * the brief flash where text renders under the status bar / toolbars before JS fires.
 */
internal fun injectBodyInsetCss(
    html: String,
    topPx: Int,
    bottomPx: Int,
    horizontalPx: Int = 0,
    maxWidthPx: Int = 0,
    isRtl: Boolean = false
): String = ReaderHtmlHelpers.injectBodyInsetCss(html, topPx, bottomPx, horizontalPx, maxWidthPx, isRtl)

/**
 * Renders HTML content (text EPUB / FB2) inside a WebView.
 *
 * WebView intercepts all touch events so the outer [pointerInput] tap zones
 * are unreachable from HTML pages.  We bridge this by enabling JS and
 * injecting a click listener that calls a [JavascriptInterface].
 *
 * [onLeftTap]   — called when user taps left 30 % of the page
 * [onRightTap]  — called when user taps right 30 % of the page
 * [onCenterTap] — called when user taps the middle 40 %
 */
@Composable
internal fun HtmlPageView(
    html: String,
    baseUrl: String?,
    assetDocumentPath: String?,
    assetLoader: WebViewAssetLoader?,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    onTranslateSelection: (String) -> Unit,
    onDictionarySelection: (String) -> Unit,
    onExplainSelection: (String) -> Unit,
    onSaveQuoteSelection: (String) -> Unit,
    onHighlightSelection: (String) -> Unit = {},
    onTranslateChapter: () -> Unit = {},
    onCompareTranslations: (String) -> Unit = {},
    onAnchorClick: (String) -> Unit = {},
    onInlineFootnote: (String) -> Unit = {},
    onVerticalBoundaryNavigation: (Int) -> Unit = {},
    onPagedLayoutPageCountChanged: (pageCount: Int, pageIndex: Int, characterOffset: Int) -> Unit = { _, _, _ -> },
    pendingScrollToAnchor: String? = null,
    onConsumeScrollToAnchor: () -> Unit = {},
    pendingWebtoonSectionIndex: Int? = null,
    onConsumeWebtoonSection: () -> Unit = {},
    onTextWebtoonVisibleSectionChanged: (Int) -> Unit = {},
    sectionCharacterOffset: Int = 0,
    readingMode: ReadingMode,
    autoScrollSpeed: Float = 0f,
    fontSize: Int    = 18,
    colorScheme: String = "DAY",
    readerPreset: ReadingPreset = ReadingPreset.CUSTOM,
    fontFamily: String  = "Georgia",
    fontSourceUrl: String? = null,
    lineHeight: Float   = 1.8f,
    letterSpacing: Float = 0f,
    wordSpacing: Float = 0f,
    paragraphSpacing: Float = 0.2f,
    textAlign: String   = "left",
    bold: Boolean       = false,
    contentTopInsetPx: Int = 8,
    contentBottomInsetPx: Int = 24,
    overrideTextColor: String? = null,
    overrideBackgroundColor: String? = null,
    overrideAccentColor: String? = null,
    translateActionLabel: String,
    dictionaryActionLabel: String,
    explainActionLabel: String,
    saveQuoteActionLabel: String,
    highlightsJs: String = "",
    onRegisterPageTurner: ((Int) -> Unit) -> Unit = {},
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val density = LocalDensity.current
    val pagedMode = readerModeLocksHtmlVerticalScroll(readingMode)
    val isRtl = readingMode == ReadingMode.PAGE_RTL
    val presetStyle = remember(readerPreset) { readerPreset.style() }
    val topPaddingPx = contentTopInsetPx.coerceAtLeast(0)
    val bottomPaddingPx = contentBottomInsetPx.coerceAtLeast(0)
    val horizontalPaddingPx = presetStyle.contentHorizontalPaddingDp
        .roundToInt()
        .coerceIn(12, 24)
    val maxWidthPx = presetStyle.maxWidthDp
        .roundToInt()
        .coerceAtLeast(280)
    val (bg, fg) = colorSchemePaletteForPreset(colorScheme, readerPreset)
    val resolvedBg = normalizeReaderOverrideColor(overrideBackgroundColor) ?: bg
    val resolvedFg = normalizeReaderOverrideColor(overrideTextColor) ?: fg
    val resolvedAccent = normalizeReaderOverrideColor(overrideAccentColor)
        ?: defaultReaderAccentColor(resolvedBg)
    val bgColor = remember(resolvedBg) { android.graphics.Color.parseColor(resolvedBg) }
    val resolvedBaseUrl = remember(baseUrl, assetDocumentPath) {
        assetDocumentPath?.let(::readerAssetDocumentBaseUrl) ?: baseUrl ?: HTML_READER_BASE_URL
    }
    val loadController = remember { ReaderWebViewLoadController() }
    val pageSource = rememberReaderHtmlPageSource(
        controller = loadController,
        html = html,
        bg = resolvedBg,
        fg = resolvedFg,
        resolvedBaseUrl = resolvedBaseUrl
    )

    // rememberUpdatedState keeps the lambdas current without recreating the WebView
    val onLeft           = rememberUpdatedState(onLeftTap)
    val onRight          = rememberUpdatedState(onRightTap)
    val onCenter         = rememberUpdatedState(onCenterTap)
    val onTranslate      = rememberUpdatedState(onTranslateSelection)
    val onDictionary     = rememberUpdatedState(onDictionarySelection)
    val onExplain        = rememberUpdatedState(onExplainSelection)
    val onSaveQuote      = rememberUpdatedState(onSaveQuoteSelection)
    val onHighlight      = rememberUpdatedState(onHighlightSelection)
    val onTranslateChapter = rememberUpdatedState(onTranslateChapter)
    val onCompareTranslations = rememberUpdatedState(onCompareTranslations)
    val onAnchor         = rememberUpdatedState(onAnchorClick)
    val onInlineNote     = rememberUpdatedState(onInlineFootnote)
    val currentPendingAnchor = rememberUpdatedState(pendingScrollToAnchor)
    val onConsumeAnchor  = rememberUpdatedState(onConsumeScrollToAnchor)
    val currentPendingWebtoonSection = rememberUpdatedState(pendingWebtoonSectionIndex)
    val onConsumeWebtoonSectionState = rememberUpdatedState(onConsumeWebtoonSection)
    val onVisibleSectionChanged = rememberUpdatedState(onTextWebtoonVisibleSectionChanged)
    val currentFs        = rememberUpdatedState(fontSize)
    val currentScheme    = rememberUpdatedState(colorScheme)
    val currentPreset    = rememberUpdatedState(readerPreset)
    val currentFamily    = rememberUpdatedState(fontFamily)
    val currentFontSourceUrl = rememberUpdatedState(fontSourceUrl)
    val currentLH        = rememberUpdatedState(lineHeight)
    val currentLetterSpacing = rememberUpdatedState(letterSpacing)
    val currentWordSpacing = rememberUpdatedState(wordSpacing)
    val currentParagraphSpacing = rememberUpdatedState(paragraphSpacing)
    val currentAlign     = rememberUpdatedState(textAlign)
    val currentBold      = rememberUpdatedState(bold)
    val currentPagedMode = rememberUpdatedState(pagedMode)
    val currentTopPaddingPx = rememberUpdatedState(topPaddingPx)
    val currentHighlightsJs = rememberUpdatedState(highlightsJs)
    val currentBottomPaddingPx = rememberUpdatedState(bottomPaddingPx)
    val currentHorizontalPaddingPx = rememberUpdatedState(horizontalPaddingPx)
    val currentMaxWidthPx = rememberUpdatedState(maxWidthPx)
    val currentCharOffset = rememberUpdatedState(sectionCharacterOffset)

    // Auto-scroll state — must be before AndroidView so the factory can capture it.
    val autoScrollPaused = remember { mutableStateOf(false) }
    val autoScrollScrollLambda = remember { mutableStateOf<((Int) -> Unit)?>(null) }
    LaunchedEffect(autoScrollSpeed) {
        if (autoScrollSpeed <= 0f) return@LaunchedEffect
        autoScrollPaused.value = false
        while (true) {
            kotlinx.coroutines.delay(16) // ~60fps
            val scrollFn = autoScrollScrollLambda.value
            if (!autoScrollPaused.value && scrollFn != null) {
                val pixelsPerFrame = (autoScrollSpeed / 60f).coerceAtLeast(0.5f).toInt()
                scrollFn(pixelsPerFrame)
            }
        }
    }

    AndroidView(
        modifier = modifier,
        factory = { ctx ->
            ReaderWebView(ctx).apply {
                val readerWebView = this
                autoScrollScrollLambda.value = { pixels -> scrollBy(0, pixels) }
                pagedModeScrollLock = pagedMode
                settings.javaScriptEnabled  = true   // required for tap bridge
                settings.domStorageEnabled  = true
                settings.loadsImagesAutomatically = true
                settings.allowFileAccess    = true
                settings.allowContentAccess = true
                // Fix: textZoom=100 prevents system accessibility font scale from
                // affecting CSS px values, ensuring CHARS_PER_PAGE stays accurate.
                settings.textZoom           = 100
                settings.setSupportZoom(false)
                settings.builtInZoomControls = false
                settings.displayZoomControls = false
                settings.defaultFontSize    = 16
                // Reflowable reader pages must wrap to the WebView viewport. Wide/overview
                // mode turns book text into a clipped horizontal canvas on phones.
                settings.useWideViewPort       = false
                settings.loadWithOverviewMode  = false
                settings.layoutAlgorithm       = WebSettings.LayoutAlgorithm.NORMAL
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                    settings.offscreenPreRaster = true
                }
                // Match the current reading theme before first paint.
                setBackgroundColor(bgColor)
                // Disable overscroll bounce. Text page mode also locks vertical scrolling.
                overScrollMode = android.view.View.OVER_SCROLL_NEVER

                // JavascriptInterface — called from JS on a background thread;
                // WebView.post() dispatches back to the main thread safely.
                fun dispatchReaderTap(xPercent: Float) {
                    if (readerWebView.pagedModeScrollLock) {
                        readerWebView.suppressNextReaderClick()
                    }
                    when {
                        xPercent < 0.3f -> {
                            if (readerWebView.pagedModeScrollLock) {
                                readerWebView.turnPagedColumn(-1, { onLeft.value() }, { pageCount, pageIndex, characterOffset ->
                                    onPagedLayoutPageCountChanged(pageCount, pageIndex, characterOffset)
                                })
                            } else {
                                onLeft.value()
                            }
                        }
                        xPercent > 0.7f -> {
                            if (readerWebView.pagedModeScrollLock) {
                                readerWebView.turnPagedColumn(1, { onRight.value() }, { pageCount, pageIndex, characterOffset ->
                                    onPagedLayoutPageCountChanged(pageCount, pageIndex, characterOffset)
                                })
                            } else {
                                onRight.value()
                            }
                        }
                        else -> onCenter.value()
                    }
                }
                fun dispatchReaderSwipe(direction: Int) {
                    val pageDirection = if (direction < 0) -1 else 1
                    if (readerWebView.pagedModeScrollLock) {
                        readerWebView.turnPagedColumn(pageDirection, {
                            if (pageDirection < 0) onLeft.value() else onRight.value()
                        }, { pageCount, pageIndex, characterOffset ->
                            onPagedLayoutPageCountChanged(pageCount, pageIndex, characterOffset)
                        })
                    }
                }
                onNativePagedTapRequest = { xPercent ->
                    post { dispatchReaderTap(xPercent) }
                }
                addJavascriptInterface(object {
                    @JavascriptInterface
                    fun onTap(xPercent: Float) {
                        post {
                            if (!readerWebView.consumeNativeTapIfPresent()) {
                                dispatchReaderTap(xPercent)
                            }
                        }
                    }

                    @JavascriptInterface
                    fun setTouchOnLink(onLink: Boolean) {
                        readerWebView.touchStartedOnLink = onLink
                    }

                    @JavascriptInterface
                    fun onSwipe(direction: Int) {
                        post { dispatchReaderSwipe(direction) }
                    }

                    @JavascriptInterface
                    fun onAnchorClick(id: String) {
                        post { onAnchor.value(id) }
                    }

                    @JavascriptInterface
                    fun onInlineFootnote(text: String) {
                        post { onInlineNote.value(text) }
                    }

                    @JavascriptInterface
                    fun onExternalLink(url: String) {
                        post {
                            try {
                                val intent = android.content.Intent(
                                    android.content.Intent.ACTION_VIEW,
                                    android.net.Uri.parse(url)
                                )
                                context.startActivity(intent)
                            } catch (_: Exception) {}
                        }
                    }

                    @JavascriptInterface
                    fun onVisibleSectionChanged(sectionIndex: Int) {
                        post { onVisibleSectionChanged.value(sectionIndex) }
                    }

                }, "_NativeReader")

                translateSelectionLabel = translateActionLabel
                dictionarySelectionLabel = dictionaryActionLabel
                explainSelectionLabel = explainActionLabel
                saveQuoteSelectionLabel = saveQuoteActionLabel
                onVerticalBoundaryNavigationRequest = onVerticalBoundaryNavigation
                onSelectionActionRequest = { action, selectedText ->
                    when (action) {
                        ReaderSelectionAction.TRANSLATE -> onTranslate.value(selectedText.trim())
                        ReaderSelectionAction.DICTIONARY -> onDictionary.value(selectedText.trim())
                        ReaderSelectionAction.EXPLAIN -> onExplain.value(selectedText.trim())
                        ReaderSelectionAction.SAVE_QUOTE -> onSaveQuote.value(selectedText.trim())
                        ReaderSelectionAction.HIGHLIGHT -> onHighlight.value(selectedText.trim())
                        ReaderSelectionAction.TRANSLATE_CHAPTER -> onTranslateChapter.value()
                        ReaderSelectionAction.COMPARE_TRANSLATIONS -> onCompareTranslations.value(selectedText.trim())
                    }
                }

                webViewClient = object : WebViewClient() {
                    override fun shouldInterceptRequest(
                        view: WebView,
                        request: WebResourceRequest
                    ): WebResourceResponse? {
                        assetLoader?.shouldInterceptRequest(request.url)?.let { return it }
                        return super.shouldInterceptRequest(view, request)
                    }

                    override fun onPageStarted(view: WebView, url: String?, favicon: android.graphics.Bitmap?) {
                        Log.d(HTML_READER_TAG, "WebView page started: ${url ?: "about:blank"}")
                        view.setBackgroundColor(
                            android.graphics.Color.parseColor(
                                colorSchemePaletteForPreset(currentScheme.value, currentPreset.value).first
                            )
                        )
                    }

                    // Handle special schemes; open http/https in the system browser.
                    override fun shouldOverrideUrlLoading(
                        view: WebView, request: WebResourceRequest
                    ): Boolean {
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
                            Log.d(
                                HTML_READER_TAG,
                                "Blocked inline spine navigation in paged mode: $currentDocumentUrl -> $uri"
                            )
                            return true
                        }
                        val currentBaseUrl = view.url?.substringBefore('#')
                        val requestedBaseUrl = uri.toString().substringBefore('#')
                        if (
                            request.isForMainFrame &&
                            uri.fragment != null &&
                            currentBaseUrl != null &&
                            requestedBaseUrl == currentBaseUrl
                        ) {
                            return false
                        }
                        when (uri.scheme?.lowercase()) {
                            "fbanchor" -> {
                                val id = uri.host ?: uri.path?.trimStart('/') ?: ""
                                if (id.isNotEmpty()) post { onAnchor.value(id) }
                                return true
                            }
                            "http", "https", "mailto", "tel" -> {
                                val isReaderAssetUrl =
                                    uri.scheme?.equals("https", ignoreCase = true) == true &&
                                        uri.host?.equals("appassets.androidplatform.net", ignoreCase = true) == true
                                if (isReaderAssetUrl) {
                                    if (
                                        request.isForMainFrame &&
                                        readerView?.pagedModeScrollLock == true &&
                                        shouldBlockReaderAssetSpineNavigation(
                                            pagedModeScrollLock = true,
                                            currentUrl = currentDocumentUrl,
                                            targetUri = uri
                                        )
                                    ) {
                                        Log.d(
                                            HTML_READER_TAG,
                                            "Blocked reader asset spine jump: $currentDocumentUrl -> $uri"
                                        )
                                        return true
                                    }
                                    return false
                                }
                                try {
                                    val intent = android.content.Intent(
                                        android.content.Intent.ACTION_VIEW, uri
                                    )
                                    context.startActivity(intent)
                                } catch (_: Exception) {}
                                return true
                            }
                        }
                        return false
                    }

                    // Inject the tap listener + restore text settings after every page load
                    override fun onPageFinished(view: WebView, url: String) {
                        Log.d(HTML_READER_TAG, "WebView page finished: $url")
                        view.evaluateJavascript(JS_TAP_HANDLER, null)
                        val (themeBg, themeFg) = colorSchemePaletteForPreset(currentScheme.value, currentPreset.value)
                        val runtimeBg = normalizeReaderOverrideColor(overrideBackgroundColor) ?: themeBg
                        val runtimeFg = normalizeReaderOverrideColor(overrideTextColor) ?: themeFg
                        val runtimeAccent = normalizeReaderOverrideColor(overrideAccentColor)
                            ?: defaultReaderAccentColor(runtimeBg)
                        val readerView = view as? ReaderWebView
                        view.evaluateJavascript(
                            textSettingsJs(
                                currentFs.value,
                                runtimeBg,
                                runtimeFg,
                                overrideTextColor = runtimeFg,
                                overrideBackgroundColor = runtimeBg,
                                overrideAccentColor = runtimeAccent,
                                fontFamily = currentFamily.value,
                                fontSourceUrl = currentFontSourceUrl.value,
                                lineHeight = currentLH.value,
                                letterSpacing = currentLetterSpacing.value,
                                wordSpacing = currentWordSpacing.value,
                                paragraphSpacing = currentParagraphSpacing.value,
                                align = currentAlign.value,
                                bold = currentBold.value,
                                topPaddingPx = currentTopPaddingPx.value,
                                bottomPaddingPx = currentBottomPaddingPx.value,
                                horizontalPaddingPx = currentHorizontalPaddingPx.value,
                                maxWidthPx = currentMaxWidthPx.value,
                                pagedMode = currentPagedMode.value,
                                nativeViewportWidthPx = view.readerCssViewportWidthPxOrNull(),
                                nativeViewportHeightPx = view.readerCssViewportHeightPxOrNull(),
                                isRtl = readingMode == ReadingMode.PAGE_RTL
                            )
                        ) {
                            readerView?.applyPagedLayout()
                            readerView?.schedulePagedLayoutSettle()
                            readerView?.resetFreeScrollAfterLoadIfNeeded()
                        }
                        if (currentPagedMode.value) {
                            readerView?.postDelayed({ readerView.applyPagedLayout() }, 80L)
                            readerView?.postDelayed({ readerView.applyPagedLayout() }, 320L)
                        }
                        // Inject text highlights overlay after page layout is ready.
                        val highlightsJs = currentHighlightsJs.value
                        if (highlightsJs.isNotBlank()) {
                            readerView?.postDelayed({
                                view.evaluateJavascript(highlightsJs, null)
                            }, 500L)
                        }
                        currentPendingAnchor.value?.let { anchor ->
                            val safeAnchor = anchor.replace("\\", "\\\\").replace("'", "\\'").replace("\"", "\\\"")
                            view.evaluateJavascript(
                                "try{var t=document.getElementById('$safeAnchor')||document.querySelector('[name=\"$safeAnchor\"]');if(t&&window.__mrcomicScrollToAnchor){window.__mrcomicScrollToAnchor(t);}else if(t){t.scrollIntoView({block:'start'});}}catch(e){}",
                                null
                            )
                            onConsumeAnchor.value()
                        }
                        currentPendingWebtoonSection.value
                            ?.takeIf { !currentPagedMode.value }
                            ?.let { sectionIndex ->
                                val expectedLoadToken = readerView?.activeLoadToken
                                view.postDelayed({
                                    if (!shouldRestoreTextWebtoonSection(
                                            expectedLoadToken = expectedLoadToken,
                                            activeLoadToken = readerView?.activeLoadToken
                                        )
                                    ) {
                                        return@postDelayed
                                    }
                                    view.evaluateJavascript(
                                        """(function(){try{var target=document.querySelector('.mrcomic-text-webtoon-section[data-mrcomic-page-index=\"$sectionIndex\"]');if(!target)return false;if(window.__mrcomicScrollToAnchor){window.__mrcomicScrollToAnchor(target);}else{target.scrollIntoView({block:'start',inline:'nearest'});}return true;}catch(e){return false;}})()""",
                                        { didScroll ->
                                            if (didScroll.trim('"') == "true") {
                                                onConsumeWebtoonSectionState.value()
                                            }
                                        }
                                    )
                                }, TEXT_WEBTOON_RESTORE_DELAY_MILLIS)
                            }
                        // Inject IntersectionObserver for text WEBTOON section tracking.
                        // Reports the currently visible section index back to the native
                        // reader so WEBTOON → PAGE mode switch restores the correct position.
                        if (!currentPagedMode.value) {
                            view.evaluateJavascript(
                                """(function(){try{if(window.__mrcomicSectionObserver)return;var sections=document.querySelectorAll('.mrcomic-text-webtoon-section[data-mrcomic-page-index]');if(!sections.length)return;window.__mrcomicSectionObserver=new IntersectionObserver(function(entries){entries.forEach(function(e){if(e.isIntersecting){var idx=parseInt(e.target.getAttribute('data-mrcomic-page-index'),10);if(!isNaN(idx)&&window._NativeReader){window._NativeReader.onVisibleSectionChanged(idx);}}});},{root:null,threshold:0.1});sections.forEach(function(s){window.__mrcomicSectionObserver.observe(s);});}catch(e){}})()""",
                                null
                            )
                        }
                        view.post {
                            view.requestLayout()
                            view.invalidate()
                        }
                        (view as? ReaderWebView)?.post {
                            (view as? ReaderWebView)?.verifyVisibleContentOrFallback()
                        }
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
                        Log.w(
                            HTML_READER_TAG,
                            "WebView error for ${request.url}: ${error.description} (${error.errorCode})"
                        )
                        if (request.isForMainFrame) {
                            (view as? ReaderWebView)?.loadInlineFallbackNow()
                        }
                        super.onReceivedError(view, request, error)
                    }

                    override fun onRenderProcessGone(
                        view: WebView,
                        detail: android.webkit.RenderProcessGoneDetail
                    ): Boolean {
                        Log.e(
                            HTML_READER_TAG,
                            "Renderer process gone: didCrash=${detail.didCrash()}, rendererPriorityAtExit=${detail.rendererPriorityAtExit()}"
                        )
                        view.stopLoading()
                        (view.parent as? android.view.ViewGroup)?.removeView(view)
                        view.destroy()
                        return true
                    }
                }
            }
        },
        update = { webView ->
            webView.pagedModeScrollLock = pagedMode
            webView.webtoonFadeEnabled = !pagedMode
            if (webView.settings.useWideViewPort != !pagedMode) {
                webView.settings.useWideViewPort = !pagedMode
            }
            if (webView.settings.loadWithOverviewMode != !pagedMode) {
                webView.settings.loadWithOverviewMode = !pagedMode
            }
            webView.onVerticalBoundaryNavigationRequest = onVerticalBoundaryNavigation
            webView.onPagedLayoutPageCountChanged = onPagedLayoutPageCountChanged
            // Register page turner for hardware volume buttons in text paged mode.
            // The lambda turns a visual page column; on boundary it calls
            // onVerticalBoundaryNavigation which navigates to the next/prev section.
            if (pagedMode) {
                onRegisterPageTurner { step ->
                    webView.turnPagedColumn(step, {
                        onVerticalBoundaryNavigation(step)
                    }, { pageCount, pageIndex, characterOffset ->
                        onPagedLayoutPageCountChanged(pageCount, pageIndex, characterOffset)
                    })
                }
            }
            webView.translateSelectionLabel = translateActionLabel
            webView.dictionarySelectionLabel = dictionaryActionLabel
            webView.explainSelectionLabel = explainActionLabel
            webView.saveQuoteSelectionLabel = saveQuoteActionLabel
            webView.onSelectionActionRequest = { action, selectedText ->
                when (action) {
                    ReaderSelectionAction.TRANSLATE -> onTranslate.value(selectedText.trim())
                    ReaderSelectionAction.DICTIONARY -> onDictionary.value(selectedText.trim())
                    ReaderSelectionAction.EXPLAIN -> onExplain.value(selectedText.trim())
                    ReaderSelectionAction.SAVE_QUOTE -> onSaveQuote.value(selectedText.trim())
                    ReaderSelectionAction.HIGHLIGHT -> onHighlight.value(selectedText.trim())
                    ReaderSelectionAction.TRANSLATE_CHAPTER -> onTranslateChapter.value()
                    ReaderSelectionAction.COMPARE_TRANSLATIONS -> onCompareTranslations.value(selectedText.trim())
                }
            }
            val currentSource = pageSource ?: return@AndroidView
            val cached = webView.activeLoadToken
            if (cached != currentSource.loadToken) {
                if (
                    cached != null &&
                    !pagedMode &&
                    currentSource is ReaderHtmlPageSource.Inline &&
                    currentSource.html.contains("data-mrcomic-text-webtoon-document")
                ) {
                    webView.prepareFreeScrollReloadPreservingPosition()
                }
                webView.markLoadRequested(
                    loadToken = currentSource.loadToken,
                    documentBaseUrl = when (currentSource) {
                        is ReaderHtmlPageSource.FileUrl -> currentSource.fallbackBaseUrl
                        is ReaderHtmlPageSource.Inline -> currentSource.baseUrl
                    }
                )
                when (currentSource) {
                    is ReaderHtmlPageSource.FileUrl -> {
                        webView.loadUrl(currentSource.url)
                        val injectBottom = if (pagedMode) 0 else bottomPaddingPx
                        val fallbackWithInset = injectBodyInsetCss(
                            currentSource.fallbackHtml, topPaddingPx, injectBottom,
                            horizontalPx = horizontalPaddingPx,
                            maxWidthPx = maxWidthPx,
                            isRtl = isRtl
                        )
                        webView.scheduleInlineFallback(
                            loadToken = currentSource.loadToken,
                            baseUrl = currentSource.fallbackBaseUrl,
                            html = fallbackWithInset
                        )
                    }
                    is ReaderHtmlPageSource.Inline -> {
                        val injectTop = if (pagedMode) 0 else topPaddingPx
                        val injectBottom = if (pagedMode) 0 else bottomPaddingPx
                        val htmlWithInset = injectBodyInsetCss(
                            currentSource.html, injectTop, injectBottom,
                            horizontalPx = horizontalPaddingPx,
                            maxWidthPx = maxWidthPx,
                            isRtl = isRtl
                        )
                        webView.loadDataWithBaseURL(
                            currentSource.baseUrl,
                            htmlWithInset,
                            "text/html",
                            "UTF-8",
                            null
                        )
                        webView.scheduleInlineFallback(
                            loadToken = currentSource.loadToken,
                            baseUrl = currentSource.baseUrl,
                            html = htmlWithInset,
                            delayMillis = 900L
                        )
                    }
                }
                webView.post {
                    webView.requestLayout()
                    webView.invalidate()
                }
                return@AndroidView
            }
            val viewportWidthPx = webView.readerCssViewportWidthPxOrNull()
            val viewportHeightPx = webView.readerCssViewportHeightPxOrNull()
            val textSettingsSignature = listOf(
                fontSize,
                resolvedBg,
                resolvedFg,
                resolvedAccent,
                fontFamily,
                fontSourceUrl.orEmpty(),
                lineHeight,
                letterSpacing,
                wordSpacing,
                paragraphSpacing,
                textAlign,
                bold,
                // In paged mode CSS padding is 0 — exclude chrome-dependent
                // padding from the signature to prevent unnecessary JS
                // re-evaluation when chrome visibility toggles.
                if (pagedMode) 0 else topPaddingPx,
                if (pagedMode) 0 else bottomPaddingPx,
                horizontalPaddingPx,
                maxWidthPx,
                pagedMode,
                viewportWidthPx ?: -1,
                viewportHeightPx ?: -1,
                isRtl
            ).joinToString(separator = "|")
            val layoutAffectingSignature = ReaderTextLayoutFingerprint(
                fontSize = fontSize,
                fontFamily = fontFamily,
                fontSourceUrl = fontSourceUrl.orEmpty(),
                lineHeight = lineHeight,
                letterSpacing = letterSpacing,
                wordSpacing = wordSpacing,
                paragraphSpacing = paragraphSpacing,
                textAlign = textAlign,
                bold = bold,
                topPaddingPx = topPaddingPx,
                bottomPaddingPx = bottomPaddingPx,
                horizontalPaddingPx = horizontalPaddingPx,
                maxWidthPx = maxWidthPx,
                pagedMode = pagedMode,
                viewportWidthPx = viewportWidthPx ?: -1,
                viewportHeightPx = viewportHeightPx ?: -1,
                isRtl = isRtl
            ).signature()
            webView.applyReaderTextSettingsIfNeeded(
                signature = textSettingsSignature,
                layoutAffectingSignature = layoutAffectingSignature,
                characterOffsetToRestore = currentCharOffset.value.takeIf { it > 0 },
                script = textSettingsJs(
                    fontSize = fontSize,
                    bg = resolvedBg,
                    fg = resolvedFg,
                    overrideTextColor = resolvedFg,
                    overrideBackgroundColor = resolvedBg,
                    overrideAccentColor = resolvedAccent,
                    fontFamily = fontFamily,
                    fontSourceUrl = fontSourceUrl,
                    lineHeight = lineHeight,
                    letterSpacing = letterSpacing,
                    wordSpacing = wordSpacing,
                    paragraphSpacing = paragraphSpacing,
                    align = textAlign,
                    bold = bold,
                    topPaddingPx = topPaddingPx,
                    bottomPaddingPx = bottomPaddingPx,
                    horizontalPaddingPx = horizontalPaddingPx,
                    maxWidthPx = maxWidthPx,
                    pagedMode = pagedMode,
                    nativeViewportWidthPx = viewportWidthPx,
                    nativeViewportHeightPx = viewportHeightPx,
                    isRtl = isRtl
                )
            )
        },
        onRelease = { webView ->
            autoScrollScrollLambda.value = null
            webView.evaluateJavascript(
                """(function(){try{if(window.__mrcomicSectionObserver){window.__mrcomicSectionObserver.disconnect();window.__mrcomicSectionObserver=null;}}catch(e){}})()""",
                null
            )
            webView.removeJavascriptInterface("_NativeReader")
            (webView.parent as? android.view.ViewGroup)?.removeView(webView)
            webView.stopLoading()
            webView.loadUrl("about:blank")
            webView.destroy()
        }
    )
}
