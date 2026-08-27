package io.leostrange.mrcomic.feature.reader.ui

import android.os.Build
import android.webkit.WebSettings
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.withFrameNanos
import androidx.compose.runtime.saveable.Saver
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.compose.ui.viewinterop.AndroidView
import androidx.webkit.WebViewAssetLoader
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import kotlin.math.roundToInt

private class FreeScrollPositionHolder(var value: ReaderWebViewRestoreTarget?)

private val FreeScrollPositionHolderSaver = Saver<FreeScrollPositionHolder, String>(
    save = { holder ->
        holder.value?.let { target ->
            "${target.characterOffset ?: -1}|${target.progression ?: -1.0}"
        }
    },
    restore = { encoded ->
        val parts = encoded.split('|')
        val characterOffset = parts.getOrNull(0)?.toIntOrNull()?.takeIf { it >= 0 }
        val progression = parts.getOrNull(1)?.toDoubleOrNull()?.takeIf { it in 0.0..1.0 }
        FreeScrollPositionHolder(
            if (characterOffset != null || progression != null) {
                ReaderWebViewRestoreTarget(
                    characterOffset = characterOffset,
                    progression = progression
                )
            } else {
                null
            }
        )
    }
)

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
    documentIdentity: String?,
    assetLoader: WebViewAssetLoader?,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    onTranslateSelection: (String) -> Unit,
    onDictionarySelection: (String) -> Unit,
    onExplainSelection: (String) -> Unit,
    onSaveQuoteSelection: (String) -> Unit,
    onHighlightSelection: (ReaderTextSelection) -> Unit = {},
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
    freeScrollRestoreTarget: ReaderWebViewRestoreTarget? = null,
    onFreeScrollPositionUpdate: (ReaderWebViewRestoreTarget) -> Unit = {},
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
    selectionMenuLanguageCode: String = "en",
    highlightsJs: String = "",
    onRegisterPageTurner: ((Int) -> Unit) -> Unit = {},
    onSelectionActionModeChange: (Boolean) -> Unit = {},
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
    val textStyle = ReaderHtmlTextStyle(
        fontSize = fontSize,
        backgroundColor = resolvedBg,
        textColor = resolvedFg,
        accentColor = resolvedAccent,
        fontFamily = fontFamily,
        fontSourceUrl = fontSourceUrl,
        lineHeight = lineHeight,
        letterSpacing = letterSpacing,
        wordSpacing = wordSpacing,
        paragraphSpacing = paragraphSpacing,
        textAlign = textAlign,
        bold = bold,
        topPaddingPx = topPaddingPx,
        bottomPaddingPx = bottomPaddingPx,
        horizontalPaddingPx = horizontalPaddingPx,
        maxWidthPx = maxWidthPx
    )
    val bgColor = remember(resolvedBg) { android.graphics.Color.parseColor(resolvedBg) }
    val resolvedBaseUrl = remember(baseUrl, assetDocumentPath) {
        assetDocumentPath?.let(::readerAssetDocumentBaseUrl) ?: baseUrl ?: HTML_READER_BASE_URL
    }
    val freeScrollPosition = rememberSaveable(
        documentIdentity,
        pagedMode,
        saver = FreeScrollPositionHolderSaver
    ) {
        FreeScrollPositionHolder(null)
    }
    val runtimeOwner = remember { ReaderWebViewRuntimeOwner() }
    val lifecycleOwner = LocalLifecycleOwner.current
    val webViewReference = remember { mutableStateOf<ReaderWebView?>(null) }
    val loadController = runtimeOwner.loadController
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
    val currentTextStyle = rememberUpdatedState(textStyle)
    val currentPagedMode = rememberUpdatedState(pagedMode)
    val currentHighlightsJs = rememberUpdatedState(highlightsJs)
    val currentCharOffset = rememberUpdatedState(sectionCharacterOffset)
    val onSelectionModeChange = rememberUpdatedState(onSelectionActionModeChange)

    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                webViewReference.value?.let { webView ->
                    webView.onResume()
                    webView.resumeTimers()
                    webView.invalidate()
                    webView.requestLayout()
                    webView.postDelayed({ webView.verifyVisibleContentOrFallback() }, 120L)
                }
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        onDispose { lifecycleOwner.lifecycle.removeObserver(observer) }
    }

    // Auto-scroll state — must be before AndroidView so the factory can capture it.
    val autoScrollPaused = remember { mutableStateOf(false) }
    val autoScrollScrollLambda = remember { mutableStateOf<((Int) -> Unit)?>(null) }
    LaunchedEffect(autoScrollSpeed) {
        if (autoScrollSpeed <= 0f) return@LaunchedEffect
        autoScrollPaused.value = false
        var previousFrameNanos = 0L
        var pixelRemainder = 0f
        while (true) {
            withFrameNanos { frameNanos ->
                if (previousFrameNanos == 0L) {
                    previousFrameNanos = frameNanos
                    return@withFrameNanos
                }
                val elapsedSeconds = (frameNanos - previousFrameNanos) / 1_000_000_000f
                previousFrameNanos = frameNanos
                if (!autoScrollPaused.value) {
                    val step = accumulateReaderAutoScrollPixels(
                        remainder = pixelRemainder,
                        pixelsPerSecond = autoScrollSpeed,
                        elapsedSeconds = elapsedSeconds,
                    )
                    pixelRemainder = step.remainder
                    if (step.wholePixels > 0) {
                        autoScrollScrollLambda.value?.invoke(step.wholePixels)
                    }
                }
            }
        }
    }

    AndroidView(
        modifier = modifier,
        factory = { ctx ->
            ReaderWebView(ctx).apply {
                val readerWebView = this
                webViewReference.value = this
                // ARC-11 slice 2b: bridge ReaderWebView.markLoadCommitted's token
                // into the load controller so shouldRestoreScroll() follows the
                // WebView's own commit lifecycle.
                onLoadCommitted = { token ->
                    token?.takeIf { it.isNotBlank() }?.let(loadController::markLoadCommitted)
                }
                onRuntimeEvent = { event ->
                    runtimeOwner.onWebViewEvent(
                        webView = readerWebView,
                        event = event,
                        pagedMode = currentPagedMode.value,
                        onConsumeAnchor = { onConsumeAnchor.value() },
                        onConsumeSection = { onConsumeWebtoonSectionState.value() }
                    )
                }
                autoScrollScrollLambda.value = { pixels -> scrollBy(0, pixels) }
                this.onSelectionActionModeChange = { active -> onSelectionModeChange.value(active) }
                pagedModeScrollLock = pagedMode
                if (!pagedMode) {
                    primeFreeScrollRestoreTarget(freeScrollRestoreTarget ?: freeScrollPosition.value)
                    onFreeScrollPositionChanged = { position ->
                        freeScrollPosition.value = position
                        onFreeScrollPositionUpdate(position)
                    }
                }
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

                val nativeBridge = ReaderNativeJavaScriptBridge(
                    webView = readerWebView,
                    context = context,
                    onLeft = { onLeft.value() },
                    onRight = { onRight.value() },
                    onCenter = { onCenter.value() },
                    onAnchor = { onAnchor.value(it) },
                    onInlineNote = { onInlineNote.value(it) },
                    onVisibleSectionChanged = { onVisibleSectionChanged.value(it) },
                    onPageMetricsChanged = onPagedLayoutPageCountChanged
                )
                onNativePagedTapRequest = { xPercent ->
                    post { nativeBridge.dispatchTap(xPercent) }
                }
                addJavascriptInterface(nativeBridge, "_NativeReader")

                translateSelectionLabel = translateActionLabel
                dictionarySelectionLabel = dictionaryActionLabel
                explainSelectionLabel = explainActionLabel
                saveQuoteSelectionLabel = saveQuoteActionLabel
                readerWebView.selectionMenuLanguageCode = selectionMenuLanguageCode
                onVerticalBoundaryNavigationRequest = onVerticalBoundaryNavigation
                onSelectionActionRequest = { action, selection ->
                    val selectedText = selection.text
                    when (action) {
                        ReaderSelectionAction.TRANSLATE -> onTranslate.value(selectedText.trim())
                        ReaderSelectionAction.DICTIONARY -> onDictionary.value(selectedText.trim())
                        ReaderSelectionAction.EXPLAIN -> onExplain.value(selectedText.trim())
                        ReaderSelectionAction.SAVE_QUOTE -> onSaveQuote.value(selectedText.trim())
                        ReaderSelectionAction.HIGHLIGHT -> onHighlight.value(selection)
                        ReaderSelectionAction.TRANSLATE_CHAPTER -> onTranslateChapter.value()
                        ReaderSelectionAction.COMPARE_TRANSLATIONS -> onCompareTranslations.value(selectedText.trim())
                    }
                }
                val pageLoadDelegate = ReaderHtmlPageLoadDelegate(
                    textStyle = { currentTextStyle.value },
                    pagedMode = { currentPagedMode.value },
                    isRtl = { readingMode == ReadingMode.PAGE_RTL },
                    highlightsJs = { currentHighlightsJs.value }
                )

                webViewClient = ReaderHtmlWebViewClient(
                    context = context,
                    assetLoader = assetLoader,
                    backgroundColor = {
                        android.graphics.Color.parseColor(currentTextStyle.value.backgroundColor)
                    },
                    onAnchor = { onAnchor.value(it) },
                    onPageFinishedAction = { view, _ -> pageLoadDelegate.onPageFinished(view) }
                )
            }
        },
        update = { webView ->
            webView.setBackgroundColor(bgColor)
            webView.pagedModeScrollLock = pagedMode
            webView.onFreeScrollPositionChanged = if (pagedMode) {
                null
            } else {
                { position ->
                    freeScrollPosition.value = position
                    onFreeScrollPositionUpdate(position)
                }
            }
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
            webView.selectionMenuLanguageCode = selectionMenuLanguageCode
            webView.onSelectionActionRequest = { action, selection ->
                val selectedText = selection.text
                when (action) {
                    ReaderSelectionAction.TRANSLATE -> onTranslate.value(selectedText.trim())
                    ReaderSelectionAction.DICTIONARY -> onDictionary.value(selectedText.trim())
                    ReaderSelectionAction.EXPLAIN -> onExplain.value(selectedText.trim())
                    ReaderSelectionAction.SAVE_QUOTE -> onSaveQuote.value(selectedText.trim())
                    ReaderSelectionAction.HIGHLIGHT -> onHighlight.value(selection)
                    ReaderSelectionAction.TRANSLATE_CHAPTER -> onTranslateChapter.value()
                    ReaderSelectionAction.COMPARE_TRANSLATIONS -> onCompareTranslations.value(selectedText.trim())
                }
            }
            val currentSource = pageSource ?: return@AndroidView
            if (loadReaderHtmlSourceIfChanged(
                    webView = webView,
                    runtimeOwner = runtimeOwner,
                    request = ReaderHtmlSourceLoadRequest(
                        source = currentSource,
                        pagedMode = pagedMode,
                        topPaddingPx = topPaddingPx,
                        bottomPaddingPx = bottomPaddingPx,
                        horizontalPaddingPx = horizontalPaddingPx,
                        maxWidthPx = maxWidthPx,
                        isRtl = isRtl,
                        fragment = currentPendingAnchor.value?.takeIf { it.isNotBlank() },
                        sectionIndex = currentPendingWebtoonSection.value?.takeIf { !pagedMode },
                        characterOffset = currentCharOffset.value.takeIf { pagedMode && it > 0 },
                        freeScrollRestoreTarget = if (!pagedMode) {
                            freeScrollRestoreTarget ?: freeScrollPosition.value
                        } else {
                            null
                        }
                    )
                )) {
                return@AndroidView
            }
            val pendingAnchor = currentPendingAnchor.value?.takeIf { it.isNotBlank() }
            if (pendingAnchor != null) {
                val cleanAnchor = pendingAnchor.removePrefix("#").replace("\"", "\\\"")
                val script = """
                    (function() {
                        var target = document.getElementById("$cleanAnchor") ||
                                     document.querySelector('[name="$cleanAnchor"]');
                        if (target && window.__mrcomicScrollToAnchor) {
                            window.__mrcomicScrollToAnchor(target);
                            return true;
                        }
                        return false;
                    })();
                """.trimIndent()
                webView.evaluateJavascript(script) { _ ->
                    onConsumeAnchor.value()
                }
            }
            val pendingWebtoonSection = currentPendingWebtoonSection.value?.takeIf { !pagedMode }
            if (pendingWebtoonSection != null) {
                val script = """
                    (function() {
                        var target = document.querySelector('.mrcomic-text-webtoon-section[data-mrcomic-page-index="$pendingWebtoonSection"]');
                        if (target && window.__mrcomicScrollToAnchor) {
                            window.__mrcomicScrollToAnchor(target);
                            return true;
                        }
                        return false;
                    })();
                """.trimIndent()
                webView.evaluateJavascript(script) { rawValue ->
                    // Keep the cursor pending until the target section exists and
                    // the runtime confirms that it actually scrolled to it.
                    if (rawValue?.trim('"') == "true") {
                        onConsumeWebtoonSectionState.value()
                    }
                }
            }
            val viewportWidthPx = webView.readerCssViewportWidthPxOrNull()
            val viewportHeightPx = webView.readerCssViewportHeightPxOrNull()
            webView.applyReaderTextSettingsIfNeeded(
                signature = textStyle.signature(pagedMode, viewportWidthPx, viewportHeightPx, isRtl),
                layoutAffectingSignature = textStyle.layoutSignature(
                    pagedMode,
                    viewportWidthPx,
                    viewportHeightPx,
                    isRtl
                ),
                characterOffsetToRestore = currentCharOffset.value.takeIf { it > 0 },
                script = textStyle.settingsScript(webView, pagedMode, isRtl)
            )
            // Read the composable parameter directly here. `rememberUpdatedState` keeps
            // callbacks current, but it does not reliably invalidate AndroidView.update
            // when a Room highlight emission is the only state change.
            webView.applyHighlightsIfChanged(highlightsJs)
        },
        onRelease = { webView ->
            if (webViewReference.value === webView) webViewReference.value = null
            autoScrollScrollLambda.value = null
            if (!webView.pagedModeScrollLock) {
                webView.currentFreeScrollRestoreTarget()?.let { position ->
                    freeScrollPosition.value = position
                    onFreeScrollPositionUpdate(position)
                }
            }
            webView.stopFreeScrollPositionTracking()
            runtimeOwner.release(webView)
        }
    )
}
