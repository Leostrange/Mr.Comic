package com.example.feature.reader.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.pm.ActivityInfo
import android.content.res.Configuration
import android.net.Uri
import android.os.Build
import android.util.Log
import android.view.ActionMode
import android.view.KeyEvent
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
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
import androidx.compose.material.icons.filled.Edit
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
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.SpanStyle
import androidx.compose.ui.text.buildAnnotatedString
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.Hyphens
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.withStyle
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.viewinterop.AndroidView
import androidx.hilt.navigation.compose.hiltViewModel
import android.webkit.JavascriptInterface
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.Toast
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.fragment.app.FragmentActivity
import androidx.fragment.app.FragmentContainerView
import androidx.compose.runtime.getValue
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.webkit.WebViewAssetLoader
import org.json.JSONObject
import org.json.JSONTokener
import com.example.core.model.BookSearchHit
import com.example.core.model.isTextReadingFormat
import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderRendererKey
import com.example.core.model.ReadingMode
import com.example.core.model.ComicFormat
import com.example.core.model.ReaderInfoSlot
import com.example.core.model.ReaderTapZoneAction
import com.example.core.model.ReaderTapZoneMode
import com.example.core.model.ReaderTtsSleepTimerMode
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationTransportPreference
import com.example.core.model.readerFormatCapabilities
import com.example.core.model.resolveReaderSimpleTapZoneLayout
import com.example.core.model.resolveReaderTapZoneLayout
import com.example.core.ui.eink.LocalEInkMode
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.theme.ReadingPreset
import com.example.engine.epub.readium.ReadiumPublicationSessionAccess
import com.example.engine.epub.readium.toReaderLocator
import com.example.engine.epub.readium.toReadiumEpubPreferences
import com.example.engine.formats.base.TocEntry
import com.example.feature.reader.ui.components.PageView
import com.example.feature.reader.ui.components.ReaderBottomBar
import com.example.feature.reader.ui.components.WebtoonView
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.withContext
import java.io.ByteArrayInputStream
import java.io.File
import java.time.LocalTime
import java.time.format.DateTimeFormatter
import java.util.Locale
import org.readium.r2.navigator.HyperlinkNavigator
import org.readium.r2.navigator.Navigator
import org.readium.r2.navigator.Decoration
import org.readium.r2.navigator.epub.EpubNavigatorFactory
import org.readium.r2.navigator.epub.EpubNavigatorFragment
import org.readium.r2.navigator.input.DragEvent
import org.readium.r2.navigator.input.InputListener
import org.readium.r2.navigator.input.KeyEvent as ReadiumKeyEvent
import org.readium.r2.navigator.input.TapEvent
import org.readium.r2.shared.publication.Locator
import org.readium.r2.shared.util.AbsoluteUrl
import org.readium.r2.shared.util.Url
import org.readium.r2.shared.util.data.ReadError

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
  document.addEventListener('touchmove',function(){
    window.__readerTouchMoved=true;
  },{passive:true});
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
    if(Math.abs(dx)>54&&Math.abs(dy)<24&&Math.abs(dx)>Math.abs(dy)*1.8){
      if(typeof _NativeReader!='undefined')_NativeReader.onTap(dx>0?0.1:0.9);
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
          var anchorId=href.substring(1);
          var target=document.getElementById(anchorId)||document.querySelector('[name="'+anchorId+'"]');
          if(target){target.scrollIntoView({behavior:'smooth',block:'start'});}
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
            var fragHref=href.split('#')[1]||'';
            var fragTarget=document.getElementById(fragHref)||document.querySelector('[name="'+fragHref+'"]');
            if(fragTarget){
              fragTarget.scrollIntoView({behavior:'smooth',block:'start'});
              return;
            }
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
          if(typeof _NativeReader!='undefined')_NativeReader.onTap(x);
        }
        return;
      }
      t=t.parentNode;
    }
    var x=e.clientX/window.innerWidth;
    if(typeof _NativeReader!='undefined')_NativeReader.onTap(x);
  },false);
})();"""

private const val HTML_READER_TAG = "ReaderHtmlView"
private const val HTML_READER_BASE_URL = "https://appassets.androidplatform.net/reader/"
private const val HTML_READER_ASSET_PATH = "/reader/"
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
        override val loadToken: String = "inline:${baseUrl.hashCode()}:${html.hashCode()}"
    }
}

private fun readerAssetDocumentBaseUrl(documentPath: String): String =
    "${HTML_READER_BASE_URL}content/${documentPath.trimStart('/')}"

internal fun readerPreserveLayoutMarkerScript(): String = """
    if(preservePublisherLayout){
      document.body.setAttribute('data-mrcomic-preserve-layout','true');
    }else{
      document.body.removeAttribute('data-mrcomic-preserve-layout');
    }
""".trimIndent()

private class ReaderFormatAssetPathHandler(
    private val resolver: (String) -> com.example.engine.formats.base.FormatReaderWebResource?
) : WebViewAssetLoader.PathHandler {

    @Volatile
    private var servedPage: Pair<String, ByteArray>? = null

    fun servePage(documentPath: String, themedHtml: String) {
        val key = documentPath.trimStart('/')
        Log.d(HTML_READER_TAG, "servePage: key=$key htmlLen=${themedHtml.length}")
        servedPage = key to themedHtml.toByteArray(Charsets.UTF_8)
    }

    fun clearServedPage() {
        servedPage = null
    }

    override fun handle(path: String): WebResourceResponse? {
        val rawPath = path.substringBefore('#').substringBefore('?').trimStart('/')
        val cleanPath = if (rawPath.startsWith("content/")) rawPath.removePrefix("content/") else rawPath
        val served = servedPage
        if (served != null && (cleanPath == served.first || rawPath == "content/${served.first}")) {
            Log.d(HTML_READER_TAG, "handle: serving page for $rawPath")
            return WebResourceResponse(
                "text/html",
                "UTF-8",
                ByteArrayInputStream(served.second)
            ).apply {
                responseHeaders = mapOf(
                    "Cache-Control" to "no-store, no-cache, must-revalidate, max-age=0",
                    "Pragma" to "no-cache",
                    "Expires" to "0",
                    "Access-Control-Allow-Origin" to "*"
                )
            }
        }
        val resource = resolver(cleanPath)
        if (resource != null) {
            Log.d(HTML_READER_TAG, "handle: resolved asset $cleanPath (${resource.mimeType}, ${resource.bytes.size} bytes)")
        } else {
            Log.w(HTML_READER_TAG, "handle: FAILED to resolve asset $cleanPath (rawPath=$rawPath)")
        }
        if (resource == null) return null
        return WebResourceResponse(
            resource.mimeType,
            resource.encoding,
            ByteArrayInputStream(resource.bytes)
        ).apply {
            responseHeaders = mapOf(
                "Cache-Control" to "no-store, no-cache, must-revalidate, max-age=0",
                "Pragma" to "no-cache",
                "Expires" to "0",
                "Access-Control-Allow-Origin" to "*"
            )
        }
    }
}

private class ReaderUserFontAssetPathHandler(
    private val context: Context
) : WebViewAssetLoader.PathHandler {
    override fun handle(path: String): WebResourceResponse? {
        val resource = ReaderTextFontCatalog.openCustomFontAsset(context, path) ?: return null
        return WebResourceResponse(
            resource.mimeType,
            resource.encoding,
            ByteArrayInputStream(resource.bytes)
        ).apply {
            responseHeaders = mapOf(
                "Cache-Control" to "no-store, no-cache, must-revalidate, max-age=0",
                "Pragma" to "no-cache",
                "Expires" to "0",
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
        // Asset-backed EPUB/HTML pages rely on relative appassets paths for images, CSS, and fonts.
        // Loading them through a temporary file:// URL breaks that resolution and makes covers vanish.
        val mustStayInline = resolvedBaseUrl.startsWith(HTML_READER_BASE_URL, ignoreCase = true)
        if (mustStayInline || themedHtml.length <= MAX_INLINE_HTML_SOURCE_LENGTH) {
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

private const val READIUM_EPUB_FRAGMENT_TAG_PREFIX = "reader_readium_epub_"

private fun findFragmentActivity(context: Context): FragmentActivity? {
    var current: Context? = context
    while (current is ContextWrapper) {
        if (current is FragmentActivity) return current
        current = current.baseContext
    }
    return current as? FragmentActivity
}

private fun normalizedReadiumHref(href: String?): String? =
    href
        ?.substringBefore('#')
        ?.trim()
        ?.trimStart('/')
        ?.takeIf { it.isNotEmpty() }

private const val READIUM_HIGHLIGHT_GROUP = "reader_saved_highlights"

private fun parseReadiumLocatorJson(raw: String): Locator? =
    runCatching {
        Locator.fromJSON(JSONObject(raw), null)
    }.getOrNull()

private fun ReaderHighlightEntry.toReadiumDecoration(): Decoration? {
    val locator = parseReadiumLocatorJson(locatorJson) ?: return null
    return Decoration(
        id = id,
        locator = locator,
        style = Decoration.Style.Highlight(colorArgb, false),
        extras = emptyMap()
    )
}

@Composable
private fun ReadiumEpubView(
    sessionAccess: ReadiumPublicationSessionAccess,
    sessionId: String,
    targetLocator: ReaderLocator?,
    preferences: com.example.core.model.ReaderPreferenceSnapshot,
    savedHighlights: List<ReaderHighlightEntry>,
    onLocatorChanged: (ReaderLocator) -> Unit,
    onSelectionDetected: (String, String) -> Unit,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit
) {
    val context = LocalContext.current
    val activity = remember(context) { findFragmentActivity(context) }
    val fragmentTag = remember(sessionId) { "$READIUM_EPUB_FRAGMENT_TAG_PREFIX$sessionId" }
    val containerId = rememberSaveable(sessionId) { View.generateViewId() }
    val updatedLocatorChanged by rememberUpdatedState(onLocatorChanged)
    val updatedSelectionDetected by rememberUpdatedState(onSelectionDetected)
    val updatedLeftTap by rememberUpdatedState(onLeftTap)
    val updatedRightTap by rememberUpdatedState(onRightTap)
    val updatedCenterTap by rememberUpdatedState(onCenterTap)
    val readiumPreferences = remember(preferences) { preferences.toReadiumEpubPreferences() }
    val publication = sessionAccess.publication ?: return
    val initialLocator = remember(sessionAccess, targetLocator?.href, targetLocator?.fragment) {
        sessionAccess.resolveReadiumLocator(targetLocator)
    }

    AndroidView(
        modifier = Modifier.fillMaxSize(),
        factory = { androidContext ->
            FragmentContainerView(androidContext).apply {
                id = containerId
                layoutParams = ViewGroup.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT
                )
            }
        }
    )

    DisposableEffect(activity, publication, sessionId, containerId) {
        val fragmentManager = activity?.supportFragmentManager
        if (fragmentManager == null) {
            onDispose { }
        } else {
            val navigatorListener = object : EpubNavigatorFragment.Listener {
                override fun onExternalLinkActivated(url: AbsoluteUrl) {
                    runCatching {
                        val intent = Intent(Intent.ACTION_VIEW, Uri.parse(url.toString())).apply {
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        }
                        context.startActivity(intent)
                    }.onFailure { error ->
                        Log.w(HTML_READER_TAG, "Failed to open external Readium link: $url", error)
                    }
                }

                override fun onResourceLoadFailed(url: Url, error: ReadError) {
                    Log.w(HTML_READER_TAG, "Readium resource load failed for $url: $error")
                }

                override fun onJumpToLocator(locator: org.readium.r2.shared.publication.Locator) {
                    updatedLocatorChanged(locator.toReaderLocator())
                }
            }

            val paginationListener = object : EpubNavigatorFragment.PaginationListener {
                override fun onPageChanged(
                    pageIndex: Int,
                    totalPages: Int,
                    locator: org.readium.r2.shared.publication.Locator
                ) {
                    updatedLocatorChanged(locator.toReaderLocator())
                }

                override fun onPageLoaded() = Unit
            }

            val navigatorFactory = EpubNavigatorFactory(publication)
            val fragmentFactory = navigatorFactory.createFragmentFactory(
                initialLocator,
                publication.readingOrder,
                readiumPreferences,
                navigatorListener,
                paginationListener
            )

            val existing = fragmentManager.findFragmentByTag(fragmentTag) as? EpubNavigatorFragment
            val fragment = existing ?: run {
                val previousFactory = fragmentManager.fragmentFactory
                try {
                    fragmentManager.fragmentFactory = fragmentFactory
                    val created = fragmentFactory.instantiate(
                        context.classLoader,
                        EpubNavigatorFragment::class.java.name
                    )
                    fragmentManager.beginTransaction()
                        .setReorderingAllowed(true)
                        .replace(containerId, created, fragmentTag)
                        .commitNow()
                    fragmentManager.findFragmentByTag(fragmentTag) as? EpubNavigatorFragment
                } finally {
                    fragmentManager.fragmentFactory = previousFactory
                }
            }

            val inputListener = object : InputListener {
                override fun onTap(event: TapEvent): Boolean {
                    val publicationView = fragment?.publicationView ?: return false
                    val width = publicationView.width.toFloat().takeIf { it > 0f } ?: return false
                    val xPercent = event.point.x / width
                    when {
                        xPercent <= 0.33f -> updatedLeftTap()
                        xPercent >= 0.67f -> updatedRightTap()
                        else -> updatedCenterTap()
                    }
                    return true
                }

                override fun onDrag(event: DragEvent): Boolean = false

                override fun onKey(event: ReadiumKeyEvent): Boolean = false
            }

            fragment?.addInputListener(inputListener)
            fragment?.submitPreferences(readiumPreferences)

            onDispose {
                runCatching { fragment?.removeInputListener(inputListener) }
                if (!fragmentManager.isDestroyed) {
                    runCatching {
                        fragmentManager.findFragmentByTag(fragmentTag)?.let { attached ->
                            fragmentManager.beginTransaction()
                                .setReorderingAllowed(true)
                                .remove(attached)
                                .commitNowAllowingStateLoss()
                        }
                    }
                }
            }
        }
    }

    LaunchedEffect(
        activity,
        fragmentTag,
        publication,
        readiumPreferences,
        targetLocator?.href,
        targetLocator?.fragment,
        targetLocator?.progression,
        targetLocator?.position
    ) {
        val fragmentManager = activity?.supportFragmentManager ?: return@LaunchedEffect
        val fragment = fragmentManager.findFragmentByTag(fragmentTag) as? EpubNavigatorFragment ?: return@LaunchedEffect
        runCatching { fragment.submitPreferences(readiumPreferences) }
        val resolvedTarget = initialLocator ?: return@LaunchedEffect
        val currentLocator = fragment.currentLocator.value.toReaderLocator()
        val currentHref = normalizedReadiumHref(currentLocator.href)
        val targetHref = normalizedReadiumHref(targetLocator?.href)
        val currentFragment = currentLocator.fragment
        val targetFragment = targetLocator?.fragment
            ?: targetLocator?.href?.substringAfter('#', "")?.takeIf { it.isNotBlank() }
        if (
            currentHref != null &&
            targetHref != null &&
            currentHref.equals(targetHref, ignoreCase = true) &&
            currentFragment == targetFragment
        ) {
            return@LaunchedEffect
        }
        runCatching { fragment.go(resolvedTarget, false) }
            .onFailure { error ->
                Log.w(HTML_READER_TAG, "Failed to sync Readium locator to ${targetLocator?.href}", error)
            }
    }

    LaunchedEffect(activity, fragmentTag, sessionId) {
        var lastSelectionSignature: String? = null
        while (isActive) {
            val fragmentManager = activity?.supportFragmentManager
            val fragment = fragmentManager?.findFragmentByTag(fragmentTag) as? EpubNavigatorFragment
            if (fragment != null) {
                val selection = runCatching { fragment.currentSelection() }.getOrNull()
                val locator = selection?.locator
                val selectionText = locator
                    ?.text
                    ?.highlight
                    ?.trim()
                    ?.replace(Regex("\\s+"), " ")
                    .orEmpty()
                val locatorJson = runCatching { locator?.toJSON()?.toString().orEmpty() }
                    .getOrDefault("")
                if (selectionText.isBlank()) {
                    lastSelectionSignature = null
                } else {
                    val selectionSignature = "$selectionText|$locatorJson"
                    if (selectionSignature != lastSelectionSignature) {
                        lastSelectionSignature = selectionSignature
                        runCatching { fragment.clearSelection() }
                        updatedSelectionDetected(selectionText, locatorJson)
                    }
                }
            }
            delay(350)
        }
    }

    LaunchedEffect(activity, fragmentTag, savedHighlights) {
        val fragmentManager = activity?.supportFragmentManager ?: return@LaunchedEffect
        val fragment = fragmentManager.findFragmentByTag(fragmentTag) as? EpubNavigatorFragment ?: return@LaunchedEffect
        val decorations = savedHighlights.mapNotNull { it.toReadiumDecoration() }
        runCatching {
            fragment.applyDecorations(decorations, READIUM_HIGHLIGHT_GROUP)
        }.onFailure { error ->
            Log.w(HTML_READER_TAG, "Failed to apply Readium highlights", error)
        }
    }
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
private const val MAX_INLINE_HTML_SOURCE_LENGTH = 6_000_000

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
    topPaddingPx: Int  = 16
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
          "body:not([data-mrcomic-preserve-layout='true']) [bgcolor],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color:#fff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color: #fff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color:#ffffff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color: #ffffff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background:#fff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background: #fff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background:#ffffff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background: #ffffff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color:white'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color: white'],body:not([data-mrcomic-preserve-layout='true']) [style*='background:white'],body:not([data-mrcomic-preserve-layout='true']) [style*='background: white'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color:rgb(255'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color: rgb(255'],body:not([data-mrcomic-preserve-layout='true']) [style*='background:rgb(255'],body:not([data-mrcomic-preserve-layout='true']) [style*='background: rgb(255']{background-color:transparent !important;background-image:none !important;box-shadow:none !important;}"+
          "h1,h2,h3,h4,h5,h6,.calibre5,.calibre12{color:$resolvedTextColor !important;background-color:$headingBg !important;border-color:$headingBorder !important;}"+
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
    val fontStack = if (fontSourceUrl != null) "'$fontFamily',Georgia,serif" else "$fontFamily,Georgia,serif"
    return """(function(){$fontFaceSnip $themeStyle $spacingStyle if(document.body){""" +
        """var preservePublisherLayout=document.body.hasAttribute('data-mrcomic-preserve-layout')||document.body.classList.contains('cover')||document.body.classList.contains('mrcomic-epub-cover-only')||document.body.classList.contains('mrcomic-epub-cover-title')||document.body.classList.contains('mrcomic-epub-titlepage');""" +
        """${readerPreserveLayoutMarkerScript()}""" +
        """document.documentElement.lang=document.documentElement.lang||'ru';""" +
        """document.body.style.color='$resolvedTextColor';""" +
        """document.documentElement.style.backgroundColor='$resolvedBackgroundColor';""" +
        """document.body.style.backgroundColor='$resolvedBackgroundColor';""" +
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
        """document.body.style.paddingBottom='24px';""" +
        """}else{""" +
        """document.body.style.removeProperty('font-size');""" +
        """document.body.style.removeProperty('font-weight');""" +
        """document.body.style.removeProperty('font-family');""" +
        """document.body.style.removeProperty('line-height');""" +
        """document.body.style.removeProperty('text-align');""" +
        """document.body.style.removeProperty('padding-left');""" +
        """document.body.style.removeProperty('padding-right');""" +
        """document.body.style.removeProperty('padding-top');""" +
        """document.body.style.removeProperty('padding-bottom');""" +
        """document.body.style.removeProperty('hyphens');""" +
        """document.body.style.removeProperty('-webkit-hyphens');""" +
        """}}$colorNotesDom})();"""
}

private fun buildThemedHtmlDocument(
    html: String,
    bg: String,
    fg: String
): String {
    val bootstrapStyle = """
        <style id="__reader_bootstrap_theme">
          html, body {
            background-color: $bg !important;
            color: $fg !important;
          }
          body:not([data-mrcomic-preserve-layout="true"]) {
            margin: 0 !important;
            color: $fg !important;
          }
          body[data-mrcomic-preserve-layout="true"] {
            color: $fg !important;
          }
          body[data-mrcomic-preserve-layout="true"] * {
            color: inherit !important;
          }
          body[data-mrcomic-preserve-layout="true"] a[href] {
            color: var(--mrcomic-reader-accent-color, #1a6f9a) !important;
          }
          body:not([data-mrcomic-preserve-layout="true"]) a[href] {
            color: var(--mrcomic-reader-accent-color, #1a6f9a) !important;
            text-decoration: underline !important;
            text-underline-offset: 0.14em !important;
            text-decoration-thickness: 0.08em !important;
          }
          body:not([data-mrcomic-preserve-layout="true"]) [bgcolor],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background-color:#fff"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background-color: #fff"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background-color:#ffffff"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background-color: #ffffff"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background:#fff"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background: #fff"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background:#ffffff"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background: #ffffff"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background-color:white"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background-color: white"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background:white"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background: white"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background-color:rgb(255"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background-color: rgb(255"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background:rgb(255"],
          body:not([data-mrcomic-preserve-layout="true"]) [style*="background: rgb(255"] {
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

private class ReaderWebView(context: android.content.Context) : WebView(context) {
    var translateSelectionLabel: String = ""
    var dictionarySelectionLabel: String = ""
    var explainSelectionLabel: String = ""
    var onSelectionActionRequest: ((ReaderSelectionAction, String) -> Unit)? = null
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

    fun markLoadRequested(loadToken: String) {
        committedLoadToken = null
        cancelInlineFallback()
        inlineFallback = null
        inlineFallbackAttempts = 0
        tag = loadToken
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
    formatHandler: ReaderFormatAssetPathHandler? = null,
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
    explainActionLabel: String
) {
    val context = LocalContext.current
    val topPaddingPx = 8
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
                settings.cacheMode          = WebSettings.LOAD_NO_CACHE
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
                onSelectionActionRequest = { action, selectedText ->
                    when (action) {
                        ReaderSelectionAction.TRANSLATE -> onTranslate.value(selectedText.trim())
                        ReaderSelectionAction.DICTIONARY -> onDictionary.value(selectedText.trim())
                        ReaderSelectionAction.EXPLAIN -> onExplain.value(selectedText.trim())
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
                                topPaddingPx = topPaddingPx
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
                    topPaddingPx = topPaddingPx
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
                        val docPath = assetDocumentPath
                        if (docPath != null && formatHandler != null &&
                            currentSource.baseUrl.startsWith(HTML_READER_BASE_URL, ignoreCase = true)
                        ) {
                            Log.d(HTML_READER_TAG, "loadUrl mode: docPath=$docPath baseUrl=${currentSource.baseUrl}")
                            formatHandler.servePage(docPath, currentSource.html)
                            webView.loadUrl(currentSource.baseUrl)
                        } else {
                            Log.d(HTML_READER_TAG, "loadDataWithBaseURL mode: docPath=$docPath baseUrl=${currentSource.baseUrl}")
                            webView.loadDataWithBaseURL(
                                currentSource.baseUrl,
                                currentSource.html,
                                "text/html",
                                "UTF-8",
                                null
                            )
                        }
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
            .fillMaxSize()
            .alpha(0f),
        factory = { ctx ->
            ReaderWebView(ctx).apply {
                settings.javaScriptEnabled = true
                settings.domStorageEnabled = true
                settings.loadsImagesAutomatically = true
                settings.allowFileAccess = true
                settings.allowContentAccess = true
                settings.cacheMode = WebSettings.LOAD_NO_CACHE
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
                webView.clearCache(true)
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
    val readerFormatHandler = remember(viewModel) {
        ReaderFormatAssetPathHandler { path -> viewModel.openHtmlAsset(path) }
    }
    val readerAssetLoader = remember(viewModel, context) {
        WebViewAssetLoader.Builder()
            .addPathHandler(
                READER_USER_FONT_ASSET_PATH,
                ReaderUserFontAssetPathHandler(context)
            )
            .addPathHandler(
                HTML_READER_ASSET_PATH,
                readerFormatHandler
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
    val isTextReader = shouldUseTextReaderChrome(
        rendererKey = uiState.readerRendererKey,
        hasCurrentHtmlContent = uiState.currentHtmlContent != null,
        isFormatTextReading = uiState.comic?.format?.isTextReadingFormat() == true
    )
    val isLandscape = configuration.orientation == Configuration.ORIENTATION_LANDSCAPE
    val readiumSessionAccess = remember(uiState.comic?.id, uiState.readerRendererKey) {
        viewModel.activeReadiumSessionAccess()
    }
    val readiumSessionId = remember(uiState.comic?.id, uiState.readerRendererKey) {
        viewModel.activeReadiumSessionId()
    }
    val readiumPreferenceSnapshot = remember(
        uiState.textFontSize,
        uiState.textFontFamily,
        uiState.textLineHeight,
        uiState.textLetterSpacing,
        uiState.textWordSpacing,
        uiState.textParagraphSpacing,
        uiState.textAlignment,
        uiState.textColorScheme,
        uiState.readingMode
    ) {
        viewModel.buildCurrentReaderPreferenceSnapshot()
    }
    val readiumTargetLocator = remember(
        uiState.readerRendererKey,
        uiState.sessionLocator,
        uiState.currentPage
    ) {
        resolveReadiumShellTargetLocator(
            rendererKey = uiState.readerRendererKey,
            sessionLocator = uiState.sessionLocator,
            currentPage = uiState.currentPage
        )
    }
    val supportsDocumentMarginCrop = uiState.comic?.format?.readerFormatCapabilities()?.supportsDocumentMarginCrop == true
    val effectiveMarginCropHorizontal = if (supportsDocumentMarginCrop) uiState.imageMarginCropHorizontal else 0f
    val effectiveMarginCropVertical = if (supportsDocumentMarginCrop) uiState.imageMarginCropVertical else 0f
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
    var showTextTranslationPageSheet by remember { mutableStateOf(false) }
    var pendingTtsRestartTargetPage by remember { mutableStateOf<Int?>(null) }
    var eyeRestReminderMinutes by remember { mutableStateOf<Int?>(null) }
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
        val importedStyle = runCatching {
            context.contentResolver.openInputStream(uri)
                ?.bufferedReader()
                ?.use { it.readText() }
                ?.let { viewModel.importReaderStyleFromJson(it) }
        }.getOrNull()
        Toast.makeText(
            context,
            if (importedStyle != null) {
                if (strings.languageCode == "ru") "Импортирован стиль: $importedStyle" else "Imported style: $importedStyle"
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

    // Immersive / fullscreen mode — hides system bars while reading.
    // Uses WindowInsetsControllerCompat so that show() animates bars in smoothly,
    // preventing a layout jump in the bottom navigation when returning to library.
    DisposableEffect(uiState.immersiveMode, context) {
        val activity = context as? Activity
        val window = activity?.window
        val controller = window?.let {
            WindowInsetsControllerCompat(it, it.decorView)
        }
        if (uiState.immersiveMode) {
            controller?.apply {
                hide(WindowInsetsCompat.Type.systemBars())
                systemBarsBehavior = WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
            }
        } else {
            controller?.show(WindowInsetsCompat.Type.systemBars())
        }
        onDispose {
            // Restore system bars when leaving the reader — animated via compat API
            controller?.show(WindowInsetsCompat.Type.systemBars())
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
                    val activeReadiumSessionAccess = readiumSessionAccess
                    if (
                        shouldRenderReadiumEpubContent(
                            rendererKey = uiState.readerRendererKey,
                            hasSessionAccess = activeReadiumSessionAccess != null
                        )
                    ) {
                        ReadiumEpubView(
                            sessionAccess = checkNotNull(activeReadiumSessionAccess),
                            sessionId = readiumSessionId ?: "readium_epub",
                            targetLocator = readiumTargetLocator,
                            preferences = readiumPreferenceSnapshot,
                            savedHighlights = uiState.savedHighlights,
                            onLocatorChanged = viewModel::onReadiumLocatorChanged,
                            onSelectionDetected = viewModel::showReadiumSelectedTextActions,
                            onLeftTap = { handleTapZoneAction(tapZoneLayout.left) },
                            onRightTap = { handleTapZoneAction(tapZoneLayout.right) },
                            onCenterTap = { handleTapZoneAction(tapZoneLayout.center) }
                        )
                    } else if (htmlContent != null) {
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
                            formatHandler = readerFormatHandler,
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
                            explainActionLabel = readerText.selectionExplainAction
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
                    minAlpha = if (activeReaderPreset == ReadingPreset.EINK) 1f else READER_TOOLBAR_MIN_OPACITY
                )
                val overlaySurface = readerPanelSurfaceColor(
                    base = MaterialTheme.colorScheme.surface,
                    emphasis = (effectiveToolbarOpacity + effectiveToolbarBlur * 0.03f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                    minAlpha = if (activeReaderPreset == ReadingPreset.EINK) 1f else READER_TOOLBAR_MIN_OPACITY
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
                    if (uiState.chromeState != ReaderChromeState.HIDDEN && !uiState.showTextSettings && !uiState.showTocSheet && !uiState.showSearchSheet) {
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
                if (uiState.chromeState != ReaderChromeState.HIDDEN && !uiState.showTextSettings && !uiState.showTocSheet && !uiState.showSearchSheet) {
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
                                    canShowToc = uiState.tableOfContents.isNotEmpty() ||
                                        uiState.bookmarkedPages.isNotEmpty() ||
                                        uiState.savedHighlights.isNotEmpty(),
                                    canSearch = shouldEnableReadiumSearch(uiState.readerRendererKey),
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
                                    onToggleSearch = viewModel::toggleSearchSheet,
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
            bookmarkedLocators = uiState.bookmarkedLocators,
            savedHighlights = uiState.savedHighlights,
            readerPreset = activeReaderPreset,
            toolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f),
            toolbarBlur = uiState.toolbarBlur,
            onNavigate = { entry ->
                viewModel.navigateToTocEntry(entry)
                viewModel.toggleTocSheet()
            },
            onRemoveBookmark = viewModel::removeBookmark,
            onRemoveHighlight = viewModel::removeHighlight,
            onUpdateHighlightNote = viewModel::updateHighlightNote,
            onDismiss = viewModel::toggleTocSheet
        )
    }

    if (uiState.showSearchSheet) {
        ReaderSearchBottomSheet(
            query = uiState.searchQuery,
            results = uiState.searchResults,
            isLoading = uiState.isSearchLoading,
            error = uiState.searchError,
            currentPage = uiState.currentPage,
            onQueryChange = viewModel::updateSearchQuery,
            onSearch = viewModel::submitSearch,
            onSelect = viewModel::navigateToSearchHit,
            onDismiss = viewModel::toggleSearchSheet
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

    if (showReaderAudioSheet) {
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
            onHighlight = viewModel::saveHighlightFromSelectedTextActions,
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
    onExplain: () -> Unit,
    onHighlight: () -> Unit,
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
                if (state.canHighlight) {
                    OutlinedButton(
                        onClick = onHighlight,
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Text(readerText.selectionHighlightAction)
                    }
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
    bookmarkedLocators: Map<Int, ReaderLocator>,
    savedHighlights: List<ReaderHighlightEntry>,
    readerPreset: ReadingPreset,
    toolbarOpacity: Float,
    toolbarBlur: Float,
    onNavigate: (TocEntry) -> Unit,
    onRemoveBookmark: (Int) -> Unit,
    onRemoveHighlight: (String) -> Unit,
    onUpdateHighlightNote: (String, String) -> Unit,
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
    var editingHighlightId by remember { mutableStateOf<String?>(null) }
    var editingHighlightNote by remember { mutableStateOf("") }
    var selectedTab by remember(entries, bookmarkedPages, savedHighlights) {
        mutableStateOf(
            when {
                entries.isEmpty() && bookmarkedPages.isNotEmpty() -> "bookmarks"
                entries.isEmpty() && savedHighlights.isNotEmpty() -> "highlights"
                else -> "chapters"
            }
        )
    }
    val showChaptersTab = entries.isNotEmpty()
    val hasBookmarks = bookmarkedPages.isNotEmpty()
    val hasHighlights = savedHighlights.isNotEmpty()
    val showBookmarksTab = hasBookmarks || (!showChaptersTab && selectedTab == "bookmarks")
    val showHighlightsTab = hasHighlights || (!showChaptersTab && !showBookmarksTab && selectedTab == "highlights")

    LaunchedEffect(showChaptersTab, hasBookmarks, hasHighlights) {
        when {
            selectedTab == "bookmarks" && !hasBookmarks && showChaptersTab -> selectedTab = "chapters"
            selectedTab == "bookmarks" && !hasBookmarks && !showChaptersTab && hasHighlights -> selectedTab = "highlights"
            selectedTab == "highlights" && !hasHighlights && showBookmarksTab -> selectedTab = "bookmarks"
            selectedTab == "highlights" && !hasHighlights && showChaptersTab -> selectedTab = "chapters"
            selectedTab == "chapters" && !showChaptersTab && hasBookmarks -> selectedTab = "bookmarks"
            selectedTab == "chapters" && !showChaptersTab && !hasBookmarks && hasHighlights -> selectedTab = "highlights"
            !showChaptersTab && !showBookmarksTab && !showHighlightsTab -> selectedTab = "chapters"
        }
    }

    val selectedTabIndex = when {
        selectedTab == "highlights" && showChaptersTab && showBookmarksTab -> 2
        selectedTab == "highlights" && (showChaptersTab || showBookmarksTab) -> 1
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
                if (showHighlightsTab) {
                    Tab(
                        modifier = Modifier.heightIn(min = 42.dp),
                        selected = selectedTab == "highlights",
                        onClick = { selectedTab = "highlights" },
                        text = {
                            val count = savedHighlights.size
                            Text(
                                readerHighlightsTabLabel(count, strings.languageCode),
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
                                        .clickable { onNavigate(entry) }
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
                                            .clickable {
                                                onNavigate(
                                                    TocEntry(
                                                        title = readerPageLabel(page, strings.languageCode),
                                                        pageIndex = page,
                                                        locator = bookmarkedLocators[page]
                                                    )
                                                )
                                            }
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
                "highlights" -> {
                    if (!showHighlightsTab) return@Column
                    val sortedHighlights = remember(savedHighlights) {
                        savedHighlights.sortedWith(compareBy<ReaderHighlightEntry> { it.pageIndex }.thenBy { it.createdAt })
                    }
                    if (sortedHighlights.isEmpty()) {
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
                                        readerText.noHighlights,
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
                            items(sortedHighlights, key = { it.id }) { highlight ->
                                val isCurrent = highlight.pageIndex == currentPage
                                Surface(
                                    modifier = Modifier.fillMaxWidth(),
                                    shape = RoundedCornerShape(16.dp),
                                    color = if (isCurrent) activeItemSurface else itemSurface
                                ) {
                                    Row(
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .clickable {
                                                val resolvedLocator = parseReadiumLocatorJson(highlight.locatorJson)
                                                    ?.toReaderLocator()
                                                    ?.copy(
                                                        pageIndex = highlight.pageIndex,
                                                        position = highlight.pageIndex
                                                    )
                                                onNavigate(
                                                    TocEntry(
                                                        title = highlight.text.take(120),
                                                        pageIndex = highlight.pageIndex,
                                                        locator = resolvedLocator
                                                    )
                                                )
                                            }
                                            .padding(start = 14.dp, end = 6.dp, top = 10.dp, bottom = 10.dp),
                                        horizontalArrangement = Arrangement.SpaceBetween,
                                        verticalAlignment = Alignment.CenterVertically
                                    ) {
                                        Column(
                                            modifier = Modifier.weight(1f),
                                            verticalArrangement = Arrangement.spacedBy(6.dp)
                                        ) {
                                            Text(
                                                text = highlight.text.replace(Regex("\\s+"), " ").trim(),
                                                style = MaterialTheme.typography.bodyMedium,
                                                fontWeight = if (isCurrent) FontWeight.SemiBold else FontWeight.Normal,
                                                color = if (isCurrent)
                                                    MaterialTheme.colorScheme.primary
                                                else MaterialTheme.colorScheme.onSurface,
                                                maxLines = 3,
                                                overflow = TextOverflow.Ellipsis
                                            )
                                            Surface(
                                                shape = RoundedCornerShape(999.dp),
                                                color = if (isCurrent) {
                                                    MaterialTheme.colorScheme.primary.copy(alpha = 0.14f)
                                                } else {
                                                    secondaryPillSurface
                                                }
                                            ) {
                                                Text(
                                                    text = readerPageLabel(highlight.pageIndex, strings.languageCode),
                                                    modifier = Modifier.padding(horizontal = 9.dp, vertical = 3.dp),
                                                    style = MaterialTheme.typography.labelSmall,
                                                    color = if (isCurrent)
                                                        MaterialTheme.colorScheme.primary
                                                    else MaterialTheme.colorScheme.onSurfaceVariant,
                                                    fontWeight = if (isCurrent) FontWeight.SemiBold else FontWeight.Normal
                                                )
                                            }
                                            highlight.note?.takeIf { it.isNotBlank() }?.let { note ->
                                                Text(
                                                    text = note,
                                                    style = MaterialTheme.typography.bodySmall,
                                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                                    maxLines = 3,
                                                    overflow = TextOverflow.Ellipsis
                                                )
                                            }
                                        }
                                        Spacer(Modifier.width(12.dp))
                                        IconButton(
                                            onClick = {
                                                editingHighlightId = highlight.id
                                                editingHighlightNote = highlight.note.orEmpty()
                                            },
                                            modifier = Modifier.size(32.dp)
                                        ) {
                                            Icon(
                                                Icons.Default.Edit,
                                                contentDescription = readerText.editHighlightNote,
                                                tint = MaterialTheme.colorScheme.onSurfaceVariant,
                                                modifier = Modifier.size(18.dp)
                                            )
                                        }
                                        IconButton(
                                            onClick = { onRemoveHighlight(highlight.id) },
                                            modifier = Modifier.size(32.dp)
                                        ) {
                                            Icon(
                                                Icons.Default.Delete,
                                                contentDescription = readerText.deleteHighlight,
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

    if (editingHighlightId != null) {
        AlertDialog(
            onDismissRequest = {
                editingHighlightId = null
                editingHighlightNote = ""
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        editingHighlightId?.let { id ->
                            onUpdateHighlightNote(id, editingHighlightNote)
                        }
                        editingHighlightId = null
                        editingHighlightNote = ""
                    }
                ) {
                    Text(readerText.save)
                }
            },
            dismissButton = {
                TextButton(
                    onClick = {
                        editingHighlightId = null
                        editingHighlightNote = ""
                    }
                ) {
                    Text(strings.cancel)
                }
            },
            title = {
                Text(readerText.editHighlightNote)
            },
            text = {
                OutlinedTextField(
                    value = editingHighlightNote,
                    onValueChange = { editingHighlightNote = it },
                    modifier = Modifier.fillMaxWidth(),
                    minLines = 3,
                    maxLines = 6,
                    placeholder = { Text(readerText.highlightNotePlaceholder) }
                )
            }
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ReaderSearchBottomSheet(
    query: String,
    results: List<BookSearchHit>,
    isLoading: Boolean,
    error: String?,
    currentPage: Int,
    onQueryChange: (String) -> Unit,
    onSearch: (String) -> Unit,
    onSelect: (BookSearchHit) -> Unit,
    onDismiss: () -> Unit
) {
    val strings = LocalStrings.current
    val searchText = readerSearchUiText(strings.languageCode)

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        dragHandle = { BottomSheetDefaults.DragHandle() }
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 12.dp)
        ) {
            Text(
                text = searchText.title,
                style = MaterialTheme.typography.titleMedium,
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 8.dp)
            )

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(10.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                OutlinedTextField(
                    value = query,
                    onValueChange = onQueryChange,
                    modifier = Modifier.weight(1f),
                    singleLine = true,
                    placeholder = { Text(searchText.placeholder) },
                    keyboardOptions = KeyboardOptions(imeAction = ImeAction.Search),
                    keyboardActions = KeyboardActions(onSearch = { onSearch(query) })
                )
                FilledTonalButton(
                    onClick = { onSearch(query) },
                    enabled = query.trim().isNotEmpty() && !isLoading
                ) {
                    Text(searchText.action)
                }
            }

            Spacer(Modifier.height(12.dp))

            when {
                isLoading && results.isEmpty() -> {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(180.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator()
                    }
                }

                error != null -> {
                    Surface(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(top = 4.dp),
                        shape = RoundedCornerShape(18.dp),
                        color = MaterialTheme.colorScheme.errorContainer
                    ) {
                        Text(
                            text = error,
                            modifier = Modifier.padding(horizontal = 14.dp, vertical = 16.dp),
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onErrorContainer
                        )
                    }
                }

                query.trim().isBlank() -> {
                    Surface(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(top = 4.dp),
                        shape = RoundedCornerShape(18.dp),
                        color = MaterialTheme.colorScheme.surfaceVariant
                    ) {
                        Text(
                            text = searchText.hint,
                            modifier = Modifier.padding(horizontal = 14.dp, vertical = 16.dp),
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                results.isEmpty() -> {
                    Surface(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(top = 4.dp),
                        shape = RoundedCornerShape(18.dp),
                        color = MaterialTheme.colorScheme.surfaceVariant
                    ) {
                        Text(
                            text = searchText.empty,
                            modifier = Modifier.padding(horizontal = 14.dp, vertical = 16.dp),
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                else -> {
                    LazyColumn(
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(max = 456.dp),
                        contentPadding = PaddingValues(top = 4.dp, bottom = 12.dp),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        items(results) { hit ->
                            ReaderSearchHitRow(
                                hit = hit,
                                currentPage = currentPage,
                                languageCode = strings.languageCode,
                                onSelect = { onSelect(hit) }
                            )
                        }
                        item { Spacer(Modifier.navigationBarsPadding()) }
                    }
                }
            }
        }
    }
}

@Composable
private fun ReaderSearchHitRow(
    hit: BookSearchHit,
    currentPage: Int,
    languageCode: String,
    onSelect: () -> Unit
) {
    val title = remember(hit, currentPage, languageCode) {
        readerSearchHitTitle(hit, currentPage, languageCode)
    }
    val subtitle = remember(hit) { readerSearchHitSubtitle(hit) }
    val excerpt = buildAnnotatedString {
        val before = hit.before.trimStart()
        val match = hit.match.trim()
        val after = hit.after.trimEnd()
        if (before.isNotEmpty()) append(before)
        if (match.isNotEmpty()) {
            if (length > 0) append(" ")
            withStyle(
                SpanStyle(
                    color = MaterialTheme.colorScheme.primary,
                    fontWeight = FontWeight.SemiBold
                )
            ) {
                append(match)
            }
        }
        if (after.isNotEmpty()) {
            if (length > 0) append(" ")
            append(after)
        }
    }
    val displayExcerpt = if (excerpt.text.isBlank()) {
        buildAnnotatedString {
            withStyle(
                SpanStyle(
                    color = MaterialTheme.colorScheme.primary,
                    fontWeight = FontWeight.SemiBold
                )
            ) {
                append(hit.match)
            }
        }
    } else {
        excerpt
    }

    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(16.dp),
        color = MaterialTheme.colorScheme.surfaceVariant
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clickable(onClick = onSelect)
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            Text(
                text = title,
                style = MaterialTheme.typography.labelLarge,
                color = MaterialTheme.colorScheme.primary,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            if (subtitle != null) {
                Text(
                    text = subtitle,
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
            Text(
                text = displayExcerpt,
                style = MaterialTheme.typography.bodyMedium.copy(hyphens = Hyphens.Auto),
                color = MaterialTheme.colorScheme.onSurface,
                maxLines = 4,
                overflow = TextOverflow.Ellipsis
            )
        }
    }
}

private fun readerSearchHitTitle(
    hit: BookSearchHit,
    currentPage: Int,
    languageCode: String
): String {
    return hit.locator.title
        ?.trim()
        ?.takeIf { it.isNotEmpty() }
        ?: readerPageLabel(
            hit.locator.pageIndex ?: hit.locator.position ?: currentPage,
            languageCode
        )
}

private fun readerSearchHitSubtitle(hit: BookSearchHit): String? {
    val href = hit.locator.href
        ?.substringBefore('#')
        ?.substringAfterLast('/')
        ?.trim()
        ?.takeIf { it.isNotEmpty() }
    val fragment = hit.locator.fragment?.trim()?.takeIf { it.isNotEmpty() }
        ?: hit.locator.href
            ?.substringAfter('#', "")
            ?.trim()
            ?.takeIf { it.isNotEmpty() }
    return listOfNotNull(href, fragment?.let { "#$it" }).takeIf { it.isNotEmpty() }?.joinToString(" ")
}

private data class ReaderSearchUiText(
    val title: String,
    val placeholder: String,
    val action: String,
    val hint: String,
    val empty: String
)

private fun readerSearchUiText(language: String): ReaderSearchUiText = when (language.lowercase()) {
    "ru" -> ReaderSearchUiText(
        title = "Поиск по книге",
        placeholder = "Найти фразу или слово",
        action = "Найти",
        hint = "Введите запрос, чтобы искать по текущей книге.",
        empty = "Ничего не найдено."
    )
    "ja" -> ReaderSearchUiText(
        title = "本文検索",
        placeholder = "単語またはフレーズを検索",
        action = "検索",
        hint = "この本の中から探したい語句を入力してください。",
        empty = "結果が見つかりませんでした。"
    )
    "zh", "zh-cn", "zh-tw" -> ReaderSearchUiText(
        title = "书内搜索",
        placeholder = "搜索单词或短语",
        action = "搜索",
        hint = "输入要在当前书籍中查找的内容。",
        empty = "没有找到结果。"
    )
    "ko" -> ReaderSearchUiText(
        title = "책 내 검색",
        placeholder = "단어 또는 문구 검색",
        action = "검색",
        hint = "현재 책에서 찾을 내용을 입력하세요.",
        empty = "검색 결과가 없습니다."
    )
    else -> ReaderSearchUiText(
        title = "Search in book",
        placeholder = "Find a word or phrase",
        action = "Search",
        hint = "Type a query to search within the current book.",
        empty = "No results found."
    )
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
