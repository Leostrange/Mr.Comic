package io.leostrange.mrcomic.feature.reader.ui

import android.content.Intent
import android.util.Log
import android.view.ActionMode
import android.view.Menu
import android.view.MenuItem
import android.webkit.WebView
import io.leostrange.mrcomic.feature.reader.ui.gesture.PagedGestureAction
import io.leostrange.mrcomic.feature.reader.ui.gesture.PagedGesturePolicy
import org.json.JSONTokener
import kotlin.math.abs
import kotlin.math.roundToInt

internal const val JS_SELECTED_TEXT_HANDLER = """(function(){
  try{
    var t=(window.getSelection&&window.getSelection().toString())||'';
    t=(t||'').trim();
    return t;
  }catch(e){}
  return '';
})();"""

internal const val TRANSLATE_SELECTION_MENU_ID = 0x6F4352
internal const val DICTIONARY_SELECTION_MENU_ID = 0x6F4353
internal const val EXPLAIN_SELECTION_MENU_ID = 0x6F4354
internal const val SAVE_QUOTE_SELECTION_MENU_ID = 0x6F4355
internal const val HIGHLIGHT_SELECTION_MENU_ID = 0x6F4356
internal const val TRANSLATE_CHAPTER_MENU_ID = 0x6F4357
internal const val COMPARE_TRANSLATIONS_MENU_ID = 0x6F4358
private const val FREE_SCROLL_CAPTURE_DEBOUNCE_MS = 120L

internal enum class ReaderSelectionAction {
    TRANSLATE,
    DICTIONARY,
    EXPLAIN,
    SAVE_QUOTE,
    HIGHLIGHT,
    TRANSLATE_CHAPTER,
    COMPARE_TRANSLATIONS
}

internal class ReaderWebView(context: android.content.Context) : WebView(context) {
    var translateSelectionLabel: String = ""
    var dictionarySelectionLabel: String = ""
    var explainSelectionLabel: String = ""
    var saveQuoteSelectionLabel: String = ""
    var onSelectionActionRequest: ((ReaderSelectionAction, String) -> Unit)? = null
    var onVerticalBoundaryNavigationRequest: ((Int) -> Unit)? = null
    var onNativePagedTapRequest: ((Float) -> Unit)? = null
    var onPagedLayoutPageCountChanged: ((pageCount: Int, pageIndex: Int, characterOffset: Int) -> Unit)? = null
    var onFreeScrollPositionChanged: ((ReaderWebViewRestoreTarget) -> Unit)? = null
    var onSelectionActionModeChange: ((Boolean) -> Unit)? = null
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
    /** True once the first page has successfully committed â€” used to skip the fade on initial open. */
    private var hasEverCommittedLoad: Boolean = false
    var pendingPagedLayoutTarget: Int? = null
    private var activeSelectionActionMode: ActionMode? = null
    var activeLoadToken: String? = null
        private set
    var activeRuntimeGeneration: Long = 0L
        private set
    /** Base URL of the spine document currently shown (used when [getUrl] is blank/file). */
    var activeDocumentBaseUrl: String? = null
        private set
    private var committedLoadToken: String? = null
    private var lastReaderTextSettingsSignature: String? = null
    private var inlineFallback: PendingInlineFallback? = null
    private var inlineFallbackRunnable: Runnable? = null
    private var inlineFallbackAttempts: Int = 0
    var pendingFreeScrollRestoreTarget: ReaderWebViewRestoreTarget? = null
        private set
    private var latestFreeScrollRestoreTarget: ReaderWebViewRestoreTarget? = null
    private var freeScrollPositionCaptureRunnable: Runnable? = null
    private val pagedLayoutSettleRunnables = mutableListOf<Runnable>()
    private var touchStartX: Float = 0f
    private var touchStartY: Float = 0f
    private var touchStartTimeMs: Long = 0L
    private var nativePagedEdgeTapXPercent: Float? = null
    private var nativePagedGestureMoved: Boolean = false
    private var pagedDragSuppressesSelection: Boolean = false
    /** Guard: when native touch handler resolved a TAP, suppress the duplicate JS onTap callback. */
    @Volatile private var nativeTapConsumed: Boolean = false
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
            if (mode != null) onSelectionActionModeChange?.invoke(true)
        }
    }

    override fun startActionMode(callback: ActionMode.Callback?, type: Int): ActionMode? {
        if (pagedModeScrollLock && pagedDragSuppressesSelection) return null
        if (!readerHtmlSelectionActionsEnabled(pagedModeScrollLock)) return null
        return super.startActionMode(wrapSelectionCallback(callback), type).also { mode ->
            activeSelectionActionMode = mode
            if (mode != null) onSelectionActionModeChange?.invoke(true)
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
        } else if (!pagedModeScrollLock && pendingFreeScrollRestoreTarget == null) {
            scheduleFreeScrollPositionCapture()
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
                    val widthPx = width.takeIf { it > 0 } ?: measuredWidth
                    val xPercent = if (widthPx > 0) (event.x / widthPx).coerceIn(0f, 1f) else 0.5f
                    val isEdgeTap = PagedGesturePolicy.isEdgeTap(xPercent)
                    nativePagedEdgeTapXPercent = xPercent.takeIf { isEdgeTap }
                    if (nativePagedEdgeTapXPercent != null && !touchStartedOnLink) {
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
                            nativeTapConsumed = true
                            nativePagedGestureMoved = false
                            nativePagedEdgeTapXPercent = null
                            onNativePagedTapRequest?.invoke(0.1f)
                            return true
                        }
                        PagedGestureAction.TAP_RIGHT -> {
                            clearReaderSelection()
                            restorePagedDragSelection()
                            suppressNextReaderClick()
                            nativeTapConsumed = true
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
                    // Some WebView/Chromium builds scroll the document viewport without
                    // reliably advancing WebView.scrollY, so onScrollChanged() is not a
                    // sufficient persistence signal. Capture the DOM character anchor
                    // after every completed free-scroll gesture as well. The debounce
                    // lets the fling settle and coalesces this with onScrollChanged().
                    if (pendingFreeScrollRestoreTarget == null) {
                        scheduleFreeScrollPositionCapture()
                    }
                }
                android.view.MotionEvent.ACTION_CANCEL -> {
                    touchStartedAtTopBoundary = false
                    touchStartedAtBottomBoundary = false
                }
            }
        }
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

    /**
     * Returns true if the native touch handler already consumed this tap,
     * and resets the flag. The JS [onTap] interface should skip dispatching
     * when this returns true â€” prevents the double-page-advance bug.
     */
    fun consumeNativeTapIfPresent(): Boolean {
        if (nativeTapConsumed) {
            nativeTapConsumed = false
            return true
        }
        return false
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
                onSelectionActionModeChange?.invoke(false)
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
            title = "âœ¦ Highlight",
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = TRANSLATE_CHAPTER_MENU_ID,
            order = 5,
            title = "ðŸ“– Translate Chapter",
            showAsAction = MenuItem.SHOW_AS_ACTION_NEVER
        )
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = COMPARE_TRANSLATIONS_MENU_ID,
            order = 6,
            title = "âš– Compare Translations",
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

    fun markLoadRequested(
        loadToken: String,
        documentBaseUrl: String? = null,
        runtimeGeneration: Long = 0L
    ) {
        activeLoadToken = loadToken
        activeRuntimeGeneration = runtimeGeneration.coerceAtLeast(0L)
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
        if (readerHtmlReloadResetsScroll(pagedModeScrollLock) && pendingFreeScrollRestoreTarget == null) {
            scrollTo(0, 0)
        }
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
        // Landscape WebViews can be shorter than 400 px once system bars and
        // the reader chrome are accounted for.  Keep this gate aligned with
        // the runtime viewport-readiness check so a rotation cannot leave the
        // paged layout with stale portrait dimensions.
        if (pagedModeScrollLock && !pagedLayoutReady && h >= 240) {
            applyPagedLayout()
        }
    }

    /**
     * Callback invoked after [markLoadCommitted] updates the WebView state.
     * ARC-11 slice 2b: the UI layer registers this so [ReaderWebViewLoadController]
     * can mark the load completed too. The token passed is the same one the
     * caller handed to [markLoadRequested] earlier (or null if no load was
     * ever requested — in which case the controller is a no-op).
     */
    internal var onLoadCommitted: ((String?) -> Unit)? = null
    internal var onRuntimeEvent: ((ReaderWebViewEvent) -> Unit)? = null

    fun markLoadCommitted() {
        if (committedLoadToken == activeLoadToken) return
        committedLoadToken = activeLoadToken
        inlineFallbackRunnable?.let(::removeCallbacks)
        inlineFallbackRunnable = null
        hasEverCommittedLoad = true
        if (webtoonFadeEnabled && alpha < 1f) {
            if (pendingFreeScrollRestoreTarget == null) {
                resetFreeScrollAfterLoadIfNeeded()
            }
            post { animate().alpha(1f).setDuration(200L).start() }
        }
        onLoadCommitted?.invoke(activeLoadToken)
        activeRuntimeGeneration.takeIf { it > 0L }?.let { generation ->
            onRuntimeEvent?.invoke(ReaderWebViewEvent.Committed(generation))
        }
    }

    fun prepareFreeScrollReloadPreservingPosition() {
        if (pagedModeScrollLock || !webtoonFadeEnabled || activeLoadToken == null) return
        pendingFreeScrollRestoreTarget = currentFreeScrollRestoreTarget()
    }

    fun primeFreeScrollRestoreTarget(target: ReaderWebViewRestoreTarget?) {
        if (pagedModeScrollLock) return
        pendingFreeScrollRestoreTarget = target?.normalizedFreeScrollTarget()
        latestFreeScrollRestoreTarget = pendingFreeScrollRestoreTarget
    }

    fun currentFreeScrollProgression(): Double? = readerFreeScrollProgression(
        scrollY = scrollY,
        scrollRangePx = computeVerticalScrollRange(),
        viewportHeightPx = height
    )

    fun currentFreeScrollRestoreTarget(): ReaderWebViewRestoreTarget? {
        val progression = currentFreeScrollProgression()
        val characterOffset = latestFreeScrollRestoreTarget?.characterOffset
        if (characterOffset == null && progression == null) return null
        return ReaderWebViewRestoreTarget(
            characterOffset = characterOffset,
            progression = progression
        )
    }

    private fun scheduleFreeScrollPositionCapture() {
        freeScrollPositionCaptureRunnable?.let(::removeCallbacks)
        freeScrollPositionCaptureRunnable = Runnable {
            freeScrollPositionCaptureRunnable = null
            captureFreeScrollPosition()
        }.also { postDelayed(it, FREE_SCROLL_CAPTURE_DEBOUNCE_MS) }
    }

    private fun captureFreeScrollPosition() {
        if (pagedModeScrollLock || pendingFreeScrollRestoreTarget != null) return
        val progression = currentFreeScrollProgression()
        evaluateJavascript(readerCaptureFreeScrollPositionJs(progression)) { rawValue ->
            val target = ReaderWebViewProtocolCodec.decodeRestoreTarget(rawValue)
                ?.normalizedFreeScrollTarget()
                ?: progression?.let { ReaderWebViewRestoreTarget(progression = it) }
                ?: return@evaluateJavascript
            latestFreeScrollRestoreTarget = target
            onFreeScrollPositionChanged?.invoke(target)
        }
    }

    fun stopFreeScrollPositionTracking() {
        freeScrollPositionCaptureRunnable?.let(::removeCallbacks)
        freeScrollPositionCaptureRunnable = null
        onFreeScrollPositionChanged = null
    }

    fun resetFreeScrollAfterLoadIfNeeded() {
        pendingFreeScrollRestoreTarget = null
        if (!readerHtmlReloadResetsScroll(pagedModeScrollLock)) return
        scrollTo(0, 0)
        evaluateJavascript(HTML_READER_RESET_FREE_SCROLL_JS, null)
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
        committedLoadToken = null
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
        val generation = activeRuntimeGeneration
        val probeScript = if (generation > 0L) {
            readerWebViewContentProbeJs(generation)
        } else {
            HTML_READER_BLANK_CHECK_JS
        }
        evaluateJavascript(probeScript) { rawValue ->
            val currentToken = activeLoadToken
            if (currentToken != expectedToken) return@evaluateJavascript
            if (generation > 0L) {
                when (val decoded = ReaderWebViewProtocolCodec.decodeEvent(rawValue)) {
                    is ReaderWebViewProtocolDecodeResult.Success -> {
                        val event = decoded.event
                        if (event.generation != activeRuntimeGeneration) return@evaluateJavascript
                        onRuntimeEvent?.invoke(event)
                    }
                    is ReaderWebViewProtocolDecodeResult.Failure -> Log.w(
                        HTML_READER_TAG,
                        "Content probe protocol failure: ${decoded.reason}"
                    )
                }
                return@evaluateJavascript
            }
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
        layoutAffectingSignature: String = signature,
        characterOffsetToRestore: Int? = null
    ) {
        if (!force && lastReaderTextSettingsSignature == signature) return
        val layoutChanged = lastLayoutAffectingSignature != layoutAffectingSignature
        lastReaderTextSettingsSignature = signature
        lastLayoutAffectingSignature = layoutAffectingSignature
        evaluateJavascript(script) {
            if (pagedModeScrollLock && layoutChanged) {
                if (characterOffsetToRestore != null && characterOffsetToRestore > 0) {
                    applyPagedLayout(targetPage = 0) {
                        scrollToCharacterOffset(characterOffsetToRestore)
                    }
                } else {
                    applyPagedLayout()
                }
            }
        }
    }

    fun applyPagedLayout(
        targetPage: Int? = pendingPagedLayoutTarget,
        onLayoutApplied: (() -> Unit)? = null
    ) {
        if (!pagedModeScrollLock) {
            pagedLayoutReady = true
            alpha = 1f
            return
        }
        val cssHeight = readerCssViewportHeightPxOrNull()
        val cssWidth = readerCssViewportWidthPxOrNull()
        if (!readerPagedViewportIsReady(cssWidth, cssHeight)) {
            schedulePagedLayoutRetry("viewport not ready (${cssWidth}x$cssHeight)")
            return
        }
        val target = targetPage ?: -1
        pendingPagedLayoutTarget = null
        val generation = activeRuntimeGeneration.takeIf { it > 0L }
        evaluateJavascript(readerPagedLayoutJs(target, generation)) { rawValue ->
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
            onPagedLayoutPageCountChanged?.invoke(metrics.pageCount, metrics.pageIndex, metrics.characterOffset)
            generation?.let { activeGeneration ->
                if (activeGeneration == activeRuntimeGeneration) {
                    onRuntimeEvent?.invoke(ReaderWebViewEvent.LayoutReady(activeGeneration, metrics))
                }
            }
            onLayoutApplied?.invoke()
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

    fun turnPagedColumn(
        delta: Int,
        onBoundary: () -> Unit,
        onPageMetricsChanged: ((pageCount: Int, pageIndex: Int, characterOffset: Int) -> Unit)? = null
    ) {
        if (!pagedModeScrollLock) {
            onBoundary()
            return
        }
        evaluateJavascript(readerPagedTurnJs(delta, activeRuntimeGeneration.takeIf { it > 0L })) { rawValue ->
            val metrics = decodeReaderPagedLayoutMetrics(rawValue)
            if (metrics == null || !metrics.handled) {
                pendingPagedLayoutTarget = if (delta < 0) Int.MAX_VALUE else 0
                post { onBoundary() }
            } else {
                onPageMetricsChanged?.invoke(metrics.pageCount, metrics.pageIndex, metrics.characterOffset)
            }
        }
    }

    /**
     * Restores the paged reading position to the page containing [offset] characters
     * from the start of the document. Called after font-size or layout changes so the
     * reader stays near the same textual position even when page boundaries shift.
     */
    fun scrollToCharacterOffset(offset: Int, onRestored: ((Boolean) -> Unit)? = null) {
        if (!pagedModeScrollLock || offset < 0) {
            onRestored?.invoke(false)
            return
        }
        evaluateJavascript(readerScrollToCharacterOffsetJs(offset)) { rawValue ->
            val pageIndex = rawValue?.trim('"')?.toIntOrNull()
            if (pageIndex == null || pageIndex < 0) {
                onRestored?.invoke(false)
                return@evaluateJavascript
            }
            // Apply the resolved page via applyPagedLayout which reports metrics.
            applyPagedLayout(targetPage = pageIndex) { onRestored?.invoke(true) }
        }
    }

    fun reportRuntimeLoadFailure(reason: String) {
        val generation = activeRuntimeGeneration
        if (generation > 0L && onRuntimeEvent != null) {
            onRuntimeEvent?.invoke(
                ReaderWebViewEvent.Error(
                    generation = generation,
                    code = "main_frame_load",
                    message = reason,
                    recoverable = true
                )
            )
        } else {
            loadInlineFallbackNow()
        }
    }

    fun restoreRuntimeTarget(
        generation: Long,
        target: ReaderWebViewRestoreTarget,
        onRestored: (Boolean) -> Unit
    ) {
        if (generation <= 0L || generation != activeRuntimeGeneration) {
            onRestored(false)
            return
        }
        val offset = target.characterOffset
        if (pagedModeScrollLock && offset != null) {
            scrollToCharacterOffset(offset, onRestored)
            return
        }
        val fragmentSelector = target.fragment
            ?.takeIf { it.isNotBlank() }
            ?.let(::readerJavaScriptStringLiteral)
            ?: "null"
        val sectionIndex = target.sectionIndex ?: -1
        val characterOffset = if (pagedModeScrollLock) -1 else target.characterOffset ?: -1
        val progression = target.progression ?: -1.0
        val script = """
            (function(){
              try{
                var fragment=$fragmentSelector;
                var target=null;
                if(fragment){
                  target=document.getElementById(fragment)||document.querySelector('[name="'+fragment.replace(/["\\]/g,'\\$&')+'"]');
                }
                if(target){
                  if(window.__mrcomicScrollToAnchor){window.__mrcomicScrollToAnchor(target);}
                  else{target.scrollIntoView({block:'start',inline:'nearest'});}
                  return true;
                }
                if($characterOffset>=0){
                  var content=document.querySelector('[data-mrcomic-text-webtoon-document]')||document.body;
                  var walker=document.createTreeWalker(content,NodeFilter.SHOW_TEXT,null);
                  var remaining=$characterOffset;
                  var node=null;
                  while((node=walker.nextNode())){
                    var length=(node.nodeValue||'').length;
                    if(remaining<=length)break;
                    remaining-=length;
                  }
                  if(node){
                    var range=document.createRange();
                    var start=Math.max(0,Math.min((node.nodeValue||'').length,remaining));
                    range.setStart(node,start);
                    range.setEnd(node,Math.min((node.nodeValue||'').length,start+1));
                    var rect=range.getBoundingClientRect();
                    if(rect&&isFinite(rect.top)){
                      window.scrollBy(0,Math.round(rect.top-16));
                      range.detach&&range.detach();
                      return true;
                    }
                    range.detach&&range.detach();
                  }
                }
                if($progression>=0){
                  var root=document.scrollingElement||document.documentElement||document.body;
                  var max=Math.max(0,(root.scrollHeight||0)-(window.innerHeight||0));
                  window.scrollTo(0,Math.round(max*$progression));
                  return true;
                }
                if($sectionIndex>=0){
                  target=document.querySelector('.mrcomic-text-webtoon-section[data-mrcomic-page-index="'+$sectionIndex+'"]');
                }
                if(target){
                  if(window.__mrcomicScrollToAnchor){window.__mrcomicScrollToAnchor(target);}
                  else{target.scrollIntoView({block:'start',inline:'nearest'});}
                  return true;
                }
                return false;
              }catch(e){return false;}
            })()
        """.trimIndent()
        evaluateJavascript(script) { rawValue ->
            val restored = rawValue?.trim('"') == "true"
            if (restored && (target.characterOffset != null || target.progression != null)) {
                pendingFreeScrollRestoreTarget = null
                latestFreeScrollRestoreTarget = target.normalizedFreeScrollTarget()
                scheduleFreeScrollPositionCapture()
            }
            onRestored(restored)
        }
    }
}

private fun ReaderWebViewRestoreTarget.normalizedFreeScrollTarget(): ReaderWebViewRestoreTarget? {
    val normalizedOffset = characterOffset?.coerceAtLeast(0)
    val normalizedProgression = progression
        ?.takeIf { it.isFinite() }
        ?.coerceIn(0.0, 1.0)
    if (normalizedOffset == null && normalizedProgression == null) return null
    return ReaderWebViewRestoreTarget(
        characterOffset = normalizedOffset,
        progression = normalizedProgression
    )
}

private fun readerCaptureFreeScrollPositionJs(progression: Double?): String {
    val normalizedProgression = progression
        ?.takeIf { it.isFinite() }
        ?.coerceIn(0.0, 1.0)
        ?: -1.0
    return """
(function(){
  try{
    var content=document.querySelector('[data-mrcomic-text-webtoon-document]')||document.body;
    var walker=document.createTreeWalker(content,NodeFilter.SHOW_TEXT,null);
    var viewportY=Math.min(16,Math.max(0,(window.innerHeight||0)-1));
    var viewportWidth=Math.max(1,window.innerWidth||document.documentElement.clientWidth||1);
    var cursor=0;
    var node;
    var range=document.createRange();
    while((node=walker.nextNode())){
      var value=node.nodeValue||'';
      if(!value.length)continue;
      range.selectNodeContents(node);
      var rects=range.getClientRects();
      var visible=false;
      for(var i=0;i<rects.length;i++){
        var rect=rects[i];
        if(rect.bottom>viewportY&&rect.top<(window.innerHeight||0)&&rect.right>0&&rect.left<viewportWidth){
          visible=true;
          break;
        }
      }
      if(!visible){
        cursor+=value.length;
        continue;
      }
      var low=0;
      var high=value.length;
      while(low<high){
        var mid=Math.floor((low+high)/2);
        range.setStart(node,mid);
        range.setEnd(node,Math.min(value.length,mid+1));
        var charRect=range.getBoundingClientRect();
        if(charRect.bottom>viewportY)high=mid;
        else low=mid+1;
      }
      range.detach&&range.detach();
      return JSON.stringify({characterOffset:cursor+low,progression:$normalizedProgression});
    }
    range.detach&&range.detach();
    return JSON.stringify({progression:$normalizedProgression});
  }catch(e){return JSON.stringify({progression:$normalizedProgression});}
})()
""".trimIndent()
}

internal fun readerPagedViewportIsReady(cssWidth: Int?, cssHeight: Int?): Boolean =
    cssWidth != null && cssHeight != null && cssWidth >= 200 && cssHeight >= 240

internal fun readerFreeScrollProgression(
    scrollY: Int,
    scrollRangePx: Int,
    viewportHeightPx: Int
): Double? {
    if (scrollRangePx <= 0 || viewportHeightPx <= 0) return null
    val maxScrollPx = scrollRangePx.toDouble() - viewportHeightPx
    if (maxScrollPx <= 1.0) return null
    return (scrollY.coerceAtLeast(0) / maxScrollPx).coerceIn(0.0, 1.0)
}

private fun readerJavaScriptStringLiteral(value: String): String =
    org.json.JSONObject.quote(value)

internal fun WebView.readerCssViewportWidthPxOrNull(): Int? {
    val rawWidth = width.takeIf { it > 0 } ?: measuredWidth.takeIf { it > 0 } ?: return null
    val density = resources.displayMetrics.density.takeIf { it > 0f } ?: return null
    return (rawWidth / density).roundToInt().coerceAtLeast(1)
}

internal fun WebView.readerCssViewportHeightPxOrNull(): Int? {
    val rawHeight = height.takeIf { it > 0 } ?: measuredHeight.takeIf { it > 0 } ?: return null
    val density = resources.displayMetrics.density.takeIf { it > 0f } ?: return null
    return (rawHeight / density).roundToInt().coerceAtLeast(1)
}
