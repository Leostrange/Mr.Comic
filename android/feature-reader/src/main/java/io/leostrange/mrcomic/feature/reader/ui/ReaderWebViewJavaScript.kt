package io.leostrange.mrcomic.feature.reader.ui

/**
 * WebView JavaScript injection constants for the text reader.
 *
 * Extracted from ReaderScreen to reduce its size.
 * Contains tap handlers, footnote detection, page metrics, and scroll control JS.
 */

internal const val JS_TAP_HANDLER = """(function(){
  if(window.__tapAdded)return;
  window.__tapAdded=true;

  // Hoisted footnote patterns — compiled once, reused on every tap.
  var _fn = {
    marker: /\b(footnote|note|notebody|rearnote|endnote|fnote|fbautid|fnt|backnote|supnote|text-fn|pagenote|annref|annotation)\b/i,
    role:   /(^|\s)doc-noteref(\s|$)|(^|\s)noteref(\s|$)|(^|\s)footnote(\s|$)|(^|\s)doc-fn(\s|$)|(^|\s)doc-backref(\s|$)/i,
    href:   /#(?:fn|fnt|note|footnote|endnote|rearnote|back|sup|text-fn|pn|ann|annotation|docx-footnote)[-_]?\w*/i,
    epubType: /(^|\s)noteref(\s|$)|(^|\s)footnote(\s|$)|(^|\s)annref(\s|$)|(^|\s)annotation(\s|$)/i,
    cls:    /\bfn\b|\bnoteref\b|\bfootnote-ref\b|\bdoc-noteref\b|\bfnt\b|\bbacknote\b|\bsupnote\b|\btext-fn\b|\bpagenote\b|\bannref\b|\bannotation\b/i,
    // EPUB/HTML generators commonly include a trailing dot or a zero-width
    // separator in a numeric marker. Keep these links on the footnote path.
    noteRefText: /^[\s\u200b]*[\[\(]?\d{1,4}[\]\)\.,]?[\s\u200b]*$/,
    starRefText: /^\*{1,4}$/
  };
  function hasActivePagedLayout(){
    return !!(window.__mrcomicPageLayouts&&window.__mrcomicPageLayouts.length)||!!window.__mrcomicPageStep;
  }
  function isPagedEdgeTap(clientX){
    var winW=window.innerWidth||document.documentElement.clientWidth||360;
    if(!winW)return false;
    var ratio=(Number(clientX)||0)/winW;
    return ratio<0.28||ratio>0.72;
  }
  function routePagedTapFromLink(e,forceForward){
    e.preventDefault();
    e.stopPropagation();
    var x=forceForward?0.85:((Number(e.clientX)||0)/(window.innerWidth||document.documentElement.clientWidth||360));
    if(typeof _NativeReader!='undefined')_NativeReader.onTap(x);
  }
  function isInlineSpineChapterLink(href,linkEl){
    if(!href||href.indexOf('://')>=0)return false;
    if(!/\.(?:xhtml|html|htm)(?:#|$)/i.test(href))return false;
    var filePart=href.split('#')[0];
    if(filePart.indexOf('/')>=0){
      var curPath=(window.location.pathname||'').split('/');
      var curFile=curPath[curPath.length-1]||'';
      var targetFile=filePart.split('/').pop()||'';
      if(curFile&&targetFile&&curFile.toLowerCase()!==targetFile.toLowerCase())return false;
    }
    if(linkEl){
      var cls=linkEl.getAttribute('class')||'';
      var epubType=linkEl.getAttribute('epub:type')||linkEl.getAttribute('type')||'';
      var title=linkEl.getAttribute('title')||'';
      var linkText=(linkEl.textContent||'').trim();
      var isNoteRef=_fn.noteRefText.test(linkText)||_fn.starRefText.test(linkText);
      if(/\bfn\b|\bfnt\b|\bnoteref\b|\bfootnote-ref\b|\bbacknote\b|\bsupnote\b|\btext-fn\b|\bpagenote\b|\bannref\b|\bannotation\b|\bdoc-noteref\b/i.test(cls))return false;
      if(/(^|\s)noteref(\s|$)|(^|\s)footnote(\s|$)|(^|\s)annref(\s|$)|(^|\s)annotation(\s|$)/i.test(epubType))return false;
      var role=linkEl.getAttribute('role')||'';
      if(/(^|\s)doc-noteref(\s|$)|(^|\s)noteref(\s|$)|(^|\s)footnote(\s|$)|(^|\s)doc-fn(\s|$)|(^|\s)doc-backref(\s|$)/i.test(role))return false;
      if(href.indexOf('fbanchor://')===0||href.indexOf('FbAutId_')>=0)return false;
      if(linkEl.getAttribute('data-footnote-id')||linkEl.getAttribute('data-footnote'))return false;
      if(title&&href.indexOf('#')>=0)return false;
      if(isNoteRef)return false;
      try{
        if(linkEl.closest&&linkEl.closest('table'))return true;
        if(document.getElementById('pgepubid00002')&&linkEl.closest&&linkEl.closest('#pgepubid00002'))return true;
      }catch(err){}
    }
    return true;
  }
  function shouldRouteLinkAsPagedTap(href,linkEl){
    if(!isInlineSpineChapterLink(href,linkEl))return false;
    return !!(window.__mrcomicPagedModeScrollLock||hasActivePagedLayout());
  }
  document.addEventListener('click',function(e){
    var t=e.target;
    while(t&&t.tagName){
      if(t.tagName==='A'){
        var href=t.getAttribute('href')||'';
        if(shouldRouteLinkAsPagedTap(href,t)){
          routePagedTapFromLink(e,true);
          return;
        }
        break;
      }
      t=t.parentNode;
    }
  },true);
  window.__readerTouchStartTs=0;
  window.__readerTouchStartX=0;
  window.__readerTouchStartY=0;
  window.__readerTouchMoved=false;
  window.__readerSelectionTs=0;
  window.__mrcomicScrollToAnchor=function(target){
    try{
      if(!target)return false;
      var root=document.documentElement;
      var body=document.body;
      var scroller=document.scrollingElement||root;
      var hasPagedPages=!!window.__mrcomicPageStep;
      var hasPagedColumns=!hasPagedPages&&!!(window.__mrcomicPageWidth||(body&&(body.style.columnWidth||body.style.webkitColumnWidth)));
      if(window.__mrcomicPageBreaks&&window.__mrcomicPageBreaks.length){
        var breaks=window.__mrcomicPageBreaks;
        var content=document.getElementById('__mrcomic_paged_content')||body;
        var contentRect=content.getBoundingClientRect();
        var rect=target.getBoundingClientRect();
        var absoluteTop=Math.max(0,rect.top-contentRect.top);
        var targetPage=0;
        for(var i=0;i<breaks.length;i++){
          if(Number(breaks[i])<=absoluteTop+2)targetPage=i;else break;
        }
        if(typeof window.__mrcomicApplyPagedPage==='function'){
          targetPage=window.__mrcomicApplyPagedPage(targetPage);
        }else{
          var targetY=Math.max(0,Number(breaks[targetPage]||0));
          content.style.transform='translate3d(0,'+(-targetY)+'px,0)';
          content.style.webkitTransform='translate3d(0,'+(-targetY)+'px,0)';
          window.__mrcomicCurrentPageY=targetY;
        }
        try{scroller.scrollTop=0;}catch(e){}
        try{window.scrollTo(0,0);}catch(e){}
        window.__mrcomicPagedIndex=targetPage;
      }else if(hasPagedPages){
        var pageStep=Math.max(1,Math.round(Number(window.__mrcomicPageStep||0))||root.clientHeight||window.innerHeight||640);
        var firstPageOffset=Math.max(0,Math.round(Number(window.__mrcomicFirstPageOffset||0)));
        var pageHeight=Math.max(320,Math.round(Number(window.__mrcomicPageHeight||0))||root.clientHeight||window.innerHeight||640);
        var rect=target.getBoundingClientRect();
        var absoluteTop=rect.top+(scroller.scrollTop||window.pageYOffset||0);
        var scrollHeight=Math.max(scroller.scrollHeight||0,root.scrollHeight||0,body.scrollHeight||0,pageHeight);
        var maxScroll=Math.max(0,scrollHeight-pageHeight);
        var targetPage=Math.max(0,Math.floor((absoluteTop+firstPageOffset)/pageStep));
        var targetY=targetPage<=0?0:Math.min(maxScroll,Math.max(0,targetPage*pageStep-firstPageOffset));
        try{scroller.scrollTop=targetY;}catch(e){}
        try{window.scrollTo(0,targetY);}catch(e){}
        window.__mrcomicPagedIndex=targetPage;
      }else if(hasPagedColumns){
        var pageWidth=Math.max(1,Math.round(Number(window.__mrcomicPageWidth||window.__mrcomicNativeViewportWidth||0))||root.clientWidth||window.innerWidth||360);
        var rect=target.getBoundingClientRect();
        var absoluteLeft=rect.left+(scroller.scrollLeft||window.pageXOffset||0);
        var targetPage=Math.max(0,Math.floor(absoluteLeft/pageWidth));
        try{scroller.scrollLeft=targetPage*pageWidth;}catch(e){}
        try{window.scrollTo(targetPage*pageWidth,0);}catch(e){}
      }else{
        try{target.scrollIntoView({block:'start',inline:'nearest'});}catch(e){target.scrollIntoView(true);}
      }
      return true;
    }catch(e){
      return false;
    }
  };
  document.addEventListener('selectionchange',function(){
    try{
      var selected=(window.getSelection&&window.getSelection().toString())||'';
      if((selected||'').trim().length>0){
        window.__readerSelectionTs=Date.now();
      }
    }catch(e){}
  },false);
  // Check if an element (or its ancestor) is a clickable link/footnote.
  // Used to prevent page-turn taps from consuming footnote clicks.
  function __isClickableLink(el){
    try{
      var probe=el;
      while(probe&&probe!==document.body){
        // Skip text/comment nodes — they don't have tagName or getAttribute.
        if(probe.nodeType!==1){probe=probe.parentNode;continue;}
        if(probe.tagName==='A'&&probe.getAttribute('href'))return true;
        if(probe.tagName==='BUTTON'||probe.tagName==='INPUT'||probe.tagName==='SELECT')return true;
        var role=probe.getAttribute('role')||'';
        if(role==='button'||role==='link')return true;
        if(probe.getAttribute('data-footnote-id')||probe.getAttribute('data-footnote'))return true;
        probe=probe.parentNode;
      }
    }catch(e){}
    return false;
  }
  document.addEventListener('touchstart',function(e){
    window.__readerTouchStartTs=Date.now();
    window.__readerTouchMoved=false;
    window.__readerTouchOnLink=false;
    if(e.touches&&e.touches.length===1){
      window.__readerTouchStartX=e.touches[0].clientX;
      window.__readerTouchStartY=e.touches[0].clientY;
      // Mark if the touch started on a clickable link — the Kotlin handler
      // checks this flag to avoid consuming footnote clicks as page turns.
      var onLink=e.target?__isClickableLink(e.target):false;
      window.__readerTouchOnLink=onLink;
      if((window.__mrcomicPagedModeScrollLock||hasActivePagedLayout())&&!onLink){
        try{
          var selection=window.getSelection&&window.getSelection();
          if(selection)selection.removeAllRanges();
          if(document.activeElement)document.activeElement.blur();
        }catch(err){}
      }
      try{if(typeof _NativeReader!=='undefined')_NativeReader.setTouchOnLink(onLink);}catch(ex){}
    }
  },{passive:true});
  // Prevent spontaneous text selection from accidental short taps, but allow
  // deliberate long-press selection for dictionary/quote features. A long press
  // (touchstart held > 350ms without move) signals user intent to select text.
  document.addEventListener('selectstart',function(e){
    if(!e.target||!e.target.closest)return;
    if(window.__mrcomicPagedModeScrollLock||hasActivePagedLayout()){
      e.preventDefault();
      return;
    }
    // Allow selection inside <a> links always
    if(e.target.closest('a'))return;
    // Allow selection if the user has been holding touch for > 350ms (deliberate long-press)
    var holdDuration=window.__readerTouchStartTs?(Date.now()-window.__readerTouchStartTs):0;
    if(holdDuration>350)return;
    // Allow selection if a recent selection exists (user is extending an existing selection)
    if(window.__readerSelectionTs&&((Date.now()-window.__readerSelectionTs)<2000))return;
    // Block spontaneous selection from accidental taps
    e.preventDefault();
  });
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
      if(typeof _NativeReader!='undefined'&&typeof _NativeReader.onSwipe==='function')_NativeReader.onSwipe(dx>0?-1:1);
    }
  },{passive:true});
  function isFootnoteTarget(target,link){
    try{
      var probe=target;
      while(probe&&probe!==document.body){
        var probeId=(probe.id||'');
        var probeClass=(probe.className&&String(probe.className))||'';
        var probeType=(probe.getAttribute&&(probe.getAttribute('epub:type')||probe.getAttribute('type')||''))||'';
        var probeRole=(probe.getAttribute&&(
          probe.getAttribute('role')||
          probe.getAttribute('data-type')||
          probe.getAttribute('data-footnote')||
          ''
        ))||'';
        var probeName=(probe.getAttribute&&probe.getAttribute('name'))||'';
        var marker=[probeId,probeClass,probeType,probeRole,probeName].join(' ');
        if(_fn.marker.test(marker)){
          return true;
        }
        probe=probe.parentNode;
      }
      var href=(link&&link.getAttribute&&link.getAttribute('href'))||'';
      var cls=(link&&link.getAttribute&&link.getAttribute('class'))||'';
      var title=(link&&link.getAttribute&&link.getAttribute('title'))||'';
      var epubType=(link&&link.getAttribute&&(link.getAttribute('epub:type')||link.getAttribute('type')||''))||'';
      var role=(link&&link.getAttribute&&(link.getAttribute('role')||link.getAttribute('data-type')||link.getAttribute('data-footnote-id')||''))||'';
      var linkText=((link&&link.textContent)||'').trim();
      return href.indexOf('FbAutId_')>=0||
        href.indexOf('fbanchor://')===0||
        _fn.role.test(role)||
        _fn.href.test(href)||
        _fn.epubType.test(epubType)||
        _fn.cls.test(cls)||
        (!!title&&href.indexOf('#')>=0)||
        _fn.noteRefText.test(linkText);
    }catch(err){
      return false;
    }
  }
  function footnoteLinkAtEvent(e){
    try{
      var candidates=[e.target];
      if(document.elementFromPoint&&isFinite(e.clientX)&&isFinite(e.clientY)){
        candidates.push(document.elementFromPoint(e.clientX,e.clientY));
      }
      for(var i=0;i<candidates.length;i++){
        var probe=candidates[i];
        while(probe&&probe!==document.body){
          if(probe.nodeType===1&&probe.tagName==='A'&&probe.getAttribute('href')&&isFootnoteTarget(probe,probe)){
            return probe;
          }
          probe=probe.parentNode;
        }
      }
    }catch(err){}
    return null;
  }
  document.addEventListener('click',function(e){
    var now=Date.now();
    if(window.__readerNativeSuppressClickUntil&&now<window.__readerNativeSuppressClickUntil){
      e.preventDefault();
      return;
    }
    if(window.__readerTouchStartTs&&((now-window.__readerTouchStartTs)<900)){
      var movedX=Math.abs((e.clientX||0)-window.__readerTouchStartX);
      var movedY=Math.abs((e.clientY||0)-window.__readerTouchStartY);
      if(movedX>24||movedY>24){
        e.preventDefault();
        return;
      }
    }
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
    // Paged transforms can report the page container as event.target instead of
    // the inline marker. Resolve the element at the actual tap point before the
    // edge-tap fallback so a noteref can never become a previous-page request.
    var t=footnoteLinkAtEvent(e)||e.target;
    while(t&&t!==document.body){
      if(t.tagName==='A'){
        var href=t.getAttribute('href')||'';
        var title=t.getAttribute('title')||'';
        var epubType=t.getAttribute('epub:type')||t.getAttribute('type')||'';
        var role=t.getAttribute('role')||t.getAttribute('data-type')||t.getAttribute('data-footnote-id')||'';
        var cls=t.getAttribute('class')||'';
        var linkText=(t.textContent||'').trim();
        var isLinkTextNoteRef=_fn.noteRefText.test(linkText)||_fn.starRefText.test(linkText);
        var isFootnoteLink=_fn.cls.test(cls)||
          _fn.role.test(role)||
          _fn.epubType.test(epubType)||
          href.indexOf('fbanchor://')===0||
          href.indexOf('FbAutId_')>=0||
          _fn.href.test(href)||
          (title&&href.indexOf('#')>=0)||
          isLinkTextNoteRef;
        if(isFootnoteLink){
          e.preventDefault();
          if(title&&typeof _NativeReader!='undefined'){
            _NativeReader.onInlineFootnote(title);
            return;
          }
          var fnFragId='';
          if(href.charAt(0)==='#')fnFragId=href.substring(1);
          else if(href.indexOf('#')>=0)fnFragId=href.split('#')[1]||'';
          if(fnFragId){
            var fnEl=document.getElementById(fnFragId)||document.querySelector('[name="'+fnFragId+'"]');
            if(fnEl){
              var fnText=(fnEl.innerText||fnEl.textContent||'').replace(/\s+/g,' ').trim();
              if(fnText&&fnText.length>0&&fnText.length<3000&&typeof _NativeReader!='undefined'){
                _NativeReader.onInlineFootnote(fnText);
                return;
              }
            }
          }
          var footnoteHref=href.indexOf('fbanchor://')===0?href.slice(11):href;
          if(footnoteHref&&typeof _NativeReader!='undefined')_NativeReader.onAnchorClick('noteref://'+encodeURIComponent(footnoteHref));
          return;
        }
        // Edge position alone must never turn an arbitrary link into navigation.
        // In particular, numeric footnote markers commonly sit in the left third
        // of a line. Only explicit inline spine links are page-turn controls.
        if(shouldRouteLinkAsPagedTap(href,t)){
          routePagedTapFromLink(e,shouldRouteLinkAsPagedTap(href,t));
          return;
        }
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
          if(target&&isFootnoteTarget(target,t)){
            if(typeof _NativeReader!='undefined')_NativeReader.onAnchorClick('noteref://'+encodeURIComponent(href));
            return;
          }
          if(target&&window.__mrcomicScrollToAnchor(target))return;
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
            var fragHref=href.split('#')[1]||'';
            var fragTarget=document.getElementById(fragHref)||document.querySelector('[name="'+fragHref+'"]');
            if(fragTarget&&isFootnoteTarget(fragTarget,t)){
              if(typeof _NativeReader!='undefined')_NativeReader.onAnchorClick('noteref://'+encodeURIComponent(href));
              return;
            }
            if(fragTarget&&window.__mrcomicScrollToAnchor(fragTarget))return;
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
          if(shouldRouteLinkAsPagedTap(href,t)){
            routePagedTapFromLink(e,true);
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

internal const val HTML_READER_TAG = "ReaderHtmlView"
internal const val HTML_READER_BASE_URL = "https://appassets.androidplatform.net/reader/"
internal const val HTML_READER_ASSET_PATH = "/reader/content/"
internal const val HTML_READER_RESET_FREE_SCROLL_JS = """(function(){
  try{
    var viewport=document.getElementById('__mrcomic_paged_viewport');
    var content=document.getElementById('__mrcomic_paged_content');
    if(viewport&&content&&content.parentNode===viewport){
      Array.prototype.slice.call(content.childNodes).forEach(function(node){
        document.body.insertBefore(node,viewport);
      });
      if(viewport.parentNode)viewport.parentNode.removeChild(viewport);
    }
    if(content&&content.parentNode===document.body){
      content.parentNode.removeChild(content);
    }
    var shield=document.getElementById('__mrcomic_page_shield');
    if(shield&&shield.parentNode)shield.parentNode.removeChild(shield);
    window.__mrcomicPagedIndex=0;
    window.__mrcomicPageBreaks=null;
    window.__mrcomicPageBreakSig='';
    var scroller=document.scrollingElement||document.documentElement||document.body;
    if(scroller)scroller.scrollTop=0;
    if(document.documentElement)document.documentElement.scrollTop=0;
    if(document.body)document.body.scrollTop=0;
    window.scrollTo(0,0);
  }catch(e){}
})();"""
internal const val HTML_READER_BLANK_CHECK_JS = """(function(){
  try{
    var body=document.body;
    var root=document.documentElement;
    var text=(body&&body.innerText?body.innerText:'').trim().length;
    var rawText=(body&&body.textContent?body.textContent:'').trim().length;
    var images=(document.images&&document.images.length)||0;
    var media=document.querySelectorAll?document.querySelectorAll('img,svg,figure,table,blockquote,h1,h2,h3,h4,h5,h6,p,div').length:0;
    var height=Math.max(
      body&&body.scrollHeight?body.scrollHeight:0,
      root&&root.scrollHeight?root.scrollHeight:0
    );
    return JSON.stringify({text:text,rawText:rawText,images:images,media:media,height:height});
  }catch(e){
    return JSON.stringify({error:String(e)});
  }
})();"""
