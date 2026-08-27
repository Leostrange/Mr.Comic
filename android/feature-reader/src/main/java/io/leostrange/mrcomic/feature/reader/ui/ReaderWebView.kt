package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log
import android.view.ActionMode
import android.webkit.WebView
import org.json.JSONTokener
import kotlin.math.roundToInt

internal const val JS_SELECTED_TEXT_HANDLER = """(function(){
  try{
    var selection=window.getSelection&&window.getSelection();
    if(!selection||selection.rangeCount<1)return '';
    var range=selection.getRangeAt(0);
    var text=(selection.toString()||'').trim();
    if(!text)return '';
    var body=document.body;
    var prefix=document.createRange();
    prefix.selectNodeContents(body);
    prefix.setEnd(range.startContainer,range.startOffset);
    var suffix=document.createRange();
    suffix.selectNodeContents(body);
    suffix.setEnd(range.endContainer,range.endOffset);
    return JSON.stringify({text:text,startOffset:prefix.toString().length,endOffset:suffix.toString().length});
  }catch(e){}
  return '';
})();"""

internal data class ReaderTextSelection(
    val text: String,
    val startOffset: Int,
    val endOffset: Int,
)

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
    private val selectionController = ReaderWebViewSelectionController(
        evaluateJavascript = { script, cb -> evaluateJavascript(script, cb) },
        post = { action -> post(action) },
        clearFocus = { clearFocus() },
        onSelectionAction = { action, selection -> onSelectionActionRequest?.invoke(action, selection) },
        onActionModeChange = { onSelectionActionModeChange?.invoke(it) }
    )

    var translateSelectionLabel: String
        get() = selectionController.translateSelectionLabel
        set(value) { selectionController.translateSelectionLabel = value }
    var dictionarySelectionLabel: String
        get() = selectionController.dictionarySelectionLabel
        set(value) { selectionController.dictionarySelectionLabel = value }
    var explainSelectionLabel: String
        get() = selectionController.explainSelectionLabel
        set(value) { selectionController.explainSelectionLabel = value }
    var saveQuoteSelectionLabel: String
        get() = selectionController.saveQuoteSelectionLabel
        set(value) { selectionController.saveQuoteSelectionLabel = value }
    var selectionMenuLanguageCode: String
        get() = selectionController.selectionMenuLanguageCode
        set(value) { selectionController.selectionMenuLanguageCode = value }

    var onSelectionActionRequest: ((ReaderSelectionAction, ReaderTextSelection) -> Unit)? = null
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
    /** True once the first page has successfully committed — used to skip the fade on initial open. */
    private var hasEverCommittedLoad: Boolean = false
    var activeLoadToken: String? = null
        private set
    var activeLoadPagedMode: Boolean? = null
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

    private val freeScrollController = ReaderFreeScrollRestoreController(
        postDelayed = { action, delay -> postDelayed(action, delay) },
        removeCallbacks = { action -> removeCallbacks(action) },
        evaluateJavascript = { script, cb -> evaluateJavascript(script, cb) },
        onPositionChanged = { onFreeScrollPositionChanged?.invoke(it) }
    )

    private val highlightRuntimeController = ReaderHighlightRuntimeController { script ->
        evaluateJavascript(script, null)
        invalidate()
    }

    private val pagedLayoutController = ReaderPagedLayoutController(
        evaluateJavascript = { script, cb -> evaluateJavascript(script, cb) },
        postDelayed = { action, delay -> postDelayed(action, delay) },
        removeCallbacks = { action -> removeCallbacks(action) },
        post = { action -> post(action) },
        getViewportWidthCss = { readerCssViewportWidthPxOrNull() },
        getViewportHeightCss = { readerCssViewportHeightPxOrNull() },
        onAlphaChanged = { alpha = it },
        onPageMetricsChanged = { count, index, offset ->
            onPagedLayoutPageCountChanged?.invoke(count, index, offset)
        },
        onRuntimeEvent = { onRuntimeEvent?.invoke(it) }
    )

    private val touchController = ReaderWebViewTouchController(
        onNativePagedTap = { onNativePagedTapRequest?.invoke(it) },
        onVerticalBoundaryNavigation = { onVerticalBoundaryNavigationRequest?.invoke(it) },
        suppressNextClick = { suppressNextReaderClick() },
        clearSelection = { clearReaderSelection() },
        setSelectionEnabled = { enabled ->
            if (pagedModeScrollLock) {
                val actEnabled = readerHtmlSelectionActionsEnabled(true) && enabled
                isLongClickable = actEnabled
                isHapticFeedbackEnabled = actEnabled
            }
        },
        setUserSelectNone = { enabled ->
            val value = if (enabled) "none" else "auto"
            evaluateJavascript(
                """try{document.body.style.userSelect="$value";document.body.style.webkitUserSelect="$value";}catch(e){}""",
                null
            )
        },
        onFreeScrollGestureFinished = {
            if (pendingFreeScrollRestoreTarget == null) {
                scheduleFreeScrollPositionCapture()
            }
        }
    )

    var pendingPagedLayoutTarget: Int?
        get() = pagedLayoutController.pendingPagedLayoutTarget
        set(value) { pagedLayoutController.pendingPagedLayoutTarget = value }

    val pagedLayoutReady: Boolean
        get() = pagedLayoutController.pagedLayoutReady

    val pendingFreeScrollRestoreTarget: ReaderWebViewRestoreTarget?
        get() = freeScrollController.pendingRestoreTarget

    val latestFreeScrollRestoreTarget: ReaderWebViewRestoreTarget?
        get() = freeScrollController.latestRestoreTarget

    val pagedDragSuppressesSelection: Boolean
        get() = touchController.pagedDragSuppressesSelection

    var touchStartedOnLink: Boolean
        get() = touchController.touchStartedOnLink
        set(value) { touchController.touchStartedOnLink = value }

    private data class PendingInlineFallback(
        val loadToken: String,
        val baseUrl: String,
        val html: String
    )

    override fun startActionMode(callback: ActionMode.Callback?): ActionMode? {
        if (pagedModeScrollLock && pagedDragSuppressesSelection) return null
        if (!readerHtmlSelectionActionsEnabled(pagedModeScrollLock)) return null
        return super.startActionMode(selectionController.wrapSelectionCallback(callback)).also { mode ->
            selectionController.setActiveActionMode(mode)
        }
    }

    override fun startActionMode(callback: ActionMode.Callback?, type: Int): ActionMode? {
        if (pagedModeScrollLock && pagedDragSuppressesSelection) return null
        if (!readerHtmlSelectionActionsEnabled(pagedModeScrollLock)) return null
        return super.startActionMode(selectionController.wrapSelectionCallback(callback), type).also { mode ->
            selectionController.setActiveActionMode(mode)
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
        return if (pagedModeScrollLock) {
            touchController.handlePagedTouchEvent(
                event = event,
                viewWidth = width.takeIf { it > 0 } ?: measuredWidth,
                hasActiveSelection = selectionController.hasActiveSelection,
                superOnTouchEvent = { super.onTouchEvent(it) }
            )
        } else {
            touchController.handleWebtoonTouchEvent(
                event = event,
                canScrollVertically = { canScrollVertically(it) },
                superOnTouchEvent = { super.onTouchEvent(it) }
            )
        }
    }

    /**
     * Returns true if the native touch handler already consumed this tap,
     * and resets the flag. The JS [onTap] interface should skip dispatching
     * when this returns true — prevents the double-page-advance bug.
     */
    fun consumeNativeTapIfPresent(): Boolean =
        touchController.consumeNativeTapIfPresent()

    fun suppressNextReaderClick() {
        evaluateJavascript(
            "try{window.__readerNativeSuppressClickUntil=Date.now()+900;}catch(e){}",
            null
        )
    }

    private fun clearReaderSelection() {
        selectionController.clearReaderSelection()
    }

    fun markLoadRequested(
        loadToken: String,
        documentBaseUrl: String? = null,
        runtimeGeneration: Long = 0L,
        pagedMode: Boolean = pagedModeScrollLock
    ) {
        activeLoadToken = loadToken
        activeLoadPagedMode = pagedMode
        activeRuntimeGeneration = runtimeGeneration.coerceAtLeast(0L)
        activeDocumentBaseUrl = documentBaseUrl?.substringBefore('#')?.trim()?.takeIf { it.isNotBlank() }
        committedLoadToken = null
        lastReaderTextSettingsSignature = null
        highlightRuntimeController.onDocumentLoadRequested()
        pagedLayoutController.resetForNewLoad(pagedModeScrollLock)
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
        inlineFallback = null
        inlineFallbackAttempts = 0
    }

    fun applyHighlightsIfChanged(script: String) {
        highlightRuntimeController.applyIfChanged(script)
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
        freeScrollController.prepareReloadPreservingPosition(
            isPagedMode = pagedModeScrollLock,
            webtoonFadeEnabled = webtoonFadeEnabled,
            hasActiveLoad = activeLoadToken != null,
            currentProgression = currentFreeScrollProgression()
        )
    }

    fun primeFreeScrollRestoreTarget(target: ReaderWebViewRestoreTarget?) {
        freeScrollController.primeRestoreTarget(target, pagedModeScrollLock)
    }

    fun currentFreeScrollProgression(): Double? = readerFreeScrollProgression(
        scrollY = scrollY,
        scrollRangePx = computeVerticalScrollRange(),
        viewportHeightPx = height
    )

    fun currentFreeScrollRestoreTarget(): ReaderWebViewRestoreTarget? =
        freeScrollController.currentRestoreTarget(currentFreeScrollProgression())

    private fun scheduleFreeScrollPositionCapture() {
        freeScrollController.schedulePositionCapture()
    }

    fun stopFreeScrollPositionTracking() {
        freeScrollController.stop()
        onFreeScrollPositionChanged = null
    }

    fun resetFreeScrollAfterLoadIfNeeded() {
        freeScrollController.reset()
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
        if (!readerTextSettingsUpdateRequired(
                force = force,
                previousVisualSignature = lastReaderTextSettingsSignature,
                nextVisualSignature = signature,
                previousLayoutSignature = lastLayoutAffectingSignature,
                nextLayoutSignature = layoutAffectingSignature,
            )) return
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

    fun schedulePagedLayoutSettle() {
        pagedLayoutController.schedulePagedLayoutSettle(
            isPagedMode = pagedModeScrollLock,
            activeLoadToken = activeLoadToken,
            isTokenCommitted = { token -> committedLoadToken == token }
        )
    }

    fun applyPagedLayout(
        targetPage: Int? = pendingPagedLayoutTarget,
        onLayoutApplied: (() -> Unit)? = null
    ) {
        pagedLayoutController.applyPagedLayout(
            isPagedMode = pagedModeScrollLock,
            runtimeGeneration = activeRuntimeGeneration,
            targetPage = targetPage,
            onLayoutApplied = onLayoutApplied
        )
    }

    fun turnPagedColumn(
        delta: Int,
        onBoundary: () -> Unit,
        onPageMetricsChanged: ((pageCount: Int, pageIndex: Int, characterOffset: Int) -> Unit)? = null
    ) {
        pagedLayoutController.turnPagedColumn(
            isPagedMode = pagedModeScrollLock,
            delta = delta,
            runtimeGeneration = activeRuntimeGeneration,
            onBoundary = onBoundary,
            onMetricsChanged = onPageMetricsChanged
        )
    }

    fun scrollToCharacterOffset(offset: Int, onRestored: ((Boolean) -> Unit)? = null) {
        pagedLayoutController.scrollToCharacterOffset(
            isPagedMode = pagedModeScrollLock,
            offset = offset,
            onRestored = onRestored
        )
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
        val characterScopeSelector = readerJavaScriptStringLiteral(
            readerFreeScrollCharacterScopeSelector(sectionIndex)
        )
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
                if($sectionIndex>=0){
                  var secTarget=document.querySelector('.mrcomic-text-webtoon-section[data-mrcomic-page-index="'+$sectionIndex+'"]');
                  if(secTarget){
                    if($characterOffset>0){
                      var walker=document.createTreeWalker(secTarget,NodeFilter.SHOW_TEXT,null);
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
                    if(window.__mrcomicScrollToAnchor){window.__mrcomicScrollToAnchor(secTarget);}
                    else{secTarget.scrollIntoView({block:'start',inline:'nearest'});}
                    return true;
                  }
                }
                if($characterOffset>=0){
                  var content=document.querySelector($characterScopeSelector)||
                    document.querySelector('[data-mrcomic-text-webtoon-document]')||document.body;
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
                return false;
              }catch(e){return false;}
            })()
        """.trimIndent()
        evaluateJavascript(script) { rawValue ->
            val restored = rawValue?.trim('"') == "true"
            if (restored && (target.characterOffset != null || target.progression != null)) {
                freeScrollController.markRestoreCompleted()
                scheduleFreeScrollPositionCapture()
            }
            onRestored(restored)
        }
    }
}

internal fun ReaderWebViewRestoreTarget.normalizedFreeScrollTarget(): ReaderWebViewRestoreTarget? {
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

internal fun readerFreeScrollCharacterScopeSelector(sectionIndex: Int): String =
    if (sectionIndex >= 0) {
        ".mrcomic-text-webtoon-section[data-mrcomic-page-index=\"$sectionIndex\"]"
    } else {
        "[data-mrcomic-text-webtoon-document]"
    }

internal fun readerCaptureFreeScrollPositionJs(progression: Double?): String {
    val normalizedProgression = progression
        ?.takeIf { it.isFinite() }
        ?.coerceIn(0.0, 1.0)
        ?: -1.0
    return """
(function(){
  try{
    var viewportY=Math.min(16,Math.max(0,(window.innerHeight||0)-1));
    var viewportWidth=Math.max(1,window.innerWidth||document.documentElement.clientWidth||1);
    var root=document.querySelector('[data-mrcomic-text-webtoon-document]')||document.body;
    var probe=document.elementFromPoint(Math.floor(viewportWidth/2),viewportY);
    var section=probe&&probe.closest?probe.closest('.mrcomic-text-webtoon-section'):null;
    if(!section){
      var sections=document.querySelectorAll('.mrcomic-text-webtoon-section');
      for(var s=0;s<sections.length;s++){
        var sectionRect=sections[s].getBoundingClientRect();
        if(sectionRect.bottom>viewportY){section=sections[s];break;}
      }
    }
    var content=section||root;
    var sectionIndex=section?parseInt(section.getAttribute('data-mrcomic-page-index'),10):-1;
    var walker=document.createTreeWalker(content,NodeFilter.SHOW_TEXT,null);
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
      return JSON.stringify({
        sectionIndex:isNaN(sectionIndex)?-1:sectionIndex,
        characterOffset:cursor+low,
        progression:$normalizedProgression
      });
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
