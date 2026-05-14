package com.example.feature.reader.ui

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
import androidx.compose.foundation.background
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
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalClipboardManager
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
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
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.runtime.getValue
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.webkit.WebViewAssetLoader
import org.json.JSONTokener
import com.example.core.model.ReadingMode
import com.example.core.model.ComicFormat
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
import com.example.feature.reader.R
import com.example.feature.reader.ui.components.ImageMessagePopup
import com.example.feature.reader.ui.components.ImageMessagePopupConfig
import com.example.feature.reader.ui.components.PageView
import com.example.feature.reader.ui.components.ReaderBottomBar
import com.example.feature.reader.ui.components.WebtoonView
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.withContext
import java.io.ByteArrayInputStream
import java.io.File
import java.time.LocalTime
import java.time.format.DateTimeFormatter
import java.util.Locale
import kotlin.math.roundToInt

/**
 * JS snippet injected via evaluateJavascript after each page load.
 *
 * Behaviour:
 *  • Click on <a href="fbanchor://id"> → call onAnchorClick(id) for footnote popup.
 *  • Click on <a href="#frag"> or <a href="file.xhtml#frag"> → onAnchorClick(fullHref).
 *  • Click on <a href="file.xhtml"> (no fragment) → onAnchorClick(fullHref) for page nav.
 *  • Click on <a href="http(s)://..."> → call onExternalLink(url) to open in browser.
 *  • Click anywhere else → call onTap(xPercent) for page-turn navigation.
 * The guard flag prevents double-registration across multiple onPageFinished calls.
 */
private const val JS_TAP_HANDLER = """(function(){
  if(window.__tapAdded)return;
  window.__tapAdded=true;
  window.__readerTouchStartTs=0;
  window.__readerTouchStartX=0;
  window.__readerTouchStartY=0;
  window.__readerTouchMoved=false;
  window.__readerSelectionTs=0;
  function readerDispatchTap(x){
    try{
      var dir=x<0.35?-1:(x>0.65?1:0);
      if(window.__mrcomicVerticalScrollLocked&&dir!==0&&typeof window.__mrcomicTurnPaged==='function'){
        if(window.__mrcomicTurnPaged(dir))return;
      }
    }catch(err){}
    if(typeof _NativeReader!='undefined')_NativeReader.onTap(x);
  }
  document.addEventListener('selectionchange',function(){
    try{
      var selected=(window.getSelection&&window.getSelection().toString())||'';
      if((selected||'').trim().length>0){
        window.__readerSelectionTs=Date.now();
      }
    }catch(e){}
  },false);
  document.addEventListener('touchstart',function(e){
    window.__readerTouchStartTs=Date.now();
    window.__readerTouchMoved=false;
    if(e.touches&&e.touches.length===1){
      window.__readerTouchStartX=e.touches[0].clientX;
      window.__readerTouchStartY=e.touches[0].clientY;
    }
  },{passive:true});
  document.addEventListener('touchmove',function(e){
    window.__readerTouchMoved=true;
    if(window.__mrcomicVerticalScrollLocked&&e.touches&&e.touches.length===1){
      var dx=e.touches[0].clientX-window.__readerTouchStartX;
      var dy=e.touches[0].clientY-window.__readerTouchStartY;
      if(Math.abs(dy)>8&&Math.abs(dy)>Math.abs(dx)*1.2){
        e.preventDefault();
      }
    }
  },{passive:false});
  document.addEventListener('touchend',function(e){
    var now=Date.now();
    var elapsed=now-window.__readerTouchStartTs;
    if(elapsed<=0||elapsed>260)return;
    var selected='';
    try{selected=(window.getSelection&&window.getSelection().toString())||'';selected=(selected||'').trim();}catch(err){}
    if(selected.length>0)return;
    var hasRecentSelection=window.__readerSelectionTs&&((now-window.__readerSelectionTs)<1200);
    if(hasRecentSelection)return;
    var ch=e.changedTouches&&e.changedTouches[0];
    if(!ch)return;
    var dx=ch.clientX-window.__readerTouchStartX;
    var dy=ch.clientY-window.__readerTouchStartY;
    if(window.__mrcomicVerticalScrollLocked&&Math.abs(dy)>18&&Math.abs(dy)>Math.abs(dx)*1.2){
      e.preventDefault();
      return;
    }
    if(window.__mrcomicVerticalBoundaryEnabled&&Math.abs(dy)>64&&Math.abs(dx)<56&&Math.abs(dy)>Math.abs(dx)*1.55){
      var scroller=document.scrollingElement||document.documentElement||document.body;
      var top=scroller&&typeof scroller.scrollTop==='number'?scroller.scrollTop:0;
      var height=scroller&&scroller.scrollHeight?scroller.scrollHeight:0;
      var atTop=top<=2;
      var atBottom=(top+window.innerHeight)>=(height-2);
      if((dy<0&&atBottom)||(dy>0&&atTop)){
        e.preventDefault();
        if(typeof _NativeReader!='undefined')_NativeReader.onVerticalBoundary(dy<0?1:-1);
        return;
      }
    }
    if(Math.abs(dx)>54&&Math.abs(dy)<24&&Math.abs(dx)>Math.abs(dy)*1.8){
      readerDispatchTap(dx>0?0.1:0.9);
    }
  },{passive:true});
  document.addEventListener('click',function(e){
    var now=Date.now();
    var selected='';
    try{
      selected=(window.getSelection&&window.getSelection().toString())||'';
      selected=(selected||'').trim();
    }catch(err){}
    var isLongPress=window.__readerTouchStartTs&&((now-window.__readerTouchStartTs)>380);
    var hasRecentSelection=window.__readerSelectionTs&&((now-window.__readerSelectionTs)<1200);
    if(selected.length>0||window.__readerTouchMoved||isLongPress||hasRecentSelection){
      return;
    }
    var t=e.target;
    while(t&&t!==document.body){
      var noteAttr='';
      var noteRole='';
      try{
        noteAttr=(t.getAttribute&&(
          t.getAttribute('data-footnote-id')||
          t.getAttribute('data-note-id')||
          t.getAttribute('data-mrcomic-anchor')||
          t.getAttribute('id')||
          t.getAttribute('name')||
          ''
        ))||'';
        noteRole=(t.getAttribute&&(
          (t.getAttribute('role')||'')+' '+
          (t.getAttribute('epub:type')||'')+' '+
          (t.getAttribute('class')||'')
        ))||'';
      }catch(err){}
      if(noteAttr&&/\b(doc-noteref|noteref|footnote-ref|footnote|fn|note-num)\b/i.test(noteRole)){
        e.preventDefault();
        if(typeof _NativeReader!='undefined')_NativeReader.onAnchorClick(noteAttr);
        return;
      }
      if(t.tagName==='A'){
        var href=t.getAttribute('href')||'';
        var title=t.getAttribute('title')||'';
        if(href.indexOf('fbanchor://')===0){
          e.preventDefault();
          var id=href.slice(11);
          if(id&&typeof _NativeReader!='undefined')_NativeReader.onAnchorClick(id);
        } else if(href.charAt(0)==='#'){
          if(title&&typeof _NativeReader!='undefined'){
            e.preventDefault();
            _NativeReader.onInlineFootnote(title);
            return;
          }
          e.preventDefault();
          if(typeof _NativeReader!='undefined')_NativeReader.onAnchorClick(href);
          return;
        } else if(/^[a-zA-Z][a-zA-Z0-9+.-]*:/.test(href)){
          e.preventDefault();
          if(typeof _NativeReader!='undefined')_NativeReader.onExternalLink(href);
        } else if(href&&href.indexOf('://')<0){
          var absHref='';
          try{absHref=(t.href||'');}catch(err){}
          var currentBase=(window.location.href||'').split('#')[0];
          var targetBase=(absHref||'').split('#')[0];
          if(href.indexOf('#')>=0&&targetBase&&targetBase===currentBase){
            e.preventDefault();
            if(title&&typeof _NativeReader!='undefined'){
              _NativeReader.onInlineFootnote(title);
              return;
            }
            if(typeof _NativeReader!='undefined')_NativeReader.onAnchorClick(href);
            return;
          }
          e.preventDefault();
          if(title&&typeof _NativeReader!='undefined'){
            _NativeReader.onInlineFootnote(title);
            return;
          }
          if(typeof _NativeReader!='undefined')_NativeReader.onAnchorClick(href);
        } else {
          e.preventDefault();
          var x=e.clientX/window.innerWidth;
          readerDispatchTap(x);
        }
        return;
      }
      t=t.parentNode;
    }
    var x=e.clientX/window.innerWidth;
    readerDispatchTap(x);
  },false);
})();"""

private const val HTML_READER_TAG = "ReaderHtmlView"
private const val HTML_READER_BASE_URL = "https://appassets.androidplatform.net/reader/"
private const val HTML_READER_ASSET_PATH = "/reader/content/"
private const val HTML_READER_BLANK_CHECK_JS = """(function(){
  try{
    var body=document.body;
    var root=document.documentElement;
    var text=(body&&body.innerText?body.innerText:'').trim().length;
    var images=(document.images&&document.images.length)||0;
    var media=document.querySelectorAll?document.querySelectorAll('img,svg,figure,table,blockquote,h1,h2,h3,h4,h5,h6,p,div').length:0;
    var height=Math.max(
      body&&body.scrollHeight?body.scrollHeight:0,
      root&&root.scrollHeight?root.scrollHeight:0
    );
    return JSON.stringify({text:text,images:images,media:media,height:height});
  }catch(e){
    return JSON.stringify({error:String(e)});
  }
})();"""

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
    private val resolver: (String) -> com.example.engine.formats.base.FormatReaderWebResource?
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
        val rootDir = ReaderTextFontCatalog.fontDirectory(context).canonicalFile
        val file = File(rootDir, fileName).canonicalFile
        if (file.parentFile != rootDir || !file.exists() || !file.isFile || !file.canRead()) {
            return null
        }
        val mimeType = when (file.extension.lowercase(Locale.US)) {
            "ttf" -> "font/ttf"
            "otf" -> "font/otf"
            "woff" -> "font/woff"
            "woff2" -> "font/woff2"
            else -> return null
        }
        return WebResourceResponse(
            mimeType,
            "binary",
            ByteArrayInputStream(file.readBytes())
        ).apply {
            responseHeaders = mapOf(
                "Cache-Control" to "public, max-age=300",
                "Access-Control-Allow-Origin" to "*"
            )
        }
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

@Composable
private fun rememberReaderHtmlPageSource(
    html: String,
    bg: String,
    fg: String,
    resolvedBaseUrl: String
): ReaderHtmlPageSource? {
    val context = LocalContext.current
    var pageSource by remember(html, bg, fg, resolvedBaseUrl, context.cacheDir.absolutePath) {
        mutableStateOf<ReaderHtmlPageSource?>(null)
    }
    LaunchedEffect(html, bg, fg, resolvedBaseUrl, context.cacheDir.absolutePath) {
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
private const val MAX_INLINE_HTML_SOURCE_LENGTH = 6_000_000

private enum class ReaderSelectionAction {
    TRANSLATE,
    DICTIONARY,
    EXPLAIN,
    SAVE_QUOTE
}

private fun colorSchemePalette(scheme: String): Pair<String, String> = when (scheme) {
    "SEPIA" -> "#f4ecd8" to "#3b2a1a"
    "NIGHT" -> "#1a1a1a" to "#e8e8e8"
    else    -> "#fafafa"  to "#1a1a1a"
}

private fun colorSchemePaletteForPreset(
    scheme: String,
    readerPreset: ReadingPreset
): Pair<String, String> = when {
    scheme == "SEPIA" && readerPreset == ReadingPreset.SEPIA_BOOK -> "#f4ecd8" to "#352618"
    scheme == "DAY" && readerPreset == ReadingPreset.NEWSPAPER -> "#f1eee7" to "#202020"
    scheme == "NIGHT" && readerPreset == ReadingPreset.OLED_BLACK -> "#000000" to "#f2f5f7"
    scheme == "DAY" && readerPreset == ReadingPreset.PAPER -> "#f6f1e7" to "#2b2118"
    scheme == "DAY" && readerPreset == ReadingPreset.EINK -> "#f0efe9" to "#121212"
    else -> colorSchemePalette(scheme)
}

private val MANUAL_READER_COLOR_REGEX = Regex("^#(?:[0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$")

private fun normalizeReaderOverrideColor(value: String?): String? {
    val normalized = value?.trim().orEmpty()
    return normalized.takeIf { it.isNotEmpty() && MANUAL_READER_COLOR_REGEX.matches(it) }
}

private fun defaultReaderAccentColor(backgroundColor: String): String = when {
    backgroundColor.equals("#1a1a1a", ignoreCase = true) -> "#5ab4dc"
    backgroundColor.equals("#000000", ignoreCase = true) -> "#5ab4dc"
    else -> "#1a6f9a"
}

private fun readerSelectionOverlayColor(color: String, alpha: Float): String {
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

private fun readerMaterialColorScheme(
    isTextReader: Boolean,
    readerPreset: ReadingPreset,
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
        when {
            readerPreset == ReadingPreset.OLED_BLACK -> darkColorScheme(
                primary = Color(0xFFB8D3FF),
                onPrimary = Color(0xFF091019),
                primaryContainer = Color(0xFF152231),
                onPrimaryContainer = Color(0xFFE2ECFA),
                secondary = Color(0xFF98A2B1),
                onSecondary = Color(0xFF0F141B),
                secondaryContainer = Color(0xFF1A222C),
                onSecondaryContainer = Color(0xFFE4E7EB),
                background = Color(0xFF000000),
                onBackground = Color(0xFFF2F5F7),
                surface = Color(0xFF050505),
                onSurface = Color(0xFFF2F5F7),
                surfaceVariant = Color(0xFF121212),
                onSurfaceVariant = Color(0xFFBAC0C7),
                outline = Color(0xFF525860),
                outlineVariant = Color(0xFF22262B)
            )
            readerPreset == ReadingPreset.SEPIA_BOOK -> lightColorScheme(
                primary = Color(0xFF835D2F),
                onPrimary = Color(0xFFFFF7EA),
                primaryContainer = Color(0xFFF0DEC2),
                onPrimaryContainer = Color(0xFF43280A),
                secondary = Color(0xFF966B3A),
                onSecondary = Color(0xFFFFF7EA),
                secondaryContainer = Color(0xFFF5E3C7),
                onSecondaryContainer = Color(0xFF45270C),
                background = Color(0xFFF4ECD8),
                onBackground = Color(0xFF352618),
                surface = Color(0xFFEEE2C8),
                onSurface = Color(0xFF352618),
                surfaceVariant = Color(0xFFE5D4B1),
                onSurfaceVariant = Color(0xFF6C5337),
                outline = Color(0xFF9A7B58),
                outlineVariant = Color(0xFFD2BC95)
            )
            readerPreset == ReadingPreset.NEWSPAPER -> lightColorScheme(
                primary = Color(0xFF31404F),
                onPrimary = Color(0xFFF7F7F5),
                primaryContainer = Color(0xFFDCE1E6),
                onPrimaryContainer = Color(0xFF19232D),
                secondary = Color(0xFF5E6975),
                onSecondary = Color(0xFFF7F7F5),
                secondaryContainer = Color(0xFFE2E6EA),
                onSecondaryContainer = Color(0xFF242C34),
                background = Color(0xFFF1EEE7),
                onBackground = Color(0xFF202020),
                surface = Color(0xFFE9E5DD),
                onSurface = Color(0xFF202020),
                surfaceVariant = Color(0xFFDED8D0),
                onSurfaceVariant = Color(0xFF55504A),
                outline = Color(0xFF80776E),
                outlineVariant = Color(0xFFC3BBB1)
            )
            textColorScheme == "NIGHT" -> darkColorScheme(
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
            textColorScheme == "SEPIA" -> lightColorScheme(
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
            readerPreset == ReadingPreset.PAPER -> lightColorScheme(
                primary = Color(0xFF345C7C),
                onPrimary = Color(0xFFF9F4EA),
                primaryContainer = Color(0xFFDCE6ED),
                onPrimaryContainer = Color(0xFF142D3D),
                secondary = Color(0xFF8B6841),
                onSecondary = Color(0xFFF9F1E7),
                secondaryContainer = Color(0xFFE8D8BF),
                onSecondaryContainer = Color(0xFF382411),
                background = Color(0xFFF6F1E7),
                onBackground = Color(0xFF2F241A),
                surface = Color(0xFFEEE6D7),
                onSurface = Color(0xFF2F241A),
                surfaceVariant = Color(0xFFE2D6C3),
                onSurfaceVariant = Color(0xFF675745),
                outline = Color(0xFF8F7D67),
                outlineVariant = Color(0xFFCDBEAA)
            )
            readerPreset == ReadingPreset.EINK -> lightColorScheme(
                primary = Color(0xFF1A1A1A),
                onPrimary = Color(0xFFF3F3F1),
                primaryContainer = Color(0xFFD7D7D3),
                onPrimaryContainer = Color(0xFF111111),
                secondary = Color(0xFF4C4C4C),
                onSecondary = Color(0xFFF5F5F3),
                secondaryContainer = Color(0xFFE0E0DC),
                onSecondaryContainer = Color(0xFF1E1E1E),
                background = Color(0xFFF0EFE9),
                onBackground = Color(0xFF111111),
                surface = Color(0xFFE4E3DD),
                onSurface = Color(0xFF111111),
                surfaceVariant = Color(0xFFD7D6D0),
                onSurfaceVariant = Color(0xFF4A4A47),
                outline = Color(0xFF777773),
                outlineVariant = Color(0xFFBDBCB7)
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

private fun textSettingsJs(
    fontSize: Int,
    bg: String,
    fg: String,
    overrideTextColor: String? = null,
    overrideBackgroundColor: String? = null,
    overrideAccentColor: String? = null,
    fontFamily: String = "Georgia",
    fontSourceUrl: String? = null,
    lineHeight: Float  = 1.8f,
    letterSpacing: Float = 0f,
    wordSpacing: Float = 0f,
    paragraphSpacing: Float = 0.2f,
    align: String      = "justify",
    bold: Boolean      = false,
    topPaddingPx: Int  = 16,
    bottomPaddingPx: Int = 24,
    lockVerticalScroll: Boolean = false
): String {
    val resolvedTextColor = normalizeReaderOverrideColor(overrideTextColor) ?: fg
    val resolvedBackgroundColor = normalizeReaderOverrideColor(overrideBackgroundColor) ?: bg
    val resolvedAccentColor = normalizeReaderOverrideColor(overrideAccentColor)
        ?: defaultReaderAccentColor(resolvedBackgroundColor)
    val fontWeight   = if (bold) "bold" else "normal"
    val isNightTheme = resolvedBackgroundColor.equals("#1a1a1a", ignoreCase = true) ||
        resolvedBackgroundColor.equals("#000000", ignoreCase = true)
    val noteColor    = resolvedAccentColor
    val headingBg    = "transparent"
    val headingBorder = when {
        isNightTheme -> "#5a5a5a"
        resolvedBackgroundColor.equals("#f4ecd8", ignoreCase = true) -> "#b79f78"
        else -> "#808080"
    }
    val quoteColor = if (isNightTheme) "#c9c9c9" else "#555555"
    val selectionBackgroundColor = readerSelectionOverlayColor(
        color = resolvedAccentColor,
        alpha = if (isNightTheme) 0.38f else 0.28f
    )
    val selectionForegroundColor = if (isNightTheme) "#ffffff" else "#111111"
    // Inject @font-face for custom fonts once (guard by style id)
    val fontFaceSnip = if (fontSourceUrl != null) {
        val id = "__cf_${fontFamily.replace(Regex("[^\\p{L}\\p{N}]+"), "_")}"
        """if(!document.getElementById('$id')){var s=document.createElement('style');s.id='$id';""" +
        """s.textContent="@font-face{font-family:'$fontFamily';src:url('$fontSourceUrl');font-display:swap;}";""" +
        """document.head.appendChild(s);}"""
    } else ""
    val themeStyle = """
        if(!document.getElementById('__reader_theme_overrides')){
          var themeStyle=document.createElement('style');
          themeStyle.id='__reader_theme_overrides';
          document.head.appendChild(themeStyle);
        }
        document.getElementById('__reader_theme_overrides').textContent=
          ":root{--mrcomic-reader-text-color:$resolvedTextColor;--mrcomic-reader-background-color:$resolvedBackgroundColor;--mrcomic-reader-accent-color:$resolvedAccentColor;}"+
          "html,body{background-color:$resolvedBackgroundColor !important;}"+
          "body{color:$resolvedTextColor !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']){color:$resolvedTextColor !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) p,body:not([data-mrcomic-preserve-layout='true']) div,body:not([data-mrcomic-preserve-layout='true']) span,body:not([data-mrcomic-preserve-layout='true']) li,body:not([data-mrcomic-preserve-layout='true']) td,body:not([data-mrcomic-preserve-layout='true']) th,body:not([data-mrcomic-preserve-layout='true']) strong,body:not([data-mrcomic-preserve-layout='true']) em,body:not([data-mrcomic-preserve-layout='true']) i,body:not([data-mrcomic-preserve-layout='true']) b,body:not([data-mrcomic-preserve-layout='true']) small,body:not([data-mrcomic-preserve-layout='true']) big,body:not([data-mrcomic-preserve-layout='true']) sup,body:not([data-mrcomic-preserve-layout='true']) sub{color:$resolvedTextColor !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) a[href],body:not([data-mrcomic-preserve-layout='true']) a[href]:link,body:not([data-mrcomic-preserve-layout='true']) a[href]:visited,body:not([data-mrcomic-preserve-layout='true']) a[href]:hover,body:not([data-mrcomic-preserve-layout='true']) a[href]:active{color:$resolvedAccentColor !important;text-decoration:underline !important;text-underline-offset:0.14em !important;text-decoration-thickness:0.08em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) a[href] *{color:inherit !important;}"+
          "body [bgcolor],body [style*='background-color:#fff'],body [style*='background-color: #fff'],body [style*='background-color:#ffffff'],body [style*='background-color: #ffffff'],body [style*='background:#fff'],body [style*='background: #fff'],body [style*='background:#ffffff'],body [style*='background: #ffffff'],body [style*='background-color:white'],body [style*='background-color: white'],body [style*='background:white'],body [style*='background: white'],body [style*='background-color:rgb(255'],body [style*='background-color: rgb(255'],body [style*='background:rgb(255'],body [style*='background: rgb(255']{background-color:transparent !important;background-image:none !important;box-shadow:none !important;}"+
          "h1,h2,h3,h4,h5,h6,.calibre5,.calibre12{color:$resolvedTextColor !important;background-color:$headingBg !important;border-color:$headingBorder !important;}"+
          "blockquote,cite,.epigraph{color:$quoteColor !important;border-left-color:$headingBorder !important;}"+
          "::selection{background:$selectionBackgroundColor !important;color:$selectionForegroundColor !important;}"+
          "body *::selection{background:$selectionBackgroundColor !important;color:$selectionForegroundColor !important;}"+
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
    val spacingStyle = """
        if(!document.getElementById('__reader_spacing_overrides')){
          var spacingStyle=document.createElement('style');
          spacingStyle.id='__reader_spacing_overrides';
          document.head.appendChild(spacingStyle);
        }
        document.getElementById('__reader_spacing_overrides').textContent=
          "body:not([data-mrcomic-preserve-layout='true']){letter-spacing:${letterSpacing}em !important;word-spacing:${wordSpacing}em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) p,"+
          "body:not([data-mrcomic-preserve-layout='true']) div.paragraph,"+
          "body:not([data-mrcomic-preserve-layout='true']) .paragraph{margin-top:0 !important;margin-bottom:${paragraphSpacing}em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) li{margin-bottom:${(paragraphSpacing * 0.8f).coerceAtLeast(0.1f)}em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) blockquote{margin-bottom:${(paragraphSpacing + 0.4f).coerceAtLeast(0.4f)}em !important;}";
    """.trimIndent()
    val scrollModeStyle = if (lockVerticalScroll) {
        """
        document.documentElement.style.overflowY='hidden';
        document.documentElement.style.height='100%';
        document.body.style.overflowY='hidden';
        document.body.style.minHeight='100%';
        window.scrollTo(0,0);
        """.trimIndent()
    } else {
        """
        document.documentElement.style.overflowY='auto';
        document.documentElement.style.height='auto';
        document.body.style.overflowY='auto';
        document.body.style.minHeight='100%';
        """.trimIndent()
    }
    val pagedLayoutStyle = if (lockVerticalScroll) {
        """
        (function(){
          function viewportWidth(){
            return Math.max(1,window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth||1);
          }
          function viewportHeight(){
            return Math.max(1,window.innerHeight||document.documentElement.clientHeight||document.body.clientHeight||1);
          }
          function readerInset(name,fallback){
            var raw=window[name];
            var value=parseInt(raw,10);
            if(isFinite(value)&&value>=0)return value;
            return fallback;
          }
          window.__mrcomicApplyPagedLayout=function(){
            try{
              var body=document.body;
              var root=document.documentElement;
              if(!body||!root)return false;
              var w=viewportWidth();
              var h=viewportHeight();
              var pageTop=readerInset('__mrcomicContentTopInsetPx',${topPaddingPx});
              var pageBottom=readerInset('__mrcomicContentBottomInsetPx',${bottomPaddingPx});
              var usableH=Math.max(120,h-pageTop-pageBottom);
              root.style.width=w+'px';
              root.style.maxWidth=w+'px';
              root.style.height=h+'px';
              root.style.maxHeight=h+'px';
              root.style.overflow='hidden';
              root.style.overflowX='hidden';
              root.style.overflowY='hidden';
              body.style.boxSizing='border-box';
              body.style.width=w+'px';
              body.style.minWidth=w+'px';
              body.style.maxWidth=w+'px';
              body.style.height=usableH+'px';
              body.style.minHeight=usableH+'px';
              body.style.maxHeight=usableH+'px';
              body.style.marginTop=pageTop+'px';
              body.style.marginBottom='0px';
              body.style.paddingTop='0px';
              body.style.paddingBottom='0px';
              body.style.overflow='visible';
              body.style.columnWidth=w+'px';
              body.style.webkitColumnWidth=w+'px';
              body.style.columnGap='0px';
              body.style.webkitColumnGap='0px';
              body.style.columnFill='auto';
              body.style.webkitColumnFill='auto';
              body.style.transformOrigin='0 0';
              body.style.willChange='transform';
              body.style.transition='transform 120ms ease-out';
              window.scrollTo(0,0);
              if(document.documentElement.scrollLeft!==0)document.documentElement.scrollLeft=0;
              if(document.body.scrollLeft!==0)document.body.scrollLeft=0;
              void body.offsetWidth;
              var fullWidth=Math.max(body.scrollWidth||0,root.scrollWidth||0,w);
              var count=Math.max(1,Math.ceil((fullWidth-1)/w));
              var index=parseInt(window.__mrcomicPagedPageIndex||0,10);
              if(!isFinite(index)||index<0)index=0;
              if(index>=count)index=count-1;
              window.__mrcomicPagedPageIndex=index;
              window.__mrcomicPagedPageCount=count;
              body.style.transform='translate3d(-'+(index*w)+'px,0,0)';
              return true;
            }catch(e){
              return false;
            }
          };
          window.__mrcomicTurnPaged=function(dir){
            try{
              if(!window.__mrcomicApplyPagedLayout())return false;
              var count=parseInt(window.__mrcomicPagedPageCount||1,10);
              var index=parseInt(window.__mrcomicPagedPageIndex||0,10);
              if(!isFinite(count)||count<1)count=1;
              if(!isFinite(index)||index<0)index=0;
              var next=index+(dir<0?-1:1);
              if(next<0||next>=count)return false;
              window.__mrcomicPagedPageIndex=next;
              window.__mrcomicApplyPagedLayout();
              return true;
            }catch(e){
              return false;
            }
          };
          if(!window.__mrcomicPagedResizeBound){
            window.__mrcomicPagedResizeBound=true;
            var resizeTimer=null;
            window.addEventListener('resize',function(){
              clearTimeout(resizeTimer);
              resizeTimer=setTimeout(function(){
                if(window.__mrcomicVerticalScrollLocked&&window.__mrcomicApplyPagedLayout){
                  window.__mrcomicApplyPagedLayout();
                }
              },80);
            });
          }
          setTimeout(window.__mrcomicApplyPagedLayout,0);
          setTimeout(window.__mrcomicApplyPagedLayout,120);
        })();
        """.trimIndent()
    } else {
        """
        (function(){
          try{
            var body=document.body;
            var root=document.documentElement;
            if(body){
              body.style.removeProperty('column-width');
              body.style.removeProperty('-webkit-column-width');
              body.style.removeProperty('column-gap');
              body.style.removeProperty('-webkit-column-gap');
              body.style.removeProperty('column-fill');
              body.style.removeProperty('-webkit-column-fill');
              body.style.removeProperty('transform');
              body.style.removeProperty('transition');
              body.style.removeProperty('will-change');
              body.style.removeProperty('height');
              body.style.removeProperty('max-height');
              body.style.removeProperty('margin-top');
              body.style.removeProperty('margin-bottom');
            }
            if(root){
              root.style.removeProperty('height');
              root.style.removeProperty('max-height');
              root.style.overflowX='hidden';
              root.style.overflowY='auto';
            }
          }catch(e){}
        })();
        """.trimIndent()
    }
    val fontStack = if (fontSourceUrl != null) "'$fontFamily',Georgia,serif" else "$fontFamily,Georgia,serif"
    return """(function(){$fontFaceSnip $themeStyle $spacingStyle if(document.body){""" +
        """var preservePublisherLayout=document.body.hasAttribute('data-mrcomic-preserve-layout')||document.body.classList.contains('cover');""" +
        """document.documentElement.lang=document.documentElement.lang||'ru';""" +
        """document.documentElement.style.width='100%';""" +
        """document.documentElement.style.maxWidth='100%';""" +
        """document.documentElement.style.overflowX='hidden';""" +
        scrollModeStyle +
        """document.body.style.color='$resolvedTextColor';""" +
        """document.documentElement.style.background='$resolvedBackgroundColor';""" +
        """document.body.style.background='$resolvedBackgroundColor';""" +
        """document.body.style.boxSizing='border-box';""" +
        """document.body.style.width='100%';""" +
        """document.body.style.maxWidth='none';""" +
        """document.body.style.marginLeft='0';""" +
        """document.body.style.marginRight='0';""" +
        """window.__mrcomicContentTopInsetPx=${topPaddingPx};""" +
        """window.__mrcomicContentBottomInsetPx=${bottomPaddingPx};""" +
        """if(!preservePublisherLayout){""" +
        """document.body.style.fontSize='${fontSize}px';""" +
        """document.body.style.fontWeight='$fontWeight';""" +
        """document.body.style.fontFamily="$fontStack";""" +
        """document.body.style.lineHeight='$lineHeight';""" +
        """document.body.style.textAlign='$align';""" +
        """document.body.style.hyphens='auto';""" +
        """document.body.style.webkitHyphens='auto';""" +
        """document.body.style.paddingLeft='16px';""" +
        """document.body.style.paddingRight='16px';""" +
        """document.body.style.paddingTop='${topPaddingPx}px';""" +
        """document.body.style.paddingBottom='${bottomPaddingPx}px';""" +
        """}else{""" +
        """document.body.style.fontSize='${fontSize.coerceAtLeast(20)}px';""" +
        """document.body.style.lineHeight='${lineHeight.coerceAtLeast(1.45f)}';""" +
        """document.body.style.paddingLeft='16px';""" +
        """document.body.style.paddingRight='16px';""" +
        """document.body.style.paddingTop='${topPaddingPx}px';""" +
        """document.body.style.paddingBottom='${bottomPaddingPx}px';""" +
        """document.body.style.width='100%';""" +
        """document.body.style.maxWidth='none';""" +
        """document.body.style.minWidth='0';""" +
        """Array.prototype.forEach.call(document.body.children,function(el){el.style.maxWidth='100%';el.style.minWidth='0';el.style.boxSizing='border-box';});""" +
        """document.body.style.removeProperty('hyphens');""" +
        """document.body.style.removeProperty('-webkit-hyphens');""" +
        """}$pagedLayoutStyle}$colorNotesDom})();"""
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
          body:not([data-mrcomic-preserve-layout="true"]) {
            margin: 0 !important;
            color: $fg !important;
          }
          body:not([data-mrcomic-preserve-layout="true"]) a[href] {
            color: var(--mrcomic-reader-accent-color, #1a6f9a) !important;
            text-decoration: underline !important;
            text-underline-offset: 0.14em !important;
            text-decoration-thickness: 0.08em !important;
          }
          body [bgcolor],
          body [style*="background-color:#fff"],
          body [style*="background-color: #fff"],
          body [style*="background-color:#ffffff"],
          body [style*="background-color: #ffffff"],
          body [style*="background:#fff"],
          body [style*="background: #fff"],
          body [style*="background:#ffffff"],
          body [style*="background: #ffffff"],
          body [style*="background-color:white"],
          body [style*="background-color: white"],
          body [style*="background:white"],
          body [style*="background: white"],
          body [style*="background-color:rgb(255"],
          body [style*="background-color: rgb(255"],
          body [style*="background:rgb(255"],
          body [style*="background: rgb(255"] {
            background-color: transparent !important;
            background-image: none !important;
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

private fun looksLikeReaderStyleJson(raw: String): Boolean = runCatching {
    JSONTokener(raw.trim()).nextValue() is org.json.JSONObject
}.getOrDefault(false)

private class ReaderWebView(context: android.content.Context) : WebView(context) {
    var translateSelectionLabel: String = ""
    var dictionarySelectionLabel: String = ""
    var explainSelectionLabel: String = ""
    var saveQuoteSelectionLabel: String = ""
    var onSelectionActionRequest: ((ReaderSelectionAction, String) -> Unit)? = null
    var verticalScrollLocked: Boolean = false
        set(value) {
            field = value
            isVerticalScrollBarEnabled = !value
            if (value && scrollY != 0) {
                super.scrollTo(scrollX, 0)
            }
        }
    private var committedLoadToken: String? = null
    private var inlineFallback: PendingInlineFallback? = null
    private var inlineFallbackRunnable: Runnable? = null
    private var inlineFallbackAttempts: Int = 0

    private data class PendingInlineFallback(
        val loadToken: String,
        val baseUrl: String,
        val html: String
    )

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
                    SAVE_QUOTE_SELECTION_MENU_ID -> ReaderSelectionAction.SAVE_QUOTE
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
        addOrUpdateSelectionItem(
            menu = menu,
            itemId = SAVE_QUOTE_SELECTION_MENU_ID,
            order = 3,
            title = saveQuoteSelectionLabel,
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

    override fun scrollTo(x: Int, y: Int) {
        super.scrollTo(
            if (verticalScrollLocked) 0 else x,
            if (verticalScrollLocked) 0 else y
        )
    }

    fun markLoadRequested(loadToken: String) {
        committedLoadToken = null
        cancelInlineFallback()
        inlineFallback = null
        inlineFallbackAttempts = 0
        tag = loadToken
        evaluateJavascript(
            "window.__mrcomicPagedPageIndex=0;window.__mrcomicPagedPageCount=1;",
            null
        )
    }

    fun markLoadCommitted() {
        committedLoadToken = tag as? String
        inlineFallbackRunnable?.let(::removeCallbacks)
        inlineFallbackRunnable = null
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
            val currentToken = tag as? String
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

    fun verifyVisibleContentOrFallback() {
        val expectedToken = tag as? String ?: return
        evaluateJavascript(HTML_READER_BLANK_CHECK_JS) { rawValue ->
            val currentToken = tag as? String
            if (currentToken != expectedToken) return@evaluateJavascript
            val parsed = runCatching { JSONTokener(rawValue).nextValue() }.getOrNull()
            val json = parsed as? org.json.JSONObject ?: return@evaluateJavascript
            val visibleText = json.optInt("text", 0)
            val visibleImages = json.optInt("images", 0)
            val visibleMedia = json.optInt("media", 0)
            val visibleHeight = json.optInt("height", 0)
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
    assetDocumentPath: String?,
    assetLoader: WebViewAssetLoader?,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    onTranslateSelection: (String) -> Unit,
    onDictionarySelection: (String) -> Unit,
    onExplainSelection: (String) -> Unit,
    onSaveQuoteSelection: (String) -> Unit,
    onAnchorClick: (String) -> Unit = {},
    onInlineFootnote: (String) -> Unit = {},
    webtoonMode: Boolean = false,
    onVerticalBoundary: (Int) -> Unit = {},
    contentTopInsetPx: Int = 16,
    contentBottomInsetPx: Int = 24,
    fontSize: Int    = 18,
    colorScheme: String = "DAY",
    readerPreset: ReadingPreset = ReadingPreset.CUSTOM,
    fontFamily: String  = "Georgia",
    fontSourceUrl: String? = null,
    lineHeight: Float   = 1.8f,
    letterSpacing: Float = 0f,
    wordSpacing: Float = 0f,
    paragraphSpacing: Float = 0.2f,
    textAlign: String   = "justify",
    bold: Boolean       = false,
    overrideTextColor: String? = null,
    overrideBackgroundColor: String? = null,
    overrideAccentColor: String? = null,
    translateActionLabel: String,
    dictionaryActionLabel: String,
    explainActionLabel: String,
    saveQuoteActionLabel: String
) {
    val context = LocalContext.current
    val topPaddingPx = contentTopInsetPx.coerceAtLeast(0)
    val bottomPaddingPx = contentBottomInsetPx.coerceAtLeast(0)
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
    val onAnchor         = rememberUpdatedState(onAnchorClick)
    val onInlineNote     = rememberUpdatedState(onInlineFootnote)
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
    val currentWebtoonMode = rememberUpdatedState(webtoonMode)
    val onVerticalBoundaryState = rememberUpdatedState(onVerticalBoundary)

    AndroidView(
        modifier = Modifier
            .fillMaxSize()
            .statusBarsPadding()
            .displayCutoutPadding(),
        factory = { ctx ->
            ReaderWebView(ctx).apply {
                settings.javaScriptEnabled  = true   // required for tap bridge
                settings.domStorageEnabled  = true
                settings.loadsImagesAutomatically = true
                settings.allowFileAccess    = true
                settings.allowContentAccess = true
                // Fix: textZoom=100 prevents system accessibility font scale from
                // affecting CSS px values, ensuring CHARS_PER_PAGE stays accurate.
                settings.textZoom           = 100
                settings.defaultFontSize    = 16
                // Required for proper viewport scaling on tablets / wide screens.
                settings.useWideViewPort       = true
                settings.loadWithOverviewMode  = true
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                    settings.offscreenPreRaster = true
                }
                // Match the current reading theme before first paint.
                setBackgroundColor(bgColor)
                // Disable overscroll bounce but allow natural vertical scrolling within a page.
                overScrollMode = android.view.View.OVER_SCROLL_NEVER
                verticalScrollLocked = !currentWebtoonMode.value

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

                    @JavascriptInterface
                    fun onVerticalBoundary(direction: Int) {
                        post {
                            if (!currentWebtoonMode.value) return@post
                            when {
                                direction > 0 -> onVerticalBoundaryState.value(1)
                                direction < 0 -> onVerticalBoundaryState.value(-1)
                            }
                        }
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
                onSelectionActionRequest = { action, selectedText ->
                    when (action) {
                        ReaderSelectionAction.TRANSLATE -> onTranslate.value(selectedText.trim())
                        ReaderSelectionAction.DICTIONARY -> onDictionary.value(selectedText.trim())
                        ReaderSelectionAction.EXPLAIN -> onExplain.value(selectedText.trim())
                        ReaderSelectionAction.SAVE_QUOTE -> onSaveQuote.value(selectedText.trim())
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
                        view.evaluateJavascript(
                            "window.__mrcomicVerticalBoundaryEnabled=${currentWebtoonMode.value};" +
                                "window.__mrcomicVerticalScrollLocked=${!currentWebtoonMode.value};",
                            null
                        )
                        val (themeBg, themeFg) = colorSchemePaletteForPreset(currentScheme.value, currentPreset.value)
                        val runtimeBg = normalizeReaderOverrideColor(overrideBackgroundColor) ?: themeBg
                        val runtimeFg = normalizeReaderOverrideColor(overrideTextColor) ?: themeFg
                        val runtimeAccent = normalizeReaderOverrideColor(overrideAccentColor)
                            ?: defaultReaderAccentColor(runtimeBg)
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
                                topPaddingPx = topPaddingPx,
                                bottomPaddingPx = bottomPaddingPx,
                                lockVerticalScroll = !currentWebtoonMode.value
                            ), null
                        )
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
                        Log.w(
                            HTML_READER_TAG,
                            "WebView error for ${request.url}: ${error.description} (${error.errorCode})"
                        )
                        if (request.isForMainFrame) {
                            (view as? ReaderWebView)?.loadInlineFallbackNow()
                        }
                        super.onReceivedError(view, request, error)
                    }
                }
            }
        },
        update = { webView ->
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
                }
            }
            // Apply text settings immediately when any setting changes (no page reload).
            // Also update the WebView's own background so the color is correct before JS fires.
            webView.verticalScrollLocked = !webtoonMode
            webView.setBackgroundColor(bgColor)
            webView.evaluateJavascript(
                "window.__mrcomicVerticalBoundaryEnabled=$webtoonMode;" +
                    "window.__mrcomicVerticalScrollLocked=${!webtoonMode};",
                null
            )
            webView.evaluateJavascript(
                textSettingsJs(
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
                    lockVerticalScroll = !webtoonMode
                ), null
            )
            val currentSource = pageSource ?: return@AndroidView
            // Only reload when content actually changes — prevents scroll position
            // from resetting on every recompose (e.g. when controls are toggled).
            val cached = webView.tag as? String
            if (cached != currentSource.loadToken) {
                webView.markLoadRequested(currentSource.loadToken)
                when (currentSource) {
                    is ReaderHtmlPageSource.FileUrl -> {
                        webView.loadUrl(currentSource.url)
                        webView.scheduleInlineFallback(
                            loadToken = currentSource.loadToken,
                            baseUrl = currentSource.fallbackBaseUrl,
                            html = currentSource.fallbackHtml
                        )
                    }
                    is ReaderHtmlPageSource.Inline -> {
                        webView.loadDataWithBaseURL(
                            currentSource.baseUrl,
                            currentSource.html,
                            "text/html",
                            "UTF-8",
                            null
                        )
                        webView.scheduleInlineFallback(
                            loadToken = currentSource.loadToken,
                            baseUrl = currentSource.baseUrl,
                            html = currentSource.html,
                            delayMillis = 900L
                        )
                    }
                }
                webView.post {
                    webView.requestLayout()
                    webView.invalidate()
                }
            }
        }
    )
}

@Composable
private fun HtmlPagePrewarmView(
    html: String,
    baseUrl: String?,
    assetDocumentPath: String?,
    assetLoader: WebViewAssetLoader?,
    fontSize: Int,
    colorScheme: String,
    readerPreset: ReadingPreset,
    fontFamily: String,
    fontSourceUrl: String?,
    lineHeight: Float,
    letterSpacing: Float,
    wordSpacing: Float,
    paragraphSpacing: Float,
    textAlign: String,
    bold: Boolean,
    overrideTextColor: String? = null,
    overrideBackgroundColor: String? = null,
    overrideAccentColor: String? = null,
    modifier: Modifier = Modifier
) {
    val resolvedBaseUrl = remember(baseUrl, assetDocumentPath) {
        assetDocumentPath?.let(::readerAssetDocumentBaseUrl) ?: baseUrl ?: HTML_READER_BASE_URL
    }
    val (bg, fg) = colorSchemePaletteForPreset(colorScheme, readerPreset)
    val resolvedBg = normalizeReaderOverrideColor(overrideBackgroundColor) ?: bg
    val resolvedFg = normalizeReaderOverrideColor(overrideTextColor) ?: fg
    val resolvedAccent = normalizeReaderOverrideColor(overrideAccentColor)
        ?: defaultReaderAccentColor(resolvedBg)
    val bgColor = remember(resolvedBg) { android.graphics.Color.parseColor(resolvedBg) }
    val pageSource = rememberReaderHtmlPageSource(
        html = html,
        bg = resolvedBg,
        fg = resolvedFg,
        resolvedBaseUrl = resolvedBaseUrl
    )
    val currentFs = rememberUpdatedState(fontSize)
    val currentScheme = rememberUpdatedState(colorScheme)
    val currentPreset = rememberUpdatedState(readerPreset)
    val currentFamily = rememberUpdatedState(fontFamily)
    val currentFontSourceUrl = rememberUpdatedState(fontSourceUrl)
    val currentLH = rememberUpdatedState(lineHeight)
    val currentLetterSpacing = rememberUpdatedState(letterSpacing)
    val currentWordSpacing = rememberUpdatedState(wordSpacing)
    val currentParagraphSpacing = rememberUpdatedState(paragraphSpacing)
    val currentAlign = rememberUpdatedState(textAlign)
    val currentBold = rememberUpdatedState(bold)

    AndroidView(
        modifier = modifier
            .size(1.dp)
            .alpha(0f),
        factory = { ctx ->
            ReaderWebView(ctx).apply {
                settings.javaScriptEnabled = true
                settings.domStorageEnabled = true
                settings.loadsImagesAutomatically = true
                settings.allowFileAccess = true
                settings.allowContentAccess = true
                settings.textZoom = 100
                settings.defaultFontSize = 16
                settings.useWideViewPort = true
                settings.loadWithOverviewMode = true
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                    settings.offscreenPreRaster = true
                }
                setBackgroundColor(bgColor)
                overScrollMode = android.view.View.OVER_SCROLL_NEVER
                webViewClient = object : WebViewClient() {
                    override fun shouldInterceptRequest(
                        view: WebView,
                        request: WebResourceRequest
                    ): WebResourceResponse? {
                        assetLoader?.shouldInterceptRequest(request.url)?.let { return it }
                        return super.shouldInterceptRequest(view, request)
                    }

                    override fun onPageFinished(view: WebView, url: String) {
                        val (themeBg, themeFg) = colorSchemePaletteForPreset(currentScheme.value, currentPreset.value)
                        val runtimeBg = normalizeReaderOverrideColor(overrideBackgroundColor) ?: themeBg
                        val runtimeFg = normalizeReaderOverrideColor(overrideTextColor) ?: themeFg
                        val runtimeAccent = normalizeReaderOverrideColor(overrideAccentColor)
                            ?: defaultReaderAccentColor(runtimeBg)
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
                                topPaddingPx = 8
                            ),
                            null
                        )
                    }

                    override fun onPageCommitVisible(view: WebView, url: String?) {
                        (view as? ReaderWebView)?.markLoadCommitted()
                    }

                    override fun onReceivedError(
                        view: WebView,
                        request: WebResourceRequest,
                        error: WebResourceError
                    ) {
                        if (request.isForMainFrame) {
                            (view as? ReaderWebView)?.loadInlineFallbackNow()
                        }
                        super.onReceivedError(view, request, error)
                    }
                }
            }
        },
        update = { webView ->
            webView.setBackgroundColor(bgColor)
            val currentSource = pageSource ?: return@AndroidView
            val cached = webView.tag as? String
            if (cached != currentSource.loadToken) {
                webView.markLoadRequested(currentSource.loadToken)
                when (currentSource) {
                    is ReaderHtmlPageSource.FileUrl -> {
                        webView.loadUrl(currentSource.url)
                        webView.scheduleInlineFallback(
                            loadToken = currentSource.loadToken,
                            baseUrl = currentSource.fallbackBaseUrl,
                            html = currentSource.fallbackHtml
                        )
                    }

                    is ReaderHtmlPageSource.Inline -> {
                        webView.loadDataWithBaseURL(
                            currentSource.baseUrl,
                            currentSource.html,
                            "text/html",
                            "UTF-8",
                            null
                        )
                        webView.scheduleInlineFallback(
                            loadToken = currentSource.loadToken,
                            baseUrl = currentSource.baseUrl,
                            html = currentSource.html,
                            delayMillis = 900L
                        )
                    }
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
    val isTextReader = uiState.usesTextReaderContent()
    val supportsDocumentMarginCrop = uiState.comic?.format == ComicFormat.PDF || uiState.comic?.format == ComicFormat.DJVU
    val effectiveMarginCropHorizontal = if (supportsDocumentMarginCrop) uiState.imageMarginCropHorizontal else 0f
    val effectiveMarginCropVertical = if (supportsDocumentMarginCrop) uiState.imageMarginCropVertical else 0f
    val supportsLandscapeSpread = !isTextReader && isLandscape && configuration.screenWidthDp >= 600
    val activeReaderPreset = remember(uiState.readerPreset) {
        ReadingPreset.fromStored(uiState.readerPreset)
    }
    val resolvedTextFont = remember(uiState.textFontFamily, context) {
        ReaderTextFontCatalog.resolve(context, uiState.textFontFamily)
    }
    val textLineInsetPx = remember(uiState.textFontSize, uiState.textLineHeight) {
        (uiState.textFontSize * uiState.textLineHeight)
            .roundToInt()
            .coerceAtLeast(18)
    }
    val persistentChromeTopInsetPx = remember(density) { with(density) { 58.dp.roundToPx() } }
    val persistentChromeBottomInsetPx = remember(density) { with(density) { 92.dp.roundToPx() } }
    val htmlContentTopInsetPx = textLineInsetPx + if (uiState.chromeAutoHideEnabled) 0 else persistentChromeTopInsetPx
    val htmlContentBottomInsetPx = textLineInsetPx + if (uiState.chromeAutoHideEnabled) 0 else persistentChromeBottomInsetPx
    var showBrightnessRow by remember { mutableStateOf(false) }
    var openControlCenterAtServices by remember { mutableStateOf(false) }
    var showReaderAudioSheet by remember { mutableStateOf(false) }
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
                if (strings.languageCode == "ru") "Не удалось импортировать шрифт" else "Couldn't import font",
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
                if (strings.languageCode == "ru") "Шрифт удалён" else "Font deleted",
                Toast.LENGTH_SHORT
            ).show()
        } else {
            Toast.makeText(
                context,
                if (strings.languageCode == "ru") "Не удалось удалить шрифт" else "Couldn't delete font",
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
                if (strings.languageCode == "ru") "Импортирован стиль: $importedStyle" else "Imported style: $importedStyle"
            } else if (importedStyleResult != null && !looksLikeReaderStyleJson(importedStyleResult)) {
                if (strings.languageCode == "ru") "Нужен файл стиля в формате JSON" else "Please choose a JSON style file"
            } else {
                if (strings.languageCode == "ru") "Не удалось импортировать стиль" else "Couldn't import style"
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
                if (strings.languageCode == "ru") "Стиль экспортирован" else "Style exported"
            } else {
                if (strings.languageCode == "ru") "Не удалось экспортировать стиль" else "Couldn't export style"
            },
            Toast.LENGTH_SHORT
        ).show()
    }
    val readerColorScheme = if (isEInk) {
        inheritedColorScheme
    } else {
        readerMaterialColorScheme(
            isTextReader = isTextReader,
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

    // Применяем яркость экрана через WindowManager
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
                        uiState.previousHtmlContent?.let { previousHtml ->
                            HtmlPagePrewarmView(
                                html = previousHtml,
                                baseUrl = uiState.htmlBaseUrl,
                                assetDocumentPath = uiState.previousHtmlAssetBasePath,
                                assetLoader = readerAssetLoader,
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
                                bold = uiState.textBold
                            )
                        }
                        uiState.nextHtmlContent?.let { nextHtml ->
                            HtmlPagePrewarmView(
                                html = nextHtml,
                                baseUrl = uiState.htmlBaseUrl,
                                assetDocumentPath = uiState.nextHtmlAssetBasePath,
                                assetLoader = readerAssetLoader,
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
                                bold = uiState.textBold
                            )
                        }
                        // Text-based format (EPUB novel / FB2 text): render via WebView.
                        // Tap callbacks are passed here because WebView intercepts all
                        // touch events, making the outer pointerInput unreachable.
                        HtmlPageView(
                            html = htmlContent,
                            baseUrl = uiState.htmlBaseUrl,
                            assetDocumentPath = uiState.htmlAssetBasePath,
                            assetLoader = readerAssetLoader,
                            onLeftTap   = { handleTapZoneAction(tapZoneLayout.left) },
                            onRightTap  = { handleTapZoneAction(tapZoneLayout.right) },
                            onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                            onAnchorClick = viewModel::onAnchorClick,
                            onInlineFootnote = viewModel::showInlineFootnote,
                            webtoonMode = uiState.readingMode == ReadingMode.WEBTOON,
                            onVerticalBoundary = { direction ->
                                when {
                                    direction > 0 -> viewModel.nextPage()
                                    direction < 0 -> viewModel.prevPage()
                                }
                            },
                            contentTopInsetPx = htmlContentTopInsetPx,
                            contentBottomInsetPx = htmlContentBottomInsetPx,
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
                            fontSize     = uiState.textFontSize,
                            colorScheme  = uiState.textColorScheme,
                            readerPreset = activeReaderPreset,
                            fontFamily   = resolvedTextFont.familyName,
                            fontSourceUrl = resolvedTextFont.sourceUrl,
                            lineHeight   = uiState.textLineHeight,
                            letterSpacing = uiState.textLetterSpacing,
                            wordSpacing = uiState.textWordSpacing,
                            paragraphSpacing = uiState.textParagraphSpacing,
                            textAlign    = uiState.textAlignment,
                            bold         = uiState.textBold,
                            translateActionLabel = readerText.selectionTranslateAction,
                            dictionaryActionLabel = readerText.openDictionary,
                            explainActionLabel = readerText.selectionExplainAction,
                            saveQuoteActionLabel = readerText.saveQuote
                        )
                    } else if (uiState.usesTextReaderContent()) {
                        // Text/archive readers must never fall through to bitmap PageView/WebtoonView:
                        // while their first HTML page is still being parsed, the bitmap path can only
                        // show an endless spinner because text readers intentionally return no Bitmap.
                        CircularProgressIndicator(
                            modifier = Modifier.align(Alignment.Center),
                            color = MaterialTheme.colorScheme.primary
                        )
                    } else if (uiState.readingMode == ReadingMode.WEBTOON) {
                        WebtoonView(
                            viewModel = viewModel,
                            uiState = uiState,
                            imageScaleMode = uiState.imageScaleMode,
                            marginCropHorizontal = effectiveMarginCropHorizontal,
                            marginCropVertical = effectiveMarginCropVertical,
                            onLeftTap = { handleTapZoneAction(tapZoneLayout.left) },
                            onRightTap = { handleTapZoneAction(tapZoneLayout.right) },
                            onCenterTap = { handleTapZoneAction(tapZoneLayout.center) }
                        )
                    } else {
                        PageView(
                            viewModel = viewModel,
                            uiState = uiState,
                            imageScaleMode = uiState.imageScaleMode,
                            marginCropHorizontal = effectiveMarginCropHorizontal,
                            marginCropVertical = effectiveMarginCropVertical,
                            onLeftTap = { handleTapZoneAction(tapZoneLayout.left) },
                            onRightTap = { handleTapZoneAction(tapZoneLayout.right) },
                            onCenterTap = { handleTapZoneAction(tapZoneLayout.center) }
                        )
                    }
                }

                // Расчет цвета для панелей (затемнение меню)
                val combinedToolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f)
                val effectiveToolbarOpacity = readerEffectiveToolbarOpacity(combinedToolbarOpacity, activeReaderPreset)
                val effectiveToolbarBlur = readerEffectiveToolbarBlur(uiState.toolbarBlur, activeReaderPreset)
                val chromeSurface = readerPanelSurfaceColor(
                    base = MaterialTheme.colorScheme.surface,
                    emphasis = (effectiveToolbarOpacity + effectiveToolbarBlur * 0.06f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                    minAlpha = if (activeReaderPreset == ReadingPreset.EINK) {
                        1f
                    } else {
                        READER_TOOLBAR_MIN_OPACITY
                    }
                )
                val overlaySurface = readerPanelSurfaceColor(
                    base = MaterialTheme.colorScheme.surface,
                    emphasis = (effectiveToolbarOpacity + effectiveToolbarBlur * 0.03f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                    minAlpha = if (activeReaderPreset == ReadingPreset.EINK) {
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
                            .fillMaxWidth(),
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

                // Нижняя область: Информационные панели (заметки, сноски) и Тулбар
                Box(
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .fillMaxWidth()
                ) {
                    // Фоновый слой с размытием — не затрагивает контент (иконки/текст)
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
                            expanded = uiState.footnotePresentation == FootnotePresentation.EXPANDED ||
                                uiState.chromeState == ReaderChromeState.EXPANDED,
                            onDismiss = viewModel::dismissFootnote,
                            onExpand = viewModel::expandFootnote,
                            onCollapse = viewModel::collapseFootnote,
                            modifier = Modifier.padding(horizontal = if (uiState.chromeState == ReaderChromeState.HIDDEN) 12.dp else 0.dp),
                            palette = { scheme -> colorSchemePaletteForPreset(scheme, activeReaderPreset) }
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
                } // Box (нижняя область)

                // Верхние инструменты - скрываем, если открыты настройки или оглавление
                if (uiState.chromeState != ReaderChromeState.HIDDEN && !uiState.showTextSettings && !uiState.showTocSheet) {
                    Box(
                        modifier = Modifier
                            .align(Alignment.TopCenter)
                            .fillMaxWidth()
                    ) {
                        // Фоновый слой с размытием — иконки и текст остаются чёткими
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
                                    showTocIcon = uiState.chromeShowTocIcon,
                                    showTextSettingsIcon = uiState.chromeShowStyleIcon,
                                    showAudioIcon = uiState.chromeShowAudioIcon,
                                    showDirectionIcon = uiState.chromeShowDirectionIcon,
                                    showTranslateIcon = uiState.chromeShowTranslateIcon,
                                    showBrightnessIcon = uiState.chromeShowBrightnessIcon,
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
                                    }
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

    // ── Оглавление (ModalBottomSheet) ─────────────────────────────────────────
    if (uiState.showTocSheet) {
        TocBottomSheet(
            entries = uiState.tableOfContents,
            currentPage = uiState.currentPage,
            bookmarkedPages = uiState.bookmarkedPages,
            readerPreset = activeReaderPreset,
            toolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f),
            toolbarBlur = uiState.toolbarBlur,
            onNavigate = { page ->
                viewModel.navigateTo(page)
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
                    viewModel.navigateTo(page)
                }
            },
            onVoiceNameChange = { value ->
                viewModel.setTtsVoiceName(value)
                ttsController.selectVoice(value)
            },
            onSpeedChange = viewModel::setTtsSpeed,
            onPitchChange = viewModel::setTtsPitch,
            onVolumeChange = viewModel::setTtsVolume,
            onSleepTimerChange = viewModel::setTtsSleepTimerMode
        )
    }

    // ── Настройки текста (ModalBottomSheet) ────────────────────────────────────
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
                    Text(if (strings.languageCode == "ru") "Удалить" else "Delete")
                }
            },
            dismissButton = {
                TextButton(onClick = { pendingCustomFontDeletion = null }) {
                    Text(if (strings.languageCode == "ru") "Отмена" else "Cancel")
                }
            },
            title = {
                Text(if (strings.languageCode == "ru") "Удалить шрифт?" else "Delete font?")
            },
            text = {
                Text(
                    if (strings.languageCode == "ru") {
                        "Шрифт \"$fontName\" будет удалён из приложения. Если он выбран сейчас, чтение вернётся на Georgia."
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun SelectedTextActionSheet(
    state: SelectedTextActionSheetState,
    onDismiss: () -> Unit,
    onTranslate: () -> Unit,
    onDictionary: () -> Unit,
    onExplain: () -> Unit,
    onSaveQuote: () -> Unit
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
                OutlinedButton(
                    onClick = onSaveQuote,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(readerText.saveQuote)
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
    onCopy: (String) -> Unit,
    onSaveQuote: () -> Unit
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
                TextButton(
                    onClick = onSaveQuote,
                    enabled = !state.isLoading && state.originalText.isNotBlank()
                ) {
                    Text(readerText.saveQuote)
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
    val panelColor = MaterialTheme.colorScheme.surface.copy(alpha = 1f)
    Surface(
        modifier = modifier.fillMaxWidth(),
        color = panelColor,
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
    readerPreset: ReadingPreset,
    toolbarOpacity: Float,
    toolbarBlur: Float,
    onNavigate: (Int) -> Unit,
    onRemoveBookmark: (Int) -> Unit,
    onDismiss: () -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val effectiveToolbarOpacity = readerEffectiveToolbarOpacity(toolbarOpacity, readerPreset)
    val effectiveToolbarBlur = readerEffectiveToolbarBlur(toolbarBlur, readerPreset)
    val sheetShape = RoundedCornerShape(topStart = 24.dp, topEnd = 24.dp)
    val sheetSurface = readerPanelSurfaceColor(
        base = MaterialTheme.colorScheme.surface,
        emphasis = if (readerPreset == ReadingPreset.EINK) {
            1f
        } else {
            (effectiveToolbarOpacity + 0.18f + effectiveToolbarBlur * 0.08f).coerceIn(0.92f, 1f)
        },
        minAlpha = if (readerPreset == ReadingPreset.EINK) 1f else 0.94f
    )
    val itemSurface = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = if (readerPreset == ReadingPreset.EINK) 1f else 0.98f)
    val activeItemSurface = MaterialTheme.colorScheme.primaryContainer.copy(alpha = if (readerPreset == ReadingPreset.EINK) 1f else 0.92f)
    val secondaryPillSurface = MaterialTheme.colorScheme.surface.copy(alpha = 0.98f)
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
        shape = sheetShape,
        containerColor = sheetSurface,
        contentColor = MaterialTheme.colorScheme.onSurface,
        tonalElevation = readerPanelTonalElevation(effectiveToolbarBlur, base = 0f, extra = 1f),
        scrimColor = readerPanelScrimColor(MaterialTheme.colorScheme.onSurface, effectiveToolbarBlur),
        dragHandle = {
            BottomSheetDefaults.DragHandle(
                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.62f)
            )
        }
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 12.dp)
        ) {
            TabRow(
                modifier = Modifier.heightIn(min = 42.dp),
                selectedTabIndex = selectedTabIndex,
                containerColor = Color.Transparent
            ) {
                if (showChaptersTab) {
                    Tab(
                        modifier = Modifier.heightIn(min = 42.dp),
                        selected = selectedTab == "chapters",
                        onClick = { selectedTab = "chapters" },
                        text = {
                            Text(
                                readerText.chapters,
                                style = MaterialTheme.typography.labelMedium
                            )
                        }
                    )
                }
                if (showBookmarksTab) {
                    Tab(
                        modifier = Modifier.heightIn(min = 42.dp),
                        selected = selectedTab == "bookmarks",
                        onClick = { selectedTab = "bookmarks" },
                        text = {
                            val count = bookmarkedPages.size
                            Text(
                                readerBookmarksTabLabel(count, strings.languageCode),
                                style = MaterialTheme.typography.labelMedium
                            )
                        }
                    )
                }
            }

            when (selectedTab) {
                "chapters" -> {
                    if (!showChaptersTab) return@Column
                    LazyColumn(
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(max = 456.dp),
                        contentPadding = PaddingValues(top = 8.dp, bottom = 10.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        itemsIndexed(entries) { idx, entry ->
                            val nextPageIndex = entries.getOrNull(idx + 1)?.pageIndex ?: Int.MAX_VALUE
                            val isCurrentChapter = currentPage >= entry.pageIndex && currentPage < nextPageIndex
                            Surface(
                                modifier = Modifier.fillMaxWidth(),
                                shape = RoundedCornerShape(16.dp),
                                color = if (isCurrentChapter) activeItemSurface else itemSurface
                            ) {
                                Row(
                                    modifier = Modifier
                                        .fillMaxWidth()
                                        .clickable { onNavigate(entry.pageIndex) }
                                        .padding(horizontal = 14.dp, vertical = 10.dp),
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
                                            MaterialTheme.colorScheme.primary.copy(alpha = 0.14f)
                                        } else {
                                            secondaryPillSurface
                                        }
                                    ) {
                                        Text(
                                            text = "${entry.pageIndex + 1}",
                                            modifier = Modifier.padding(horizontal = 9.dp, vertical = 3.dp),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = if (isCurrentChapter)
                                                MaterialTheme.colorScheme.primary
                                            else MaterialTheme.colorScheme.onSurfaceVariant,
                                            fontWeight = if (isCurrentChapter) FontWeight.SemiBold else FontWeight.Normal
                                        )
                                    }
                                }
                            }
                        }
                        item { Spacer(Modifier.navigationBarsPadding()) }
                    }
                }
                "bookmarks" -> {
                    if (!showBookmarksTab) return@Column
                    val sortedBookmarks = remember(bookmarkedPages) { bookmarkedPages.sorted() }
                    if (sortedBookmarks.isEmpty()) {
                        Surface(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(top = 8.dp)
                                .height(176.dp),
                            shape = RoundedCornerShape(18.dp),
                            color = itemSurface
                        ) {
                            Box(
                                modifier = Modifier.fillMaxSize(),
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
                        }
                    } else {
                        LazyColumn(
                            modifier = Modifier
                                .fillMaxWidth()
                                .heightIn(max = 456.dp),
                            contentPadding = PaddingValues(top = 8.dp, bottom = 10.dp),
                            verticalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            items(sortedBookmarks) { page ->
                                val isCurrent = page == currentPage
                                Surface(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = RoundedCornerShape(16.dp),
                                    color = if (isCurrent) activeItemSurface else itemSurface
                                ) {
                                    Row(
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .clickable { onNavigate(page) }
                                            .padding(start = 14.dp, end = 6.dp, top = 9.dp, bottom = 9.dp),
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
                                            modifier = Modifier.size(32.dp)
                                        ) {
                                            Icon(
                                                Icons.Default.Delete,
                                                contentDescription = readerText.deleteBookmark,
                                                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                                                modifier = Modifier.size(18.dp)
                                            )
                                        }
                                    }
                                }
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
private fun TextPageTranslationSheet(
    entries: List<TocEntry>,
    currentPage: Int,
    totalPages: Int,
    onDismiss: () -> Unit,
    onTranslatePage: (Int) -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val title = when (strings.languageCode) {
        "en" -> "Translate page"
        "ja" -> "ページを翻訳"
        "zh" -> "翻译页面"
        "ko" -> "페이지 번역"
        else -> "Перевести страницу"
    }
    val currentLabel = when (strings.languageCode) {
        "en" -> "Current"
        "ja" -> "現在"
        "zh" -> "当前"
        "ko" -> "현재"
        else -> "Текущая"
    }

    ModalBottomSheet(onDismissRequest = onDismiss) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 12.dp)
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.titleMedium,
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 8.dp)
            )
            LazyColumn(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = 456.dp),
                contentPadding = PaddingValues(top = 4.dp, bottom = 12.dp),
                verticalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                if (entries.isNotEmpty()) {
                    itemsIndexed(entries) { index, entry ->
                        val nextPageIndex = entries.getOrNull(index + 1)?.pageIndex ?: Int.MAX_VALUE
                        val isCurrent = currentPage >= entry.pageIndex && currentPage < nextPageIndex
                        Surface(
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(16.dp),
                            color = if (isCurrent) {
                                MaterialTheme.colorScheme.primaryContainer
                            } else {
                                MaterialTheme.colorScheme.surfaceVariant
                            }
                        ) {
                            Row(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .clickable { onTranslatePage(entry.pageIndex) }
                                    .padding(horizontal = 14.dp, vertical = 10.dp),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Column(modifier = Modifier.weight(1f)) {
                                    Text(
                                        text = normalizedTocTitle(entry.title),
                                        style = MaterialTheme.typography.bodyMedium,
                                        maxLines = 2,
                                        overflow = TextOverflow.Ellipsis
                                    )
                                    Text(
                                        text = readerPageLabel(entry.pageIndex, strings.languageCode),
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.onSurfaceVariant
                                    )
                                }
                                if (isCurrent) {
                                    Text(
                                        text = currentLabel,
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.primary
                                    )
                                }
                            }
                        }
                    }
                } else {
                    items(totalPages.coerceAtLeast(1)) { index ->
                        val isCurrent = index == currentPage
                        Surface(
                            modifier = Modifier.fillMaxWidth(),
                            shape = RoundedCornerShape(16.dp),
                            color = if (isCurrent) {
                                MaterialTheme.colorScheme.primaryContainer
                            } else {
                                MaterialTheme.colorScheme.surfaceVariant
                            }
                        ) {
                            Row(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .clickable { onTranslatePage(index) }
                                    .padding(horizontal = 14.dp, vertical = 10.dp),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Text(
                                    text = readerPageLabel(index, strings.languageCode),
                                    style = MaterialTheme.typography.bodyMedium
                                )
                                if (isCurrent) {
                                    Text(
                                        text = currentLabel,
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.primary
                                    )
                                }
                            }
                        }
                    }
                }
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
                    androidx.compose.foundation.lazy.LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        com.example.core.ui.theme.readingPresetQuickChoices().forEach { preset ->
                            item {
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
                    val fontPickerContext = LocalContext.current
                    val fonts = remember(fontPickerContext) {
                        ReaderTextFontCatalog.availableFontFamilies(fontPickerContext)
                    }
                    LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        items(fonts) { f ->
                            FilterChip(
                                selected = (fontFamily == f) || (fontFamily !in fonts && f == "Georgia"),
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
