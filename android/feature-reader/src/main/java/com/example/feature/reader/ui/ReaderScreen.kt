package com.example.feature.reader.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.pm.ActivityInfo
import android.content.res.Configuration
import android.os.Build
import android.view.ActionMode
import android.view.KeyEvent
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.view.WindowInsetsController
import android.view.WindowManager
import androidx.compose.foundation.background
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
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.Hyphens
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.hilt.navigation.compose.hiltViewModel
import android.webkit.JavascriptInterface
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.WebViewClient
import org.json.JSONTokener
import com.example.core.model.isTextReadingFormat
import com.example.core.model.ReadingMode
import com.example.core.model.ReaderInfoSlot
import com.example.core.model.ReaderTapZoneAction
import com.example.core.model.ReaderTapZoneMode
import com.example.core.model.ReaderTtsSleepTimerMode
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationTransportPreference
import com.example.core.model.resolveReaderSimpleTapZoneLayout
import com.example.core.model.resolveReaderTapZoneLayout
import com.example.core.ui.eink.LocalEInkMode
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.theme.ReadingPreset
import com.example.engine.formats.base.TocEntry
import com.example.feature.reader.ui.components.PageView
import com.example.feature.reader.ui.components.ReaderBottomBar
import com.example.feature.reader.ui.components.WebtoonView
import kotlinx.coroutines.delay
import java.time.LocalTime
import java.time.format.DateTimeFormatter

/**
 * JS snippet injected via evaluateJavascript after each page load.
 *
 * Behaviour:
 *  • Click on <a href="fbanchor://id"> → call onAnchorClick(id) for footnote popup.
 *  • Click on any other <a href="#fragment"> → call onAnchorClick(fragment).
 *  • Click anywhere else → call onTap(xPercent) for page-turn navigation.
 * The guard flag prevents double-registration across multiple onPageFinished calls.
 */
private const val JS_TAP_HANDLER = """(function(){
  if(window.__tapAdded)return;
  window.__tapAdded=true;
  window.__readerTouchStartTs=0;
  window.__readerTouchMoved=false;
  window.__readerSelectionTs=0;
  document.addEventListener('selectionchange',function(){
    try{
      var selected=(window.getSelection&&window.getSelection().toString())||'';
      if((selected||'').trim().length>0){
        window.__readerSelectionTs=Date.now();
      }
    }catch(e){}
  },false);
  document.addEventListener('touchstart',function(){
    window.__readerTouchStartTs=Date.now();
    window.__readerTouchMoved=false;
  },{passive:true});
  document.addEventListener('touchmove',function(){
    window.__readerTouchMoved=true;
  },{passive:true});
  document.addEventListener('click',function(e){
    var now=Date.now();
    var selected='';
    try{
      selected=(window.getSelection&&window.getSelection().toString())||'';
      selected=(selected||'').trim();
    }catch(err){}
    var isLongPress=window.__readerTouchStartTs&&((now-window.__readerTouchStartTs)>280);
    var hasRecentSelection=window.__readerSelectionTs&&((now-window.__readerSelectionTs)<700);
    if(selected.length>0||window.__readerTouchMoved||isLongPress||hasRecentSelection){
      return;
    }
    var t=e.target;
    while(t&&t!==document.body){
      if(t.tagName==='A'){
        var href=t.getAttribute('href')||'';
        var title=t.getAttribute('title')||'';
        e.preventDefault();
        if(href.indexOf('fbanchor://')===0){
          var id=href.slice(11);
          if(id&&typeof _NativeReader!='undefined')_NativeReader.onAnchorClick(id);
        } else if(href.indexOf('#')>=0&&href.indexOf('://')<0){
          var frag=href.split('#')[1]||'';
          if(title&&typeof _NativeReader!='undefined'){
            _NativeReader.onInlineFootnote(title);
            return;
          }
          if(frag&&typeof _NativeReader!='undefined')_NativeReader.onAnchorClick(frag);
        }
        return;
      }
      t=t.parentNode;
    }
    var x=e.clientX/window.innerWidth;
    if(typeof _NativeReader!='undefined')_NativeReader.onTap(x);
  },false);
})();"""

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

private enum class ReaderSelectionAction {
    TRANSLATE,
    DICTIONARY,
    EXPLAIN
}

private fun colorSchemePalette(scheme: String): Pair<String, String> = when (scheme) {
    "SEPIA" -> "#f4ecd8" to "#3b2a1a"
    "NIGHT" -> "#1a1a1a" to "#e8e8e8"
    else    -> "#fafafa"  to "#1a1a1a"
}

private fun readerMaterialColorScheme(
    isTextReader: Boolean,
    textColorScheme: String,
    fallback: ColorScheme
): ColorScheme {
    val surfaceAlpha = fallback.surface.alpha
    val baseScheme = if (!isTextReader) {
        darkColorScheme(
            primary = Color(0xFF7DB7E8),
            onPrimary = Color(0xFF0F1C29),
            primaryContainer = Color(0xFF243748),
            onPrimaryContainer = Color(0xFFE3F1FE),
            secondary = Color(0xFFD9B982),
            onSecondary = Color(0xFF36250D),
            secondaryContainer = Color(0xFF544122),
            onSecondaryContainer = Color(0xFFF7E7CA),
            background = Color(0xFF090B0E),
            onBackground = Color(0xFFF2F2F2),
            surface = Color(0xFF14181D),
            onSurface = Color(0xFFF2F2F2),
            surfaceVariant = Color(0xFF232A31),
            onSurfaceVariant = Color(0xFFC5CBD2),
            outline = Color(0xFF5B6772),
            outlineVariant = Color(0xFF313A44),
            error = fallback.error,
            onError = fallback.onError
        )
    } else {
        when (textColorScheme) {
            "NIGHT" -> darkColorScheme(
                primary = Color(0xFF7DB7E8),
                onPrimary = Color(0xFF0F1C29),
                primaryContainer = Color(0xFF253748),
                onPrimaryContainer = Color(0xFFE2F0FD),
                secondary = Color(0xFFD4B384),
                onSecondary = Color(0xFF3F2A11),
                secondaryContainer = Color(0xFF594225),
                onSecondaryContainer = Color(0xFFF3E2C6),
                background = Color(0xFF16181C),
                onBackground = Color(0xFFE8E2D8),
                surface = Color(0xFF1F2328),
                onSurface = Color(0xFFE8E2D8),
                surfaceVariant = Color(0xFF2A2F36),
                onSurfaceVariant = Color(0xFFC5C0B6),
                outline = Color(0xFF716A60),
                outlineVariant = Color(0xFF3B403E)
            )
            "SEPIA" -> lightColorScheme(
                primary = Color(0xFF2F6B94),
                onPrimary = Color(0xFFF7F1E4),
                primaryContainer = Color(0xFFD5E7F4),
                onPrimaryContainer = Color(0xFF11344A),
                secondary = Color(0xFF8E6335),
                onSecondary = Color(0xFFF9F1E4),
                secondaryContainer = Color(0xFFEFDDBB),
                onSecondaryContainer = Color(0xFF3D2910),
                background = Color(0xFFF4ECD8),
                onBackground = Color(0xFF372719),
                surface = Color(0xFFEADFC2),
                onSurface = Color(0xFF372719),
                surfaceVariant = Color(0xFFE3D4B4),
                onSurfaceVariant = Color(0xFF6A543B),
                outline = Color(0xFF94785A),
                outlineVariant = Color(0xFFC7B08C)
            )
            else -> lightColorScheme(
                primary = Color(0xFF1A6F9A),
                onPrimary = Color(0xFFF5FAFD),
                primaryContainer = Color(0xFFD3EAF5),
                onPrimaryContainer = Color(0xFF0E3346),
                secondary = Color(0xFF7B5A33),
                onSecondary = Color(0xFFFEF8F2),
                secondaryContainer = Color(0xFFF0E3D1),
                onSecondaryContainer = Color(0xFF34220F),
                background = Color(0xFFFAFAF8),
                onBackground = Color(0xFF171717),
                surface = Color(0xFFF0F0EC),
                onSurface = Color(0xFF171717),
                surfaceVariant = Color(0xFFE6E5DF),
                onSurfaceVariant = Color(0xFF52504A),
                outline = Color(0xFF7C7A73),
                outlineVariant = Color(0xFFC9C7C0)
            )
        }.copy(error = fallback.error, onError = fallback.onError)
    }

    return baseScheme.copy(
        surface = baseScheme.surface.copy(alpha = surfaceAlpha),
        surfaceVariant = baseScheme.surfaceVariant.copy(alpha = surfaceAlpha),
        surfaceContainer = baseScheme.surfaceContainer.copy(alpha = surfaceAlpha),
        surfaceContainerLow = baseScheme.surfaceContainerLow.copy(alpha = surfaceAlpha),
        surfaceContainerHigh = baseScheme.surfaceContainerHigh.copy(alpha = surfaceAlpha)
    )
}

private fun normalizedTocTitle(title: String): String =
    title.replace(Regex("\\s+"), " ").trim()

private tailrec fun findReaderHardwareKeyHost(context: Context): ReaderHardwareKeyHost? = when (context) {
    is ReaderHardwareKeyHost -> context
    is ContextWrapper -> findReaderHardwareKeyHost(context.baseContext)
    else -> null
}

/** Map of display font name → asset file name. */
private val CUSTOM_FONTS = mapOf(
    "Merriweather" to "Merriweather-Regular.ttf",
    "Open Sans"    to "OpenSans-Regular.ttf",
    "Roboto Slab"  to "RobotoSlab-Regular.ttf",
    "PT Serif"     to "PTSerif-Regular.ttf",
    "Literata"     to "Literata-Regular.ttf"
)

private fun textSettingsJs(
    fontSize: Int,
    bg: String,
    fg: String,
    fontFamily: String = "Georgia",
    lineHeight: Float  = 1.8f,
    align: String      = "justify",
    bold: Boolean      = false,
    topPaddingPx: Int  = 16
): String {
    val fontWeight   = if (bold) "bold" else "normal"
    val assetFile    = CUSTOM_FONTS[fontFamily]
    val isNightTheme = bg.equals("#1a1a1a", ignoreCase = true)
    val noteColor    = if (isNightTheme) "#5ab4dc" else "#1a6f9a"
    val headingBg    = when {
        isNightTheme -> "#262626"
        bg.equals("#f4ecd8", ignoreCase = true) -> "#eadfc2"
        else -> "#e7e7e7"
    }
    val headingBorder = when {
        isNightTheme -> "#5a5a5a"
        bg.equals("#f4ecd8", ignoreCase = true) -> "#b79f78"
        else -> "#808080"
    }
    val quoteColor = if (isNightTheme) "#c9c9c9" else "#555555"
    // Inject @font-face for custom fonts once (guard by style id)
    val fontFaceSnip = if (assetFile != null) {
        val id = "__cf_${fontFamily.replace(" ", "_")}"
        """if(!document.getElementById('$id')){var s=document.createElement('style');s.id='$id';""" +
        """s.textContent="@font-face{font-family:'$fontFamily';src:url('file:///android_asset/fonts/$assetFile');}";""" +
        """document.head.appendChild(s);}"""
    } else ""
    val themeStyle = """
        if(!document.getElementById('__reader_theme_overrides')){
          var themeStyle=document.createElement('style');
          themeStyle.id='__reader_theme_overrides';
          document.head.appendChild(themeStyle);
        }
        document.getElementById('__reader_theme_overrides').textContent=
          "h1,h2,h3,h4,h5,h6,.calibre5,.calibre12{color:$fg !important;background-color:$headingBg !important;border-color:$headingBorder !important;}"+
          "blockquote,cite,.epigraph{color:$quoteColor !important;border-left-color:$headingBorder !important;}"+
          "a.fn,a[epub\\\\:type~='noteref'],a[href*='FbAutId_'],a[href*='#FbAutId_'],a[href^='fbanchor://'],a[title][href*='#']{color:$noteColor !important;text-decoration:none !important;font-weight:bold !important;}"+
          "a.fn *,a[epub\\\\:type~='noteref'] *,a[href*='FbAutId_'] *,a[href*='#FbAutId_'] *,a[href^='fbanchor://'] *,a[title][href*='#'] *{color:$noteColor !important;}"+
          ".note-num,.footnote-label{color:$noteColor !important;}";
    """.trimIndent()
    // Direct DOM coloring of footnote anchors — robust fallback for cases where
    // CSS !important rules lose to element-level inline styles or specificity issues.
    val colorNotesDom = """
        (function(){
          var nc='$noteColor';
          var sel='a.fn,a[href*="fbanchor://"],a[href*="FbAutId_"],a[epub\\:type~="noteref"],a[title][href*="#"]';
          try{document.querySelectorAll(sel).forEach(function(a){
            a.style.setProperty('color',nc,'important');
            a.querySelectorAll('*').forEach(function(c){c.style.setProperty('color',nc,'important');});
          });}catch(e){}
        })();
    """.trimIndent()
    val fontStack = if (assetFile != null) "'$fontFamily',Georgia,serif" else "$fontFamily,Georgia,serif"
    return """(function(){$fontFaceSnip $themeStyle if(document.body){""" +
        """document.documentElement.lang=document.documentElement.lang||'ru';""" +
        """document.body.style.fontSize='${fontSize}px';""" +
        """document.body.style.color='$fg';""" +
        """document.body.style.fontWeight='$fontWeight';""" +
        """document.body.style.fontFamily="$fontStack";""" +
        """document.body.style.lineHeight='$lineHeight';""" +
        """document.body.style.textAlign='$align';""" +
        """document.body.style.hyphens='auto';""" +
        """document.body.style.webkitHyphens='auto';""" +
        """document.body.style.paddingLeft='16px';""" +
        """document.body.style.paddingRight='16px';""" +
        """document.body.style.paddingTop='${topPaddingPx}px';""" +
        """document.body.style.paddingBottom='24px';""" +
        """document.documentElement.style.background='$bg';""" +
        """document.body.style.background='$bg';}$colorNotesDom})();"""
}

private fun buildThemedHtmlDocument(
    html: String,
    bg: String,
    fg: String
): String {
    val bootstrapStyle = """
        <style id="__reader_bootstrap_theme">
          html, body {
            background: $bg !important;
            color: $fg !important;
          }
          body {
            margin: 0 !important;
          }
        </style>
    """.trimIndent()

    return when {
        Regex("(?i)</head>").containsMatchIn(html) ->
            html.replaceFirst(Regex("(?i)</head>"), "$bootstrapStyle</head>")
        Regex("(?i)<body[^>]*>").containsMatchIn(html) ->
            html.replaceFirst(Regex("(?i)<body([^>]*)>"), "<body$1>$bootstrapStyle")
        Regex("(?i)<html[^>]*>").containsMatchIn(html) ->
            html.replaceFirst(Regex("(?i)<html([^>]*)>"), "<html$1><head>$bootstrapStyle</head>")
        else ->
            "<html><head>$bootstrapStyle</head><body>$html</body></html>"
    }
}

private class ReaderWebView(context: android.content.Context) : WebView(context) {
    var translateSelectionLabel: String = ""
    var dictionarySelectionLabel: String = ""
    var explainSelectionLabel: String = ""
    var onSelectionActionRequest: ((ReaderSelectionAction, String) -> Unit)? = null

    override fun startActionMode(callback: ActionMode.Callback?): ActionMode? =
        super.startActionMode(wrapSelectionCallback(callback))

    override fun startActionMode(callback: ActionMode.Callback?, type: Int): ActionMode? =
        super.startActionMode(wrapSelectionCallback(callback), type)

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
                        title.equals(explainSelectionLabel, ignoreCase = true)
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
}

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
private fun HtmlPageView(
    html: String,
    baseUrl: String?,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    onTranslateSelection: (String) -> Unit,
    onDictionarySelection: (String) -> Unit,
    onExplainSelection: (String) -> Unit,
    onAnchorClick: (String) -> Unit = {},
    onInlineFootnote: (String) -> Unit = {},
    fontSize: Int    = 18,
    colorScheme: String = "DAY",
    fontFamily: String  = "Georgia",
    lineHeight: Float   = 1.8f,
    textAlign: String   = "justify",
    bold: Boolean       = false,
    translateActionLabel: String,
    dictionaryActionLabel: String,
    explainActionLabel: String
) {
    // Small constant breathing room at the top. statusBarsPadding() on the modifier already
    // pushes the WebView content below the status bar / camera notch, so we only need a
    // small gap here regardless of whether the top bar is visible (it overlays as an overlay).
    val topPaddingPx = 8
    val (bg, fg) = colorSchemePalette(colorScheme)
    val bgColor = remember(bg) { android.graphics.Color.parseColor(bg) }
    val themedHtml = remember(html, bg, fg) { buildThemedHtmlDocument(html, bg, fg) }

    // rememberUpdatedState keeps the lambdas current without recreating the WebView
    val onLeft           = rememberUpdatedState(onLeftTap)
    val onRight          = rememberUpdatedState(onRightTap)
    val onCenter         = rememberUpdatedState(onCenterTap)
    val onTranslate      = rememberUpdatedState(onTranslateSelection)
    val onDictionary     = rememberUpdatedState(onDictionarySelection)
    val onExplain        = rememberUpdatedState(onExplainSelection)
    val onAnchor         = rememberUpdatedState(onAnchorClick)
    val onInlineNote     = rememberUpdatedState(onInlineFootnote)
    val currentFs        = rememberUpdatedState(fontSize)
    val currentScheme    = rememberUpdatedState(colorScheme)
    val currentFamily    = rememberUpdatedState(fontFamily)
    val currentLH        = rememberUpdatedState(lineHeight)
    val currentAlign     = rememberUpdatedState(textAlign)
    val currentBold      = rememberUpdatedState(bold)

    AndroidView(
        modifier = Modifier.fillMaxSize().statusBarsPadding().displayCutoutPadding(),
        factory = { ctx ->
            ReaderWebView(ctx).apply {
                settings.javaScriptEnabled  = true   // required for tap bridge
                settings.allowFileAccess    = true
                settings.allowContentAccess = true
                // Fix: textZoom=100 prevents system accessibility font scale from
                // affecting CSS px values, ensuring CHARS_PER_PAGE stays accurate.
                settings.textZoom           = 100
                settings.defaultFontSize    = 18
                // Required for proper viewport scaling on tablets / wide screens.
                settings.useWideViewPort       = true
                settings.loadWithOverviewMode  = true
                // Match the current reading theme before first paint.
                setBackgroundColor(bgColor)
                // Disable overscroll bounce but allow natural vertical scrolling within a page.
                overScrollMode = android.view.View.OVER_SCROLL_NEVER

                // JavascriptInterface — called from JS on a background thread;
                // WebView.post() dispatches back to the main thread safely.
                addJavascriptInterface(object {
                    @JavascriptInterface
                    fun onTap(xPercent: Float) {
                        post {
                            when {
                                xPercent < 0.3f -> onLeft.value()
                                xPercent > 0.7f -> onRight.value()
                                else            -> onCenter.value()
                            }
                        }
                    }

                    @JavascriptInterface
                    fun onAnchorClick(id: String) {
                        post { onAnchor.value(id) }
                    }

                    @JavascriptInterface
                    fun onInlineFootnote(text: String) {
                        post { onInlineNote.value(text) }
                    }

                }, "_NativeReader")

                translateSelectionLabel = translateActionLabel
                dictionarySelectionLabel = dictionaryActionLabel
                explainSelectionLabel = explainActionLabel
                onSelectionActionRequest = { action, selectedText ->
                    when (action) {
                        ReaderSelectionAction.TRANSLATE -> onTranslate.value(selectedText.trim())
                        ReaderSelectionAction.DICTIONARY -> onDictionary.value(selectedText.trim())
                        ReaderSelectionAction.EXPLAIN -> onExplain.value(selectedText.trim())
                    }
                }

                webViewClient = object : WebViewClient() {
                    override fun onPageStarted(view: WebView, url: String?, favicon: android.graphics.Bitmap?) {
                        view.setBackgroundColor(
                            android.graphics.Color.parseColor(colorSchemePalette(currentScheme.value).first)
                        )
                    }

                    // Block external navigation; handle fbanchor:// as footnote fallback
                    override fun shouldOverrideUrlLoading(
                        view: WebView, request: WebResourceRequest
                    ): Boolean {
                        val uri = request.url
                        if (uri.scheme == "fbanchor") {
                            val id = uri.host ?: uri.path?.trimStart('/') ?: ""
                            if (id.isNotEmpty()) post { onAnchor.value(id) }
                        }
                        return true  // always block actual URL loads
                    }

                    // Inject the tap listener + restore text settings after every page load
                    override fun onPageFinished(view: WebView, url: String) {
                        view.evaluateJavascript(JS_TAP_HANDLER, null)
                        val (bg, fg) = colorSchemePalette(currentScheme.value)
                        view.evaluateJavascript(
                            textSettingsJs(
                                currentFs.value, bg, fg,
                                currentFamily.value, currentLH.value,
                                currentAlign.value, currentBold.value,
                                topPaddingPx = topPaddingPx
                            ), null
                        )
                    }
                }
            }
        },
        update = { webView ->
            webView.translateSelectionLabel = translateActionLabel
            webView.dictionarySelectionLabel = dictionaryActionLabel
            webView.explainSelectionLabel = explainActionLabel
            webView.onSelectionActionRequest = { action, selectedText ->
                when (action) {
                    ReaderSelectionAction.TRANSLATE -> onTranslate.value(selectedText.trim())
                    ReaderSelectionAction.DICTIONARY -> onDictionary.value(selectedText.trim())
                    ReaderSelectionAction.EXPLAIN -> onExplain.value(selectedText.trim())
                }
            }
            // Apply text settings immediately when any setting changes (no page reload).
            // Also update the WebView's own background so the color is correct before JS fires.
            webView.setBackgroundColor(bgColor)
            webView.evaluateJavascript(
                textSettingsJs(fontSize, bg, fg, fontFamily, lineHeight, textAlign, bold,
                    topPaddingPx = topPaddingPx), null
            )
            // Only reload when content actually changes — prevents scroll position
            // from resetting on every recompose (e.g. when controls are toggled).
            val cached = webView.tag as? String
            if (cached != themedHtml) {
                webView.tag = themedHtml
                // Write to a local file and load via file:// to avoid two pitfalls of
                // loadDataWithBaseURL(): (1) the ~1 MB Binder IPC limit that silently
                // truncates large chapters; (2) null-encoding mojibake for Cyrillic text.
                // All CSS/images are already inlined as base64, so no cross-origin issues.
                try {
                    val tmpFile = java.io.File(webView.context.cacheDir, "reader_page.html")
                    tmpFile.writeText(themedHtml, Charsets.UTF_8)
                    webView.loadUrl("file://${tmpFile.absolutePath}")
                } catch (_: Exception) {
                    // Fallback if file write fails (low storage etc.)
                    webView.loadDataWithBaseURL(
                        baseUrl ?: "about:blank", themedHtml, "text/html", "UTF-8", null
                    )
                }
            }
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
    val inheritedColorScheme = MaterialTheme.colorScheme
    val isEInk = LocalEInkMode.current
    val configuration = LocalConfiguration.current
    val context = LocalContext.current
    val readerHardwareKeyHost = remember(context) { findReaderHardwareKeyHost(context) }
    val clipboardManager = LocalClipboardManager.current
    val ttsController = remember { ReaderTextToSpeechController(context) }
    val ttsRuntimeState by ttsController.state.collectAsState()
    val isLandscape = configuration.orientation == Configuration.ORIENTATION_LANDSCAPE
    val isTextReader = uiState.currentHtmlContent != null ||
        (uiState.comic?.format?.isTextReadingFormat() == true)
    val supportsLandscapeSpread = !isTextReader && isLandscape && configuration.screenWidthDp >= 600
    var showBrightnessRow by remember { mutableStateOf(false) }
    var eyeRestReminderMinutes by remember { mutableStateOf<Int?>(null) }
    val readerColorScheme = if (isEInk) {
        inheritedColorScheme
    } else {
        readerMaterialColorScheme(
            isTextReader = isTextReader,
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

    DisposableEffect(ttsController) {
        onDispose { ttsController.release() }
    }

    val latestVolumeKeysPagingEnabled by rememberUpdatedState(uiState.volumeKeysPagingEnabled)
    val latestHandleHardwarePageTurn by rememberUpdatedState<(Int) -> Unit> { step ->
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
            sleepTimerMode = ReaderTtsSleepTimerMode.fromStored(uiState.ttsSleepTimerMode)
        )
    }

    // Применяем яркость экрана через WindowManager
    DisposableEffect(uiState.brightness, context) {
        val activity = context as? Activity
        val window = activity?.window
        window?.attributes = window?.attributes?.apply {
            screenBrightness = uiState.brightness.coerceIn(0.01f, 1f)
        }
        onDispose {
            // Восстанавливаем системную яркость при закрытии ридера
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
            // Всегда снимаем флаг при закрытии ридера, независимо от текущего значения.
            window?.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        }
    }

    // Immersive / fullscreen mode — hides system bars while reading
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
            // Restore system bars when leaving the reader
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                window?.insetsController?.show(android.view.WindowInsets.Type.systemBars())
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
                // Область чтения
                Box(modifier = Modifier.fillMaxSize()) {
                    val htmlContent = uiState.currentHtmlContent
                    if (htmlContent != null) {
                        // Text-based format (EPUB novel / FB2 text): render via WebView.
                        // Tap callbacks are passed here because WebView intercepts all
                        // touch events, making the outer pointerInput unreachable.
                        HtmlPageView(
                            html = htmlContent,
                            baseUrl = uiState.htmlBaseUrl,
                            onLeftTap   = { handleTapZoneAction(tapZoneLayout.left) },
                            onRightTap  = { handleTapZoneAction(tapZoneLayout.right) },
                            onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                            onAnchorClick = viewModel::onAnchorClick,
                            onInlineFootnote = viewModel::showInlineFootnote,
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
                            fontSize     = uiState.textFontSize,
                            colorScheme  = uiState.textColorScheme,
                            fontFamily   = uiState.textFontFamily,
                            lineHeight   = uiState.textLineHeight,
                            textAlign    = uiState.textAlignment,
                            bold         = uiState.textBold,
                            translateActionLabel = readerText.selectionTranslateAction,
                            dictionaryActionLabel = readerText.openDictionary,
                            explainActionLabel = readerText.selectionExplainAction
                        )
                    } else if (uiState.readingMode == ReadingMode.WEBTOON) {
                        WebtoonView(
                            viewModel = viewModel,
                            uiState = uiState,
                            onLeftTap = { handleTapZoneAction(tapZoneLayout.left) },
                            onRightTap = { handleTapZoneAction(tapZoneLayout.right) },
                            onCenterTap = { handleTapZoneAction(tapZoneLayout.center) }
                        )
                    } else {
                        PageView(
                            viewModel = viewModel,
                            uiState = uiState,
                            onLeftTap = { handleTapZoneAction(tapZoneLayout.left) },
                            onRightTap = { handleTapZoneAction(tapZoneLayout.right) },
                            onCenterTap = { handleTapZoneAction(tapZoneLayout.center) }
                        )
                    }
                }

                // Расчет цвета для панелей (затемнение меню)
                val topChromeSurface = readerPanelSurfaceColor(
                    base = MaterialTheme.colorScheme.surface,
                    emphasis = if (uiState.chromeState == ReaderChromeState.EXPANDED) uiState.topToolbarOpacity else 0.94f,
                    minAlpha = 0.72f
                )
                val bottomChromeSurface = readerPanelSurfaceColor(
                    base = MaterialTheme.colorScheme.surface,
                    emphasis = if (uiState.chromeState == ReaderChromeState.EXPANDED) uiState.bottomToolbarOpacity else 0.94f,
                    minAlpha = 0.72f
                )
                val infoOverlaySurface = readerPanelSurfaceColor(
                    base = MaterialTheme.colorScheme.surface,
                    emphasis = 0.84f,
                    minAlpha = 0.78f
                )

                if (showHeaderFooterOverlay && headerOverlayLine.hasVisibleContent) {
                    Surface(
                        modifier = Modifier
                            .align(Alignment.TopCenter)
                            .fillMaxWidth(),
                        shape = RoundedCornerShape(0.dp),
                        color = infoOverlaySurface
                    ) {
                        ReaderHeaderFooterTextRow(
                            line = headerOverlayLine,
                            fontSizeSp = uiState.headerFooterFontSize,
                            leftPaddingDp = uiState.headerFooterLeftPadding,
                            rightPaddingDp = uiState.headerFooterRightPadding,
                            verticalPaddingDp = uiState.headerFooterVerticalPadding,
                            modifier = Modifier
                                .statusBarsPadding()
                                .displayCutoutPadding()
                        )
                    }
                }

                // Нижняя область: Информационные панели (заметки, сноски) и Тулбар
                Column(
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .fillMaxWidth()
                        .background(if (uiState.chromeState == ReaderChromeState.EXPANDED) bottomChromeSurface else Color.Transparent)
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
                            expanded = uiState.footnotePresentation == FootnotePresentation.EXPANDED ||
                                uiState.chromeState == ReaderChromeState.EXPANDED,
                            onDismiss = viewModel::dismissFootnote,
                            onExpand = viewModel::expandFootnote,
                            onCollapse = viewModel::collapseFootnote,
                            modifier = Modifier.padding(horizontal = if (uiState.chromeState == ReaderChromeState.HIDDEN) 12.dp else 0.dp),
                            palette = ::colorSchemePalette
                        )
                    }

                    // Нижняя панель прогресса/управления - скрываем, если открыты настройки или оглавление
                    if (uiState.chromeState != ReaderChromeState.HIDDEN && !uiState.showTextSettings && !uiState.showTocSheet) {
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
                                modifier = Modifier.fillMaxWidth(),
                                shape = RoundedCornerShape(0.dp),
                                color = infoOverlaySurface
                            ) {
                                ReaderHeaderFooterTextRow(
                                    line = footerOverlayLine,
                                    fontSizeSp = uiState.headerFooterFontSize,
                                    leftPaddingDp = uiState.headerFooterLeftPadding,
                                    rightPaddingDp = uiState.headerFooterRightPadding,
                                    verticalPaddingDp = uiState.headerFooterVerticalPadding,
                                    modifier = Modifier.navigationBarsPadding()
                                )
                            }
                        } else {
                            Spacer(Modifier.navigationBarsPadding())
                        }
                    }
                }

                // Верхние инструменты - скрываем, если открыты настройки или оглавление
                if (uiState.chromeState != ReaderChromeState.HIDDEN && !uiState.showTextSettings && !uiState.showTocSheet) {
                    Column(
                        modifier = Modifier
                            .align(Alignment.TopCenter)
                            .fillMaxWidth()
                            .background(topChromeSurface)
                            .statusBarsPadding()
                            .displayCutoutPadding()
                    ) {
                        when (uiState.chromeState) {
                            ReaderChromeState.EXPANDED -> {
                                ReaderExpandedBar(
                                    title = uiState.comic?.title.orEmpty(),
                                    canShowToc = uiState.tableOfContents.isNotEmpty() || uiState.bookmarkedPages.isNotEmpty(),
                                    showTextSettings = true,
                                    showOcrAction = !isTextReader,
                                    canSwapDirection = uiState.readingMode == ReadingMode.PAGE_LTR ||
                                        uiState.readingMode == ReadingMode.PAGE_RTL,
                                    directionShortcutActive = directionShortcutActive,
                                    showBrightnessRow = showBrightnessRow,
                                    useDirectActions = isTextReader,
                                    onNavigateBack = onNavigateBack,
                                    onToggleToc = viewModel::toggleTocSheet,
                                    onToggleTextSettings = viewModel::toggleTextSettings,
                                    onSwapDirection = viewModel::toggleTapZoneDirectionShortcut,
                                    onRequestOcr = viewModel::requestOcr,
                                    onToggleBrightness = { showBrightnessRow = !showBrightnessRow }
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

    // ── Оглавление (ModalBottomSheet) ─────────────────────────────────────────
    if (uiState.showTocSheet) {
        TocBottomSheet(
            entries = uiState.tableOfContents,
            currentPage = uiState.currentPage,
            bookmarkedPages = uiState.bookmarkedPages,
            onNavigate = { page ->
                viewModel.navigateTo(page)
                viewModel.toggleTocSheet()
            },
            onRemoveBookmark = viewModel::removeBookmark,
            onDismiss = viewModel::toggleTocSheet
        )
    }

    // ── Настройки текста (ModalBottomSheet) ────────────────────────────────────
    if (uiState.showTextSettings) {
        ReaderControlCenterSheet(
            uiState = uiState,
            isTextReader = isTextReader,
            ttsRuntimeState = ttsRuntimeState,
            onDismiss = viewModel::toggleTextSettings,
            onApplyReadingPreset = viewModel::applyReadingPreset,
            onFontSizeChange = viewModel::setTextFontSize,
            onColorSchemeChange = viewModel::setTextColorScheme,
            onFontFamilyChange = viewModel::setTextFontFamily,
            onLineHeightChange = viewModel::setTextLineHeight,
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
            onTopToolbarOpacityChange = viewModel::setTopToolbarOpacity,
            onBottomToolbarOpacityChange = viewModel::setBottomToolbarOpacity,
            onToolbarBlurChange = viewModel::setToolbarBlur,
            onImageScaleModeChange = viewModel::setImageScaleMode,
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
    uiState.selectedTextActionSheet?.let { actionState ->
        SelectedTextActionSheet(
            state = actionState,
            onDismiss = viewModel::dismissSelectedTextActions,
            onTranslate = viewModel::translateFromSelectedTextActions,
            onDictionary = viewModel::openDictionaryFromSelectedTextActions,
            onExplain = viewModel::explainFromSelectedTextActions
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
            }
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun SelectedTextActionSheet(
    state: SelectedTextActionSheetState,
    onDismiss: () -> Unit,
    onTranslate: () -> Unit,
    onDictionary: () -> Unit,
    onExplain: () -> Unit
) {
    val readerText = readerUiText(LocalStrings.current.languageCode)
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        scrimColor = Color.Transparent
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp)
        ) {
            Text(
                text = readerText.selectionActionSheetTitle,
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.onSurface
            )
            Text(
                text = state.originalText,
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurface
            )
            Column(
                modifier = Modifier.fillMaxWidth(),
                verticalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                Button(
                    onClick = onTranslate,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(readerText.selectionTranslateAction)
                }
                OutlinedButton(
                    onClick = onDictionary,
                    enabled = state.canUseDictionary,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(readerText.openDictionary)
                }
                OutlinedButton(
                    onClick = onExplain,
                    enabled = state.canExplain,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(readerText.selectionExplainAction)
                }
                TextButton(
                    onClick = onDismiss,
                    modifier = Modifier.align(Alignment.End)
                ) {
                    Text(readerText.close)
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
private fun SelectedTextTranslationSheet(
    state: SelectedTextTranslationState,
    onDismiss: () -> Unit,
    onDictionary: () -> Unit,
    onTranslateAsPhrase: () -> Unit,
    onExplain: () -> Unit,
    onTransportChange: (TranslationTransportPreference) -> Unit,
    onCopy: (String) -> Unit
) {
    val readerText = readerUiText(LocalStrings.current.languageCode)
    val language = LocalStrings.current.languageCode
    val isDictionaryMode = state.mode == TranslationMode.DICTIONARY
    val isExplainMode = state.mode == TranslationMode.LLM
    val dictionaryEntry = state.dictionaryEntry
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        scrimColor = Color.Transparent
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp)
        ) {
                Text(
                    text = when {
                        isDictionaryMode -> readerText.dictionarySheetTitle
                        isExplainMode -> readerText.explainSheetTitle
                        else -> readerText.translationSheetTitle
                    },
                style = MaterialTheme.typography.titleLarge,
                color = MaterialTheme.colorScheme.onSurface
            )

            val modeLabel = readerTranslationModeLabel(state.mode, language)
            if (modeLabel != null || state.sourceLanguage != null || state.targetLanguage != null) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    modeLabel?.let {
                        AssistChip(
                            onClick = {},
                            enabled = false,
                            label = { Text(it) }
                        )
                    }
                    if (state.sourceLanguage != null && state.targetLanguage != null) {
                        AssistChip(
                            onClick = {},
                            enabled = false,
                            label = { Text("${state.sourceLanguage.uppercase()} → ${state.targetLanguage.uppercase()}") }
                        )
                    }
                }
            }

                if (!isDictionaryMode && !isExplainMode) {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Text(
                        text = readerText.translationTransportTitle,
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.primary
                    )
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        listOf(
                            TranslationTransportPreference.AUTO,
                            TranslationTransportPreference.OFFLINE,
                            TranslationTransportPreference.ONLINE
                        ).forEach { preference ->
                            FilterChip(
                                selected = state.preferredTransport == preference,
                                onClick = { onTransportChange(preference) },
                                label = { Text(readerTransportPreferenceLabel(preference, language)) }
                            )
                        }
                    }
                }
            }

            Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                Text(
                    text = readerText.translationOriginalLabel,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = state.originalText,
                    style = MaterialTheme.typography.bodyLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
            }

            when {
                state.isLoading -> {
                    Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(
                            text = when {
                                isDictionaryMode -> readerText.dictionaryMeaningsLabel
                                isExplainMode -> readerText.explanationResultLabel
                                else -> readerText.translationResultLabel
                            },
                            style = MaterialTheme.typography.labelLarge,
                            color = MaterialTheme.colorScheme.primary
                        )
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(12.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(18.dp),
                                strokeWidth = 2.dp
                            )
                            Text(
                                text = if (isExplainMode) readerText.explainLoading else readerText.translationLoading,
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }

                state.error != null -> {
                    Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(
                            text = when {
                                isDictionaryMode -> readerText.dictionaryMeaningsLabel
                                isExplainMode -> readerText.explanationResultLabel
                                else -> readerText.translationResultLabel
                            },
                            style = MaterialTheme.typography.labelLarge,
                            color = MaterialTheme.colorScheme.primary
                        )
                        Text(
                            text = state.error,
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.error
                        )
                    }
                }

                isDictionaryMode && dictionaryEntry != null -> {
                    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                        Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                            Text(
                                text = readerText.dictionaryLemmaLabel,
                                style = MaterialTheme.typography.labelLarge,
                                color = MaterialTheme.colorScheme.primary
                            )
                            Text(
                                text = dictionaryEntry.lemma,
                                style = MaterialTheme.typography.bodyLarge,
                                color = MaterialTheme.colorScheme.onSurface
                            )
                        }

                        readerDictionaryPartOfSpeechLabel(dictionaryEntry.partOfSpeech, language)?.let { posLabel ->
                            Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                                Text(
                                    text = readerText.dictionaryPartOfSpeechLabel,
                                    style = MaterialTheme.typography.labelLarge,
                                    color = MaterialTheme.colorScheme.primary
                                )
                                Text(
                                    text = posLabel,
                                    style = MaterialTheme.typography.bodyLarge,
                                    color = MaterialTheme.colorScheme.onSurface
                                )
                            }
                        }

                        Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                            Text(
                                text = readerText.dictionaryMeaningsLabel,
                                style = MaterialTheme.typography.labelLarge,
                                color = MaterialTheme.colorScheme.primary
                            )
                            dictionaryEntry.translations.forEach { meaning ->
                                Text(
                                    text = "• $meaning",
                                    style = MaterialTheme.typography.bodyLarge,
                                    color = MaterialTheme.colorScheme.onSurface
                                )
                            }
                        }

                        if (dictionaryEntry.forms.isNotEmpty()) {
                            Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                                Text(
                                    text = readerText.dictionaryFormsLabel,
                                    style = MaterialTheme.typography.labelLarge,
                                    color = MaterialTheme.colorScheme.primary
                                )
                                Text(
                                    text = dictionaryEntry.forms.joinToString(", "),
                                    style = MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                        }
                    }
                }

                else -> {
                    Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        Text(
                              text = if (isExplainMode) readerText.explanationResultLabel else readerText.translationResultLabel,
                            style = MaterialTheme.typography.labelLarge,
                            color = MaterialTheme.colorScheme.primary
                        )
                        Text(
                            text = state.translatedText,
                            style = MaterialTheme.typography.bodyLarge,
                            color = MaterialTheme.colorScheme.onSurface
                        )
                    }
                }
            }

            FlowRow(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(bottom = 16.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.End),
                verticalArrangement = Arrangement.spacedBy(8.dp),
                maxItemsInEachRow = 4
            ) {
                if (isDictionaryMode && state.canTranslateAsPhrase) {
                    TextButton(onClick = onTranslateAsPhrase) {
                        Text(readerText.translateAsPhrase)
                    }
                } else if (!isDictionaryMode && state.canUseDictionary) {
                    TextButton(onClick = onDictionary) {
                        Text(readerText.openDictionary)
                    }
                }
                if (state.canExplain && !isExplainMode) {
                    TextButton(onClick = onExplain) {
                        Text(readerText.openExplain)
                    }
                }
                TextButton(onClick = onDismiss) {
                    Text(readerText.close)
                }
                Button(
                    onClick = {
                        val copyText = dictionaryEntry?.translations?.joinToString("; ")
                            ?: state.translatedText.ifBlank { state.originalText }
                        onCopy(copyText)
                    },
                    enabled = !state.isLoading && (
                        state.translatedText.isNotBlank() ||
                            state.originalText.isNotBlank() ||
                            dictionaryEntry?.translations?.isNotEmpty() == true
                        )
                ) {
                    Text(readerText.copyTranslation)
                }
            }
        }
    }
}

// ── Composables ───────────────────────────────────────────────────────────────

@Composable
private fun FootnotePopupPanel(
    text: String,
    onDismiss: () -> Unit,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val fgColor = MaterialTheme.colorScheme.onSurface
    val accentColor = MaterialTheme.colorScheme.primary
    Surface(
        modifier = modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surface,
        shape = RoundedCornerShape(topStart = 16.dp, topEnd = 16.dp),
        shadowElevation = 8.dp
    ) {
        Column(modifier = Modifier.padding(horizontal = 16.dp, vertical = 12.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = readerText.noteTitle,
                    style = MaterialTheme.typography.labelMedium,
                    fontWeight = FontWeight.Bold,
                    color = accentColor
                )
                IconButton(onClick = onDismiss, modifier = Modifier.size(24.dp)) {
                    Icon(
                        Icons.Default.Close,
                        contentDescription = readerText.close,
                        tint = fgColor,
                        modifier = Modifier.size(18.dp)
                    )
                }
            }
            Spacer(Modifier.height(4.dp))
            Text(
                text = text,
                style = MaterialTheme.typography.bodyMedium.copy(hyphens = Hyphens.None),
                color = fgColor,
                lineHeight = 20.sp,
                maxLines = 8,
                overflow = TextOverflow.Ellipsis
            )
            Spacer(Modifier.height(4.dp))
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun TocBottomSheet(
    entries: List<TocEntry>,
    currentPage: Int,
    bookmarkedPages: Set<Int>,
    onNavigate: (Int) -> Unit,
    onRemoveBookmark: (Int) -> Unit,
    onDismiss: () -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    var selectedTab by remember(entries, bookmarkedPages) {
        mutableStateOf(if (entries.isEmpty() && bookmarkedPages.isNotEmpty()) "bookmarks" else "chapters")
    }
    val showChaptersTab = entries.isNotEmpty()
    val hasBookmarks = bookmarkedPages.isNotEmpty()
    val showBookmarksTab = hasBookmarks || (!showChaptersTab && selectedTab == "bookmarks")

    LaunchedEffect(showChaptersTab, hasBookmarks) {
        when {
            selectedTab == "bookmarks" && !hasBookmarks && showChaptersTab -> selectedTab = "chapters"
            selectedTab == "chapters" && !showChaptersTab && hasBookmarks -> selectedTab = "bookmarks"
            !showChaptersTab && !showBookmarksTab -> selectedTab = "chapters"
        }
    }

    val selectedTabIndex = when {
        selectedTab == "bookmarks" && showChaptersTab -> 1
        else -> 0
    }

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        dragHandle = { BottomSheetDefaults.DragHandle() },
        scrimColor = Color.Transparent
    ) {
        Column(modifier = Modifier.fillMaxWidth()) {
            // Вкладки
            TabRow(selectedTabIndex = selectedTabIndex) {
                if (showChaptersTab) {
                    Tab(
                        selected = selectedTab == "chapters",
                        onClick = { selectedTab = "chapters" },
                        text = {
                            Text(
                                readerText.chapters,
                                style = MaterialTheme.typography.labelLarge
                            )
                        }
                    )
                }
                if (showBookmarksTab) {
                    Tab(
                        selected = selectedTab == "bookmarks",
                        onClick = { selectedTab = "bookmarks" },
                        text = {
                            val count = bookmarkedPages.size
                            Text(
                                readerBookmarksTabLabel(count, strings.languageCode),
                                style = MaterialTheme.typography.labelLarge
                            )
                        }
                    )
                }
            }

            when (selectedTab) {
                "chapters" -> {
                    if (!showChaptersTab) return@Column
                    // ── Список глав ────────────────────────────────────────────
                    LazyColumn(
                        modifier = Modifier.fillMaxWidth().heightIn(max = 520.dp)
                    ) {
                        itemsIndexed(entries) { idx, entry ->
                            val nextPageIndex = entries.getOrNull(idx + 1)?.pageIndex ?: Int.MAX_VALUE
                            val isCurrentChapter = currentPage >= entry.pageIndex && currentPage < nextPageIndex
                            Row(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .clickable { onNavigate(entry.pageIndex) }
                                    .background(
                                        if (isCurrentChapter)
                                            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.35f)
                                        else Color.Transparent
                                    )
                                    .padding(horizontal = 20.dp, vertical = 10.dp),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Text(
                                    text = normalizedTocTitle(entry.title),
                                    style = MaterialTheme.typography.bodyMedium,
                                    fontWeight = if (isCurrentChapter) FontWeight.SemiBold else FontWeight.Normal,
                                    color = if (isCurrentChapter)
                                        MaterialTheme.colorScheme.primary
                                    else MaterialTheme.colorScheme.onSurface,
                                    modifier = Modifier.weight(1f),
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis
                                )
                                Spacer(Modifier.width(12.dp))
                                Surface(
                                    shape = RoundedCornerShape(999.dp),
                                    color = if (isCurrentChapter) {
                                        MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.9f)
                                    } else {
                                        MaterialTheme.colorScheme.surfaceVariant
                                    }
                                ) {
                                    Text(
                                        text = "${entry.pageIndex + 1}",
                                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                                        style = MaterialTheme.typography.labelSmall,
                                        color = if (isCurrentChapter)
                                            MaterialTheme.colorScheme.onPrimaryContainer
                                        else MaterialTheme.colorScheme.onSurfaceVariant,
                                        fontWeight = if (isCurrentChapter) FontWeight.SemiBold else FontWeight.Normal
                                    )
                                }
                            }
                            HorizontalDivider(
                                modifier = Modifier.padding(start = 20.dp),
                                color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.4f)
                            )
                        }
                        item { Spacer(Modifier.navigationBarsPadding()) }
                    }
                }
                "bookmarks" -> {
                    if (!showBookmarksTab) return@Column
                    // ── Список закладок ────────────────────────────────────────
                    val sortedBookmarks = remember(bookmarkedPages) { bookmarkedPages.sorted() }
                    if (sortedBookmarks.isEmpty()) {
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(200.dp),
                            contentAlignment = Alignment.Center
                        ) {
                            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                Icon(
                                    Icons.Default.BookmarkBorder,
                                    contentDescription = null,
                                    modifier = Modifier.size(48.dp),
                                    tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.4f)
                                )
                                Spacer(Modifier.height(8.dp))
                                Text(
                                    readerText.noBookmarks,
                                    style = MaterialTheme.typography.bodyMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                        }
                    } else {
                        LazyColumn(
                            modifier = Modifier.fillMaxWidth().heightIn(max = 520.dp)
                        ) {
                            items(sortedBookmarks) { page ->
                                val isCurrent = page == currentPage
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .clickable { onNavigate(page) }
                                        .background(
                                            if (isCurrent)
                                                MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.35f)
                                            else Color.Transparent
                                        )
                                        .padding(start = 20.dp, end = 8.dp, top = 10.dp, bottom = 10.dp),
                                    horizontalArrangement = Arrangement.SpaceBetween,
                                    verticalAlignment = Alignment.CenterVertically
                                ) {
                                    Icon(
                                        Icons.Default.Bookmark,
                                        contentDescription = null,
                                        tint = MaterialTheme.colorScheme.primary,
                                        modifier = Modifier.size(18.dp)
                                    )
                                    Spacer(Modifier.width(12.dp))
                                    Text(
                                        text = readerPageLabel(page, strings.languageCode),
                                        style = MaterialTheme.typography.bodyMedium,
                                        fontWeight = if (isCurrent) FontWeight.SemiBold else FontWeight.Normal,
                                        color = if (isCurrent)
                                            MaterialTheme.colorScheme.primary
                                        else MaterialTheme.colorScheme.onSurface,
                                        modifier = Modifier.weight(1f)
                                    )
                                    IconButton(
                                        onClick = { onRemoveBookmark(page) },
                                        modifier = Modifier.size(36.dp)
                                    ) {
                                        Icon(
                                            Icons.Default.Delete,
                                            contentDescription = readerText.deleteBookmark,
                                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                                            modifier = Modifier.size(18.dp)
                                        )
                                    }
                                }
                                HorizontalDivider(
                                    modifier = Modifier.padding(start = 20.dp),
                                    color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.4f)
                                )
                            }
                            item { Spacer(Modifier.navigationBarsPadding()) }
                        }
                    }
                }
                else -> Unit
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun TextSettingsSheet(
    fontSize: Int,
    colorScheme: String,
    fontFamily: String,
    lineHeight: Float,
    textAlignment: String,
    bold: Boolean,
    currentPreset: String,
    onApplyReadingPreset: (ReadingPreset) -> Unit,
    onFontSizeChange: (Int) -> Unit,
    onColorSchemeChange: (String) -> Unit,
    onFontFamilyChange: (String) -> Unit,
    onLineHeightChange: (Float) -> Unit,
    onTextAlignChange: (String) -> Unit,
    onBoldChange: (Boolean) -> Unit,
    onReset: () -> Unit,
    onDismiss: () -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        dragHandle = { BottomSheetDefaults.DragHandle() },
        scrimColor = Color.Transparent
    ) {
        BoxWithConstraints(modifier = Modifier.fillMaxWidth()) {
            val maxSheetHeight = maxHeight * 0.58f
            LazyColumn(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = maxSheetHeight)
                    .padding(horizontal = 20.dp),
                contentPadding = PaddingValues(bottom = 20.dp),
                verticalArrangement = Arrangement.spacedBy(10.dp)
            ) {
                item {
                    Text(
                        readerText.textSettingsTitle,
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 1.sp
                    )
                }
                item { HorizontalDivider() }
                item {
                    Text(
                        readerText.quickPresetsTitle,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        listOf(ReadingPreset.PAPER, ReadingPreset.NIGHT_INK, ReadingPreset.EINK).forEach { preset ->
                            FilterChip(
                                selected = currentPreset == preset.name,
                                onClick = { onApplyReadingPreset(preset) },
                                label = {
                                    Text(readerPresetLabel(preset, strings.languageCode))
                                }
                            )
                        }
                    }
                }
                item {
                    Text(
                        readerText.colorSchemeTitle,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        listOf(
                            "DAY" to readerText.day,
                            "SEPIA" to readerText.sepia,
                            "NIGHT" to readerText.night
                        ).forEach { (id, label) ->
                            FilterChip(
                                selected = colorScheme == id,
                                onClick = { onColorSchemeChange(id) },
                                label = { Text(label) }
                            )
                        }
                    }
                }
                item {
                    Text(
                        readerText.fontTitle,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    val fonts = listOf("Georgia", "Merriweather", "Open Sans", "Roboto Slab", "PT Serif", "Literata")
                    LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        items(fonts) { f ->
                            FilterChip(
                                selected = fontFamily == f,
                                onClick = { onFontFamilyChange(f) },
                                label = { Text(f, style = MaterialTheme.typography.bodySmall) }
                            )
                        }
                    }
                }
                item {
                    Text(
                        readerFontSizeLabel(fontSize, strings.languageCode),
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Text("A", style = MaterialTheme.typography.bodySmall)
                        Slider(
                            value = fontSize.toFloat(),
                            onValueChange = { onFontSizeChange(it.toInt()) },
                            valueRange = 12f..32f,
                            steps = 19,
                            modifier = Modifier.weight(1f)
                        )
                        Text("A", style = MaterialTheme.typography.bodyLarge)
                    }
                }
                item {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text(
                            readerText.boldFont,
                            style = MaterialTheme.typography.labelMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Switch(checked = bold, onCheckedChange = onBoldChange)
                    }
                }
                item {
                    Text(
                        readerLineHeightLabel((lineHeight * 100).toInt(), strings.languageCode),
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        IconButton(
                            onClick = { onLineHeightChange((lineHeight - 0.1f).coerceAtLeast(1.0f)) },
                            modifier = Modifier.size(36.dp)
                        ) { Text("−", style = MaterialTheme.typography.titleLarge) }
                        Slider(
                            value = lineHeight,
                            onValueChange = onLineHeightChange,
                            valueRange = 1.0f..3.0f,
                            steps = 19,
                            modifier = Modifier.weight(1f)
                        )
                        IconButton(
                            onClick = { onLineHeightChange((lineHeight + 0.1f).coerceAtMost(3.0f)) },
                            modifier = Modifier.size(36.dp)
                        ) { Text("+", style = MaterialTheme.typography.titleLarge) }
                    }
                }
                item {
                    Text(
                        readerText.textAlignTitle,
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        listOf(
                            "justify" to readerText.alignJustify,
                            "left" to readerText.alignLeft,
                            "right" to readerText.alignRight,
                            "center" to readerText.alignCenter
                        ).forEach { (id, label) ->
                            FilterChip(
                                selected = textAlignment == id,
                                onClick = { onTextAlignChange(id) },
                                label = { Text(label, style = MaterialTheme.typography.bodySmall) }
                            )
                        }
                    }
                }
                item { HorizontalDivider() }
                item {
                    OutlinedButton(
                        onClick = onReset,
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(top = 4.dp)
                    ) {
                        Text(readerText.resetDefaults)
                    }
                }
            }
        }
    }
}
