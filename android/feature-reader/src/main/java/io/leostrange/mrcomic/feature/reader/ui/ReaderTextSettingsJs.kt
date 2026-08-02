package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.feature.reader.ui.gesture.ReaderColorScheme

/**
 * Text settings JavaScript generation for the reader.
 *
 * Extracted from ReaderScreen to reduce its size and isolate the
 * WebView-side text styling logic. These functions generate JavaScript
 * that runs inside the WebView to apply typography, colors, and layout.
 *
 * The functions are pure — they take parameters and return JS strings
 * with no side effects or Android dependencies.
 */

internal fun textSettingsJs(
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
    align: String      = "left",
    bold: Boolean      = false,
    topPaddingPx: Int  = 16,
    bottomPaddingPx: Int = 24,
    horizontalPaddingPx: Int = 16,
    maxWidthPx: Int = 0,
    pagedMode: Boolean = false,
    nativeViewportWidthPx: Int? = null,
    nativeViewportHeightPx: Int? = null,
    isRtl: Boolean = false
): String {
    val resolvedTextColor = ReaderColorScheme.normalizeOverrideColor(overrideTextColor) ?: fg
    val resolvedBackgroundColor = ReaderColorScheme.normalizeOverrideColor(overrideBackgroundColor) ?: bg
    val resolvedAccentColor = ReaderColorScheme.normalizeOverrideColor(overrideAccentColor)
        ?: ReaderColorScheme.defaultAccentColor(resolvedBackgroundColor)
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
    // RTL: flip text-align and set direction on body
    val effectiveDirection = if (isRtl) "rtl" else "ltr"
    val effectiveAlign = if (isRtl) {
        when (align) {
            "left" -> "right"
            "right" -> "left"
            else -> align
        }
    } else {
        align
    }
    val rtlBodyCss = if (isRtl) {
        "body:not([data-mrcomic-preserve-layout='true']){direction:rtl !important;text-align:$effectiveAlign !important;unicode-bidi:embed !important;}"
    } else {
        ""
    }
    val pagedTocLinkCss = if (pagedMode) {
        "body table a[href],body table[summary] a[href],body #pgepubid00002 a[href]{pointer-events:none !important;cursor:default !important;-webkit-tap-highlight-color:transparent !important;text-decoration:none !important;color:inherit !important;}"
    } else {
        ""
    }
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
        """(__mrcomicHead||document.head||document.documentElement).appendChild(s);}"""
    } else ""
    val themeStyle = """
        var themeStyle=document.getElementById('__reader_theme_overrides');
        if(!themeStyle){
          themeStyle=document.createElement('style');
          themeStyle.id='__reader_theme_overrides';
        }
        themeStyle.textContent=
          ":root{--mrcomic-reader-text-color:$resolvedTextColor;--mrcomic-reader-background-color:$resolvedBackgroundColor;--mrcomic-reader-accent-color:$resolvedAccentColor;}"+
          "html,body{background-color:$resolvedBackgroundColor !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']){color:$resolvedTextColor !important;}"+
          "html,body{width:100% !important;max-width:100% !important;min-width:0 !important;overflow-x:hidden !important;-webkit-text-size-adjust:100% !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']){padding-left:${horizontalPaddingPx}px !important;padding-right:${horizontalPaddingPx}px !important;}"+
          ${if (maxWidthPx > 0) "\"body:not([data-mrcomic-preserve-layout='true']){max-width:${maxWidthPx}px !important;margin-left:auto !important;margin-right:auto !important;}\"+" else ""}
          "body:not([data-mrcomic-preserve-layout='true']),body:not([data-mrcomic-preserve-layout='true']) p,body:not([data-mrcomic-preserve-layout='true']) div,body:not([data-mrcomic-preserve-layout='true']) span,body:not([data-mrcomic-preserve-layout='true']) li{white-space:normal !important;overflow-wrap:normal !important;word-break:normal !important;hyphens:manual !important;-webkit-hyphens:manual !important;max-width:100% !important;min-width:0 !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) p,body:not([data-mrcomic-preserve-layout='true']) div,body:not([data-mrcomic-preserve-layout='true']) li{width:auto !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) p,body:not([data-mrcomic-preserve-layout='true']) li{orphans:2 !important;widows:2 !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) h1,body:not([data-mrcomic-preserve-layout='true']) h2,body:not([data-mrcomic-preserve-layout='true']) h3,body:not([data-mrcomic-preserve-layout='true']) h4,body:not([data-mrcomic-preserve-layout='true']) h5,body:not([data-mrcomic-preserve-layout='true']) h6{page-break-after:avoid !important;page-break-inside:avoid !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) img,body:not([data-mrcomic-preserve-layout='true']) figure,body:not([data-mrcomic-preserve-layout='true']) table{page-break-inside:avoid !important;break-inside:avoid !important;}"+
          "aside[epub\\:type='footnote'],aside[epub\\:type='rearnote'],aside[epub\\:type='endnote'],"+
          "[role='doc-footnote'],[role='doc-endnote'],"+
          "aside.footnote,aside.endnote,aside.rearnote,"+
          "section.footnotes,section.endnotes,section.rearnotes,"+
          "#__mrcomic_footnote_storage"+
          "{display:none!important;position:absolute!important;height:0!important;width:0!important;overflow:hidden!important;margin:0!important;padding:0!important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) table{border-collapse:collapse !important;width:100% !important;margin:0.5em 0 !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) td,body:not([data-mrcomic-preserve-layout='true']) th{border:1px solid rgba(120,120,120,0.35) !important;padding:0.3em 0.5em !important;vertical-align:top !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) ol,body:not([data-mrcomic-preserve-layout='true']) ul{padding-left:1.5em !important;margin:0.3em 0 !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) li{margin-bottom:0.15em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) span{display:inline !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) pre,body:not([data-mrcomic-preserve-layout='true']) code{white-space:pre-wrap !important;overflow-wrap:break-word !important;word-break:break-word !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) p,body:not([data-mrcomic-preserve-layout='true']) div,body:not([data-mrcomic-preserve-layout='true']) span,body:not([data-mrcomic-preserve-layout='true']) li,body:not([data-mrcomic-preserve-layout='true']) td,body:not([data-mrcomic-preserve-layout='true']) th,body:not([data-mrcomic-preserve-layout='true']) strong,body:not([data-mrcomic-preserve-layout='true']) em,body:not([data-mrcomic-preserve-layout='true']) i,body:not([data-mrcomic-preserve-layout='true']) b,body:not([data-mrcomic-preserve-layout='true']) font,body:not([data-mrcomic-preserve-layout='true']) small,body:not([data-mrcomic-preserve-layout='true']) big,body:not([data-mrcomic-preserve-layout='true']) sup,body:not([data-mrcomic-preserve-layout='true']) sub{color:$resolvedTextColor !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) span{font-size:inherit !important;line-height:inherit !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) font{font-size:1em !important;line-height:inherit !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) big{font-size:1.08em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) small{font-size:0.92em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) a[href],body:not([data-mrcomic-preserve-layout='true']) a[href]:link,body:not([data-mrcomic-preserve-layout='true']) a[href]:visited,body:not([data-mrcomic-preserve-layout='true']) a[href]:hover,body:not([data-mrcomic-preserve-layout='true']) a[href]:active{color:$resolvedAccentColor !important;text-decoration:underline !important;text-underline-offset:0.14em !important;text-decoration-thickness:0.08em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) a[href] *{color:inherit !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) [bgcolor],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color:#fff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color: #fff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color:#ffffff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color: #ffffff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background:#fff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background: #fff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background:#ffffff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background: #ffffff'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color:white'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color: white'],body:not([data-mrcomic-preserve-layout='true']) [style*='background:white'],body:not([data-mrcomic-preserve-layout='true']) [style*='background: white'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color:rgb(255'],body:not([data-mrcomic-preserve-layout='true']) [style*='background-color: rgb(255'],body:not([data-mrcomic-preserve-layout='true']) [style*='background:rgb(255'],body:not([data-mrcomic-preserve-layout='true']) [style*='background: rgb(255']{background-color:transparent !important;background-image:none !important;box-shadow:none !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) h1,body:not([data-mrcomic-preserve-layout='true']) h2,body:not([data-mrcomic-preserve-layout='true']) h3,body:not([data-mrcomic-preserve-layout='true']) h4,body:not([data-mrcomic-preserve-layout='true']) h5,body:not([data-mrcomic-preserve-layout='true']) h6,body:not([data-mrcomic-preserve-layout='true']) .calibre5,body:not([data-mrcomic-preserve-layout='true']) .calibre12{color:$resolvedTextColor !important;background-color:$headingBg !important;border-color:$headingBorder !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) blockquote,body:not([data-mrcomic-preserve-layout='true']) cite,body:not([data-mrcomic-preserve-layout='true']) .epigraph{color:$quoteColor !important;border-left-color:$headingBorder !important;}"+
           "::selection{background:$selectionBackgroundColor !important;color:$selectionForegroundColor !important;}"+
           "body *::selection{background:$selectionBackgroundColor !important;color:$selectionForegroundColor !important;}"+
           "a.fn,a.fnt,a.footnote-ref,a.noteref,a.doc-noteref,a.doc-fn,a.doc-backref,a.backnote,a.supnote,a.text-fn,a.pagenote,a.annref,a.annotation,a[role='doc-noteref'],a[role='noteref'],a[role='footnote'],a[role='doc-fn'],a[role='doc-backref'],a[epub\\\\:type~='noteref'],a[epub\\\\:type~='footnote'],a[epub\\\\:type~='annref'],a[epub\\\\:type~='annotation'],a[data-footnote-id],a[data-footnote],a[data-type='annotation'],a[href*='FbAutId_'],a[href*='#FbAutId_'],a[href^='fbanchor://'],a[href^='noteref:'],a[href^='#fn'],a[href^='#fnt'],a[href^='#note'],a[href^='#footnote'],a[href^='#endnote'],a[href^='#rearnote'],a[href^='#text-fn'],a[href^='#pagenote'],a[href^='#ann'],a[href^='#annotation'],a[href^='#sup'],a[href^='#back'],a[href^='#docx-footnote'],a[href*='filepos'],a[href*='#filepos']{color:$noteColor !important;text-decoration:none !important;font-weight:bold !important;}"+
          "a.fn *,a.fnt *,a.footnote-ref *,a.noteref *,a.doc-noteref *,a.doc-fn *,a.doc-backref *,a.backnote *,a.supnote *,a.text-fn *,a.pagenote *,a.annref *,a.annotation *,a[role='doc-noteref'] *,a[role='noteref'] *,a[role='footnote'] *,a[role='doc-fn'] *,a[role='doc-backref'] *,a[epub\\\\:type~='noteref'] *,a[epub\\\\:type~='footnote'] *,a[epub\\\\:type~='annref'] *,a[epub\\\\:type~='annotation'] *,a[data-footnote-id] *,a[data-footnote] *,a[data-type='annotation'] *,a[href*='FbAutId_'] *,a[href*='#FbAutId_'] *,a[href^='fbanchor://'] *,a[href^='noteref:'] *,a[href^='#fn'] *,a[href^='#fnt'] *,a[href^='#note'] *,a[href^='#footnote'] *,a[href^='#endnote'] *,a[href^='#rearnote'] *,a[href^='#text-fn'] *,a[href^='#pagenote'] *,a[href^='#ann'] *,a[href^='#annotation'] *,a[href^='#sup'] *,a[href^='#back'] *,a[href^='#docx-footnote'] *,a[href*='filepos'] *,a[href*='#filepos'] *{color:$noteColor !important;}"+
          ".note-num,.footnote-label{color:$noteColor !important;}"+
          "$pagedTocLinkCss"+
          "$rtlBodyCss";
        if(!themeStyle.parentNode){(__mrcomicHead||document.head||document.documentElement).appendChild(themeStyle);}
    """.trimIndent()
    // Direct DOM coloring of footnote anchors вЂ” robust fallback for cases where
    // CSS !important rules lose to element-level inline styles or specificity issues.
    val colorNotesDom = """
        (function(){
          var nc='$noteColor';
          var sel='a.fn,a.fnt,a.footnote-ref,a.noteref,a.doc-noteref,a.doc-fn,a.doc-backref,a.backnote,a.supnote,a.text-fn,a.pagenote,a.annref,a.annotation,a[role="doc-noteref"],a[role="noteref"],a[role="footnote"],a[role="doc-fn"],a[role="doc-backref"],a[data-footnote-id],a[data-footnote],a[data-type="annotation"],a[href*="fbanchor://"],a[href^="noteref:"],a[href*="FbAutId_"],a[href^="#fn"],a[href^="#fnt"],a[href^="#note"],a[href^="#footnote"],a[href^="#endnote"],a[href^="#rearnote"],a[href^="#text-fn"],a[href^="#pagenote"],a[href^="#ann"],a[href^="#annotation"],a[href^="#sup"],a[href^="#back"],a[href^="#docx-footnote"],a[href*="filepos"],a[href*="#filepos"],a[epub\\:type~="noteref"],a[epub\\:type~="footnote"],a[epub\\:type~="annref"],a[epub\\:type~="annotation"]';
          function paintNoteRef(a){
            a.style.setProperty('color',nc,'important');
            a.style.setProperty('font-weight','bold','important');
            a.style.setProperty('text-decoration','none','important');
            a.querySelectorAll('*').forEach(function(c){c.style.setProperty('color',nc,'important');});
          }
          try{document.querySelectorAll(sel).forEach(paintNoteRef);}catch(e){}
          try{document.querySelectorAll('a[href]').forEach(function(a){
            var href=a.getAttribute('href')||'';
            var cls=a.getAttribute('class')||'';
            var role=a.getAttribute('role')||a.getAttribute('data-type')||a.getAttribute('data-footnote-id')||a.getAttribute('data-footnote')||'';
            var epubType=a.getAttribute('epub:type')||a.getAttribute('type')||'';
            var title=a.getAttribute('title')||'';
            var text=(a.textContent||'').trim();
            var known=/\b(fn|fnt|noteref|footnote-ref|doc-noteref|doc-fn|doc-backref|backnote|supnote|text-fn|pagenote|annref|annotation)\b/i.test(cls+' '+role+' '+epubType)||
              /#(?:fn|fnt|note|footnote|endnote|rearnote|back|sup|text-fn|pagenote|annref|annotation|docx-footnote)[-_]?\w*/i.test(href)||
              href.indexOf('fbanchor://')===0||
              href.indexOf('noteref:')===0||
              href.indexOf('FbAutId_')>=0||
              href.indexOf('filepos')>=0||
              !!a.getAttribute('data-footnote-id')||
              !!a.getAttribute('data-footnote')||
              false;
            var inlineNoteRef=/^[\[\(]?\d{1,4}[\]\)]?${'$'}/.test(text)||/^\*{1,4}${'$'}/.test(text);
            if(known||(inlineNoteRef&&href.indexOf('#')>=0)){
              paintNoteRef(a);
            }
          });}catch(e){}
        })();
    """.trimIndent()
    val spacingStyle = """
        var spacingStyle=document.getElementById('__reader_spacing_overrides');
        if(!spacingStyle){
          spacingStyle=document.createElement('style');
          spacingStyle.id='__reader_spacing_overrides';
        }
        spacingStyle.textContent=
          "body:not([data-mrcomic-preserve-layout='true']){letter-spacing:${letterSpacing}em !important;word-spacing:${wordSpacing}em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) p,"+
          "body:not([data-mrcomic-preserve-layout='true']) div.paragraph,"+
          "body:not([data-mrcomic-preserve-layout='true']) .paragraph{margin-top:0 !important;margin-bottom:${paragraphSpacing}em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) li{margin-bottom:${(paragraphSpacing * 0.8f).coerceAtLeast(0.1f)}em !important;}"+
          "body:not([data-mrcomic-preserve-layout='true']) blockquote{margin-bottom:${(paragraphSpacing + 0.4f).coerceAtLeast(0.4f)}em !important;}";
        if(!spacingStyle.parentNode){(__mrcomicHead||document.head||document.documentElement).appendChild(spacingStyle);}
    """.trimIndent()
    val fontStack = if (fontSourceUrl != null) "'$fontFamily',Georgia,serif" else "$fontFamily,Georgia,serif"
    val nativeViewportWidthLiteral = nativeViewportWidthPx
        ?.coerceAtLeast(1)
        ?.toString()
        ?: "0"
    val nativeViewportHeightLiteral = nativeViewportHeightPx
        ?.coerceAtLeast(1)
        ?.toString()
        ?: "0"
    val initialBodyTopPaddingPx = if (pagedMode) 0 else topPaddingPx
    val initialBodyBottomPaddingPx = if (pagedMode) 0 else bottomPaddingPx
    val headGuard = """
        var __mrcomicHead=document.head||document.getElementsByTagName('head')[0];
        if(!__mrcomicHead){
          __mrcomicHead=document.createElement('head');
          var __mrcomicHtml=document.documentElement||document.getElementsByTagName('html')[0];
          if(__mrcomicHtml){__mrcomicHtml.insertBefore(__mrcomicHead,__mrcomicHtml.firstChild);}
        }
    """.trimIndent()
    val pageLockJs = if (pagedMode) {
        """
        window.__mrcomicPagedModeScrollLock=true;
        document.documentElement.style.overflowY='hidden';
        document.body.style.overflowY='visible';
        document.documentElement.style.overflowX='hidden';
        document.body.style.overflowX='hidden';
        var mrcomicVisualViewportHeight=Math.round((window.visualViewport&&window.visualViewport.height)||0);
        var mrcomicWindowInnerHeight=Math.round(window.innerHeight||0);
        var mrcomicRootClientHeight=Math.round(document.documentElement.clientHeight||0);
        var mrcomicFallbackViewportHeight=mrcomicWindowInnerHeight||mrcomicRootClientHeight||mrcomicVisualViewportHeight||0;
        var mrcomicViewportHeight=Math.max(320,nativeViewportHeight||mrcomicFallbackViewportHeight||0);
        var mrcomicViewportWidth=Math.max(1,nativeViewportWidth||document.documentElement.clientWidth||window.innerWidth||360);
        var mrcomicHorizontalPadding=${horizontalPaddingPx * 2};
        var mrcomicPageInsetTop=${topPaddingPx};
        var mrcomicPageInsetBottom=${bottomPaddingPx};
        var mrcomicColumnWidth=Math.max(1,mrcomicViewportWidth-mrcomicHorizontalPadding);
        var mrcomicVisibleHeight=Math.max(240,mrcomicViewportHeight-mrcomicPageInsetTop-mrcomicPageInsetBottom);
        document.documentElement.style.setProperty('--mrcomic-page-visible-height',mrcomicVisibleHeight+'px');
        document.documentElement.style.setProperty('--mrcomic-page-inset-top',mrcomicPageInsetTop+'px');
        document.documentElement.style.setProperty('--mrcomic-page-inset-bottom',mrcomicPageInsetBottom+'px');
        window.__mrcomicPageWidth=mrcomicViewportWidth;
        window.__mrcomicPageHeight=mrcomicViewportHeight;
        window.__mrcomicColumnWidth=mrcomicColumnWidth;
        window.__mrcomicColumnGap=mrcomicHorizontalPadding;
        window.__mrcomicPageInsetTop=mrcomicPageInsetTop;
        window.__mrcomicPageInsetBottom=mrcomicPageInsetBottom;
        document.documentElement.style.setProperty('width',mrcomicViewportWidth+'px','important');
        document.documentElement.style.setProperty('max-width',mrcomicViewportWidth+'px','important');
        document.documentElement.style.setProperty('height',mrcomicViewportHeight+'px','important');
        document.documentElement.style.setProperty('max-height',mrcomicViewportHeight+'px','important');
        document.body.style.boxSizing='border-box';
        document.body.style.setProperty('width',mrcomicViewportWidth+'px','important');
        document.body.style.setProperty('max-width',mrcomicViewportWidth+'px','important');
        document.body.style.marginLeft='0';
        document.body.style.marginRight='0';
        document.body.style.position='relative';
        document.body.style.removeProperty('height');
        document.body.style.removeProperty('min-height');
        document.body.style.removeProperty('max-height');
        document.body.style.overflow='visible';
        document.body.style.removeProperty('-webkit-column-width');
        document.body.style.removeProperty('column-width');
        document.body.style.removeProperty('-webkit-column-gap');
        document.body.style.removeProperty('column-gap');
        document.body.style.removeProperty('-webkit-column-fill');
        document.body.style.removeProperty('column-fill');
        var mrcomicPagedViewport=document.getElementById('__mrcomic_paged_viewport');
        if(!mrcomicPagedViewport){
          mrcomicPagedViewport=document.createElement('div');
          mrcomicPagedViewport.id='__mrcomic_paged_viewport';
        }
        var mrcomicPagedContent=document.getElementById('__mrcomic_paged_content');
        if(!mrcomicPagedContent){
          mrcomicPagedContent=document.createElement('div');
          mrcomicPagedContent.id='__mrcomic_paged_content';
        }
        if(mrcomicPagedViewport.parentNode!==document.body){
          document.body.appendChild(mrcomicPagedViewport);
        }
        if(mrcomicPagedContent.parentNode!==mrcomicPagedViewport){
          mrcomicPagedViewport.appendChild(mrcomicPagedContent);
        }
        Array.prototype.slice.call(document.body.childNodes).forEach(function(node){
          if(node!==mrcomicPagedViewport&&node!==mrcomicPagedContent){
            mrcomicPagedContent.appendChild(node);
          }
        });
        mrcomicPagedViewport.style.boxSizing='border-box';
        mrcomicPagedViewport.style.position='relative';
        mrcomicPagedViewport.style.left='0';
        mrcomicPagedViewport.style.top='0';
        mrcomicPagedViewport.style.width='100%';
        mrcomicPagedViewport.style.maxWidth='100%';
        mrcomicPagedViewport.style.overflow='hidden';
        mrcomicPagedViewport.style.visibility='hidden';
        mrcomicPagedViewport.style.paddingTop='0px';
        mrcomicPagedViewport.style.paddingBottom='0px';
        mrcomicPagedViewport.style.setProperty('height',mrcomicViewportHeight+'px','important');
        mrcomicPagedViewport.style.setProperty('min-height',mrcomicViewportHeight+'px','important');
        mrcomicPagedViewport.style.setProperty('max-height',mrcomicViewportHeight+'px','important');
        mrcomicPagedContent.style.boxSizing='border-box';
        mrcomicPagedContent.style.position='absolute';
        mrcomicPagedContent.style.left='0';
        mrcomicPagedContent.style.right='0';
        mrcomicPagedContent.style.top=mrcomicPageInsetTop+'px';
        mrcomicPagedContent.style.width='100%';
        mrcomicPagedContent.style.maxWidth='100%';
        mrcomicPagedContent.style.transformOrigin='0 0';
        mrcomicPagedContent.style.webkitTransformOrigin='0 0';
        mrcomicPagedContent.style.willChange='transform';
        document.body.style.setProperty('text-align','$effectiveAlign','important');
        document.body.style.setProperty('text-align-last','auto','important');
        document.body.style.setProperty('padding-top','0px','important');
        document.body.style.setProperty('padding-bottom','0px','important');
        try{
          Array.prototype.forEach.call(document.body.querySelectorAll('p,div,section,article,blockquote,li,td,th,h1,h2,h3,h4,h5,h6'),function(el){
            el.style.setProperty('text-align','$effectiveAlign','important');
            el.style.setProperty('text-align-last','auto','important');
          });
        }catch(e){}
        try{window.scrollTo(0,0);document.documentElement.scrollTop=0;(document.scrollingElement||document.documentElement).scrollTop=0;}catch(e){}
        """.trimIndent()
    } else {
        """
        window.__mrcomicPagedModeScrollLock=false;
        document.documentElement.style.removeProperty('overflow-y');
        document.documentElement.style.removeProperty('overflow-x');
        document.documentElement.style.removeProperty('height');
        document.documentElement.style.removeProperty('max-height');
        document.body.style.removeProperty('overflow-y');
        document.body.style.removeProperty('overflow-x');
        document.body.style.removeProperty('height');
        document.body.style.removeProperty('min-height');
        document.body.style.removeProperty('max-height');
        document.body.style.removeProperty('overflow');
        document.body.style.removeProperty('-webkit-column-width');
        document.body.style.removeProperty('column-width');
        document.body.style.removeProperty('-webkit-column-gap');
        document.body.style.removeProperty('column-gap');
        document.body.style.removeProperty('-webkit-column-fill');
        document.body.style.removeProperty('column-fill');
        document.body.style.removeProperty('transform');
        document.body.style.removeProperty('-webkit-transform');
        document.body.style.removeProperty('transform-origin');
        document.body.style.removeProperty('-webkit-transform-origin');
        document.body.style.removeProperty('will-change');
        document.body.style.removeProperty('transition');
        document.body.style.setProperty('padding-top','${topPaddingPx}px','important');
        document.body.style.setProperty('padding-bottom','${bottomPaddingPx}px','important');
        var mrcomicPagedViewport=document.getElementById('__mrcomic_paged_viewport');
        var mrcomicPagedContent=document.getElementById('__mrcomic_paged_content');
        if(mrcomicPagedViewport){
          mrcomicPagedViewport.style.removeProperty('height');
          mrcomicPagedViewport.style.removeProperty('min-height');
          mrcomicPagedViewport.style.removeProperty('max-height');
          mrcomicPagedViewport.style.removeProperty('overflow');
        }
        if(mrcomicPagedContent){
          mrcomicPagedContent.style.removeProperty('transform');
          mrcomicPagedContent.style.removeProperty('-webkit-transform');
          mrcomicPagedContent.style.removeProperty('transform-origin');
          mrcomicPagedContent.style.removeProperty('-webkit-transform-origin');
          mrcomicPagedContent.style.removeProperty('will-change');
        }
        if(mrcomicPagedViewport&&mrcomicPagedContent&&mrcomicPagedContent.parentNode===mrcomicPagedViewport){
          Array.prototype.slice.call(mrcomicPagedContent.childNodes).forEach(function(node){
            document.body.insertBefore(node,mrcomicPagedViewport);
          });
          mrcomicPagedViewport.parentNode&&mrcomicPagedViewport.parentNode.removeChild(mrcomicPagedViewport);
        }
        if(mrcomicPagedContent&&mrcomicPagedContent.parentNode===document.body){
          mrcomicPagedContent.parentNode.removeChild(mrcomicPagedContent);
        }
        var mrcomicPageShield=document.getElementById('__mrcomic_page_shield');
        if(mrcomicPageShield&&mrcomicPageShield.parentNode){
          mrcomicPageShield.parentNode.removeChild(mrcomicPageShield);
        }
        window.__mrcomicPagedIndex=0;
        window.__mrcomicPageBreaks=null;
        window.__mrcomicPageBreakSig='';
        """.trimIndent()
    }
    return """(function(){$headGuard $fontFaceSnip $themeStyle $spacingStyle if(document.body){""" +
        """var preservePublisherLayout=document.body.hasAttribute('data-mrcomic-preserve-layout')||document.body.classList.contains('cover');""" +
        """var viewport=document.querySelector('meta[name="viewport"]')||document.createElement('meta');""" +
        """viewport.setAttribute('name','viewport');viewport.setAttribute('content','width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no');if(!viewport.parentNode)(__mrcomicHead||document.head).appendChild(viewport);""" +
        """var visualViewportWidth=(window.visualViewport&&window.visualViewport.width)?Math.round(window.visualViewport.width):0;""" +
        """var layoutViewportWidth=Math.round(document.documentElement.clientWidth||window.innerWidth||0);""" +
        """var screenCssWidth=(window.screen&&window.devicePixelRatio)?Math.round(window.screen.width/window.devicePixelRatio):0;""" +
        """var nativeViewportWidth=$nativeViewportWidthLiteral;""" +
        """var nativeViewportHeight=$nativeViewportHeightLiteral;""" +
        """window.__mrcomicNativeViewportWidth=nativeViewportWidth;""" +
        """window.__mrcomicNativeViewportHeight=nativeViewportHeight;""" +
        """var rawViewportWidth=nativeViewportWidth||visualViewportWidth||layoutViewportWidth||screenCssWidth||360;""" +
        """var mrcomicViewportWidth=Math.max(280,Math.min(1200,rawViewportWidth));""" +
        """document.documentElement.lang=document.documentElement.lang||'ru';""" +
        """document.documentElement.style.width='100%';""" +
        """document.documentElement.style.maxWidth='100%';""" +
        """document.documentElement.style.overflowX='hidden';""" +
        """document.body.style.color='$resolvedTextColor';""" +
        """document.documentElement.style.background='$resolvedBackgroundColor';""" +
        """document.body.style.background='$resolvedBackgroundColor';""" +
        """document.body.style.boxSizing='border-box';""" +
        """document.body.style.width=mrcomicViewportWidth+'px';""" +
        """document.body.style.maxWidth=mrcomicViewportWidth+'px';""" +
        """document.body.style.marginLeft='0';""" +
        """document.body.style.marginRight='0';""" +
        """if(!preservePublisherLayout){""" +
        """document.body.style.whiteSpace='normal';""" +
        """document.body.style.overflowWrap='normal';""" +
        """document.body.style.wordBreak='normal';""" +
        """document.body.style.width=mrcomicViewportWidth+'px';""" +
        """document.body.style.maxWidth=mrcomicViewportWidth+'px';""" +
        """document.body.style.minWidth='0';""" +
        """document.body.style.overflowX='hidden';""" +
        """Array.prototype.forEach.call(document.body.querySelectorAll('p,div,section,article,blockquote,ul,ol,li'),function(el){el.style.maxWidth='100%';el.style.minWidth='0';el.style.width='auto';el.style.whiteSpace='normal';el.style.overflowWrap='normal';el.style.wordBreak='normal';});""" +
        """document.body.style.fontSize='${fontSize}px';""" +
        """document.body.style.fontWeight='$fontWeight';""" +
        """document.body.style.fontFamily="$fontStack";""" +
        """document.body.style.setProperty('font-family',"$fontStack",'important');""" +
        """Array.prototype.forEach.call(document.body.querySelectorAll('*'),function(el){var tag=(el.tagName||'').toLowerCase();if(tag==='svg'||(el.closest&&el.closest('svg')))return;el.style.setProperty('font-family',"$fontStack",'important');});""" +
        """document.body.style.lineHeight='$lineHeight';""" +
        """document.body.style.textAlign='$effectiveAlign';""" +
        """document.body.style.direction='$effectiveDirection';""" +
        """document.body.style.hyphens='manual';""" +
        """document.body.style.webkitHyphens='manual';""" +
        """document.body.style.paddingLeft='${horizontalPaddingPx}px';""" +
        """document.body.style.paddingRight='${horizontalPaddingPx}px';""" +
        """document.body.style.paddingTop='${initialBodyTopPaddingPx}px';""" +
        """document.body.style.paddingBottom='${initialBodyBottomPaddingPx}px';""" +
        """}else{""" +
        """document.body.style.paddingLeft='${horizontalPaddingPx}px';""" +
        """document.body.style.paddingRight='${horizontalPaddingPx}px';""" +
        """document.body.style.paddingTop='${initialBodyTopPaddingPx}px';""" +
        """document.body.style.paddingBottom='${initialBodyBottomPaddingPx}px';""" +
        """document.body.style.width='100%';""" +
        """document.body.style.maxWidth='none';""" +
        """document.body.style.minWidth='0';""" +
        """document.body.style.overflowWrap='normal';""" +
        """document.body.style.wordBreak='normal';""" +
        """document.body.style.hyphens='manual';""" +
        """document.body.style.webkitHyphens='manual';""" +
        """try{var pcs=window.getComputedStyle(document.body);var pfs=parseFloat(pcs&&pcs.fontSize)||0;var plh=parseFloat(pcs&&pcs.lineHeight)||0;if(!pfs||pfs<${fontSize}*0.78){document.body.style.setProperty('font-size','${fontSize}px','important');}if(!plh||plh<${lineHeight}*0.9){document.body.style.setProperty('line-height','${lineHeight}','important');}Array.prototype.forEach.call(document.body.querySelectorAll('p,div,section,article,blockquote,li,td,th'),function(el){var cls=(el.className||'').toLowerCase();var tag=el.tagName.toLowerCase();if(tag==='sup'||tag==='sub'||tag==='small'||tag==='abbr'||cls.indexOf('note')>=0||cls.indexOf('footnote')>=0||cls.indexOf('fn-')>=0||cls.indexOf('endnote')>=0)return;var fs=parseFloat(window.getComputedStyle(el).fontSize)||0;if(fs>0&&fs<12){el.style.setProperty('font-size','1em','important');}});}catch(e){}""" +
        """Array.prototype.forEach.call(document.body.children,function(el){el.style.maxWidth='100%';el.style.minWidth='0';el.style.boxSizing='border-box';});""" +
        """Array.prototype.forEach.call(document.body.querySelectorAll('img,svg,video,canvas,figure,table'),function(el){el.style.maxWidth='100%';el.style.boxSizing='border-box';});""" +
        """}$pageLockJs}$colorNotesDom})();"""
}
