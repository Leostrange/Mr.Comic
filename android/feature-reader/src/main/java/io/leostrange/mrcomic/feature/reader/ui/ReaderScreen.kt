package io.leostrange.mrcomic.feature.reader.ui

import android.app.Activity
import android.content.pm.ActivityInfo
import android.content.res.Configuration
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import androidx.compose.foundation.background
import androidx.compose.ui.draw.alpha
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.compose.runtime.getValue
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.webkit.WebViewAssetLoader
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.model.resolveReaderSimpleTapZoneLayout
import io.leostrange.mrcomic.core.model.resolveReaderTapZoneLayout
import io.leostrange.mrcomic.core.ui.eink.LocalEInkMode
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.reader.ui.components.PageView
import io.leostrange.mrcomic.feature.reader.ui.components.TextContainer
import io.leostrange.mrcomic.feature.reader.ui.components.WebtoonView
import io.leostrange.mrcomic.feature.reader.ui.geometry.ReaderViewportGeometry
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
    val fontStyleActions = rememberReaderFontStyleActions(
        context = context,
        viewModel = viewModel,
        languageCode = strings.languageCode,
        uiState = uiState,
        onFontCatalogChanged = { fontCatalogVersion += 1 }
    )
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
    // Text books keep a single-page layout in landscape; image-based readers can opt
    // into spreads only when the actual screen width is large enough.
    LaunchedEffect(supportsLandscapeSpread, isTextReader) {
        viewModel.readingModeController.onOrientationChanged(
            useLandscapeSpread = supportsLandscapeSpread,
            isTextReader = isTextReader
        )
    }

    DisposableEffect(context) {
        val activity = context as? Activity
        val previousOrientation = activity?.requestedOrientation ?: ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
        activity?.requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
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
    val freeScrollRestoreTarget = remember(uiState.freeScrollCharacterOffset, uiState.freeScrollProgression) {
        if (uiState.freeScrollCharacterOffset >= 0 || uiState.freeScrollProgression in 0.0..1.0) {
            ReaderWebViewRestoreTarget(
                characterOffset = uiState.freeScrollCharacterOffset.takeIf { it >= 0 },
                progression = uiState.freeScrollProgression.takeIf { it in 0.0..1.0 }
            )
        } else {
            null
        }
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
    // ARC-11 S3: chrome inset plan replaces ~100 lines of inline computation.
    val plan = rememberChromeInsetsPlan(
        chromeIsVisible = chromeIsVisible,
        measuredHeaderOverlayPx = measuredHeaderOverlayPx,
        measuredFooterOverlayPx = measuredFooterOverlayPx,
        measuredTopChromePx = measuredTopChromePx,
        measuredBottomChromePx = measuredBottomChromePx,
        systemTopInsetPx = systemTopInsetPx,
        systemBottomInsetPx = systemBottomInsetPx,
        stableTopChromeReservePx = stableTopChromeReservePx,
        stableBottomChromeReservePx = stableBottomChromeReservePx,
        baselineTopChromeReservePx = baselineTopChromeReservePx,
        baselineBottomChromeReservePx = baselineBottomChromeReservePx,
        estimatedOverlayContentPx = estimatedOverlayContentPx,
        maxStableTopChromeReservePx = maxStableTopChromeReservePx,
        textSentenceInsetPx = textSentenceInsetPx,
        densityScale = density.density.takeIf { it > 0f } ?: 1f,
    )
    SideEffect {
        if (plan.measuredTopReservePx > baselineTopChromeReservePx) {
            baselineTopChromeReservePx = plan.measuredTopReservePx
        }
        if (plan.measuredBottomReservePx > baselineBottomChromeReservePx) {
            baselineBottomChromeReservePx = plan.measuredBottomReservePx
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
            if (plan.measuredTopReservePx > stableTopChromeReservePx) {
                stableTopChromeReservePx = plan.measuredTopReservePx
            }
            if (plan.measuredBottomReservePx > stableBottomChromeReservePx) {
                stableBottomChromeReservePx = plan.measuredBottomReservePx
            }
        }
    }

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
        topToolbarHeightPx = if (chromeIsVisible) plan.topChromeReservePx else 0,
        bottomToolbarHeightPx = if (chromeIsVisible) plan.bottomChromeReservePx else 0,
        readerTopPaddingPx = textSentenceInsetPx,
        readerBottomPaddingPx = textSentenceInsetPx,
        hideToolbarsWhileReading = !chromeIsVisible,
        densityScale = density.density.takeIf { it > 0f } ?: 1f
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
    val latestReadingMode by rememberUpdatedState(uiState.readingMode)
    // Text paged reader: volume buttons should turn visual pages within the section
    // instead of jumping whole sections. TextContainer registers this callback when active.
    var pagedColumnTurn by remember { mutableStateOf<((Int) -> Unit)?>(null) }
    val latestPagedColumnTurn by rememberUpdatedState(pagedColumnTurn)
    // Clear stale callback when switching away from TEXT_PAGE mode.
    LaunchedEffect(uiState.readerContainerKind) {
        if (uiState.readerContainerKind != ReaderContainerKind.TEXT_PAGE) {
            pagedColumnTurn = null
        }
    }
    var lastHardwarePageTurnMs by remember { mutableLongStateOf(0L) }
    val latestHandleHardwarePageTurn by rememberUpdatedState<(Int) -> Unit> { step ->
        val now = android.os.SystemClock.uptimeMillis()
        if (now - lastHardwarePageTurnMs < 280L) return@rememberUpdatedState
        lastHardwarePageTurnMs = now
        // In text paged mode, turn visual pages within the WebView section first;
        // only advance to the next section when at the last visual page.
        val textPageTurn = latestPagedColumnTurn
        if (textPageTurn != null && uiState.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
            textPageTurn(step)
        } else {
            when {
                step < 0 -> viewModel.navigationController.prevPage()
                step > 0 -> viewModel.navigationController.nextPage()
            }
        }
    }

    DisposableEffect(readerHardwareKeyHost) {
        readerHardwareKeyHost?.setReaderHardwareKeyHandler { event ->
            val decision = resolveReaderHardwareKeyDecision(
                event = event,
                volumePagingEnabled = latestVolumeKeysPagingEnabled,
                readingMode = latestReadingMode
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

    // Screen brightness, keep-screen-on, and immersive mode
    ReaderBrightnessEffect(brightness = uiState.brightness, context = context)
    ReaderKeepScreenOnEffect(keepScreenOn = uiState.keepScreenOn, context = context)
    ReaderImmersiveModeEffect(immersiveMode = uiState.immersiveMode, context = context)

    // Re-hide system bars after ModalBottomSheet dismisses in immersive mode.
    ReaderImmersiveModeRehideEffect(
        immersiveMode = uiState.immersiveMode,
        showTocSheet = uiState.showTocSheet,
        showTextSettings = uiState.showTextSettings,
        context = context
    )

    // Auto-scroll: pauses when the app is backgrounded and drives the page
    // countdown for graphic PAGE/DUAL_PAGE. WEBTOON uses WebtoonAutoPixelScrollEffect.
    ReaderAutoScrollLifecyclePauseEffect(controller = viewModel.autoScrollRuntimeController)
    ReaderAutoPageCountdownEffect(
        enabled = uiState.autoScrollEnabled &&
            uiState.readerContainerKind == ReaderContainerKind.RASTER_PAGE,
        paused = uiState.isAutoScrollTemporarilyPaused,
        intervalMillis = ReaderAutoScrollPrecision.pageTurnIntervalMillis(uiState.autoScrollSpeed),
        countdownProgress = uiState.autoScrollCountdownProgress,
        onCountdownProgress = viewModel.autoScrollRuntimeController::updateCountdown,
        onRequestNextPage = {
            val step = viewModel.navigationController.pageStepForMode(uiState.readingMode)
            val next = uiState.currentPage + step
            if (next >= uiState.totalPages) false
            else {
                viewModel.navigationController.nextPage()
                true
            }
        },
        onReachedEnd = viewModel.autoScrollRuntimeController::stop
    )

    // Pause auto-scroll while any reader sheet/overlay is open so the countdown or
    // pixel-scroll cannot advance the document underneath an open dialog.
    val anyBottomSheetOpen = uiState.showTocSheet ||
        uiState.showTextSettings ||
        showReaderAudioSheet ||
        showTextTranslationPageSheet ||
        showRsvpOverlay ||
        openControlCenterAtServices
    LaunchedEffect(anyBottomSheetOpen) {
        if (anyBottomSheetOpen) {
            viewModel.autoScrollRuntimeController.pause(ReaderAutoScrollPauseReason.BOTTOM_SHEET)
        } else {
            viewModel.autoScrollRuntimeController.resume(ReaderAutoScrollPauseReason.BOTTOM_SHEET)
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
                    // Both reflowable modes keep system bars and one persistent line
                    // gutter outside the WebView. CSS reserves only reader chrome;
                    // otherwise a stale JS layout can paint text under system bars.
                    // In immersive mode keep only horizontal cutout safety, matching
                    // established readers: hidden bars must not leave vertical holes.
                    val textSystemInsetsModifier = if (uiState.immersiveMode) {
                        Modifier.windowInsetsPadding(
                            WindowInsets.safeDrawing.only(WindowInsetsSides.Horizontal)
                        )
                    } else {
                        Modifier.windowInsetsPadding(WindowInsets.safeDrawing)
                    }
                    val textReaderModifier = Modifier
                        .fillMaxSize()
                        .then(textSystemInsetsModifier)
                        .padding(
                            vertical = with(density) { textSentenceInsetPx.toDp() }
                        )
                    val textChromeTopInsetCssPx =
                        (plan.topChromeReservePx / density.density.coerceAtLeast(1f))
                            .roundToInt()
                            .coerceAtLeast(0)
                    val textChromeBottomInsetCssPx =
                        (plan.bottomChromeReservePx / density.density.coerceAtLeast(1f))
                            .roundToInt()
                            .coerceAtLeast(0)
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
                                documentIdentity = uiState.comic?.id,
                                assetLoader = readerAssetLoader,
                                readingMode = ReadingMode.WEBTOON,
                                onSelectionActionModeChange = { active ->
                                    if (active) {
                                        viewModel.autoScrollRuntimeController.pause(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
                                    } else {
                                        viewModel.autoScrollRuntimeController.resume(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
                                    }
                                },
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
                                contentTopInsetPx = textChromeTopInsetCssPx,
                                contentBottomInsetPx = textChromeBottomInsetCssPx,
                                pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                                onConsumeScrollToAnchor = { viewModel.navigationController.consumePendingScrollToAnchor() },
                                pendingWebtoonSectionIndex = uiState.pendingWebtoonSectionIndex,
                                onConsumeWebtoonSection = { viewModel.navigationController.consumePendingWebtoonSection() },
                                onTextWebtoonVisibleSectionChanged = { viewModel.navigationController.updateTextWebtoonVisibleSection(it) },
                                freeScrollRestoreTarget = freeScrollRestoreTarget,
                                onFreeScrollPositionUpdate = viewModel::onFreeScrollPositionChanged,
                                sectionCharacterOffset = uiState.sectionCharacterOffset,
                                modifier = textReaderModifier
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
                                    documentIdentity = uiState.comic?.id,
                                    assetLoader = readerAssetLoader,
                                    readingMode = uiState.readingMode,
                                    autoScrollSpeed = if (uiState.autoScrollEnabled && !uiState.isAutoScrollTemporarilyPaused) uiState.autoScrollSpeed else 0f,
                                    onSelectionActionModeChange = { active ->
                                        if (active) {
                                            viewModel.autoScrollRuntimeController.pause(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
                                        } else {
                                            viewModel.autoScrollRuntimeController.resume(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
                                        }
                                    },
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
                                    onPagedLayoutPageCountChanged = { pageCount, pageIndex, charOffset ->
                                        viewModel.onPagedLayoutPageCountChanged(pageCount, pageIndex, charOffset)
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
                                    contentTopInsetPx = textChromeTopInsetCssPx,
                                    contentBottomInsetPx = textChromeBottomInsetCssPx,
                                    pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                                    onConsumeScrollToAnchor = { viewModel.navigationController.consumePendingScrollToAnchor() },
                                    onRegisterPageTurner = { pagedColumnTurn = it },
                                    sectionCharacterOffset = uiState.sectionCharacterOffset,
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
                                onUserTouchChange = { touching ->
                                    if (touching) {
                                        viewModel.autoScrollRuntimeController.pause(ReaderAutoScrollPauseReason.TOUCH_GESTURE)
                                    } else {
                                        viewModel.autoScrollRuntimeController.resume(ReaderAutoScrollPauseReason.TOUCH_GESTURE)
                                    }
                                },
                                modifier = imageReaderModifier
                            )
                        }
                    }
                }

                // ARC-11 chrome slice: chrome surface/overlay/style plan is computed
                // once in [rememberReaderChromeSurfacePlan] instead of inline so the
                // values can be unit-tested as a pure-Kotlin data class.
                val chromeSurfacePlan = rememberReaderChromeSurfacePlan(
                    preset = activeReaderPreset,
                    isTextReader = uiState.currentHtmlContent != null,
                    topToolbarOpacity = uiState.topToolbarOpacity,
                    bottomToolbarOpacity = uiState.bottomToolbarOpacity,
                    toolbarBlur = uiState.toolbarBlur,
                    baseColor = readerColorScheme.surface,
                )
                val chromeSurface = chromeSurfacePlan.chromeSurface
                val effectiveToolbarBlur = chromeSurfacePlan.effectiveToolbarBlur
                val overlaySurface = chromeSurfacePlan.overlaySurface
                val overlayTextStyle = chromeSurfacePlan.overlayStyle

                ReaderChromeBars(
                    uiState = uiState,
                    chromeSurface = chromeSurface,
                    effectiveToolbarBlur = effectiveToolbarBlur,
                    overlaySurface = overlaySurface,
                    overlayTextStyle = overlayTextStyle,
                    activeReaderPreset = activeReaderPreset,
                    isTextReader = isTextReader,
                    supportsLandscapeSpread = supportsLandscapeSpread,
                    directionShortcutActive = directionShortcutActive,
                    showBrightnessRow = showBrightnessRow,
                    showHeaderFooterOverlay = showHeaderFooterOverlay,
                    headerOverlayLine = headerOverlayLine,
                    footerOverlayLine = footerOverlayLine,
                    onHeaderMeasured = { measuredHeaderOverlayPx = it },
                    onTopMeasured = { measuredTopChromePx = it },
                    onFooterMeasured = { measuredFooterOverlayPx = it },
                    onBottomMeasured = { measuredBottomChromePx = it },
                    onNavigateBack = onNavigateBack,
                    onToggleToc = { viewModel.toggleTocSheet() },
                    onToggleTextSettings = { viewModel.chromeController.toggleTextSettings() },
                    onSwapDirection = { viewModel.settingsController.toggleTapZoneDirectionShortcut() },
                    onRequestOcr = {
                        if (isTextReader) showTextTranslationPageSheet = true
                        else viewModel.ocrController.requestOcr()
                    },
                    onToggleBrightness = { showBrightnessRow = !showBrightnessRow },
                    onToggleTtsControls = { showReaderAudioSheet = true },
                    onAutoScrollToggle = { viewModel.autoScrollSettingsController.toggle() },
                    onBrightnessChange = { viewModel.settingsController.setBrightness(it) },
                    onAutoScrollSpeedPreview = { viewModel.autoScrollSettingsController.previewSpeed(it) },
                    onAutoScrollSpeedCommit = { viewModel.autoScrollSettingsController.commitSpeed(uiState.readingMode, it) },
                    onToggleBookmark = { viewModel.bookmarkController.toggleBookmark() },
                    onApplyPreset = { viewModel.settingsController.applyReadingPreset(it) },
                    onReadingModeChange = { viewModel.readingModeController.setReadingMode(it) },
                    onPageChange = { viewModel.navigationController.navigateTo(it) },
                    onDismissFootnote = { viewModel.footnoteController.dismissFootnote() },
                    onExpandFootnote = { viewModel.footnoteController.expandFootnote() },
                    onCollapseFootnote = { viewModel.footnoteController.collapseFootnote() },
                )
            }
        }
    }

    ReaderBottomSheets(
        host = rememberReaderBottomSheetHost(
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
            onLaunchFontImport = fontStyleActions.onLaunchFontImport,
            onLaunchStyleImport = fontStyleActions.onLaunchStyleImport,
            onLaunchStyleExport = fontStyleActions.onLaunchStyleExport,
            onDeleteCustomFont = fontStyleActions.onDeleteCustomFont,
        ),
    )
}
}

private fun nextReaderUiEventToken(currentToken: Int): Int =
    if (currentToken == Int.MAX_VALUE) 1 else currentToken + 1

