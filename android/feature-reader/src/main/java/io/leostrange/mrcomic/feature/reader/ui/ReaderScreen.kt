package io.leostrange.mrcomic.feature.reader.ui

import android.app.Activity
import android.content.Context
import android.content.pm.ActivityInfo
import android.content.res.Configuration
import android.os.Build
import android.view.ActionMode
import android.view.KeyEvent
import android.view.Menu
import android.view.View
import android.view.WindowInsetsController
import android.view.WindowManager
import io.leostrange.mrcomic.feature.reader.domain.enums.FootnotePresentation
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import androidx.compose.foundation.background
import androidx.compose.ui.draw.blur
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.BlurredEdgeTreatment
import androidx.compose.foundation.layout.*
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
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.model.resolveReaderSimpleTapZoneLayout
import io.leostrange.mrcomic.core.model.resolveReaderTapZoneLayout
import io.leostrange.mrcomic.core.ui.eink.LocalEInkMode
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import io.leostrange.mrcomic.feature.reader.R
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
import java.time.LocalTime
import java.time.format.DateTimeFormatter
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
                ReaderFormatAssetPathHandler { path -> viewModel.formatReader?.openHtmlAsset(path) }
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
            viewModel.settingsController.setTextFontFamily(importedFont)
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
                viewModel.settingsController.setTextFontFamily("Georgia")
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
                viewModel.settingsController.importReaderStyleFromJson(raw)
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
        viewModel.readingModeController.onOrientationChanged(
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

    val tapZoneMode = ReaderTapZoneMode.fromStored(uiState.tapZoneMode)
    val tapZoneLayout = remember(
        uiState.tapZoneMode, uiState.tapZoneSwap, uiState.tapZoneLeftAction,
        uiState.tapZoneCenterAction, uiState.tapZoneRightAction, uiState.readingMode
    ) {
        resolveReaderTapZoneLayout(
            mode = tapZoneMode, readingMode = uiState.readingMode, swapped = uiState.tapZoneSwap,
            leftAction = uiState.tapZoneLeftAction, centerAction = uiState.tapZoneCenterAction,
            rightAction = uiState.tapZoneRightAction
        )
    }
    val directionShortcutActive = remember(
        uiState.tapZoneMode, uiState.tapZoneSwap, uiState.tapZoneLeftAction,
        uiState.tapZoneCenterAction, uiState.tapZoneRightAction, uiState.readingMode
    ) {
        when (tapZoneMode) {
            ReaderTapZoneMode.SIMPLE -> uiState.tapZoneSwap
            ReaderTapZoneMode.CUSTOM -> {
                val default = resolveReaderSimpleTapZoneLayout(readingMode = uiState.readingMode, swapped = false)
                uiState.tapZoneLeftAction == default.right.name &&
                    uiState.tapZoneCenterAction == default.center.name &&
                    uiState.tapZoneRightAction == default.left.name
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
    fun resolveOverlayLine(left: String, center: String, right: String) =
        resolveReaderInfoOverlayLine(
            startSlot = left, centerSlot = center, endSlot = right,
            comicTitle = uiState.comic?.title, chapterTitle = currentChapterTitle,
            clockText = clockText, currentPage = uiState.currentPage,
            totalPages = uiState.totalPages, readingMode = uiState.readingMode
        )
    val headerOverlayLine = remember(
        uiState.headerLeftSlot, uiState.headerCenterSlot, uiState.headerRightSlot,
        uiState.comic?.title, currentChapterTitle, clockText, uiState.currentPage, uiState.totalPages, uiState.readingMode
    ) { resolveOverlayLine(uiState.headerLeftSlot, uiState.headerCenterSlot, uiState.headerRightSlot) }
    val footerOverlayLine = remember(
        uiState.footerLeftSlot, uiState.footerCenterSlot, uiState.footerRightSlot,
        uiState.comic?.title, currentChapterTitle, clockText, uiState.currentPage, uiState.totalPages, uiState.readingMode
    ) { resolveOverlayLine(uiState.footerLeftSlot, uiState.footerCenterSlot, uiState.footerRightSlot) }
    val showHeaderFooterOverlay = !uiState.chromeAutoHideEnabled &&
        uiState.chromeState == ReaderChromeState.HIDDEN &&
        !uiState.showTextSettings &&
        !uiState.showTocSheet
    var measuredHeaderOverlayPx by remember { mutableIntStateOf(0) }
    var measuredFooterOverlayPx by remember { mutableIntStateOf(0) }
    var measuredTopChromePx by remember { mutableIntStateOf(0) }
    var measuredBottomChromePx by remember { mutableIntStateOf(0) }
    // Stable chrome reserve: keyed on chromeAutoHideEnabled only (not comic id) to prevent
    // viewport height jump on every book open. Defaults ~56dp/48dp to avoid first-frame miscalc.
    val defaultTopChromeReservePx = with(density) { 56.dp.roundToPx() }
    val defaultBottomChromeReservePx = with(density) { 48.dp.roundToPx() }
    var stableTopChromeReservePx by remember {
        mutableIntStateOf(defaultTopChromeReservePx)
    }
    var stableBottomChromeReservePx by remember {
        mutableIntStateOf(defaultBottomChromeReservePx)
    }
    // Baseline reserves persist regardless of auto-hide mode (WEBTOON text mode needs them).
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
    val estimatedOverlayContentPx = with(density) {
        readerHeaderFooterReservedHeightDp(
            fontSizeSp = uiState.headerFooterFontSize,
            verticalPaddingDp = uiState.headerFooterVerticalPadding
        ).roundToPx()
    }
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
            estimatedOverlayContentPx
        )
    }
    val measuredBottomReservePx = when {
        chromeIsVisible -> maxOf(
            (measuredFooterOverlayPx - systemBottomInsetPx).coerceAtLeast(0),
            (measuredBottomChromePx - systemBottomInsetPx).coerceAtLeast(0)
        )
        else -> maxOf(
            (measuredFooterOverlayPx - systemBottomInsetPx).coerceAtLeast(0),
            estimatedOverlayContentPx
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
                estimatedOverlayContentPx,
                (measuredHeaderOverlayPx - systemTopInsetPx).coerceAtLeast(0)
            )
            val overlayBottom = maxOf(
                estimatedOverlayContentPx,
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
        estimatedOverlayContentPx,
        stableTopChromeReservePx,
        (measuredHeaderOverlayPx - systemTopInsetPx).coerceAtLeast(0)
    )
    val autoHideBottomChromeReservePx = maxOf(
        estimatedOverlayContentPx,
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
                ReaderTapZoneAction.PREVIOUS_PAGE -> viewModel.navigationController.prevPage()
                ReaderTapZoneAction.NEXT_PAGE -> viewModel.navigationController.nextPage()
                ReaderTapZoneAction.MENU,
                ReaderTapZoneAction.TOGGLE_UI -> {
                    showBrightnessRow = false
                    viewModel.chromeController.toggleChromeUi()
                }
                ReaderTapZoneAction.PREVIOUS_CHAPTER -> {
                    previousReaderChapterPage(uiState.tableOfContents, uiState.currentPage)?.let { page ->
                        viewModel.navigationController.navigateTo(page, progressSource = ReaderNavigationProgressSource.JUMP)
                    }
                }
                ReaderTapZoneAction.NEXT_CHAPTER -> {
                    nextReaderChapterPage(uiState.tableOfContents, uiState.currentPage)?.let { page ->
                        viewModel.navigationController.navigateTo(page, progressSource = ReaderNavigationProgressSource.JUMP)
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
            step < 0 -> viewModel.navigationController.prevPage()
            step > 0 -> viewModel.navigationController.nextPage()
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
            viewModel.pageLoader.ensureTextWebtoonDocumentLoaded()
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

    // Re-hide system bars after ModalBottomSheet dismisses in immersive mode.
    // The sheet's scrim interaction can trigger transient system bar appearance;
    // re-asserting the hidden state prevents bars from sticking visible.
    LaunchedEffect(uiState.immersiveMode, uiState.showTocSheet, uiState.showTextSettings) {
        if (uiState.immersiveMode && !uiState.showTocSheet && !uiState.showTextSettings) {
            val window = (context as? Activity)?.window
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                window?.insetsController?.hide(android.view.WindowInsets.Type.systemBars())
            }
        }
    }

    // Reading area uses reader-specific MaterialTheme (background, text colors).
    // Chrome overlays (top/bottom bars, sheets) use the inherited app MaterialTheme.
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
                                // In immersive mode system bars are hidden, but
                                // transient bars appear on swipe.  Use safeDrawing
                                // insets which always include the display cutout
                                // and a minimum safe area even when bars are hidden.
                                Modifier.windowInsetsPadding(
                                    WindowInsets.safeDrawing
                                )
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
                                onAnchorClick = { viewModel.footnoteController.onAnchorClick(it) },
                                onInlineFootnote = { viewModel.footnoteController.showInlineFootnote(it) },
                                onVerticalBoundaryNavigation = { pageStep ->
                                    when {
                                        pageStep < 0 -> viewModel.navigationController.prevPage()
                                        pageStep > 0 -> viewModel.navigationController.nextPage()
                                    }
                                },
                                onTranslateSelection = { selectedText ->
                                    viewModel.translationController.translateSelectedText(
                                        selectedText = selectedText,
                                        preferDictionary = false
                                    )
                                },
                                onDictionarySelection = { selectedText ->
                                    viewModel.translationController.translateSelectedText(
                                        selectedText = selectedText,
                                        preferDictionary = true
                                    )
                                },
                                onExplainSelection = viewModel.translationController::explainSelectedTextDirect,
                                onSaveQuoteSelection = viewModel.saveQuoteController::saveQuoteDirectly,
                                onHighlightSelection = { selectedText -> viewModel.highlightController.highlightSelectedText(selectedText) },
                                onTranslateChapter = { viewModel.translationController.translateCurrentChapter() },
                                onCompareTranslations = { text -> viewModel.translationController.compareTranslations(text) },
                                highlightsJs = viewModel.highlightController.injectHighlightsJs(),
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
                                overrideTextColor = readerColorOverrideHex(uiState.textCustomTextColor),
                                overrideBackgroundColor = readerColorOverrideHex(uiState.textCustomBackgroundColor),
                                overrideAccentColor = readerColorOverrideHex(uiState.textCustomAccentColor),
                                translateActionLabel = readerText.selectionTranslateAction,
                                dictionaryActionLabel = readerText.openDictionary,
                                explainActionLabel = readerText.selectionExplainAction,
                                saveQuoteActionLabel = readerText.saveQuote,
                                contentTopInsetPx = textWebtoonTopInsetCssPx,
                                contentBottomInsetPx = textWebtoonBottomInsetCssPx,
                                pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                                onConsumeScrollToAnchor = { viewModel.navigationController.consumePendingScrollToAnchor() },
                                pendingWebtoonSectionIndex = uiState.pendingWebtoonSectionIndex,
                                onConsumeWebtoonSection = { viewModel.navigationController.consumePendingWebtoonSection() },
                                onTextWebtoonVisibleSectionChanged = { viewModel.navigationController.updateTextWebtoonVisibleSection(it) },
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
                                    onAnchorClick = { viewModel.footnoteController.onAnchorClick(it) },
                                    onInlineFootnote = { viewModel.footnoteController.showInlineFootnote(it) },
                                    onVerticalBoundaryNavigation = { pageStep ->
                                        when {
                                            pageStep < 0 -> viewModel.navigationController.prevPage()
                                            pageStep > 0 -> viewModel.navigationController.nextPage()
                                        }
                                    },
                                    onPagedLayoutPageCountChanged = { pageCount, pageIndex ->
                                        viewModel.onPagedLayoutPageCountChanged(pageCount, pageIndex)
                                    },
                                    onTranslateSelection = { selectedText ->
                                        viewModel.translationController.translateSelectedText(
                                            selectedText = selectedText,
                                            preferDictionary = false
                                        )
                                    },
                                    onDictionarySelection = { selectedText ->
                                        viewModel.translationController.translateSelectedText(
                                            selectedText = selectedText,
                                            preferDictionary = true
                                        )
                                    },
                                    onExplainSelection = viewModel.translationController::explainSelectedTextDirect,
                                    onSaveQuoteSelection = viewModel.saveQuoteController::saveQuoteDirectly,
                                    onHighlightSelection = { selectedText -> viewModel.highlightController.highlightSelectedText(selectedText) },
                                onTranslateChapter = { viewModel.translationController.translateCurrentChapter() },
                                onCompareTranslations = { text -> viewModel.translationController.compareTranslations(text) },
                                    highlightsJs = viewModel.highlightController.injectHighlightsJs(),
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
                                    overrideTextColor = readerColorOverrideHex(uiState.textCustomTextColor),
                                    overrideBackgroundColor = readerColorOverrideHex(uiState.textCustomBackgroundColor),
                                    overrideAccentColor = readerColorOverrideHex(uiState.textCustomAccentColor),
                                    translateActionLabel = readerText.selectionTranslateAction,
                                    dictionaryActionLabel = readerText.openDictionary,
                                    explainActionLabel = readerText.selectionExplainAction,
                                    saveQuoteActionLabel = readerText.saveQuote,
                                    contentTopInsetPx = textContentTopInsetCssPx,
                                    contentBottomInsetPx = textContentBottomInsetCssPx,
                                    pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                                    onConsumeScrollToAnchor = { viewModel.navigationController.consumePendingScrollToAnchor() },
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

                // Chrome surface calculations
                val combinedToolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f)
                val forceOpaqueChromeSurface = readerChromeRequiresOpaqueSurface(
                    preset = activeReaderPreset,
                    isTextReader = uiState.currentHtmlContent != null
                )
                val effectiveToolbarOpacity = readerEffectiveToolbarOpacity(combinedToolbarOpacity, activeReaderPreset)
                val effectiveToolbarBlur = readerEffectiveToolbarBlur(uiState.toolbarBlur, activeReaderPreset)
                val chromeSurface = readerPanelSurfaceColor(
                    base = inheritedColorScheme.surface,
                    emphasis = (effectiveToolbarOpacity + effectiveToolbarBlur * 0.06f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                    minAlpha = if (forceOpaqueChromeSurface) {
                        1f
                    } else {
                        READER_TOOLBAR_MIN_OPACITY
                    }
                )
                val overlaySurface = readerPanelSurfaceColor(
                    base = inheritedColorScheme.surface,
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
                            onDismiss = { viewModel.footnoteController.dismissFootnote() },
                            onExpand = { viewModel.footnoteController.expandFootnote() },
                            onCollapse = { viewModel.footnoteController.collapseFootnote() },
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
                                onToggleBookmark = { viewModel.bookmarkController.toggleBookmark() },
                                onApplyPreset = viewModel.settingsController::applyReadingPreset,
                                onReadingModeChange = viewModel.readingModeController::setReadingMode,
                                onPageChange = { viewModel.navigationController.navigateTo(it) }
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
                                    onToggleTextSettings = { viewModel.chromeController.toggleTextSettings() },
                                    onSwapDirection = viewModel.settingsController::toggleTapZoneDirectionShortcut,
                                    onRequestOcr = {
                                        if (isTextReader) {
                                            showTextTranslationPageSheet = true
                                        } else {
                                            viewModel.ocrController.requestOcr()
                                        }
                                    },
                                    onToggleBrightness = { showBrightnessRow = !showBrightnessRow },
                                    onToggleTtsControls = {
                                        showReaderAudioSheet = true
                                    },
                                    onAutoScrollToggle = { viewModel.settingsController.cycleAutoScrollSpeed() }
                                )
                                if (showBrightnessRow) {
                                    ReaderBrightnessRow(
                                        brightness = uiState.brightness,
                                        onBrightnessChange = viewModel.settingsController::setBrightness
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

    ReaderBottomSheets(
        uiState = uiState,
        viewModel = viewModel,
        isTextReader = isTextReader,
        ttsRuntimeState = ttsRuntimeState,
        ttsController = ttsController,
        activeReaderPreset = activeReaderPreset,
        currentChapterTitle = currentChapterTitle,
        clipboardManager = clipboardManager,
        readerText = readerText,
        fontCatalogVersion = fontCatalogVersion,
        openControlCenterAtServices = openControlCenterAtServices,
        onOpenControlCenterAtServicesChange = { openControlCenterAtServices = it },
        showTextTranslationPageSheet = showTextTranslationPageSheet,
        onShowTextTranslationPageSheetChange = { showTextTranslationPageSheet = it },
        showRsvpOverlay = showRsvpOverlay,
        onShowRsvpOverlayChange = { showRsvpOverlay = it },
        rsvpWords = rsvpWords,
        onRsvpWordsChange = { rsvpWords = it },
        showReaderAudioSheet = showReaderAudioSheet,
        onShowReaderAudioSheetChange = { showReaderAudioSheet = it },
        pendingTtsRestartTargetPage = pendingTtsRestartTargetPage,
        onPendingTtsRestartTargetPageChange = { pendingTtsRestartTargetPage = it },
        pendingCustomFontDeletion = pendingCustomFontDeletion,
        onPendingCustomFontDeletionChange = { pendingCustomFontDeletion = it },
        quoteSavePopupVisible = quoteSavePopupVisible,
        onQuoteSavePopupVisibleChange = { quoteSavePopupVisible = it },
        quoteSavePopupToken = quoteSavePopupToken,
        eyeRestReminderMinutes = eyeRestReminderMinutes,
        onEyeRestReminderMinutesChange = { eyeRestReminderMinutes = it },
        onLaunchFontImport = { fontImportLauncher.launch(arrayOf("*/*")) },
        onLaunchStyleImport = { readerStyleImportLauncher.launch(arrayOf("application/json", "*/*")) },
        onLaunchStyleExport = { readerStyleExportLauncher.launch(readerTypographyExportFileName(uiState)) },
        onDeleteCustomFont = deleteCustomFont,
    )
}
}

private fun nextReaderUiEventToken(currentToken: Int): Int =
    if (currentToken == Int.MAX_VALUE) 1 else currentToken + 1

