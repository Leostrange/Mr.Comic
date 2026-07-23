package io.leostrange.mrcomic.feature.reader.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.pm.ActivityInfo
import android.content.res.Configuration
import android.os.Build
import android.util.Log
import android.view.ActionMode
import android.view.KeyEvent
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.view.WindowInsetsController
import android.view.WindowManager
import io.leostrange.mrcomic.feature.reader.domain.enums.FootnotePresentation
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import androidx.compose.foundation.background
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.ui.draw.blur
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.BlurredEdgeTreatment
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.clickable
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.BrightnessHigh
import androidx.compose.material.icons.filled.BrightnessLow
import androidx.compose.material.icons.filled.BrightnessMedium
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.FormatListBulleted
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.SwapHoriz
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.Hyphens
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.hilt.navigation.compose.hiltViewModel
import android.webkit.JavascriptInterface
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import android.webkit.WebSettings
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.runtime.getValue
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.webkit.WebViewAssetLoader
import org.json.JSONTokener
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.model.resolveReaderSimpleTapZoneLayout
import io.leostrange.mrcomic.core.model.resolveReaderTapZoneLayout
import io.leostrange.mrcomic.core.ui.eink.LocalEInkMode
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import io.leostrange.mrcomic.feature.reader.R
import io.leostrange.mrcomic.feature.reader.ui.components.ImageMessagePopup
import io.leostrange.mrcomic.feature.reader.ui.components.ImageMessagePopupConfig
import io.leostrange.mrcomic.feature.reader.ui.components.PageView
import io.leostrange.mrcomic.feature.reader.ui.components.TextContainer
import io.leostrange.mrcomic.feature.reader.ui.components.ReaderBottomBar
import io.leostrange.mrcomic.feature.reader.ui.components.WebtoonView
import io.leostrange.mrcomic.feature.reader.ui.gesture.PagedGestureAction
import io.leostrange.mrcomic.feature.reader.ui.gesture.PagedGesturePolicy
import io.leostrange.mrcomic.feature.reader.ui.geometry.ReaderViewportGeometry
import io.leostrange.mrcomic.feature.reader.ui.gesture.ReaderColorScheme
import io.leostrange.mrcomic.feature.reader.ui.gesture.ReaderHtmlHelpers
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.withContext
import java.io.ByteArrayInputStream
import java.io.File
import java.time.LocalTime
import java.time.format.DateTimeFormatter
import java.util.Locale
import kotlin.math.abs
import kotlin.math.roundToInt

/**
 * JS snippet injected via evaluateJavascript after each page load.
 *
 * Behaviour:
 *  вЂў Click on <a href="fbanchor://id"> в†’ call onAnchorClick(id) for footnote popup.
 *  вЂў Click on <a href="#frag"> or <a href="file.xhtml#frag"> в†’ onAnchorClick(fullHref).
 *  вЂў Click on <a href="file.xhtml"> (no fragment) в†’ onAnchorClick(fullHref) for page nav.
 *  вЂў Click on <a href="http(s)://..."> в†’ call onExternalLink(url) to open in browser.
 *  вЂў Click anywhere else в†’ call onTap(xPercent) for page-turn navigation.
 * The guard flag prevents double-registration across multiple onPageFinished calls.
 */
// WebView JS constants extracted to ReaderWebViewJavaScript.kt

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

private class ReaderFormatAssetPathHandler(
    private val resolver: (String) -> io.leostrange.mrcomic.engine.formats.base.FormatReaderWebResource?
) : WebViewAssetLoader.PathHandler {
    override fun handle(path: String): WebResourceResponse? {
        val cleanPath = path.substringBefore('#').substringBefore('?').trimStart('/')
        val resource = resolver(cleanPath) ?: return null
        return WebResourceResponse(
            resource.mimeType,
            resource.encoding,
            ByteArrayInputStream(resource.bytes)
        ).apply {
            responseHeaders = mapOf(
                "Cache-Control" to "public, max-age=300",
                "Access-Control-Allow-Origin" to "*"
            )
        }
    }
}

private class ReaderUserFontAssetPathHandler(
    private val context: Context
) : WebViewAssetLoader.PathHandler {
    override fun handle(path: String): WebResourceResponse? {
        val decodedPath = android.net.Uri.decode(path).replace('\\', '/').trimStart('/')
        val fileName = decodedPath.substringAfterLast('/').trim()
        if (fileName.isBlank()) return null
        val mimeType = when (fileName.substringAfterLast('.', "").lowercase(Locale.US)) {
            "ttf" -> "font/ttf"
            "otf" -> "font/otf"
            "woff" -> "font/woff"
            "woff2" -> "font/woff2"
            else -> return null
        }
        val builtInBytes = runCatching {
            context.assets.open("fonts/$fileName").use { it.readBytes() }
        }.getOrNull()
        if (builtInBytes != null) {
            return fontWebResourceResponse(mimeType, builtInBytes)
        }
        val rootDir = ReaderTextFontCatalog.fontDirectory(context).canonicalFile
        val file = File(rootDir, fileName).canonicalFile
        if (file.parentFile != rootDir || !file.exists() || !file.isFile || !file.canRead()) {
            return null
        }
        return fontWebResourceResponse(mimeType, file.readBytes())
    }

    private fun fontWebResourceResponse(mimeType: String, bytes: ByteArray): WebResourceResponse =
        WebResourceResponse(
            mimeType,
            "binary",
            ByteArrayInputStream(bytes)
        ).apply {
            responseHeaders = mapOf(
                "Cache-Control" to "public, max-age=300",
                "Access-Control-Allow-Origin" to "*"
            )
        }
}

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
    val themedHtml = withContext(Dispatchers.Default) { buildThemedHtmlDocument(html, bg, fg) }
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
    var pageSource by remember(reloadKey) {
        mutableStateOf<ReaderHtmlPageSource?>(null)
    }
    LaunchedEffect(reloadKey) {
        pageSource = buildReaderHtmlPageSource(
            context = context,
            html = html,
            bg = bg,
            fg = fg,
            resolvedBaseUrl = resolvedBaseUrl
        )
    }
    return pageSource
}

private const val JS_SELECTED_TEXT_HANDLER = """(function(){
  try{
    var t=(window.getSelection&&window.getSelection().toString())||'';
    t=(t||'').trim();
    return t;
  }catch(e){}
  return '';
})();"""

private const val TRANSLATE_SELECTION_MENU_ID = 0x6F4352
private const val DICTIONARY_SELECTION_MENU_ID = 0x6F4353
private const val EXPLAIN_SELECTION_MENU_ID = 0x6F4354
private const val SAVE_QUOTE_SELECTION_MENU_ID = 0x6F4355
private const val HIGHLIGHT_SELECTION_MENU_ID = 0x6F4356
private const val TRANSLATE_CHAPTER_MENU_ID = 0x6F4357
private const val COMPARE_TRANSLATIONS_MENU_ID = 0x6F4358
private const val MAX_INLINE_HTML_SOURCE_LENGTH = 6_000_000

private enum class ReaderSelectionAction {
    TRANSLATE,
    DICTIONARY,
    EXPLAIN,
    SAVE_QUOTE,
    HIGHLIGHT,
    TRANSLATE_CHAPTER,
    COMPARE_TRANSLATIONS
}

internal fun colorSchemePalette(scheme: String): Pair<String, String> =
    ReaderColorScheme.palette(scheme)

private fun readerHeaderFooterReservedHeightDp(
    fontSizeSp: Int,
    verticalPaddingDp: Int
): Dp {
    val safeFont = fontSizeSp.coerceIn(10, 20).toFloat()
    val safePadding = verticalPaddingDp.coerceIn(0, 24).toFloat()
    return (safeFont + safePadding * 2f + 10f).dp
}

internal fun colorSchemePaletteForPreset(
    scheme: String,
    readerPreset: ReadingPreset
): Pair<String, String> = ReaderColorScheme.paletteForPreset(scheme, readerPreset)

internal fun normalizeReaderOverrideColor(value: String?): String? =
    ReaderColorScheme.normalizeOverrideColor(value)

internal fun defaultReaderAccentColor(backgroundColor: String): String =
    ReaderColorScheme.defaultAccentColor(backgroundColor)

internal fun readerSelectionOverlayColor(color: String, alpha: Float): String {
    val clampedAlpha = alpha.coerceIn(0f, 1f)
    return runCatching {
        val parsed = android.graphics.Color.parseColor(color)
        val red = android.graphics.Color.red(parsed)
        val green = android.graphics.Color.green(parsed)
        val blue = android.graphics.Color.blue(parsed)
        "rgba($red,$green,$blue,$clampedAlpha)"
    }.getOrDefault("rgba(26,111,154,$clampedAlpha)")
}

private fun readerColorOverrideHex(value: Long?): String? =
    value?.let { String.format(Locale.US, "#%08X", it) }

// readerMaterialColorScheme extracted to ReaderMaterialColorScheme.kt

internal fun normalizedTocTitle(title: String): String =
    title.replace(Regex("\\s+"), " ").trim()

private tailrec fun findReaderHardwareKeyHost(context: Context): ReaderHardwareKeyHost? = when (context) {
    is ReaderHardwareKeyHost -> context
    is ContextWrapper -> findReaderHardwareKeyHost(context.baseContext)
    else -> null
}


internal fun buildThemedHtmlDocument(html: String, bg: String, fg: String): String =
    ReaderHtmlHelpers.buildThemedHtmlDocument(html, bg, fg)

private fun looksLikeReaderStyleJson(raw: String): Boolean = runCatching {
    JSONTokener(raw.trim()).nextValue() is org.json.JSONObject
}.getOrDefault(false)

private class ReaderWebView(context: android.content.Context) : WebView(context) {
    var translateSelectionLabel: String = ""
    var dictionarySelectionLabel: String = ""
    var explainSelectionLabel: String = ""
    var saveQuoteSelectionLabel: String = ""
    var onSelectionActionRequest: ((ReaderSelectionAction, String) -> Unit)? = null
    var onVerticalBoundaryNavigationRequest: ((Int) -> Unit)? = null
    var onNativePagedTapRequest: ((Float) -> Unit)? = null
    var onPagedLayoutPageCountChanged: ((pageCount: Int, pageIndex: Int) -> Unit)? = null
    var pagedModeScrollLock: Boolean = false
        set(value) {
            val changed = field != value
            field = value
            isVerticalScrollBarEnabled = !value
            isHorizontalScrollBarEnabled = false
            isHapticFeedbackEnabled = readerHtmlSelectionActionsEnabled(value)
            isLongClickable = readerHtmlSelectionActionsEnabled(value)
            if (changed && readerHtmlModeChangeRequiresPagedLayoutTeardown(!value, value)) {
                resetFreeScrollAfterLoadIfNeeded()
            }
            if (value && changed && scrollY != 0) {
                scrollTo(scrollX, 0)
            }
        }
    /**
     * When true (WEBTOON text mode), chapter transitions are hidden via alpha fade to avoid
     * the blank WebView flash that happens during loadDataWithBaseURL reload.
     */
    var webtoonFadeEnabled: Boolean = false
    /** True once the first page has successfully committed вЂ” used to skip the fade on initial open. */
    private var hasEverCommittedLoad: Boolean = false
    var pendingPagedLayoutTarget: Int? = null
    private var activeSelectionActionMode: ActionMode? = null
    var activeLoadToken: String? = null
        private set
    /** Base URL of the spine document currently shown (used when [getUrl] is blank/file). */
    var activeDocumentBaseUrl: String? = null
        private set
    private var committedLoadToken: String? = null
    private var lastReaderTextSettingsSignature: String? = null
    private var inlineFallback: PendingInlineFallback? = null
    private var inlineFallbackRunnable: Runnable? = null
    private var inlineFallbackAttempts: Int = 0
    private var pendingFreeScrollRestoreY: Int? = null
    private val pagedLayoutSettleRunnables = mutableListOf<Runnable>()
    private var touchStartX: Float = 0f
    private var touchStartY: Float = 0f
    private var touchStartTimeMs: Long = 0L
    private var nativePagedEdgeTapXPercent: Float? = null
    private var nativePagedGestureMoved: Boolean = false
    private var pagedDragSuppressesSelection: Boolean = false
    /** Set by JS touchstart when the touch target is a clickable link/footnote. */
    @Volatile var touchStartedOnLink: Boolean = false
    private var touchStartedAtTopBoundary: Boolean = false
    private var touchStartedAtBottomBoundary: Boolean = false
    private var pagedLayoutReady: Boolean = false
    private var pagedLayoutRetryCount: Int = 0
    private var pagedLayoutRetryRunnable: Runnable? = null

    private data class PendingInlineFallback(
        val loadToken: String,
        val baseUrl: String,
        val html: String
    )

    override fun startActionMode(callback: ActionMode.Callback?): ActionMode? {
        if (pagedModeScrollLock && pagedDragSuppressesSelection) return null
        if (!readerHtmlSelectionActionsEnabled(pagedModeScrollLock)) return null
        return super.startActionMode(wrapSelectionCallback(callback)).also { mode ->
            activeSelectionActionMode = mode
        }
    }

    override fun startActionMode(callback: ActionMode.Callback?, type: Int): ActionMode? {
        if (pagedModeScrollLock && pagedDragSuppressesSelection) return null
        if (!readerHtmlSelectionActionsEnabled(pagedModeScrollLock)) return null
        return super.startActionMode(wrapSelectionCallback(callback), type).also { mode ->
            activeSelectionActionMode = mode
        }
    }

    override fun performLongClick(): Boolean =
        if (!readerHtmlSelectionActionsEnabled(pagedModeScrollLock)) {
            clearReaderSelection()
            true
        } else {
            super.performLongClick()
        }

    override fun performHapticFeedback(feedbackConstant: Int): Boolean = false

    override fun onScrollChanged(l: Int, t: Int, oldl: Int, oldt: Int) {
        super.onScrollChanged(l, t, oldl, oldt)
        if (pagedModeScrollLock && t != 0) {
            post { scrollTo(0, 0) }
        }
    }

    override fun onTouchEvent(event: android.view.MotionEvent): Boolean {
        if (pagedModeScrollLock) {
            when (event.actionMasked) {
                android.view.MotionEvent.ACTION_DOWN -> {
                    touchStartX = event.x
                    touchStartY = event.y
                    touchStartTimeMs = android.os.SystemClock.uptimeMillis()
                    nativePagedGestureMoved = false
                    pagedDragSuppressesSelection = false
                    // Preserve touchStartedOnLink set by JS via setTouchOnLink()
                    // during dispatchTouchEvent — do NOT reset here.
                    val widthPx = width.takeIf { it > 0 } ?: measuredWidth
                    val xPercent = if (widthPx > 0) (event.x / widthPx).coerceIn(0f, 1f) else 0.5f
                    val isEdgeTap = PagedGesturePolicy.isEdgeTap(xPercent)
                    nativePagedEdgeTapXPercent = xPercent.takeIf { isEdgeTap }
                    if (nativePagedEdgeTapXPercent != null && !touchStartedOnLink) {
                        clearReaderSelection()
                        return true
                    }
                    nativePagedEdgeTapXPercent = null
                    super.onTouchEvent(event)
                    return true
                }
                android.view.MotionEvent.ACTION_MOVE -> {
                    val dx = event.x - touchStartX
                    val dy = event.y - touchStartY
                    val moved = PagedGesturePolicy.hasMoved(dx, dy)
                    if (moved) {
                        nativePagedGestureMoved = true
                        nativePagedEdgeTapXPercent = null
                        val hasActiveSelection = activeSelectionActionMode != null
                        if (PagedGesturePolicy.shouldSuppressSelectionOnMove(moved, !hasActiveSelection)) {
                            suppressPagedDragSelection()
                        }
                        suppressNextReaderClick()
                    }
                    if (PagedGesturePolicy.shouldInterceptMove(dx, dy, activeSelectionActionMode != null)) {
                        return true
                    }
                }
                android.view.MotionEvent.ACTION_UP -> {
                    val dx = event.x - touchStartX
                    val dy = event.y - touchStartY
                    val elapsed = android.os.SystemClock.uptimeMillis() - touchStartTimeMs
                    val widthPx = width.takeIf { it > 0 } ?: measuredWidth
                    val xPercent = if (widthPx > 0) (event.x / widthPx).coerceIn(0f, 1f) else 0.5f
                    val isEdgeTap = nativePagedEdgeTapXPercent != null

                    val gesture = PagedGesturePolicy.classifyPagedGesture(
                        dx = dx, dy = dy,
                        elapsed = elapsed,
                        xPercent = nativePagedEdgeTapXPercent ?: xPercent,
                        isEdgeTap = isEdgeTap,
                        hasMoved = nativePagedGestureMoved,
                        hasActiveSelection = activeSelectionActionMode != null,
                        touchStartedOnLink = touchStartedOnLink
                    )

                    when (gesture) {
                        PagedGestureAction.PASS_THROUGH -> {
                            touchStartedOnLink = false
                            nativePagedEdgeTapXPercent = null
                            restorePagedDragSelection()
                            // Center tap → chrome toggle (handled by WebView click listener)
                        }
                        PagedGestureAction.RESOLVED -> {
                            suppressNextReaderClick()
                            nativePagedGestureMoved = false
                            nativePagedEdgeTapXPercent = null
                            restorePagedDragSelection()
                            return true
                        }
                        PagedGestureAction.TAP_LEFT -> {
                            clearReaderSelection()
                            restorePagedDragSelection()
                            suppressNextReaderClick()
                            nativePagedGestureMoved = false
                            nativePagedEdgeTapXPercent = null
                            onNativePagedTapRequest?.invoke(0.1f)
                            return true
                        }
                        PagedGestureAction.TAP_RIGHT -> {
                            clearReaderSelection()
                            restorePagedDragSelection()
                            suppressNextReaderClick()
                            nativePagedGestureMoved = false
                            nativePagedEdgeTapXPercent = null
                            onNativePagedTapRequest?.invoke(0.9f)
                            return true
                        }
                    }
                }
                android.view.MotionEvent.ACTION_CANCEL -> {
                    nativePagedEdgeTapXPercent = null
                    nativePagedGestureMoved = false
                    touchStartedOnLink = false
                    restorePagedDragSelection()
                }
            }
        } else {
            when (event.actionMasked) {
                android.view.MotionEvent.ACTION_DOWN -> {
                    touchStartX = event.x
                    touchStartY = event.y
                    touchStartTimeMs = android.os.SystemClock.uptimeMillis()
                    touchStartedAtTopBoundary = !canScrollVertically(-1)
                    touchStartedAtBottomBoundary = !canScrollVertically(1)
                }
                android.view.MotionEvent.ACTION_MOVE -> {
                    val dx = event.x - touchStartX
                    val dy = event.y - touchStartY
                    if (abs(dx) > 18f || abs(dy) > 18f) {
                        suppressNextReaderClick()
                    }
                }
                android.view.MotionEvent.ACTION_UP -> {
                    val dx = event.x - touchStartX
                    val dy = event.y - touchStartY
                    val pageStep = readerTextWebtoonBoundaryNavigationStep(
                        startedAtTopBoundary = touchStartedAtTopBoundary,
                        startedAtBottomBoundary = touchStartedAtBottomBoundary,
                        dragDeltaY = dy,
                        dragDeltaX = dx
                    )
                    touchStartedAtTopBoundary = false
                    touchStartedAtBottomBoundary = false
                    if (pageStep != null) {
                        suppressNextReaderClick()
                        onVerticalBoundaryNavigationRequest?.invoke(pageStep)
                        return true
                    }
                }
                android.view.MotionEvent.ACTION_CANCEL -> {
                    touchStartedAtTopBoundary = false
                    touchStartedAtBottomBoundary = false
                }
            }
        }
        // Free-scroll text mode is a continuous vertical feed. Do not treat
        // ordinary in-page scrolls as chapter/page turns; only an intentional
        // extra pull from an already reached boundary requests the adjacent page.
        return super.onTouchEvent(event)
    }

    private fun suppressPagedDragSelection() {
        if (pagedDragSuppressesSelection) return
        pagedDragSuppressesSelection = true
        clearReaderSelection()
        isLongClickable = false
        isHapticFeedbackEnabled = false
    }

    private fun restorePagedDragSelection() {
        if (!pagedDragSuppressesSelection) return
        pagedDragSuppressesSelection = false
        post {
            if (pagedModeScrollLock) {
                val enabled = readerHtmlSelectionActionsEnabled(true)
                isLongClickable = enabled
                isHapticFeedbackEnabled = enabled
            }
        }
    }

    fun suppressNextReaderClick() {
        evaluateJavascript(
            "try{window.__readerNativeSuppressClickUntil=Date.now()+900;}catch(e){}",
            null
        )
    }

    private fun clearReaderSelection() {
        runCatching {
            activeSelectionActionMode?.finish()
            activeSelectionActionMode = null
        }
        runCatching {
            evaluateJavascript(
                "try{var s=window.getSelection&&window.getSelection();if(s)s.removeAllRanges();if(document.activeElement)document.activeElement.blur();}catch(e){}",
                null
            )
        }
        clearFocus()
    }

    private fun wrapSelectionCallback(callback: ActionMode.Callback?): ActionMode.Callback? {
        if (callback == null) return null
        return object : ActionMode.Callback {
            override fun onCreateActionMode(mode: ActionMode, menu: Menu): Boolean {
                val created = callback.onCreateActionMode(mode, menu)
                if (created) {
                    ensureReaderSelectionItems(menu)
                }
                return created
            }

            override fun onPrepareActionMode(mode: ActionMode, menu: Menu): Boolean {
                val changed = callback.onPrepareActionMode(mode, menu)
                ensureReaderSelectionItems(menu)
                return changed
            }

            override fun onActionItemClicked(mode: ActionMode, item: MenuItem): Boolean {
                val selectionAction = when (item.itemId) {
                    TRANSLATE_SELECTION_MENU_ID -> ReaderSelectionAction.TRANSLATE
                    DICTIONARY_SELECTION_MENU_ID -> ReaderSelectionAction.DICTIONARY
                    EXPLAIN_SELECTION_MENU_ID -> ReaderSelectionAction.EXPLAIN
                    SAVE_QUOTE_SELECTION_MENU_ID -> ReaderSelectionAction.SAVE_QUOTE
                    HIGHLIGHT_SELECTION_MENU_ID -> ReaderSelectionAction.HIGHLIGHT
                    TRANSLATE_CHAPTER_MENU_ID -> ReaderSelectionAction.TRANSLATE_CHAPTER
                    COMPARE_TRANSLATIONS_MENU_ID -> ReaderSelectionAction.COMPARE_TRANSLATIONS
                    else -> null
                }
                if (selectionAction != null) {
                    requestSelectedText { selectedText ->
                        if (selectedText.isBlank()) return@requestSelectedText
                        onSelectionActionRequest?.invoke(selectionAction, selectedText)
                        mode.finish()
                    }
                    return true
                }
                return callback.onActionItemClicked(mode, item)
            }

            override fun onDestroyActionMode(mode: ActionMode) {
                if (activeSelectionActionMode === mode) {
                    activeSelectionActionMode = null
                }
                callback.onDestroyActionMode(mode)
            }
        }
    }

    private fun ensureReaderSelectionItems(menu: Menu) {
        removeProcessTextItems(menu)
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = TRANSLATE_SELECTION_MENU_ID,
            order = 0,
            title = translateSelectionLabel,
            showAsAction = MenuItem.SHOW_AS_ACTION_ALWAYS or MenuItem.SHOW_AS_ACTION_WITH_TEXT
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = DICTIONARY_SELECTION_MENU_ID,
            order = 1,
            title = dictionarySelectionLabel,
            showAsAction = MenuItem.SHOW_AS_ACTION_IF_ROOM or MenuItem.SHOW_AS_ACTION_WITH_TEXT
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = EXPLAIN_SELECTION_MENU_ID,
            order = 2,
            title = explainSelectionLabel,
            showAsAction = MenuItem.SHOW_AS_ACTION_IF_ROOM or MenuItem.SHOW_AS_ACTION_WITH_TEXT
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = SAVE_QUOTE_SELECTION_MENU_ID,
            order = 3,
            title = saveQuoteSelectionLabel,
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = HIGHLIGHT_SELECTION_MENU_ID,
            order = 4,
            title = "✦ Highlight",
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = TRANSLATE_CHAPTER_MENU_ID,
            order = 5,
            title = "📖 Translate Chapter",
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = COMPARE_TRANSLATIONS_MENU_ID,
            order = 6,
            title = "⚖ Compare Translations",
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
    }

    private fun addOrUpdateSelectionItem(
        menu: Menu,
        itemId: Int,
        order: Int,
        title: String,
        showAsAction: Int
    ) {
        val item = menu.findItem(itemId) ?: menu.add(Menu.NONE, itemId, order, title)
        item.title = title
        item.setShowAsAction(showAsAction)
    }

    private fun removeProcessTextItems(menu: Menu) {
        for (index in menu.size() - 1 downTo 0) {
            val item = menu.getItem(index)
            val title = item.title?.toString()?.trim().orEmpty()
            val isDuplicateByTitle = item.itemId != TRANSLATE_SELECTION_MENU_ID &&
                item.itemId != DICTIONARY_SELECTION_MENU_ID &&
                item.itemId != EXPLAIN_SELECTION_MENU_ID &&
                title.isNotBlank() &&
                (
                    title.equals(translateSelectionLabel, ignoreCase = true) ||
                        title.equals(dictionarySelectionLabel, ignoreCase = true) ||
                        title.equals(explainSelectionLabel, ignoreCase = true) ||
                        title.equals(saveQuoteSelectionLabel, ignoreCase = true)
                    )
            if (item.intent?.action == Intent.ACTION_PROCESS_TEXT || isDuplicateByTitle) {
                menu.removeItem(item.itemId)
            }
        }
    }

    private fun requestSelectedText(onResult: (String) -> Unit) {
        evaluateJavascript(JS_SELECTED_TEXT_HANDLER) { rawValue ->
            val selectedText = decodeJavascriptString(rawValue).trim()
            post { onResult(selectedText) }
        }
    }

    private fun decodeJavascriptString(rawValue: String?): String {
        if (rawValue == null || rawValue == "null") return ""
        return runCatching {
            JSONTokener(rawValue).nextValue()?.toString().orEmpty()
        }.getOrElse {
            rawValue.trim('"')
        }
    }

    fun markLoadRequested(loadToken: String, documentBaseUrl: String? = null) {
        activeLoadToken = loadToken
        activeDocumentBaseUrl = documentBaseUrl?.substringBefore('#')?.trim()?.takeIf { it.isNotBlank() }
        committedLoadToken = null
        lastReaderTextSettingsSignature = null
        pagedLayoutReady = !pagedModeScrollLock
        if (pagedModeScrollLock) {
            evaluateJavascript(
                "window.__mrcomicPagedIndex=0;window.__mrcomicPageBreaks=null;window.__mrcomicPageBreakSig='';",
                null
            )
        }
        if (readerHtmlReloadResetsScroll(pagedModeScrollLock) && pendingFreeScrollRestoreY == null) {
            scrollTo(0, 0)
        }
        // Hide WebView on every page load until textSettingsJs has applied the correct
        // padding/layout. Paged mode: always hidden (restored by applyPagedLayout).
        // WEBTOON text mode: hidden on all loads (including first open) so text never
        // flashes under the status bar / toolbars before the JS padding injection fires.
        alpha = when {
            pagedModeScrollLock -> 0f
            webtoonFadeEnabled -> 0f
            else -> 1f
        }
        cancelInlineFallback()
        cancelPagedLayoutSettle()
        cancelPagedLayoutRetry()
        pagedLayoutRetryCount = 0
        inlineFallback = null
        inlineFallbackAttempts = 0
    }

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        if (pagedModeScrollLock && !pagedLayoutReady && h >= 400) {
            applyPagedLayout()
        }
    }

    fun markLoadCommitted() {
        committedLoadToken = activeLoadToken
        inlineFallbackRunnable?.let(::removeCallbacks)
        inlineFallbackRunnable = null
        hasEverCommittedLoad = true
        // Restore visibility after chapter transition fade.  Also reset scrollY so that the
        // beginning of the new chapter is shown rather than the leftover scroll offset from
        // the previous chapter (which caused text to appear truncated / cut off).
        if (webtoonFadeEnabled && alpha < 1f) {
            val restoreY = pendingFreeScrollRestoreY
            if (restoreY != null) {
                restoreFreeScrollAfterDocumentExtension(restoreY)
            } else {
                resetFreeScrollAfterLoadIfNeeded()
            }
            post { animate().alpha(1f).setDuration(200L).start() }
        }
    }

    fun prepareFreeScrollReloadPreservingPosition() {
        if (pagedModeScrollLock || !webtoonFadeEnabled || activeLoadToken == null) return
        pendingFreeScrollRestoreY = scrollY.coerceAtLeast(0)
    }

    fun resetFreeScrollAfterLoadIfNeeded() {
        pendingFreeScrollRestoreY = null
        if (!readerHtmlReloadResetsScroll(pagedModeScrollLock)) return
        scrollTo(0, 0)
        evaluateJavascript(HTML_READER_RESET_FREE_SCROLL_JS, null)
    }

    private fun restoreFreeScrollAfterDocumentExtension(scrollYBeforeReload: Int) {
        pendingFreeScrollRestoreY = null
        if (!readerHtmlReloadResetsScroll(pagedModeScrollLock)) return
        val safeY = scrollYBeforeReload.coerceAtLeast(0)
        fun restore() {
            scrollTo(0, safeY)
            evaluateJavascript(
                "try{window.scrollTo(0,$safeY);var s=document.scrollingElement||document.documentElement;if(s)s.scrollTop=$safeY;}catch(e){}",
                null
            )
        }
        post { restore() }
        postDelayed({ restore() }, 120L)
        postDelayed({ restore() }, 360L)
    }

    fun scheduleInlineFallback(
        loadToken: String,
        baseUrl: String,
        html: String,
        delayMillis: Long = 1_500L
    ) {
        cancelInlineFallback()
        inlineFallback = PendingInlineFallback(loadToken, baseUrl, html)
        inlineFallbackRunnable = Runnable {
            val pending = inlineFallback ?: return@Runnable
            val currentToken = activeLoadToken
            if (pending.loadToken == currentToken && committedLoadToken != currentToken) {
                Log.w(HTML_READER_TAG, "WebView file load did not commit in time, retrying inline: $currentToken")
                loadInlineFallbackNow()
            }
        }.also { postDelayed(it, delayMillis) }
    }

    fun loadInlineFallbackNow() {
        val pending = inlineFallback ?: return
        if (inlineFallbackAttempts >= 1) return
        inlineFallbackAttempts += 1
        cancelInlineFallback()
        committedLoadToken = pending.loadToken
        loadDataWithBaseURL(
            pending.baseUrl,
            pending.html,
            "text/html",
            "UTF-8",
            null
        )
    }

    private fun cancelInlineFallback() {
        inlineFallbackRunnable?.let(::removeCallbacks)
        inlineFallbackRunnable = null
    }

    fun schedulePagedLayoutSettle() {
        cancelPagedLayoutSettle()
        if (!pagedModeScrollLock) return
        val expectedToken = activeLoadToken ?: return
        listOf(180L, 700L).forEach { delayMs ->
            val runnable = Runnable {
                if (!pagedModeScrollLock) return@Runnable
                val currentToken = activeLoadToken
                if (currentToken != expectedToken || committedLoadToken != expectedToken) return@Runnable
                applyPagedLayout()
            }
            pagedLayoutSettleRunnables += runnable
            postDelayed(runnable, delayMs)
        }
    }

    private fun cancelPagedLayoutSettle() {
        pagedLayoutSettleRunnables.forEach(::removeCallbacks)
        pagedLayoutSettleRunnables.clear()
    }

    fun verifyVisibleContentOrFallback() {
        val expectedToken = activeLoadToken ?: return
        evaluateJavascript(HTML_READER_BLANK_CHECK_JS) { rawValue ->
            val currentToken = activeLoadToken
            if (currentToken != expectedToken) return@evaluateJavascript
            val parsed = runCatching { JSONTokener(rawValue).nextValue() }.getOrNull()
            val json = parsed as? org.json.JSONObject ?: return@evaluateJavascript
            val visibleText = json.optInt("text", 0)
            val rawText = json.optInt("rawText", visibleText)
            val visibleImages = json.optInt("images", 0)
            val visibleMedia = json.optInt("media", 0)
            val visibleHeight = json.optInt("height", 0)
            if (!pagedModeScrollLock && visibleText == 0 && rawText > 0) {
                Log.w(
                    HTML_READER_TAG,
                    "WebView content hidden by stale paged layout, tearing down: $expectedToken"
                )
                resetFreeScrollAfterLoadIfNeeded()
                inlineFallback = null
                inlineFallbackAttempts = 0
                return@evaluateJavascript
            }
            val looksBlank = visibleText == 0 &&
                visibleImages == 0 &&
                visibleMedia <= 1 &&
                visibleHeight < 48
            if (looksBlank) {
                Log.w(
                    HTML_READER_TAG,
                    "WebView committed visually blank content, retrying inline fallback: $expectedToken"
                )
                loadInlineFallbackNow()
            } else {
                inlineFallback = null
                inlineFallbackAttempts = 0
            }
        }
    }

    private var lastLayoutAffectingSignature: String? = null

    fun applyReaderTextSettingsIfNeeded(
        signature: String,
        script: String,
        force: Boolean = false,
        layoutAffectingSignature: String = signature
    ) {
        if (!force && lastReaderTextSettingsSignature == signature) return
        val layoutChanged = lastLayoutAffectingSignature != layoutAffectingSignature
        lastReaderTextSettingsSignature = signature
        lastLayoutAffectingSignature = layoutAffectingSignature
        evaluateJavascript(script) {
            // Only rebuild paged layout when layout-affecting properties changed
            // (font-size, line-height, font-family, padding, etc.). Cosmetic-only
            // changes (colors, accent) do not require page reflow — skipping the
            // rebuild prevents the visible blank-screen flash during preset switches.
            if (pagedModeScrollLock && layoutChanged) {
                applyPagedLayout()
            }
        }
    }

    fun applyPagedLayout(targetPage: Int? = pendingPagedLayoutTarget) {
        if (!pagedModeScrollLock) {
            pagedLayoutReady = true
            alpha = 1f
            return
        }
        val cssHeight = readerCssViewportHeightPxOrNull()
        val cssWidth = readerCssViewportWidthPxOrNull()
        if (cssHeight == null || cssWidth == null || cssHeight < 400 || cssWidth < 200) {
            schedulePagedLayoutRetry("viewport not ready (${cssWidth}x$cssHeight)")
            return
        }
        val target = targetPage ?: -1
        pendingPagedLayoutTarget = null
        evaluateJavascript(readerPagedLayoutJs(target)) { rawValue ->
            val metrics = decodeReaderPagedLayoutMetrics(rawValue)
            if (metrics == null || !metrics.isUsable()) {
                Log.w(
                    HTML_READER_TAG,
                    "Paged layout not ready yet: raw=$rawValue metrics=$metrics"
                )
                schedulePagedLayoutRetry("invalid metrics")
                return@evaluateJavascript
            }
            cancelPagedLayoutRetry()
            pagedLayoutRetryCount = 0
            Log.d(
                HTML_READER_TAG,
                "Paged layout ready: page=${metrics.pageIndex + 1}/${metrics.pageCount} " +
                    "clip=${metrics.clipHeight} usable=${metrics.usableHeight}"
            )
            pagedLayoutReady = true
            alpha = 1f
            onPagedLayoutPageCountChanged?.invoke(metrics.pageCount, metrics.pageIndex)
        }
    }

    private fun schedulePagedLayoutRetry(reason: String) {
        if (!pagedModeScrollLock || pagedLayoutReady) return
        if (pagedLayoutRetryCount >= 10) {
            Log.e(HTML_READER_TAG, "Paged layout retries exhausted ($reason)")
            revealPagedContentFallback("retries exhausted: $reason")
            return
        }
        pagedLayoutRetryCount++
        val delayMs = when (pagedLayoutRetryCount) {
            1 -> 60L
            2 -> 120L
            3 -> 240L
            else -> 320L
        }
        cancelPagedLayoutRetry()
        val runnable = Runnable {
            if (!pagedModeScrollLock || pagedLayoutReady) return@Runnable
            applyPagedLayout()
        }
        pagedLayoutRetryRunnable = runnable
        postDelayed(runnable, delayMs)
    }

    private fun cancelPagedLayoutRetry() {
        pagedLayoutRetryRunnable?.let(::removeCallbacks)
        pagedLayoutRetryRunnable = null
    }

    /** Moon+ hides loading only after first paint; never leave WebView at alpha=0 forever. */
    private fun revealPagedContentFallback(reason: String) {
        if (pagedLayoutReady) return
        Log.w(HTML_READER_TAG, "Paged layout fallback reveal: $reason")
        cancelPagedLayoutRetry()
        pagedLayoutReady = true
        alpha = 1f
    }

    fun turnPagedColumn(delta: Int, onBoundary: () -> Unit, onPageMetricsChanged: ((pageCount: Int, pageIndex: Int) -> Unit)? = null) {
        if (!pagedModeScrollLock) {
            onBoundary()
            return
        }
        evaluateJavascript(readerPagedTurnJs(delta)) { rawValue ->
            val metrics = decodeReaderPagedLayoutMetrics(rawValue)
            if (metrics == null || !metrics.handled) {
                pendingPagedLayoutTarget = if (delta < 0) Int.MAX_VALUE else 0
                post { onBoundary() }
            } else {
                onPageMetricsChanged?.invoke(metrics.pageCount, metrics.pageIndex)
            }
        }
    }
}

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

private fun WebView.readerCssViewportWidthPxOrNull(): Int? {
    val rawWidth = width.takeIf { it > 0 } ?: measuredWidth.takeIf { it > 0 } ?: return null
    val density = resources.displayMetrics.density.takeIf { it > 0f } ?: return null
    return (rawWidth / density).roundToInt().coerceAtLeast(1)
}

private fun WebView.readerCssViewportHeightPxOrNull(): Int? {
    val rawHeight = height.takeIf { it > 0 } ?: measuredHeight.takeIf { it > 0 } ?: return null
    val density = resources.displayMetrics.density.takeIf { it > 0f } ?: return null
    return (rawHeight / density).roundToInt().coerceAtLeast(1)
}


/**
 * Renders HTML content (text EPUB / FB2) inside a WebView.
 *
 * WebView intercepts all touch events so the outer [pointerInput] tap zones
 * are unreachable from HTML pages.  We bridge this by enabling JS and
 * injecting a click listener that calls a [JavascriptInterface].
 *
 * [onLeftTap]   вЂ” called when user taps left 30 % of the page
 * [onRightTap]  вЂ” called when user taps right 30 % of the page
 * [onCenterTap] вЂ” called when user taps the middle 40 %
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
    onPagedLayoutPageCountChanged: (pageCount: Int, pageIndex: Int) -> Unit = { _, _ -> },
    pendingScrollToAnchor: String? = null,
    onConsumeScrollToAnchor: () -> Unit = {},
    pendingWebtoonSectionIndex: Int? = null,
    onConsumeWebtoonSection: () -> Unit = {},
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
    val pageSource = rememberReaderHtmlPageSource(
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

                // JavascriptInterface вЂ” called from JS on a background thread;
                // WebView.post() dispatches back to the main thread safely.
                fun dispatchReaderTap(xPercent: Float) {
                    if (readerWebView.pagedModeScrollLock) {
                        readerWebView.suppressNextReaderClick()
                    }
                    when {
                        xPercent < 0.3f -> {
                            if (readerWebView.pagedModeScrollLock) {
                                readerWebView.turnPagedColumn(-1, { onLeft.value() }, onPagedLayoutPageCountChanged)
                            } else {
                                onLeft.value()
                            }
                        }
                        xPercent > 0.7f -> {
                            if (readerWebView.pagedModeScrollLock) {
                                readerWebView.turnPagedColumn(1, { onRight.value() }, onPagedLayoutPageCountChanged)
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
                        }, onPagedLayoutPageCountChanged)
                    }
                }
                onNativePagedTapRequest = { xPercent ->
                    post { dispatchReaderTap(xPercent) }
                }
                addJavascriptInterface(object {
                    @JavascriptInterface
                    fun onTap(xPercent: Float) {
                        post { dispatchReaderTap(xPercent) }
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
                                // onPageFinished may precede onPageCommitVisible.  Deferring this
                                // restore keeps markLoadCommitted() from resetting the just-restored
                                // scroll position to the cover of the stitched document.
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
                        // Ignore favicon.ico requests — browsers auto-request it but
                        // our local asset server doesn't serve it. No user impact.
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
                        // Destroy the dead renderer and remove the WebView so the outer
                        // DisposableEffect/AndroidView lifecycle creates a fresh one.
                        view.stopLoading()
                        (view.parent as? android.view.ViewGroup)?.removeView(view)
                        view.destroy()
                        return true // we handled it; prevent framework default destroy
                    }
                }
            }
        },
        update = { webView ->
            webView.pagedModeScrollLock = pagedMode
            // Enable chapter-transition fade for WEBTOON text mode (free-scroll, non-paged).
            webView.webtoonFadeEnabled = !pagedMode
            // Wide viewport / overview — set once per pagedMode transition, not every recompose.
            if (webView.settings.useWideViewPort != !pagedMode) {
                webView.settings.useWideViewPort = !pagedMode
            }
            if (webView.settings.loadWithOverviewMode != !pagedMode) {
                webView.settings.loadWithOverviewMode = !pagedMode
            }
            webView.onVerticalBoundaryNavigationRequest = onVerticalBoundaryNavigation
            webView.onPagedLayoutPageCountChanged = onPagedLayoutPageCountChanged
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
            // Apply text settings immediately when any setting changes (no page reload).
            // Also update the WebView's own background so the color is correct before JS fires.
            webView.setBackgroundColor(bgColor)
            val currentSource = pageSource ?: return@AndroidView
            // Only reload when content actually changes вЂ” prevents scroll position
            // from resetting on every recompose (e.g. when controls are toggled).
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
                        // In paged mode the WebView is hidden (alpha=0) until the paged
                        // layout JS fires, so pre-injecting bottom insets is unnecessary.
                        // More importantly, body.paddingBottom from !important CSS persists
                        // past the JS cleanup and causes rawUsableHeight to be underestimated
                        // в†’ text gets clipped at the bottom of each page.
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
                        // Inject inset CSS before the page loads so the very first paint
                        // already has correct padding вЂ” text never renders under the toolbar
                        // or status bar while waiting for the async textSettingsJs injection.
                        // In paged mode: keep raw HTML unpadded before layout. The PAGE JS
                        // applies top/bottom reader insets to the viewport; pre-injected
                        // body padding changes measured content height and can create skips.
                        val injectTop = if (pagedMode) 0 else topPaddingPx
                        val injectBottom = if (pagedMode) 0 else bottomPaddingPx
                        // Inject horizontal padding immediately so text never renders
                        // at full width before async textSettingsJs fires.
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
                topPaddingPx,
                bottomPaddingPx,
                horizontalPaddingPx,
                maxWidthPx,
                pagedMode,
                viewportWidthPx ?: -1,
                viewportHeightPx ?: -1,
                isRtl
            ).joinToString(separator = "|")
            // Layout-affecting properties only — when these change, pages must be
            // rebuilt. Cosmetic properties (colors) don't affect page breaks.
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
            // Compose only detaches the AndroidView; it never destroys the WebView. Without this
            // the WebView, its renderer process, and the "_NativeReader" JS bridge (which captures
            // the Activity via onExternalLink) leak for the whole process lifetime on every exit.
            autoScrollScrollLambda.value = null
            webView.removeJavascriptInterface("_NativeReader")
            (webView.parent as? android.view.ViewGroup)?.removeView(webView)
            webView.stopLoading()
            webView.loadUrl("about:blank")
            webView.destroy()
        }
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ReaderScreen(
    onNavigateBack: () -> Unit,
    onNavigateToOcr: (OcrLaunchRequest) -> Unit = {},
    viewModel: ReaderViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val context = LocalContext.current
    val density = LocalDensity.current
    val readerAssetLoader = remember(viewModel, context) {
        WebViewAssetLoader.Builder()
            .addPathHandler(
                HTML_READER_ASSET_PATH,
                ReaderFormatAssetPathHandler { path -> viewModel.openHtmlAsset(path) }
            )
            .addPathHandler(
                READER_USER_FONT_ASSET_PATH,
                ReaderUserFontAssetPathHandler(context)
            )
            .build()
    }
    val inheritedColorScheme = MaterialTheme.colorScheme
    val isEInk = LocalEInkMode.current
    val configuration = LocalConfiguration.current
    val readerHardwareKeyHost = remember(context) { findReaderHardwareKeyHost(context) }
    val clipboardManager = LocalClipboardManager.current
    val ttsController = remember { ReaderTextToSpeechControllerStore.get(context) }
    val ttsRuntimeState by ttsController.state.collectAsState()
    val isLandscape = configuration.orientation == Configuration.ORIENTATION_LANDSCAPE
    val isTextReader = uiState.readerContainerKind.isTextContainer()
    val supportsDocumentMarginCrop = uiState.comic?.format == ComicFormat.PDF || uiState.comic?.format == ComicFormat.DJVU
    val effectiveMarginCropHorizontal = if (supportsDocumentMarginCrop) uiState.imageMarginCropHorizontal else 0f
    val effectiveMarginCropVertical = if (supportsDocumentMarginCrop) uiState.imageMarginCropVertical else 0f
    val effectivePageImageScaleMode =
        if (
            uiState.comic?.format == ComicFormat.DJVU &&
            uiState.imageScaleMode == ReaderImageScaleMode.FIT_WIDTH.storedValue
        ) {
            ReaderImageScaleMode.FIT_HEIGHT.storedValue
        } else {
            uiState.imageScaleMode
        }
    val supportsLandscapeSpread = !isTextReader && isLandscape && configuration.screenWidthDp >= 600
    val activeReaderPreset = remember(uiState.readerPreset) {
        ReadingPreset.fromStored(uiState.readerPreset)
    }
    val resolvedTextFont = remember(uiState.textFontFamily, context) {
        ReaderTextFontCatalog.resolve(context, uiState.textFontFamily)
    }
    var showBrightnessRow by remember { mutableStateOf(false) }
    var openControlCenterAtServices by remember { mutableStateOf(false) }
    var showReaderAudioSheet by remember { mutableStateOf(false) }
    var showRsvpOverlay by remember { mutableStateOf(false) }
    var rsvpWords by remember { mutableStateOf<List<String>>(emptyList()) }
    var showTextTranslationPageSheet by remember { mutableStateOf(false) }
    var pendingTtsRestartTargetPage by remember { mutableStateOf<Int?>(null) }
    var eyeRestReminderMinutes by remember { mutableStateOf<Int?>(null) }
    var quoteSavePopupVisible by rememberSaveable { mutableStateOf(false) }
    var quoteSavePopupToken by rememberSaveable { mutableIntStateOf(0) }
    var fontCatalogVersion by remember { mutableIntStateOf(0) }
    var pendingCustomFontDeletion by rememberSaveable { mutableStateOf<String?>(null) }
    val fontImportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        val importedFont = runCatching { ReaderTextFontCatalog.importFont(context, uri) }.getOrNull()
        if (importedFont != null) {
            fontCatalogVersion += 1
            viewModel.setTextFontFamily(importedFont)
            Toast.makeText(context, importedFont, Toast.LENGTH_SHORT).show()
        } else {
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "РќРµ СѓРґР°Р»РѕСЃСЊ РёРјРїРѕСЂС‚РёСЂРѕРІР°С‚СЊ С€СЂРёС„С‚" else "Couldn't import font",
                Toast.LENGTH_SHORT
                ).show()
        }
    }
    val deleteCustomFont = { fontName: String ->
        val deleted = runCatching { ReaderTextFontCatalog.deleteCustomFont(context, fontName) }.getOrDefault(false)
        if (deleted) {
            fontCatalogVersion += 1
            if (uiState.textFontFamily == fontName) {
                viewModel.setTextFontFamily("Georgia")
            }
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "РЁСЂРёС„С‚ СѓРґР°Р»С‘РЅ" else "Font deleted",
                Toast.LENGTH_SHORT
            ).show()
        } else {
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "РќРµ СѓРґР°Р»РѕСЃСЊ СѓРґР°Р»РёС‚СЊ С€СЂРёС„С‚" else "Couldn't delete font",
                Toast.LENGTH_SHORT
            ).show()
        }
    }
    val latestUiState by rememberUpdatedState(uiState)
    val readerStyleImportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        val importedStyleResult = runCatching {
            context.contentResolver.openInputStream(uri)
                ?.bufferedReader()
                ?.use { it.readText() }
        }.getOrNull()
        val importedStyle = importedStyleResult?.let { raw ->
            if (looksLikeReaderStyleJson(raw)) {
                viewModel.importReaderStyleFromJson(raw)
            } else {
                null
            }
        }
        Toast.makeText(
            context,
            if (importedStyle != null) {
                if (strings.languageCode == "ru") "РРјРїРѕСЂС‚РёСЂРѕРІР°РЅ СЃС‚РёР»СЊ: $importedStyle" else "Imported style: $importedStyle"
            } else if (importedStyleResult != null && !looksLikeReaderStyleJson(importedStyleResult)) {
                if (strings.languageCode == "ru") "РќСѓР¶РµРЅ С„Р°Р№Р» СЃС‚РёР»СЏ РІ С„РѕСЂРјР°С‚Рµ JSON" else "Please choose a JSON style file"
            } else {
                if (strings.languageCode == "ru") "РќРµ СѓРґР°Р»РѕСЃСЊ РёРјРїРѕСЂС‚РёСЂРѕРІР°С‚СЊ СЃС‚РёР»СЊ" else "Couldn't import style"
            },
            Toast.LENGTH_SHORT
        ).show()
    }
    val readerStyleExportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/json")
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        val exported = runCatching {
            val payload = buildReaderTypographyExportJson(latestUiState)
            context.contentResolver.openOutputStream(uri)?.use { out ->
                out.write(payload.toByteArray(Charsets.UTF_8))
            } ?: error("No output stream")
        }.isSuccess
        Toast.makeText(
            context,
            if (exported) {
                if (strings.languageCode == "ru") "РЎС‚РёР»СЊ СЌРєСЃРїРѕСЂС‚РёСЂРѕРІР°РЅ" else "Style exported"
            } else {
                if (strings.languageCode == "ru") "РќРµ СѓРґР°Р»РѕСЃСЊ СЌРєСЃРїРѕСЂС‚РёСЂРѕРІР°С‚СЊ СЃС‚РёР»СЊ" else "Couldn't export style"
            },
            Toast.LENGTH_SHORT
        ).show()
    }
    // During loading (especially slow archive extraction), default to text color scheme
    // to avoid a dark flash for text formats inside archives. Once loading completes,
    // the correct scheme is applied based on the resolved readerContainerKind.
    val effectiveIsTextReader = isTextReader || uiState.isLoading
    val readerColorScheme = if (isEInk) {
        inheritedColorScheme
    } else {
        readerMaterialColorScheme(
            isTextReader = effectiveIsTextReader,
            readerPreset = activeReaderPreset,
            textColorScheme = uiState.textColorScheme,
            fallback = inheritedColorScheme
        )
    }

    // Navigate to OCR screen when ViewModel emits a saved page path
    LaunchedEffect(Unit) {
        viewModel.ocrPagePath.collect { request -> onNavigateToOcr(request) }
    }
    LaunchedEffect(Unit) {
        viewModel.eyeRestReminder.collect { minutes -> eyeRestReminderMinutes = minutes }
    }
    LaunchedEffect(Unit) {
        viewModel.quoteSaveMessages.collect { message ->
            quoteSavePopupVisible = true
            quoteSavePopupToken = nextReaderUiEventToken(quoteSavePopupToken)
        }
    }
    // Text books stay in portrait; image-based readers can opt into landscape spreads
    // only when the actual screen width is large enough.
    LaunchedEffect(supportsLandscapeSpread, isTextReader) {
        viewModel.onOrientationChanged(
            useLandscapeSpread = supportsLandscapeSpread,
            isTextReader = isTextReader
        )
    }

    DisposableEffect(isTextReader, context) {
        val activity = context as? Activity
        val previousOrientation = activity?.requestedOrientation ?: ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
        activity?.requestedOrientation = if (isTextReader) {
            ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT
        } else {
            ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
        }
        onDispose {
            activity?.requestedOrientation = previousOrientation.takeUnless {
                it == ActivityInfo.SCREEN_ORIENTATION_LOCKED
            } ?: ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
        }
    }

    val tapZoneLayout = remember(
        uiState.tapZoneMode,
        uiState.tapZoneSwap,
        uiState.tapZoneLeftAction,
        uiState.tapZoneCenterAction,
        uiState.tapZoneRightAction,
        uiState.readingMode
    ) {
        resolveReaderTapZoneLayout(
            mode = ReaderTapZoneMode.fromStored(uiState.tapZoneMode),
            readingMode = uiState.readingMode,
            swapped = uiState.tapZoneSwap,
            leftAction = uiState.tapZoneLeftAction,
            centerAction = uiState.tapZoneCenterAction,
            rightAction = uiState.tapZoneRightAction
        )
    }
    val directionShortcutActive = remember(
        uiState.tapZoneMode,
        uiState.tapZoneSwap,
        uiState.tapZoneLeftAction,
        uiState.tapZoneCenterAction,
        uiState.tapZoneRightAction,
        uiState.readingMode
    ) {
        when (ReaderTapZoneMode.fromStored(uiState.tapZoneMode)) {
            ReaderTapZoneMode.SIMPLE -> uiState.tapZoneSwap
            ReaderTapZoneMode.CUSTOM -> {
                val defaultLayout = resolveReaderSimpleTapZoneLayout(
                    readingMode = uiState.readingMode,
                    swapped = false
                )
                uiState.tapZoneLeftAction == defaultLayout.right.name &&
                    uiState.tapZoneCenterAction == defaultLayout.center.name &&
                    uiState.tapZoneRightAction == defaultLayout.left.name
            }
        }
    }
    val clockText = rememberReaderClockText()
    val currentChapterTitle = remember(uiState.tableOfContents, uiState.currentPage) {
        resolveReaderCurrentChapterTitle(
            tableOfContents = uiState.tableOfContents,
            currentPage = uiState.currentPage
        )
    }
    val headerOverlayLine = remember(
        uiState.headerLeftSlot,
        uiState.headerCenterSlot,
        uiState.headerRightSlot,
        uiState.comic?.title,
        currentChapterTitle,
        clockText,
        uiState.currentPage,
        uiState.totalPages,
        uiState.readingMode
    ) {
        resolveReaderInfoOverlayLine(
            startSlot = uiState.headerLeftSlot,
            centerSlot = uiState.headerCenterSlot,
            endSlot = uiState.headerRightSlot,
            comicTitle = uiState.comic?.title,
            chapterTitle = currentChapterTitle,
            clockText = clockText,
            currentPage = uiState.currentPage,
            totalPages = uiState.totalPages,
            readingMode = uiState.readingMode
        )
    }
    val footerOverlayLine = remember(
        uiState.footerLeftSlot,
        uiState.footerCenterSlot,
        uiState.footerRightSlot,
        uiState.comic?.title,
        currentChapterTitle,
        clockText,
        uiState.currentPage,
        uiState.totalPages,
        uiState.readingMode
    ) {
        resolveReaderInfoOverlayLine(
            startSlot = uiState.footerLeftSlot,
            centerSlot = uiState.footerCenterSlot,
            endSlot = uiState.footerRightSlot,
            comicTitle = uiState.comic?.title,
            chapterTitle = currentChapterTitle,
            clockText = clockText,
            currentPage = uiState.currentPage,
            totalPages = uiState.totalPages,
            readingMode = uiState.readingMode
        )
    }
    val showHeaderFooterOverlay = !uiState.chromeAutoHideEnabled &&
        uiState.chromeState == ReaderChromeState.HIDDEN &&
        !uiState.showTextSettings &&
        !uiState.showTocSheet
    var measuredHeaderOverlayPx by remember { mutableIntStateOf(0) }
    var measuredFooterOverlayPx by remember { mutableIntStateOf(0) }
    var measuredTopChromePx by remember { mutableIntStateOf(0) }
    var measuredBottomChromePx by remember { mutableIntStateOf(0) }
    // Stable chrome reserve is keyed only on chromeAutoHideEnabled, not on comic id.
    // Removing the comic id prevents a viewport height jump on every book open: the first
    // chrome measurement raised topChromeReservePx from 0 -> N, shifting the text content.
    // Carrying over the last-known chrome height avoids this because the toolbar height is
    // determined by the app layout, not by which book is open.
    // Initialize with a reasonable default (~56dp typical toolbar) to prevent the
    // one-frame viewport miscalculation when chrome is visible on first render.
    val defaultTopChromeReservePx = with(density) { 56.dp.roundToPx() }
    val defaultBottomChromeReservePx = with(density) { 48.dp.roundToPx() }
    var stableTopChromeReservePx by remember {
        mutableIntStateOf(defaultTopChromeReservePx)
    }
    var stableBottomChromeReservePx by remember {
        mutableIntStateOf(defaultBottomChromeReservePx)
    }
    // Baseline reserves persist regardless of auto-hide mode. WEBTOON text mode needs these
    // even when chrome is hidden so content keeps a safe bottom gutter instead of sticking to
    // the screen edge or rendering beneath translucent bars.
    var baselineTopChromeReservePx by remember {
        mutableIntStateOf(0)
    }
    var baselineBottomChromeReservePx by remember {
        mutableIntStateOf(0)
    }
    val systemTopInsetPx = maxOf(
        WindowInsets.statusBars.getTop(density),
        WindowInsets.displayCutout.getTop(density)
    )
    val systemBottomInsetPx = WindowInsets.navigationBars.getBottom(density)
    val textSentenceInsetPx = with(density) {
        (uiState.textFontSize.sp.toPx() * uiState.textLineHeight)
            .roundToInt()
            .coerceAtLeast(8)
    }
    val maxStableTopChromeReservePx = with(density) { 96.dp.roundToPx() }
    val estimatedHeaderOverlayContentPx = with(density) {
        readerHeaderFooterReservedHeightDp(
            fontSizeSp = uiState.headerFooterFontSize,
            verticalPaddingDp = uiState.headerFooterVerticalPadding
        ).roundToPx()
    }
    val estimatedFooterOverlayContentPx = estimatedHeaderOverlayContentPx
    // This describes panels that are physically drawn over the WebView. Auto-hide
    // changes whether they are normally hidden; it must not make a currently
    // expanded toolbar invisible to the inset calculation.
    val chromeIsVisible = uiState.chromeState != ReaderChromeState.HIDDEN &&
        !uiState.showTextSettings &&
        !uiState.showTocSheet
    // When chrome is visible: include measured toolbar height in the reserve.
    // When chrome is hidden: only use the small header/footer overlay (info strip), not the
    // stale measuredTopChromePx from when the toolbar was last open вЂ” that value persists
    // in memory even after the toolbar Box is removed from composition, causing the text
    // viewport to be permanently shrunk even in full-screen reading mode.
    val measuredTopReservePx = when {
        chromeIsVisible -> maxOf(
            (measuredHeaderOverlayPx - systemTopInsetPx).coerceAtLeast(0),
            (measuredTopChromePx - systemTopInsetPx).coerceAtLeast(0)
        ).coerceAtMost(maxStableTopChromeReservePx)
        else -> maxOf(
            (measuredHeaderOverlayPx - systemTopInsetPx).coerceAtLeast(0),
            estimatedHeaderOverlayContentPx
        )
    }
    val measuredBottomReservePx = when {
        chromeIsVisible -> maxOf(
            (measuredFooterOverlayPx - systemBottomInsetPx).coerceAtLeast(0),
            (measuredBottomChromePx - systemBottomInsetPx).coerceAtLeast(0)
        )
        else -> maxOf(
            (measuredFooterOverlayPx - systemBottomInsetPx).coerceAtLeast(0),
            estimatedFooterOverlayContentPx
        )
    }
    SideEffect {
        if (measuredTopReservePx > baselineTopChromeReservePx) {
            baselineTopChromeReservePx = measuredTopReservePx
        }
        if (measuredBottomReservePx > baselineBottomChromeReservePx) {
            baselineBottomChromeReservePx = measuredBottomReservePx
        }
        if (uiState.chromeAutoHideEnabled) {
            val overlayTop = maxOf(
                estimatedHeaderOverlayContentPx,
                (measuredHeaderOverlayPx - systemTopInsetPx).coerceAtLeast(0)
            )
            val overlayBottom = maxOf(
                estimatedFooterOverlayContentPx,
                (measuredFooterOverlayPx - systemBottomInsetPx).coerceAtLeast(0)
            )
            if (overlayTop > stableTopChromeReservePx) {
                stableTopChromeReservePx = overlayTop
            }
            if (overlayBottom > stableBottomChromeReservePx) {
                stableBottomChromeReservePx = overlayBottom
            }
        } else if (chromeIsVisible) {
            // Only grow the stable reserve when the chrome is actually visible;
            // never let a stale EXPANDED measurement inflate the HIDDEN viewport.
            if (measuredTopReservePx > stableTopChromeReservePx) {
                stableTopChromeReservePx = measuredTopReservePx
            }
            if (measuredBottomReservePx > stableBottomChromeReservePx) {
                stableBottomChromeReservePx = measuredBottomReservePx
            }
        }
    }
    // When chrome is hidden but the header overlay strip hasn't been measured yet
    // (measuredTopReservePx == 0 on the very first frame), use stableTopChromeReservePx
    // as a floor so text is never drawn at y=0 behind the overlay.  Once
    // measuredTopReservePx has a real value it wins via maxOf, so the over-reserve
    // (toolbar height vs strip height) is automatically corrected within one frame.
    val autoHideTopChromeReservePx = maxOf(
        estimatedHeaderOverlayContentPx,
        stableTopChromeReservePx,
        (measuredHeaderOverlayPx - systemTopInsetPx).coerceAtLeast(0)
    )
    val autoHideBottomChromeReservePx = maxOf(
        estimatedFooterOverlayContentPx,
        stableBottomChromeReservePx,
        (measuredFooterOverlayPx - systemBottomInsetPx).coerceAtLeast(0)
    )
    val topChromeReservePx = visibleChromeContentReservePx(
        chromeIsVisible = chromeIsVisible,
        stableReservePx = stableTopChromeReservePx,
        measuredReservePx = measuredTopReservePx
    )
    val bottomChromeReservePx = visibleChromeContentReservePx(
        chromeIsVisible = chromeIsVisible,
        stableReservePx = stableBottomChromeReservePx,
        measuredReservePx = measuredBottomReservePx
    )
    // Text WebView owns the whole reader viewport. If chrome is visible and not
    // auto-hidden, the toolbar itself is the reserve: do not add an extra sentence
    // gutter on top of it. If chrome is hidden/overlayed, keep exactly one line
    // below the system bars so text never sits under the status/nav areas.
    val textContentTopInsetPx = systemTopInsetPx + topChromeReservePx +
        if (topChromeReservePx == 0) textSentenceInsetPx else 0
    val textContentBottomInsetPx = systemBottomInsetPx + bottomChromeReservePx +
        if (bottomChromeReservePx == 0) textSentenceInsetPx else 0
    val densityScale = density.density.takeIf { it > 0f } ?: 1f
    val textContentTopInsetCssPx = (textContentTopInsetPx / densityScale).roundToInt().coerceAtLeast(0)
    val textContentBottomInsetCssPx = (textContentBottomInsetPx / densityScale).roundToInt().coerceAtLeast(0)
    // PAGE and WEBTOON share the same inset contract to avoid jumps when switching modes.
    // VERTICAL-01/02: Add safety margin for edge-to-edge mode where WebView draws
    // behind status bar. The CSS padding must be at least the system inset height.
    val textWebtoonTopInsetCssPx = textContentTopInsetCssPx
    val textWebtoonBottomInsetCssPx = textContentBottomInsetCssPx

    // GEOMETRY-01: Unified viewport geometry for future migration.
    // Currently computed in parallel with the inline values above.
    // TODO: Replace inline calculations with geometry.contentTopInsetCssPx / contentBottomInsetCssPx
    //       after confirming they produce identical values across all device/config combinations.
    val viewportGeometry = ReaderViewportGeometry.fromMeasured(
        viewportWidthPx = with(density) { configuration.screenWidthDp.dp.roundToPx() },
        viewportHeightPx = with(density) { configuration.screenHeightDp.dp.roundToPx() },
        statusBarInsetPx = systemTopInsetPx,
        navigationBarInsetPx = systemBottomInsetPx,
        displayCutoutInsetPx = 0, // already included in systemTopInsetPx
        topToolbarHeightPx = if (chromeIsVisible) topChromeReservePx else 0,
        bottomToolbarHeightPx = if (chromeIsVisible) bottomChromeReservePx else 0,
        readerTopPaddingPx = textSentenceInsetPx,
        readerBottomPaddingPx = textSentenceInsetPx,
        hideToolbarsWhileReading = !chromeIsVisible,
        densityScale = densityScale
    )

    val handleTapZoneAction: (ReaderTapZoneAction) -> Unit = remember(
        tapZoneLayout,
        uiState.currentPage,
        uiState.tableOfContents
    ) {
        { action ->
            when (action) {
                ReaderTapZoneAction.PREVIOUS_PAGE -> viewModel.prevPage()
                ReaderTapZoneAction.NEXT_PAGE -> viewModel.nextPage()
                ReaderTapZoneAction.MENU,
                ReaderTapZoneAction.TOGGLE_UI -> {
                    showBrightnessRow = false
                    viewModel.toggleChromeUi()
                }
                ReaderTapZoneAction.PREVIOUS_CHAPTER -> {
                    previousReaderChapterPage(uiState.tableOfContents, uiState.currentPage)?.let { page ->
                        viewModel.navigateTo(page, progressSource = ReaderNavigationProgressSource.JUMP)
                    }
                }
                ReaderTapZoneAction.NEXT_CHAPTER -> {
                    nextReaderChapterPage(uiState.tableOfContents, uiState.currentPage)?.let { page ->
                        viewModel.navigateTo(page, progressSource = ReaderNavigationProgressSource.JUMP)
                    }
                }
                ReaderTapZoneAction.NONE -> Unit
            }
        }
    }

    val latestVolumeKeysPagingEnabled by rememberUpdatedState(uiState.volumeKeysPagingEnabled)
    var lastHardwarePageTurnMs by remember { mutableLongStateOf(0L) }
    val latestHandleHardwarePageTurn by rememberUpdatedState<(Int) -> Unit> { step ->
        val now = android.os.SystemClock.uptimeMillis()
        if (now - lastHardwarePageTurnMs < 280L) return@rememberUpdatedState
        lastHardwarePageTurnMs = now
        when {
            step < 0 -> viewModel.prevPage()
            step > 0 -> viewModel.nextPage()
        }
    }

    DisposableEffect(readerHardwareKeyHost) {
        readerHardwareKeyHost?.setReaderHardwareKeyHandler { event ->
            val decision = resolveReaderHardwareKeyDecision(
                event = event,
                volumePagingEnabled = latestVolumeKeysPagingEnabled
            )
            if (!decision.consume) {
                return@setReaderHardwareKeyHandler false
            }
            decision.pageStep?.let(latestHandleHardwarePageTurn)
            true
        }
        onDispose {
            readerHardwareKeyHost?.setReaderHardwareKeyHandler(null)
        }
    }

    LaunchedEffect(
        uiState.currentPage,
        uiState.currentHtmlContent,
        uiState.ttsVoiceName,
        uiState.ttsSpeed,
        uiState.ttsPitch,
        uiState.ttsVolume,
        uiState.ttsSleepTimerMode
    ) {
        ttsController.updateContent(
            rawHtml = uiState.currentHtmlContent,
            preferredVoiceName = uiState.ttsVoiceName,
            speed = uiState.ttsSpeed,
            pitch = uiState.ttsPitch,
            volume = uiState.ttsVolume,
            sleepTimerMode = ReaderTtsSleepTimerMode.fromStored(uiState.ttsSleepTimerMode),
            title = uiState.comic?.title,
            chapterTitle = currentChapterTitle
        )
        if (
            pendingTtsRestartTargetPage == uiState.currentPage &&
            !uiState.currentHtmlContent.isNullOrBlank()
        ) {
            pendingTtsRestartTargetPage = null
            ttsController.restartFromBeginning()
        }
    }

    LaunchedEffect(
        uiState.comic?.id,
        uiState.readerContainerKind,
        uiState.totalPages,
        uiState.currentHtmlContent
    ) {
        if (uiState.readerContainerKind == ReaderContainerKind.TEXT_WEBTOON &&
            uiState.currentHtmlContent != null
        ) {
            viewModel.ensureTextWebtoonDocumentLoaded()
        }
    }

    // РџСЂРёРјРµРЅСЏРµРј СЏСЂРєРѕСЃС‚СЊ СЌРєСЂР°РЅР° С‡РµСЂРµР· WindowManager
    DisposableEffect(uiState.brightness, context) {
        val activity = context as? Activity
        val window = activity?.window
        window?.attributes = window?.attributes?.apply {
            screenBrightness = if (uiState.brightness >= 0f)
                uiState.brightness.coerceIn(0.01f, 1f)
            else
                WindowManager.LayoutParams.BRIGHTNESS_OVERRIDE_NONE
        }
        onDispose {
            // Р’РѕСЃСЃС‚Р°РЅР°РІР»РёРІР°РµРј СЃРёСЃС‚РµРјРЅСѓСЋ СЏСЂРєРѕСЃС‚СЊ РїСЂРё Р·Р°РєСЂС‹С‚РёРё СЂРёРґРµСЂР°
            window?.attributes = window?.attributes?.apply {
                screenBrightness = WindowManager.LayoutParams.BRIGHTNESS_OVERRIDE_NONE
            }
        }
    }

    DisposableEffect(uiState.keepScreenOn, context) {
        val window = (context as? Activity)?.window
        if (uiState.keepScreenOn) {
            window?.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        } else {
            window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        }
        onDispose {
            // Р’СЃРµРіРґР° СЃРЅРёРјР°РµРј С„Р»Р°Рі РїСЂРё Р·Р°РєСЂС‹С‚РёРё СЂРёРґРµСЂР°, РЅРµР·Р°РІРёСЃРёРјРѕ РѕС‚ С‚РµРєСѓС‰РµРіРѕ Р·РЅР°С‡РµРЅРёСЏ.
            window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        }
    }


    // Immersive / fullscreen mode вЂ” hides system bars while reading
    DisposableEffect(uiState.immersiveMode, context) {
        val window = (context as? Activity)?.window
        if (uiState.immersiveMode) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                window?.insetsController?.apply {
                    hide(android.view.WindowInsets.Type.systemBars())
                    systemBarsBehavior = WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
                }
            } else {
                @Suppress("DEPRECATION")
                window?.decorView?.systemUiVisibility = (
                    View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                    or View.SYSTEM_UI_FLAG_FULLSCREEN
                    or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                    or View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                    or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                    or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                )
            }
        } else {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                window?.insetsController?.show(android.view.WindowInsets.Type.systemBars())
            } else {
                @Suppress("DEPRECATION")
                window?.decorView?.systemUiVisibility = View.SYSTEM_UI_FLAG_VISIBLE
            }
        }
        onDispose {
            // Restore system bars when leaving the reader.
            // Must reset systemBarsBehavior before showing bars; otherwise the
            // BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE flag persists into the next
            // screen (recent-apps panel, home screen) causing a UI flash.
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                window?.insetsController?.apply {
                    systemBarsBehavior = WindowInsetsController.BEHAVIOR_DEFAULT
                    show(android.view.WindowInsets.Type.systemBars())
                }
            } else {
                @Suppress("DEPRECATION")
                window?.decorView?.systemUiVisibility = View.SYSTEM_UI_FLAG_VISIBLE
            }
        }
    }

    MaterialTheme(colorScheme = readerColorScheme) {
        Box(modifier = Modifier.fillMaxSize().background(MaterialTheme.colorScheme.background)) {
        when {
            uiState.isLoading -> {
                CircularProgressIndicator(
                    modifier = Modifier.align(Alignment.Center),
                    color = MaterialTheme.colorScheme.primary
                )
            }
            uiState.error != null -> {
                Column(
                    modifier = Modifier.align(Alignment.Center).padding(32.dp),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(
                        readerText.errorTitle,
                        color = MaterialTheme.colorScheme.onBackground,
                        style = MaterialTheme.typography.headlineSmall
                    )
                    Spacer(Modifier.height(8.dp))
                    Text(
                        uiState.error ?: "",
                        color = MaterialTheme.colorScheme.onBackground.copy(alpha = 0.72f),
                        style = MaterialTheme.typography.bodyMedium
                    )
                    Spacer(Modifier.height(16.dp))
                    Button(onClick = onNavigateBack) { Text(strings.back) }
                }
            }
            else -> {
                // РћР±Р»Р°СЃС‚СЊ С‡С‚РµРЅРёСЏ
                Box(modifier = Modifier.fillMaxSize()) {
                    val htmlContent = uiState.currentHtmlContent
                    val textWebtoonHtmlContent = uiState.textWebtoonHtmlContent ?: htmlContent
                    val textWebtoonAssetBasePath = uiState.textWebtoonHtmlAssetBasePath ?: uiState.htmlAssetBasePath
                    val textReaderModifier = Modifier.fillMaxSize()
                    val textWebtoonModifier = Modifier.fillMaxSize()
                    val imageReaderModifier = Modifier
                        .fillMaxSize()
                        .then(
                            if (uiState.immersiveMode) {
                                Modifier
                            } else {
                                Modifier
                                    .statusBarsPadding()
                                    .displayCutoutPadding()
                                    .navigationBarsPadding()
                            }
                        )
                    when (uiState.readerContainerKind) {
                        ReaderContainerKind.TEXT_WEBTOON -> {
                            TextContainer(
                                html = textWebtoonHtmlContent ?: htmlContent.orEmpty(),
                                baseUrl = uiState.htmlBaseUrl,
                                assetDocumentPath = textWebtoonAssetBasePath,
                                assetLoader = readerAssetLoader,
                                readingMode = ReadingMode.WEBTOON,
                                onLeftTap = {},
                                onRightTap = {},
                                onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                                onAnchorClick = viewModel::onAnchorClick,
                                onInlineFootnote = viewModel::showInlineFootnote,
                                onVerticalBoundaryNavigation = { pageStep ->
                                    when {
                                        pageStep < 0 -> viewModel.prevPage()
                                        pageStep > 0 -> viewModel.nextPage()
                                    }
                                },
                                onTranslateSelection = { selectedText ->
                                    viewModel.translateSelectedText(
                                        selectedText = selectedText,
                                        preferDictionary = false
                                    )
                                },
                                onDictionarySelection = { selectedText ->
                                    viewModel.translateSelectedText(
                                        selectedText = selectedText,
                                        preferDictionary = true
                                    )
                                },
                                onExplainSelection = viewModel::explainSelectedTextDirect,
                                onSaveQuoteSelection = viewModel::saveQuoteDirectly,
                                onHighlightSelection = { selectedText -> viewModel.highlightSelectedText(selectedText) },
                                onTranslateChapter = { viewModel.translateCurrentChapter() },
                                onCompareTranslations = { text -> viewModel.compareTranslations(text) },
                                highlightsJs = viewModel.injectHighlightsJs(),
                                fontSize = uiState.textFontSize,
                                readerPreset = activeReaderPreset,
                                fontFamily = resolvedTextFont.familyName,
                                fontSourceUrl = resolvedTextFont.sourceUrl,
                                lineHeight = uiState.textLineHeight,
                                letterSpacing = uiState.textLetterSpacing,
                                wordSpacing = uiState.textWordSpacing,
                                paragraphSpacing = uiState.textParagraphSpacing,
                                textAlign = uiState.textAlignment,
                                bold = uiState.textBold,
                                translateActionLabel = readerText.selectionTranslateAction,
                                dictionaryActionLabel = readerText.openDictionary,
                                explainActionLabel = readerText.selectionExplainAction,
                                saveQuoteActionLabel = readerText.saveQuote,
                                contentTopInsetPx = textWebtoonTopInsetCssPx,
                                contentBottomInsetPx = textWebtoonBottomInsetCssPx,
                                pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                                onConsumeScrollToAnchor = viewModel::consumePendingScrollToAnchor,
                                pendingWebtoonSectionIndex = uiState.pendingWebtoonSectionIndex,
                                onConsumeWebtoonSection = viewModel::consumePendingWebtoonSection,
                                modifier = textWebtoonModifier
                            )
                        }
                        ReaderContainerKind.TEXT_PAGE -> {
                            if (htmlContent == null) {
                                CircularProgressIndicator(
                                    modifier = Modifier.align(Alignment.Center),
                                    color = MaterialTheme.colorScheme.primary
                                )
                            } else {
                                TextContainer(
                                    html = htmlContent,
                                    baseUrl = uiState.htmlBaseUrl,
                                    assetDocumentPath = uiState.htmlAssetBasePath,
                                    assetLoader = readerAssetLoader,
                                    readingMode = uiState.readingMode,
                                    autoScrollSpeed = uiState.autoScrollSpeed,
                                    onLeftTap = {
                                        if (readerModeAllowsHorizontalPageTurn(uiState.readingMode)) {
                                            handleTapZoneAction(tapZoneLayout.left)
                                        }
                                    },
                                    onRightTap = {
                                        if (readerModeAllowsHorizontalPageTurn(uiState.readingMode)) {
                                            handleTapZoneAction(tapZoneLayout.right)
                                        }
                                    },
                                    onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                                    onAnchorClick = viewModel::onAnchorClick,
                                    onInlineFootnote = viewModel::showInlineFootnote,
                                    onVerticalBoundaryNavigation = { pageStep ->
                                        when {
                                            pageStep < 0 -> viewModel.prevPage()
                                            pageStep > 0 -> viewModel.nextPage()
                                        }
                                    },
                                    onPagedLayoutPageCountChanged = { pageCount, pageIndex ->
                                        viewModel.onPagedLayoutPageCountChanged(pageCount, pageIndex)
                                    },
                                    onTranslateSelection = { selectedText ->
                                        viewModel.translateSelectedText(
                                            selectedText = selectedText,
                                            preferDictionary = false
                                        )
                                    },
                                    onDictionarySelection = { selectedText ->
                                        viewModel.translateSelectedText(
                                            selectedText = selectedText,
                                            preferDictionary = true
                                        )
                                    },
                                    onExplainSelection = viewModel::explainSelectedTextDirect,
                                    onSaveQuoteSelection = viewModel::saveQuoteDirectly,
                                    onHighlightSelection = { selectedText -> viewModel.highlightSelectedText(selectedText) },
                                onTranslateChapter = { viewModel.translateCurrentChapter() },
                                onCompareTranslations = { text -> viewModel.compareTranslations(text) },
                                    highlightsJs = viewModel.injectHighlightsJs(),
                                    fontSize = uiState.textFontSize,
                                    colorScheme = uiState.textColorScheme,
                                    readerPreset = activeReaderPreset,
                                    fontFamily = resolvedTextFont.familyName,
                                    fontSourceUrl = resolvedTextFont.sourceUrl,
                                    lineHeight = uiState.textLineHeight,
                                    letterSpacing = uiState.textLetterSpacing,
                                    wordSpacing = uiState.textWordSpacing,
                                    paragraphSpacing = uiState.textParagraphSpacing,
                                    textAlign = uiState.textAlignment,
                                    bold = uiState.textBold,
                                    translateActionLabel = readerText.selectionTranslateAction,
                                    dictionaryActionLabel = readerText.openDictionary,
                                    explainActionLabel = readerText.selectionExplainAction,
                                    saveQuoteActionLabel = readerText.saveQuote,
                                    contentTopInsetPx = textContentTopInsetCssPx,
                                    contentBottomInsetPx = textContentBottomInsetCssPx,
                                    pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                                    onConsumeScrollToAnchor = viewModel::consumePendingScrollToAnchor,
                                    modifier = textReaderModifier
                                )
                            }
                        }
                        ReaderContainerKind.RASTER_WEBTOON -> {
                            // Graphic WEBTOON container.
                            WebtoonView(
                                viewModel = viewModel,
                                uiState = uiState,
                                imageScaleMode = uiState.imageScaleMode,
                                marginCropHorizontal = effectiveMarginCropHorizontal,
                                marginCropVertical = effectiveMarginCropVertical,
                                // Vertical feed is scroll-only: side tap zones must not
                                // trigger horizontal page turns in WEBTOON mode.
                                onLeftTap = {},
                                onRightTap = {},
                                onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                                modifier = imageReaderModifier
                            )
                        }
                        ReaderContainerKind.RASTER_PAGE -> {
                            PageView(
                                viewModel = viewModel,
                                uiState = uiState,
                                imageScaleMode = effectivePageImageScaleMode,
                                marginCropHorizontal = effectiveMarginCropHorizontal,
                                marginCropVertical = effectiveMarginCropVertical,
                                onLeftTap = { handleTapZoneAction(tapZoneLayout.left) },
                                onRightTap = { handleTapZoneAction(tapZoneLayout.right) },
                                onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                                modifier = imageReaderModifier
                            )
                        }
                    }
                }

                // Р Р°СЃС‡РµС‚ С†РІРµС‚Р° РґР»СЏ РїР°РЅРµР»РµР№ (Р·Р°С‚РµРјРЅРµРЅРёРµ РјРµРЅСЋ)
                val combinedToolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f)
                val forceOpaqueChromeSurface = readerChromeRequiresOpaqueSurface(
                    preset = activeReaderPreset,
                    isTextReader = uiState.currentHtmlContent != null
                )
                val effectiveToolbarOpacity = readerEffectiveToolbarOpacity(combinedToolbarOpacity, activeReaderPreset)
                val effectiveToolbarBlur = readerEffectiveToolbarBlur(uiState.toolbarBlur, activeReaderPreset)
                val chromeSurface = readerPanelSurfaceColor(
                    base = MaterialTheme.colorScheme.surface,
                    emphasis = (effectiveToolbarOpacity + effectiveToolbarBlur * 0.06f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                    minAlpha = if (forceOpaqueChromeSurface) {
                        1f
                    } else {
                        READER_TOOLBAR_MIN_OPACITY
                    }
                )
                val overlaySurface = readerPanelSurfaceColor(
                    base = MaterialTheme.colorScheme.surface,
                    emphasis = (effectiveToolbarOpacity + effectiveToolbarBlur * 0.03f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                    minAlpha = if (forceOpaqueChromeSurface) {
                        1f
                    } else {
                        READER_TOOLBAR_MIN_OPACITY
                    }
                )
                val overlayTextStyle = remember(overlaySurface, activeReaderPreset) {
                    readerHeaderFooterOverlayStyle(
                        surfaceColor = overlaySurface,
                        eink = activeReaderPreset == ReadingPreset.EINK
                    )
                }

                if (showHeaderFooterOverlay && headerOverlayLine.hasVisibleContent) {
                    Surface(
                        modifier = Modifier
                            .align(Alignment.TopCenter)
                            .fillMaxWidth()
                            .onGloballyPositioned { measuredHeaderOverlayPx = it.size.height },
                        shape = RoundedCornerShape(0.dp),
                        color = overlaySurface
                    ) {
                        ReaderHeaderFooterTextRow(
                            line = headerOverlayLine,
                            fontSizeSp = uiState.headerFooterFontSize,
                            leftPaddingDp = uiState.headerFooterLeftPadding,
                            rightPaddingDp = uiState.headerFooterRightPadding,
                            verticalPaddingDp = uiState.headerFooterVerticalPadding,
                            textColor = overlayTextStyle.textColor,
                            textShadow = overlayTextStyle.textShadow,
                            modifier = Modifier
                                .statusBarsPadding()
                                .displayCutoutPadding()
                        )
                    }
                }

                // РќРёР¶РЅСЏСЏ РѕР±Р»Р°СЃС‚СЊ: РРЅС„РѕСЂРјР°С†РёРѕРЅРЅС‹Рµ РїР°РЅРµР»Рё (Р·Р°РјРµС‚РєРё, СЃРЅРѕСЃРєРё) Рё РўСѓР»Р±Р°СЂ
                Box(
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .fillMaxWidth()
                        .onGloballyPositioned { measuredBottomChromePx = it.size.height }
                ) {
                    // Р¤РѕРЅРѕРІС‹Р№ СЃР»РѕР№ СЃ СЂР°Р·РјС‹С‚РёРµРј вЂ” РЅРµ Р·Р°С‚СЂР°РіРёРІР°РµС‚ РєРѕРЅС‚РµРЅС‚ (РёРєРѕРЅРєРё/С‚РµРєСЃС‚)
                    if (uiState.chromeState == ReaderChromeState.EXPANDED) {
                        Spacer(
                            modifier = Modifier
                                .matchParentSize()
                                .then(
                                    if (effectiveToolbarBlur > 0.01f)
                                        Modifier.blur(
                                            radius = (effectiveToolbarBlur * 8f).dp,
                                            edgeTreatment = BlurredEdgeTreatment.Unbounded
                                        )
                                    else Modifier
                                )
                                .background(chromeSurface)
                        )
                    }
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .then(
                            if (uiState.chromeState == ReaderChromeState.EXPANDED) {
                                Modifier.navigationBarsPadding()
                            } else {
                                Modifier
                            }
                        ),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    uiState.pageTranslationNote?.let { note ->
                        SavedPageNoteCard(
                            note = note,
                            modifier = Modifier.padding(horizontal = 16.dp)
                        )
                    }

                    uiState.footnotePopup?.let { popup ->
                        ReaderNotePanel(
                            text = popup.text,
                            colorScheme = uiState.textColorScheme,
                            expanded = uiState.footnotePresentation == FootnotePresentation.EXPANDED,
                            onDismiss = viewModel::dismissFootnote,
                            onExpand = viewModel::expandFootnote,
                            onCollapse = viewModel::collapseFootnote,
                            chromeReservedDp = if (uiState.chromeState == ReaderChromeState.HIDDEN) 0 else 64,
                            modifier = Modifier
                                .padding(horizontal = if (uiState.chromeState == ReaderChromeState.HIDDEN) 12.dp else 0.dp)
                                .then(
                                    if (uiState.chromeState == ReaderChromeState.HIDDEN) {
                                        Modifier.navigationBarsPadding()
                                    } else {
                                        Modifier
                                    }
                                ),
                            palette = { scheme -> colorSchemePaletteForPreset(scheme, activeReaderPreset) }
                        )
                    }

                    // РќРёР¶РЅСЏСЏ РїР°РЅРµР»СЊ РїСЂРѕРіСЂРµСЃСЃР°/СѓРїСЂР°РІР»РµРЅРёСЏ - СЃРєСЂС‹РІР°РµРј, РµСЃР»Рё РѕС‚РєСЂС‹С‚С‹ РЅР°СЃС‚СЂРѕР№РєРё РёР»Рё РѕРіР»Р°РІР»РµРЅРёРµ
                    if (
                        uiState.chromeState != ReaderChromeState.HIDDEN &&
                        !uiState.showTextSettings &&
                        !uiState.showTocSheet &&
                        uiState.footnotePresentation != FootnotePresentation.EXPANDED
                    ) {
                        when (uiState.chromeState) {
                            ReaderChromeState.EXPANDED -> ReaderExpandedBottomPanel(
                                uiState = uiState,
                                isLandscape = supportsLandscapeSpread,
                                onToggleBookmark = viewModel::toggleBookmark,
                                onApplyPreset = viewModel::applyReadingPreset,
                                onReadingModeChange = viewModel::setReadingMode,
                                onPageChange = viewModel::navigateTo
                            )

                            else -> Unit
                        }
                    } else if (uiState.chromeState == ReaderChromeState.HIDDEN) {
                        if (showHeaderFooterOverlay && footerOverlayLine.hasVisibleContent) {
                            Surface(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .onGloballyPositioned { measuredFooterOverlayPx = it.size.height },
                                shape = RoundedCornerShape(0.dp),
                                color = overlaySurface
                            ) {
                                ReaderHeaderFooterTextRow(
                                    line = footerOverlayLine,
                                    fontSizeSp = uiState.headerFooterFontSize,
                                    leftPaddingDp = uiState.headerFooterLeftPadding,
                                    rightPaddingDp = uiState.headerFooterRightPadding,
                                    verticalPaddingDp = uiState.headerFooterVerticalPadding,
                                    textColor = overlayTextStyle.textColor,
                                    textShadow = overlayTextStyle.textShadow,
                                    modifier = Modifier.navigationBarsPadding()
                                )
                            }
                        } else {
                            Spacer(Modifier.navigationBarsPadding())
                        }
                    }
                }
                } // Box (РЅРёР¶РЅСЏСЏ РѕР±Р»Р°СЃС‚СЊ)

                // Р’РµСЂС…РЅРёРµ РёРЅСЃС‚СЂСѓРјРµРЅС‚С‹ - СЃРєСЂС‹РІР°РµРј, РµСЃР»Рё РѕС‚РєСЂС‹С‚С‹ РЅР°СЃС‚СЂРѕР№РєРё РёР»Рё РѕРіР»Р°РІР»РµРЅРёРµ
                if (uiState.chromeState != ReaderChromeState.HIDDEN && !uiState.showTextSettings && !uiState.showTocSheet) {
                    Box(
                        modifier = Modifier
                            .align(Alignment.TopCenter)
                            .fillMaxWidth()
                            .onGloballyPositioned { measuredTopChromePx = it.size.height }
                    ) {
                        // Р¤РѕРЅРѕРІС‹Р№ СЃР»РѕР№ СЃ СЂР°Р·РјС‹С‚РёРµРј вЂ” РёРєРѕРЅРєРё Рё С‚РµРєСЃС‚ РѕСЃС‚Р°СЋС‚СЃСЏ С‡С‘С‚РєРёРјРё
                        Spacer(
                            modifier = Modifier
                                .matchParentSize()
                                .then(
                                    if (effectiveToolbarBlur > 0.01f)
                                        Modifier.blur(
                                            radius = (effectiveToolbarBlur * 8f).dp,
                                            edgeTreatment = BlurredEdgeTreatment.Unbounded
                                        )
                                    else Modifier
                                )
                                .background(chromeSurface)
                        )
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .statusBarsPadding()
                                .displayCutoutPadding()
                        ) {
                        when (uiState.chromeState) {
                            ReaderChromeState.EXPANDED -> {
                                ReaderExpandedBar(
                                    title = uiState.comic?.title.orEmpty(),
                                    canShowToc = uiState.tableOfContents.isNotEmpty() || uiState.bookmarkedPages.isNotEmpty(),
                                    showTextSettings = true,
                                    showOcrAction = true,
                                    canSwapDirection = uiState.readingMode == ReadingMode.PAGE_LTR ||
                                        uiState.readingMode == ReadingMode.PAGE_RTL,
                                    directionShortcutActive = directionShortcutActive,
                                    showBrightnessRow = showBrightnessRow,
                                    useDirectActions = isTextReader,
                                    chromeIconOrder = uiState.chromeIconOrder,
                                    // Raster containers: hide TOC and AUDIO icons —
                                    // they have no meaning for image-only formats.
                                    showTocIcon = uiState.chromeShowTocIcon && isTextReader,
                                    showTextSettingsIcon = uiState.chromeShowStyleIcon,
                                    showAudioIcon = uiState.chromeShowAudioIcon && isTextReader,
                                    showDirectionIcon = uiState.chromeShowDirectionIcon,
                                    showTranslateIcon = uiState.chromeShowTranslateIcon,
                                    showBrightnessIcon = uiState.chromeShowBrightnessIcon,
                                    showAutoScrollIcon = true,
                                    autoScrollActive = uiState.autoScrollSpeed > 0f,
                                    onNavigateBack = onNavigateBack,
                                    onToggleToc = viewModel::toggleTocSheet,
                                    onToggleTextSettings = viewModel::toggleTextSettings,
                                    onSwapDirection = viewModel::toggleTapZoneDirectionShortcut,
                                    onRequestOcr = {
                                        if (isTextReader) {
                                            showTextTranslationPageSheet = true
                                        } else {
                                            viewModel.requestOcr()
                                        }
                                    },
                                    onToggleBrightness = { showBrightnessRow = !showBrightnessRow },
                                    onToggleTtsControls = {
                                        showReaderAudioSheet = true
                                    },
                                    onAutoScrollToggle = { viewModel.cycleAutoScrollSpeed() }
                                )
                                if (showBrightnessRow) {
                                    ReaderBrightnessRow(
                                        brightness = uiState.brightness,
                                        onBrightnessChange = viewModel::setBrightness
                                    )
                                }
                            }

                            else -> Unit
                        }
                        }
                    }
                }
            }
        }
    }

    // в”Ђв”Ђ РћРіР»Р°РІР»РµРЅРёРµ (ModalBottomSheet) в”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђ
    if (uiState.showTocSheet) {
        TocBottomSheet(
            entries = uiState.tableOfContents,
            currentPage = uiState.currentPage,
            bookmarkedPages = uiState.bookmarkedPages,
            readerPreset = activeReaderPreset,
            toolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f),
            toolbarBlur = uiState.toolbarBlur,
    resolveDisplayPage = viewModel::tocDisplayPage,
    onNavigate = { entry ->
        viewModel.navigateToTocEntry(
            page = entry.pageIndex,
            anchorId = entry.anchorId ?: "",
            sectionIndex = entry.sectionIndex,
            charOffset = entry.charOffset
        )
        viewModel.toggleTocSheet()
    },
            onRemoveBookmark = viewModel::removeBookmark,
            onDismiss = viewModel::toggleTocSheet
        )
    }

    if (showTextTranslationPageSheet && isTextReader) {
        TextPageTranslationSheet(
            entries = uiState.tableOfContents,
            currentPage = uiState.currentPage,
            totalPages = uiState.totalPages,
            onDismiss = { showTextTranslationPageSheet = false },
            onTranslatePage = { page ->
                showTextTranslationPageSheet = false
                viewModel.requestTextPageTranslation(page)
            }
        )
    }

    // RSVP speed reading overlay
    if (showRsvpOverlay && rsvpWords.isNotEmpty()) {
        io.leostrange.mrcomic.feature.reader.ui.rsvp.RsvpOverlay(
            words = rsvpWords,
            onClose = { showRsvpOverlay = false },
            onFinished = { showRsvpOverlay = false }
        )
    }

    if (showReaderAudioSheet && isTextReader) {
        ReaderAudioSheet(
            title = uiState.comic?.title.orEmpty(),
            chapterTitle = currentChapterTitle,
            tocEntries = uiState.tableOfContents,
            currentPage = uiState.currentPage,
            runtimeState = ttsRuntimeState,
            speed = uiState.ttsSpeed,
            pitch = uiState.ttsPitch,
            volume = uiState.ttsVolume,
            sleepTimerMode = uiState.ttsSleepTimerMode,
            onDismiss = { showReaderAudioSheet = false },
            onTogglePlayback = ttsController::togglePlayback,
            onPrevious = ttsController::previousChunk,
            onNext = ttsController::nextChunk,
            onStop = {
                ttsController.stop()
                showReaderAudioSheet = false
            },
            onNavigateToPage = { page ->
                if (page == uiState.currentPage) {
                    ttsController.restartFromBeginning()
                } else {
                    pendingTtsRestartTargetPage = page
                    ttsController.stop()
                    viewModel.navigateTo(page, progressSource = ReaderNavigationProgressSource.JUMP)
                }
            },
            onVoiceNameChange = { value ->
                viewModel.setTtsVoiceName(value)
                ttsController.selectVoice(value)
            },
            onSpeedChange = viewModel::setTtsSpeed,
            onPitchChange = viewModel::setTtsPitch,
            onVolumeChange = viewModel::setTtsVolume,
            onSleepTimerChange = viewModel::setTtsSleepTimerMode,
            onSpeedRead = if (isTextReader) {{
                // Extract words from current page HTML for RSVP
                val pageText = uiState.currentHtmlContent ?: ""
                val words = io.leostrange.mrcomic.feature.reader.ui.rsvp.extractWordsForRsvp(pageText)
                if (words.isNotEmpty()) {
                    rsvpWords = words
                    showRsvpOverlay = true
                }
            }} else null
        )
    }

    // в”Ђв”Ђ РќР°СЃС‚СЂРѕР№РєРё С‚РµРєСЃС‚Р° (ModalBottomSheet) в”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђв”Ђ
    if (uiState.showTextSettings) {
        ReaderControlCenterSheet(
            uiState = uiState,
            isTextReader = isTextReader,
            ttsRuntimeState = ttsRuntimeState,
            fontCatalogVersion = fontCatalogVersion,
            openAtServicesTab = openControlCenterAtServices,
            onDismiss = {
                openControlCenterAtServices = false
                viewModel.toggleTextSettings()
            },
            onApplyReadingPreset = viewModel::applyReadingPreset,
            onFontSizeChange = viewModel::setTextFontSize,
            onColorSchemeChange = viewModel::setTextColorScheme,
            onFontFamilyChange = viewModel::setTextFontFamily,
            onLineHeightChange = viewModel::setTextLineHeight,
            onLetterSpacingChange = viewModel::setTextLetterSpacing,
            onWordSpacingChange = viewModel::setTextWordSpacing,
            onParagraphSpacingChange = viewModel::setTextParagraphSpacing,
            onTextAlignChange = viewModel::setTextAlignment,
            onBoldChange = viewModel::setTextBold,
            onResetStyle = viewModel::resetTextSettings,
            onReadingModeChange = viewModel::setReadingMode,
            onKeepScreenOnChange = viewModel::setKeepScreenOn,
            onScreenTimeoutChange = viewModel::setScreenTimeoutMode,
            onImmersiveModeChange = viewModel::setImmersiveMode,
            onLandscapeSpreadChange = viewModel::setLandscapeSpreadEnabled,
            onPreloadPagesChange = viewModel::setPreloadPages,
            onPageAnimationChange = viewModel::setPageAnimation,
            onTapZoneModeChange = viewModel::setTapZoneMode,
            onTapZoneSwapChange = viewModel::setTapZoneSwap,
            onTapZoneActionChange = viewModel::setTapZoneAction,
            onVolumePagingChange = viewModel::setVolumeKeysPagingEnabled,
            onHeaderSlotChange = viewModel::setHeaderSlot,
            onFooterSlotChange = viewModel::setFooterSlot,
            onHeaderFooterFontSizeChange = viewModel::setHeaderFooterFontSize,
            onHeaderFooterVerticalPaddingChange = viewModel::setHeaderFooterVerticalPadding,
            onHeaderFooterLeftPaddingChange = viewModel::setHeaderFooterLeftPadding,
            onHeaderFooterRightPaddingChange = viewModel::setHeaderFooterRightPadding,
            onChromeAutoHideChange = viewModel::setChromeAutoHideEnabled,
            onToolbarOpacityChange = viewModel::setToolbarOpacity,
            onToolbarBlurChange = viewModel::setToolbarBlur,
            onImageScaleModeChange = viewModel::setImageScaleMode,
            onImageMarginCropHorizontalChange = viewModel::setImageMarginCropHorizontal,
            onImageMarginCropVerticalChange = viewModel::setImageMarginCropVertical,
            onChromeIconVisibleChange = viewModel::setChromeIconVisible,
            onMoveChromeIcon = viewModel::moveChromeIcon,
            onImportCustomFont = { fontImportLauncher.launch(arrayOf("*/*")) },
            onDeleteCustomFont = { pendingCustomFontDeletion = it },
            onImportReaderStyle = { readerStyleImportLauncher.launch(arrayOf("application/json", "*/*")) },
            onExportReaderStyle = { readerStyleExportLauncher.launch(readerTypographyExportFileName(uiState)) },
            onSaveCurrentReaderStylePreset = viewModel::saveCurrentReaderStylePreset,
            onOverwriteReaderStylePreset = viewModel::overwriteReaderStylePreset,
            onApplyReaderStylePreset = viewModel::applyReaderStylePreset,
            onDeleteReaderStylePreset = viewModel::deleteReaderStylePreset,
            onOpenToc = viewModel::toggleTocSheet,
            onToggleBookmark = viewModel::toggleBookmark,
            onRequestOcr = viewModel::requestOcr,
            onTtsTogglePlayback = ttsController::togglePlayback,
            onTtsStop = ttsController::stop,
            onTtsPrevious = ttsController::previousChunk,
            onTtsNext = ttsController::nextChunk,
            onTtsVoiceNameChange = { value ->
                viewModel.setTtsVoiceName(value)
                ttsController.selectVoice(value)
            },
            onTtsSpeedChange = viewModel::setTtsSpeed,
            onTtsPitchChange = viewModel::setTtsPitch,
            onTtsVolumeChange = viewModel::setTtsVolume,
            onTtsSleepTimerChange = viewModel::setTtsSleepTimerMode
        )
    }
    pendingCustomFontDeletion?.let { fontName ->
        AlertDialog(
            onDismissRequest = { pendingCustomFontDeletion = null },
            confirmButton = {
                TextButton(onClick = {
                    pendingCustomFontDeletion = null
                    deleteCustomFont(fontName)
                }) {
                    Text(if (strings.languageCode == "ru") "РЈРґР°Р»РёС‚СЊ" else "Delete")
                }
            },
            dismissButton = {
                TextButton(onClick = { pendingCustomFontDeletion = null }) {
                    Text(if (strings.languageCode == "ru") "РћС‚РјРµРЅР°" else "Cancel")
                }
            },
            title = {
                Text(if (strings.languageCode == "ru") "РЈРґР°Р»РёС‚СЊ С€СЂРёС„С‚?" else "Delete font?")
            },
            text = {
                Text(
                    if (strings.languageCode == "ru") {
                        "РЁСЂРёС„С‚ \"$fontName\" Р±СѓРґРµС‚ СѓРґР°Р»С‘РЅ РёР· РїСЂРёР»РѕР¶РµРЅРёСЏ. Р•СЃР»Рё РѕРЅ РІС‹Р±СЂР°РЅ СЃРµР№С‡Р°СЃ, С‡С‚РµРЅРёРµ РІРµСЂРЅС‘С‚СЃСЏ РЅР° Georgia."
                    } else {
                        "Font \"$fontName\" will be removed from the app. If it is currently selected, reading will fall back to Georgia."
                    }
                )
            }
        )
    }
    uiState.selectedTextActionSheet?.let { actionState ->
        SelectedTextActionSheet(
            state = actionState,
            onDismiss = viewModel::dismissSelectedTextActions,
            onTranslate = viewModel::translateFromSelectedTextActions,
            onDictionary = viewModel::openDictionaryFromSelectedTextActions,
            onExplain = viewModel::explainFromSelectedTextActions,
            onSaveQuote = viewModel::saveQuoteFromSelectedTextActions
        )
    }
    uiState.pendingHighlightText?.let { highlightText ->
        HighlightColorPickerSheet(
            text = highlightText,
            onColorSelected = { color -> viewModel.confirmHighlight(color) },
            onDismiss = viewModel::dismissHighlight
        )
    }
    uiState.chapterTranslationProgress?.let { progress ->
        ChapterTranslationProgressBar(progress = progress)
    }
    uiState.translationComparison?.let { comparison ->
        TranslationComparisonSheet(
            comparison = comparison,
            onDismiss = viewModel::dismissTranslationComparison
        )
    }
    uiState.selectedTextTranslation?.let { translationState ->
        SelectedTextTranslationSheet(
            state = translationState,
            onDismiss = viewModel::dismissSelectedTextTranslation,
            onDictionary = viewModel::openDictionaryForSelectedText,
            onTranslateAsPhrase = viewModel::translateSelectedTextAsPhrase,
            onExplain = viewModel::explainSelectedTextFromResult,
            onTransportChange = viewModel::translateSelectedTextWithTransport,
            onCopy = { text ->
                clipboardManager.setText(AnnotatedString(text))
            },
            onSaveQuote = viewModel::saveQuoteFromSelectedTextResult
        )
    }
    if (quoteSavePopupVisible) {
        ImageMessagePopup(
            drawableId = R.drawable.reader_quote_saved_popup,
            contentDescription = readerText.quoteSaved,
            config = ImageMessagePopupConfig(durationSeconds = 3),
            eventToken = quoteSavePopupToken,
            onDismiss = { quoteSavePopupVisible = false }
        )
    }
    eyeRestReminderMinutes?.let {
        AlertDialog(
            onDismissRequest = { eyeRestReminderMinutes = null },
            title = { Text(readerText.eyeRestTitle) },
            text = { Text(readerText.eyeRestMessage) },
            confirmButton = {
                TextButton(onClick = { eyeRestReminderMinutes = null }) {
                    Text(readerText.eyeRestDismiss)
                }
            },
            dismissButton = {
                TextButton(
                    onClick = {
                        eyeRestReminderMinutes = null
                        viewModel.snoozeEyeRestReminder()
                    }
                ) {
                    Text(readerText.eyeRestSnooze)
                }
            }
        )
    }
}
}

private fun nextReaderUiEventToken(currentToken: Int): Int =
    if (currentToken == Int.MAX_VALUE) 1 else currentToken + 1

