package io.leostrange.mrcomic.feature.reader.ui

/**
 * Paged layout JavaScript generation for the text reader.
 *
 * Extracted from ReaderScreen to reduce its size and isolate the
 * WebView-side paged layout logic. These functions generate JavaScript
 * that runs inside the WebView to build page boundaries, apply page
 * transforms, and handle page navigation.
 *
 * The functions are pure — they take parameters and return JS strings
 * with no side effects or Android dependencies.
 */

internal fun readerPagedLayoutJs(targetPage: Int, generation: Long? = null): String {
    val legacyScript = readerPagedCoreJs(
        """
        var requested=$targetPage;
        var target=(requested<0)?current:((requested>=2147483647)?(pageCount-1):Math.max(0,Math.min(pageCount-1,requested||0)));
        """.trimIndent()
    )
    return generation?.let {
        readerWebViewProtocolEnvelopeJs(it, eventType = "layoutReady", payloadScript = legacyScript)
    } ?: legacyScript
}

internal fun readerPagedTurnJs(delta: Int, generation: Long? = null): String {
    val legacyScript = readerPagedCoreJs(
        """
        var target=current+($delta);
        if(target<0||target>=pageCount){
          return JSON.stringify({handled:false,pageIndex:current,pageCount:pageCount});
        }
        """.trimIndent(),
        failureHandled = false,
        reuseExistingLayoutsOnly = true
    )
    return generation?.let {
        readerWebViewProtocolEnvelopeJs(it, eventType = "layoutReady", payloadScript = legacyScript)
    } ?: legacyScript
}

internal fun readerPagedCoreJs(
    targetJs: String,
    failureHandled: Boolean = true,
    reuseExistingLayoutsOnly: Boolean = false
): String = """
(function(){
  try{
    var root=document.documentElement;
    var body=document.body;
    if(!root||!body)return JSON.stringify({handled:$failureHandled,pageIndex:0,pageCount:1});
    var nativeWidth=Math.round(Number(window.__mrcomicNativeViewportWidth||0));
    var nativeHeight=Math.round(Number(window.__mrcomicNativeViewportHeight||0));
    var visualViewportHeight=Math.round((window.visualViewport&&window.visualViewport.height)||0);
    var windowInnerHeight=Math.round(window.innerHeight||0);
    var rootClientHeight=Math.round(root.clientHeight||0);
    var pageWidth=Math.max(1,nativeWidth||root.clientWidth||window.innerWidth||360);
    var fallbackPageHeight=windowInnerHeight||rootClientHeight||visualViewportHeight||0;
    var pageHeight=Math.max(320,nativeHeight||fallbackPageHeight||640);
    // BUG-RDR-010: in landscape, ensure pageHeight doesn't exceed viewport
    // to prevent text overflow at the bottom edge.
    var maxAllowedHeight=Math.max(320,(windowInnerHeight||rootClientHeight||visualViewportHeight||640));
    pageHeight=Math.min(pageHeight,maxAllowedHeight);
    root.style.setProperty('width',pageWidth+'px','important');
    root.style.setProperty('max-width',pageWidth+'px','important');
    root.style.setProperty('height',pageHeight+'px','important');
    root.style.setProperty('max-height',pageHeight+'px','important');
    root.style.overflowX='hidden';
    root.style.overflowY='hidden';
    body.style.boxSizing='border-box';
    body.style.setProperty('width',pageWidth+'px','important');
    body.style.setProperty('max-width',pageWidth+'px','important');
    body.style.marginLeft='0';
    body.style.marginRight='0';
    body.style.position='relative';
    body.style.overflow='hidden';
    body.style.setProperty('padding-bottom','0px','important');
    body.style.removeProperty('-webkit-column-width');
    body.style.removeProperty('column-width');
    body.style.removeProperty('-webkit-column-gap');
    body.style.removeProperty('column-gap');
    body.style.removeProperty('-webkit-column-fill');
    body.style.removeProperty('column-fill');
    window.__mrcomicPageWidth=pageWidth;
    window.__mrcomicPageHeight=pageHeight;
    window.__mrcomicColumnWidth=0;
    window.__mrcomicColumnGap=0;
    var scroller=document.scrollingElement||root;
    var cs=window.getComputedStyle?window.getComputedStyle(body):null;
    var lineHeight=cs?parseFloat(cs.lineHeight):0;
    if(!lineHeight||isNaN(lineHeight))lineHeight=Math.max(18,(parseFloat(cs&&cs.fontSize)||18)*1.5);
    var pageInsetTop=Math.max(0,parseFloat(window.__mrcomicPageInsetTop||0)||0);
    var pageInsetBottom=Math.max(0,parseFloat(window.__mrcomicPageInsetBottom||0)||0);
    var firstPageOffset=0;
    body.style.paddingBottom='0px';
    var bodyPaddingBottom=0;
    var clipHeight=Math.max(lineHeight*3,pageHeight);
    var viewport=document.getElementById('__mrcomic_paged_viewport')||body;
    viewport.style.boxSizing='border-box';
    viewport.style.position='relative';
    viewport.style.left='0';
    viewport.style.top='0';
    viewport.style.width='100%';
    viewport.style.maxWidth='100%';
    viewport.style.overflow='hidden';
    viewport.style.setProperty('height',clipHeight+'px','important');
    viewport.style.setProperty('min-height',clipHeight+'px','important');
    viewport.style.setProperty('max-height',clipHeight+'px','important');
    var content=document.getElementById('__mrcomic_paged_content')||body;
    content.style.position='absolute';
    content.style.left='0';
    content.style.right='0';
    content.style.top=Math.ceil(pageInsetTop)+'px';
    content.style.width='100%';
    content.style.maxWidth='100%';
    content.style.transformOrigin='0 0';
    content.style.webkitTransformOrigin='0 0';
    content.style.willChange='transform';
    var viewportBottomSafety=0;
    var pageFitSafety=0;
    viewport.style.boxSizing='border-box';
    viewport.style.paddingTop='0px';
    viewport.style.paddingBottom='0px';
    // The Compose reader container already owns the complete outer gutter.
    // Keep the viewport remainder in the page budget. Quantizing this value
    // down by lineHeight turns that remainder into a variable bottom gutter.
    var rawUsableHeight=Math.max(lineHeight*3,clipHeight-pageInsetTop-pageInsetBottom);
    var usableHeight=rawUsableHeight;
    root.style.setProperty('--mrcomic-page-visible-height',usableHeight+'px');
    root.style.setProperty('--mrcomic-page-inset-top',pageInsetTop+'px');
    root.style.setProperty('--mrcomic-page-inset-bottom',pageInsetBottom+'px');
    var contentViewportTopOffset=0;
    window.__mrcomicPageStep=usableHeight;
    window.__mrcomicFirstPageOffset=firstPageOffset;
    window.__mrcomicBaseClipHeight=clipHeight;

    function buildPages(){
      var existingLayouts=window.__mrcomicPageLayouts;
      if($reuseExistingLayoutsOnly){
        return (existingLayouts&&existingLayouts.length)?existingLayouts:null;
      }
      var contentRect=content.getBoundingClientRect();
      var contentHeight=Math.ceil(Math.max(content.scrollHeight||0,content.offsetHeight||0,contentRect.height||0,clipHeight));
      var sig=['text-page-no-overlap-v9',pageWidth,clipHeight,contentHeight,(content.innerText||body.innerText||'').length,body.style.fontSize,body.style.lineHeight,body.style.textAlign,pageInsetTop,pageInsetBottom].join('|');
      if(existingLayouts&&window.__mrcomicPageBreakSig===sig){
        return existingLayouts;
      }

      var oldTransform=content.style.transform;
      var oldWebkitTransform=content.style.webkitTransform;
      var oldViewportVisibility=viewport.style.visibility;
      var oldContentVisibility=content.style.visibility;
      viewport.style.visibility='hidden';
      content.style.visibility='hidden';
      content.style.transform='none';
      content.style.webkitTransform='none';
      try{scroller.scrollTop=0;}catch(e){}
      try{window.scrollTo(0,0);}catch(e){}
      contentRect=content.getBoundingClientRect();
      contentHeight=Math.ceil(Math.max(content.scrollHeight||0,content.offsetHeight||0,contentRect.height||0,clipHeight));
      try{
        var viewportRect=viewport.getBoundingClientRect();
        contentViewportTopOffset=Math.max(0,Math.ceil((contentRect.top||0)-(viewportRect.top||0)));
      }catch(e){
        contentViewportTopOffset=Math.max(0,pageInsetTop);
      }
      window.__mrcomicContentViewportTopOffset=contentViewportTopOffset;

      var fragments=[];
      var blockStarts=[];
      function addFragment(top,bottom){
        top=Math.floor(Number(top)||0);
        bottom=Math.ceil(Number(bottom)||top);
        if(!isFinite(top)||!isFinite(bottom)||top<0||bottom<0)return;
        if(bottom<top)bottom=top;
        if(top<=contentHeight+pageHeight)fragments.push({top:top,bottom:bottom});
      }
      function addBlockStart(top){
        top=Math.floor(Number(top)||0);
        if(!isFinite(top)||top<0||top>contentHeight+pageHeight)return;
        blockStarts.push(top);
      }
      function addTop(y){
        y=Math.floor(Number(y)||0);
        addFragment(y,y+lineHeight);
      }
      addTop(firstPageOffset);
      try{
        var range=document.createRange();
        var walker=document.createTreeWalker(content,NodeFilter.SHOW_TEXT,{
          acceptNode:function(node){
            return node&&node.nodeValue&&node.nodeValue.trim().length?NodeFilter.FILTER_ACCEPT:NodeFilter.FILTER_REJECT;
          }
        });
        var node;
        while((node=walker.nextNode())){
          range.selectNodeContents(node);
          var rects=range.getClientRects();
          for(var i=0;i<rects.length;i++){
            var r=rects[i];
            if(r&&r.width>1&&r.height>2)addFragment(r.top-contentRect.top,r.bottom-contentRect.top);
          }
        }
        range.detach&&range.detach();
      }catch(e){}        try{
        content.querySelectorAll('img,svg,canvas,video,table,figure,hr').forEach(function(el){
          var rects=el.getClientRects();
          for(var i=0;i<rects.length;i++){
            var r=rects[i];
            if(r&&r.height>2)addFragment(r.top-contentRect.top,r.bottom-contentRect.top);
          }
          // Clamp oversized media to page bounds so they don't bleed/crop
          var mediaHeight=el.getBoundingClientRect().height||0;
          if(mediaHeight>usableHeight*1.05&&el.tagName&&/^(IMG|SVG|VIDEO|CANVAS)$/i.test(el.tagName)){
            el.style.setProperty('max-height',Math.floor(usableHeight)+'px','important');
            el.style.setProperty('object-fit','contain','important');
            el.style.setProperty('width','auto','important');
          }
        });
      }catch(e){}
      try{
        content.querySelectorAll('p,div,section,article,blockquote,li,td,th,h1,h2,h3,h4,h5,h6,pre').forEach(function(el){
          var rect=el.getBoundingClientRect();
          if(rect&&rect.height>2)addBlockStart(rect.top-contentRect.top);
        });
      }catch(e){}
      fragments.sort(function(a,b){return (a.top-b.top)||(a.bottom-b.bottom);});
      blockStarts.sort(function(a,b){return a-b;});
      var unique=[];
      for(var t=0;t<fragments.length;t++){
        var f=fragments[t];
        var last=unique[unique.length-1];
        if(!last||Math.abs(f.top-last.top)>2){
          unique.push({top:f.top,bottom:f.bottom});
        }else if(f.bottom>last.bottom){
          last.bottom=f.bottom;
        }
      }
      if(!unique.length){
        unique.push({top:0,bottom:Math.max(lineHeight,Math.min(contentHeight,clipHeight))});
      }

      var mediaFirstPageBottom=0;
      try{
        var imagePageWrapper=content.querySelector('.mrcomic-image-page,.epub-inline-cover,[data-mrcomic-preserve-layout]');
        var heroMedia=content.querySelector('img,svg,canvas,video,figure');
        if(imagePageWrapper&&heroMedia){
          var wrapperRect=imagePageWrapper.getBoundingClientRect();
          var wrapperBottom=Math.max(0,wrapperRect.bottom-contentRect.top);
          mediaFirstPageBottom=Math.min(contentHeight,Math.max(wrapperBottom,clipHeight));
        }else if(heroMedia){
          var heroRect=heroMedia.getBoundingClientRect();
          var heroTop=Math.max(0,heroRect.top-contentRect.top);
          var heroBottom=Math.max(heroTop,heroRect.bottom-contentRect.top);
          var bodyTextLength=((content.innerText||'').replace(/\s+/g,' ').trim().length)||0;
          var isImageOnlySection=bodyTextLength<=400;
          var heroHeightRatio=clipHeight>0?(heroBottom-heroTop)/clipHeight:0;
          if(
            heroTop <= lineHeight*1.1 &&
            (
              (heroBottom >= Math.max(lineHeight*6,clipHeight*0.62) && bodyTextLength <= 2200) ||
              (isImageOnlySection && heroHeightRatio >= 0.30 && heroBottom > lineHeight*2)
            )
          ){
            mediaFirstPageBottom=Math.min(contentHeight,Math.max(heroBottom,Math.min(contentHeight,clipHeight)));
          }
        }
      }catch(e){}

      function findLastContentBottom(pageStart, pageEnd){
        var start = Number(pageStart||0);
        var end = Number(pageEnd||0);
        var lastB = start;
        for(var i=0; i<unique.length; i++){
          var f = unique[i];
          if(f.top >= end) break;
          if(f.bottom <= end && f.bottom > lastB){
            lastB = f.bottom;
          }
        }
        return lastB > start ? lastB : end;
      }

      function makeVisibleHeight(pageStart,pageEnd,pageTopInset,pageBottomInset,explicitContentBottom){
        var pStart = Number(pageStart||0);
        var pEnd = Number(pageEnd||0);
        var contentBottom = Number(explicitContentBottom || findLastContentBottom(pStart, pEnd));
        var span = Math.max(1, contentBottom - pStart);
        var leadingViewportOffset=Math.max(contentViewportTopOffset,Math.max(0,Number(pageTopInset||0)));
        var shieldGap = pEnd > contentBottom ? Math.floor((pEnd - contentBottom) / 2) : 0;
        var shieldOffset = span + Math.min(Math.max(0, shieldGap), Math.max(1, Math.floor(lineHeight * 0.15)));
        return Math.ceil(Math.max(
          1,
          Math.min(
            clipHeight,
            leadingViewportOffset+shieldOffset
          )
        ));
      }

      function firstFragmentTopAfter(y){
        var safeY=Math.ceil(Number(y)||0);
        for(var idx=0;idx<unique.length;idx++){
          var top=Math.floor(Number(unique[idx].top)||0);
          if(top>safeY+1)return top;
        }
        return -1;
      }
      function safePageBoundaryAtOrBefore(minY,maxY,targetY){
        var safeMin=Math.max(0,Number(minY)||0);
        var safeMax=Math.max(safeMin,Number(maxY)||safeMin);
        var safeTarget=Math.max(safeMin,Math.min(safeMax,Number(targetY)||safeMin));
        var best=-1;
        for(var blockIdx=0;blockIdx<blockStarts.length;blockIdx++){
          var blockTop=Math.floor(Number(blockStarts[blockIdx])||0);
          if(blockTop<=safeMin)continue;
          if(blockTop>safeTarget)break;
          best=blockTop;
        }
        for(var fragmentIdx=0;fragmentIdx<unique.length;fragmentIdx++){
          var fragmentTop=Math.floor(Number(unique[fragmentIdx].top)||0);
          if(fragmentTop<=safeMin)continue;
          if(fragmentTop>safeTarget)break;
          best=Math.max(best,fragmentTop);
        }
        return best>safeMin?Math.min(best,safeMax):-1;
      }

      var pages=[];
      var current=0;
      var guard=0;
      while(current<contentHeight&&guard++<2000){
        var pageTopInset=pageInsetTop;
        var pageBottomInset=pageInsetBottom;
        // Use the same line-quantized height that is reported as usableHeight.
        // Deriving the budget from clipHeight separately lets fractional line
        // space accumulate and causes a one-line drift on later pages.
        var pageBudget=Math.max(lineHeight*3,usableHeight);
        if(pages.length===0&&current<=firstPageOffset+1&&mediaFirstPageBottom>current+lineHeight*2){
          var nextStartAfterMedia=contentHeight;
          for(var frontIdx=0;frontIdx<blockStarts.length;frontIdx++){
            var blockAfterMedia=blockStarts[frontIdx];
            if(blockAfterMedia<=mediaFirstPageBottom-lineHeight*0.25)continue;
            nextStartAfterMedia=blockAfterMedia;
            break;
          }
          pages.push({
            start:Math.round(current),
            end:Math.round(nextStartAfterMedia),
            visibleHeight:makeVisibleHeight(current,mediaFirstPageBottom,pageTopInset,pageBottomInset),
            mediaPage:true
          });
          if(nextStartAfterMedia>=contentHeight||nextStartAfterMedia<=current){
            break;
          }
          current=nextStartAfterMedia;
          continue;
        }
        var limit=current+pageBudget;
        var lastFitIndex=-1;
        var overflowIndex=unique.length;
        for(var j=0;j<unique.length;j++){
          var fragment=unique[j];
          var top=fragment.top;
          var bottom=fragment.bottom;
          if(bottom<=current+Math.max(1,lineHeight*0.25))continue;
          if(bottom<=limit){
            lastFitIndex=j;
            continue;
          }
          overflowIndex=j;
          break;
        }
        if(lastFitIndex<0){
          if(overflowIndex<unique.length){
            lastFitIndex=overflowIndex;
          }else{
            var pageExtraPixel=pageTopInset>0?0:1;
            pages.push({
              start:Math.round(current),
              end:Math.round(contentHeight),
              visibleHeight:makeVisibleHeight(current,contentHeight,pageTopInset,pageBottomInset)
            });
            break;
          }
        }

        var endBottom=Math.max(current+lineHeight,Math.min(contentHeight,Number(unique[lastFitIndex].bottom||limit)));
        var nextStart;
        if(overflowIndex<unique.length){
          var overflowTop=Math.floor(Number(unique[overflowIndex].top)||0);
          nextStart=overflowTop>current+lineHeight*0.5?overflowTop:endBottom;
        }else{
          nextStart=contentHeight;
        }

        var orphanGuardStart=0;
        for(var m=0;m<blockStarts.length;m++){
          var blockTop=blockStarts[m];
          if(blockTop<=current+lineHeight*0.75)continue;
          if(blockTop>endBottom)break;
          orphanGuardStart=blockTop;
        }
        // Avoid only a genuinely isolated final line. Moving a whole short paragraph
        // after a merely 65%-filled page created conspicuous empty bands, especially
        // in landscape. Normal paragraphs should split and use the available viewport.
        if(orphanGuardStart>current+lineHeight*1.1&&endBottom-orphanGuardStart<=lineHeight*2.0){
          var backupBottom=0;
          for(var p=0;p<=lastFitIndex;p++){
            var fitted=unique[p];
            if(fitted.bottom<orphanGuardStart-1&&fitted.top>current+lineHeight*0.25){
              backupBottom=fitted.bottom;
            }
          }
          var pageFillRatio=(backupBottom-current)/usableHeight;
          if(backupBottom>current+lineHeight*0.75&&pageFillRatio>=0.90){
            endBottom=backupBottom;
            nextStart=orphanGuardStart;
          }
        }

        if(nextStart<=current+lineHeight*0.5){
          nextStart=Math.min(contentHeight,Math.max(endBottom,current+lineHeight));
        }

        pages.push({
          start:Math.round(current),
          end:Math.round(nextStart),
          visibleHeight:makeVisibleHeight(current,nextStart,pageTopInset,pageBottomInset,endBottom)
        });

        if(nextStart>=contentHeight||nextStart<=current){
          break;
        }
        current=nextStart;
      }
      pages=(function compactHeadingAndBlankPages(pages){
        if(!pages||!pages.length)return pages;
        var out=[];
        var idx=0;
        while(idx<pages.length){
          var pg=pages[idx];
          var span=Math.max(0,Number(pg.end||0)-Number(pg.start||0));
          if(span<lineHeight*0.45){idx++;continue;}
          if(idx+1<pages.length&&span<=lineHeight*5.5){
            var nextPg=pages[idx+1];
            var budgetEnd=Math.min(contentHeight,Number(pg.start||0)+pageBudget);
            var compactEnd=safePageBoundaryAtOrBefore(
              Number(pg.end||0),
              Math.min(Number(nextPg.end||0),budgetEnd),
              Math.min(Number(nextPg.end||0),budgetEnd)
            );
            if(compactEnd<=Number(pg.end||0)+lineHeight*0.5){
              out.push(pg);
              idx++;
              continue;
            }
            pg.end=Math.round(compactEnd);
            pg.visibleHeight=makeVisibleHeight(pg.start,pg.end,pageInsetTop,pageInsetBottom);
            nextPg.start=Math.round(Number(pg.end||0));
            if(Number(nextPg.end||0)-Number(nextPg.start||0)<lineHeight*0.45){
              pg.end=Number(nextPg.end||0);
              pg.visibleHeight=makeVisibleHeight(pg.start,pg.end,pageInsetTop,pageInsetBottom);
              out.push(pg);
              idx+=2;
              continue;
            }
          }
          out.push(pg);
          idx++;
        }
        return out.length?out:pages;
      })(pages);
      pages=(function keepHeadingsWithFollowingBody(pages){
        if(!pages||pages.length<2)return pages;
        for(var hi=0;hi<pages.length-1;hi++){
          var headPage=pages[hi];
          var bodyPage=pages[hi+1];
          var headSpan=Math.max(0,Number(headPage.end||0)-Number(headPage.start||0));
          if(headSpan>lineHeight*10)continue;
          var budgetEnd=Math.min(contentHeight,Number(headPage.start||0)+pageBudget);
          var mergedEnd=safePageBoundaryAtOrBefore(
            Number(headPage.end||0),
            Math.min(budgetEnd,Number(bodyPage.end||0)),
            Math.min(budgetEnd,Number(bodyPage.end||0))
          );
          if(mergedEnd<=Number(headPage.end||0)+lineHeight*0.5)continue;
          headPage.end=Math.round(mergedEnd);
          headPage.visibleHeight=makeVisibleHeight(headPage.start,headPage.end,pageInsetTop,pageInsetBottom);
          bodyPage.start=Math.round(mergedEnd);
          if(Number(bodyPage.end||0)-Number(bodyPage.start||0)<lineHeight*0.35){
            pages.splice(hi+1,1);
            hi--;
          }
        }
        var idx=0;
        while(idx<pages.length-1){
          var cur=pages[idx];
          var curH=Math.max(0,Number(cur.visibleHeight||0)-pageInsetTop-pageInsetBottom);
          if(curH<usableHeight*0.65&&idx<pages.length-1){
            var nxt=pages[idx+1];
            var extendTo=Math.min(contentHeight,Number(cur.start||0)+pageBudget);
            var safeExtendTo=safePageBoundaryAtOrBefore(
              Number(cur.end||0),
              Math.min(extendTo,Number(nxt.end||0)),
              Math.min(extendTo,Number(nxt.end||0))
            );
            if(safeExtendTo>Number(cur.end||0)+lineHeight*0.5){
              cur.end=Math.round(safeExtendTo);
              cur.visibleHeight=makeVisibleHeight(cur.start,cur.end,pageInsetTop,pageInsetBottom);
              nxt.start=Math.round(cur.end);
              if(Number(nxt.end||0)-Number(nxt.start||0)<lineHeight*0.35){
                pages.splice(idx+1,1);
                continue;
              }
            }
          }
          idx++;
        }
        return pages;
      })(pages);
      if(pages.length===1){
        var onlyPage=pages[0];
        var contentSpan=Math.max(0,Number(onlyPage.visibleHeight||0)-pageInsetTop-pageInsetBottom-viewportBottomSafety);
        if(contentSpan<clipHeight*0.35){
          onlyPage.visibleHeight=clipHeight;
        }
      }
      window.__mrcomicPageLayouts=pages;
      window.__mrcomicPageBreaks=pages.map(function(page){return Math.round(Number(page.start)||0);});
      window.__mrcomicPageBreakSig=sig;
      window.__mrcomicPagedContentHeight=contentHeight;
      content.style.transform=oldTransform;
      content.style.webkitTransform=oldWebkitTransform;
      viewport.style.visibility=oldViewportVisibility||'';
      content.style.visibility=oldContentVisibility||'';
      return pages;
    }

    function applyPage(index,pages){
      var page=pages[index]||pages[0]||{start:0,visibleHeight:clipHeight};
      var y=Math.max(0,Number(page.start||0));
      var appliedContentViewportTopOffset=Math.max(
        contentViewportTopOffset,
        Math.max(0,Number(window.__mrcomicContentViewportTopOffset||0)||0)
      );
      var shiftY=y;
      var rawVisibleHeight=Math.max(1,Math.min(clipHeight,Number(page.visibleHeight||clipHeight)));
      var visibleHeight=clipHeight;
      viewport.style.setProperty('height',Math.ceil(visibleHeight)+'px','important');
      viewport.style.setProperty('min-height',Math.ceil(visibleHeight)+'px','important');
      viewport.style.setProperty('max-height',Math.ceil(visibleHeight)+'px','important');
      var shield=document.getElementById('__mrcomic_page_shield');
      if(!shield){
        shield=document.createElement('div');
        shield.id='__mrcomic_page_shield';
      }
      if(shield.parentNode!==viewport){
        viewport.appendChild(shield);
      }
      var isMediaPage=!!page.mediaPage;
      // Keep the shield two pixels below the measured content boundary. Starting
      // inside that boundary clips descenders and can expose a partial final line.
      var shieldTop=Math.max(
        0,
        Math.min(
          visibleHeight,
          Math.max(0,rawVisibleHeight+2)
        )
      );
      var rootStyle=window.getComputedStyle?window.getComputedStyle(document.documentElement):null;
      var bodyStyle=window.getComputedStyle?window.getComputedStyle(document.body):null;
      var cssReaderBg=rootStyle?String(rootStyle.getPropertyValue('--mrcomic-reader-background-color')||'').trim():'';
      var bodyBg=bodyStyle?String(bodyStyle.backgroundColor||'').trim():'';
      var htmlBg=rootStyle?String(rootStyle.backgroundColor||'').trim():'';
      function solidReaderBackground(value){
        if(!value)return '';
        var normalized=String(value).replace(/\s+/g,'').toLowerCase();
        if(normalized==='transparent'||normalized==='rgba(0,0,0,0)'||normalized==='hsla(0,0%,0%,0)')return '';
        return value;
      }
      var shieldBg=
        solidReaderBackground(cssReaderBg)||
        solidReaderBackground(bodyBg)||
        solidReaderBackground(htmlBg)||
        '#ffffff';
      var topShield=document.getElementById('__mrcomic_page_top_shield');
      if(!topShield){
        topShield=document.createElement('div');
        topShield.id='__mrcomic_page_top_shield';
      }
      if(topShield.parentNode!==viewport){
        viewport.appendChild(topShield);
      }
      topShield.style.position='absolute';
      topShield.style.left='0';
      topShield.style.right='0';
      topShield.style.top='0';
      topShield.style.height=Math.ceil(Math.max(0,pageInsetTop))+'px';
      topShield.style.zIndex='2147483000';
      topShield.style.pointerEvents='none';
      topShield.style.background=shieldBg;
      shield.style.position='absolute';
      shield.style.left='0';
      shield.style.right='0';
      shield.style.top=Math.ceil(shieldTop)+'px';
      shield.style.bottom='0';
      shield.style.zIndex='2147483000';
      shield.style.pointerEvents='none';
      shield.style.background=shieldBg;
      viewport.style.visibility='visible';
      content.style.visibility='visible';
      content.style.transform='translate3d(0,'+(-shiftY)+'px,0)';
      content.style.webkitTransform='translate3d(0,'+(-shiftY)+'px,0)';
      try{scroller.scrollTop=0;}catch(e){}
      try{window.scrollTo(0,0);}catch(e){}
      window.__mrcomicPagedIndex=index;
      window.__mrcomicCurrentPageY=y;
      window.__mrcomicCurrentPageShiftY=shiftY;
      window.__mrcomicAppliedContentViewportTopOffset=appliedContentViewportTopOffset;
    }
    window.__mrcomicApplyPagedPage=function(index){
      var pageLayouts=window.__mrcomicPageLayouts||pages||[{start:0,visibleHeight:clipHeight}];
      var pageIndex=Math.max(0,Math.min(pageLayouts.length-1,Math.round(Number(index||0))||0));
      applyPage(pageIndex,pageLayouts);
      return pageIndex;
    };

    var pages=buildPages();
    if(!pages||!pages.length){
      return JSON.stringify({handled:$failureHandled,pageIndex:0,pageCount:1});
    }
    var pageCount=Math.max(1,pages.length||1);
    var current=Math.max(0,Math.min(pageCount-1,Math.round(Number(window.__mrcomicPagedIndex||0))||0));
    $targetJs
    target=Math.max(0,Math.min(pageCount-1,target||0));
    try{var s=window.getSelection&&window.getSelection();if(s)s.removeAllRanges();}catch(e){}
    try{window.__readerSelectionTs=0;}catch(e){}
    applyPage(target,pages);      var charPos=0;
      try{
        var fullText=(content.innerText||body.innerText||'');
        var targetPageLayout=pages[target]||pages[0]||{};
        var pageStartY=Math.round(Number(targetPageLayout.start||0));
        var characterCursor=0;
        var visibleContentRect=content.getBoundingClientRect();
        var range=document.createRange();
        var walker=document.createTreeWalker(content,NodeFilter.SHOW_TEXT,{
          acceptNode:function(node){
            return node&&node.nodeValue?NodeFilter.FILTER_ACCEPT:NodeFilter.FILTER_REJECT;
          }
        });
        var node;
        while((node=walker.nextNode())){
          var nodeValue=node.nodeValue||'';
          if(!nodeValue.length)continue;
          range.selectNodeContents(node);
          var rects=range.getClientRects();
          var nodeContainsBoundary=false;
          for(var rectIndex=0;rectIndex<rects.length;rectIndex++){
            var textRect=rects[rectIndex];
            // applyPage() translates the content by -pageStartY. Convert the
            // visible rect back into the untransformed document coordinate
            // before comparing it with the stored page boundary.
            var relativeBottom=(textRect.bottom||0)-visibleContentRect.top;
            if(relativeBottom>pageStartY+1){
              nodeContainsBoundary=true;
              break;
            }
          }
          if(!nodeContainsBoundary){
            characterCursor+=nodeValue.length;
            continue;
          }
          // Find the first character crossing the boundary instead of assigning
          // an average number of characters to each line rect. This keeps the
          // offset stable for wrapped text and mixed-size inline elements.
          var low=0;
          var high=nodeValue.length;
          while(low<high){
            var mid=Math.floor((low+high)/2);
            range.setStart(node,mid);
            range.setEnd(node,Math.min(nodeValue.length,mid+1));
            var charRect=range.getBoundingClientRect();
            var charBottom=(charRect.bottom||0)-visibleContentRect.top;
            if(charBottom>pageStartY+1){
              high=mid;
            }else{
              low=mid+1;
            }
          }
          charPos=characterCursor+low;
          throw {name:'__mrcomicCharacterOffsetFound'};
        }
        charPos=Math.min(fullText.length,characterCursor);
        range.detach&&range.detach();
      }catch(e){
        if(!e||e.name!=='__mrcomicCharacterOffsetFound'){
          var contentFullHeight=Math.max(1,Math.ceil(content.scrollHeight||content.offsetHeight||contentHeight));
          var charRatio=contentFullHeight>0?Math.min(1,Math.max(0,pageStartY/contentFullHeight)):0;
          charPos=Math.round(charRatio*fullText.length);
        }
        try{range&&range.detach&&range.detach();}catch(ignore){}
      }
      charPos=Math.max(0,Math.min(fullText.length,charPos));
      return JSON.stringify({
      handled:true,
      pageIndex:target,
      pageCount:pageCount,
      characterOffset:charPos,
      usableHeight:usableHeight,
      clipHeight:clipHeight,
      contentViewportTopOffset:contentViewportTopOffset,
      layouts:pages.slice(0,6).map(function(p){return [Math.round(p.start||0),Math.round(p.end||0),Math.round(p.visibleHeight||0)];})
    });
  }catch(e){
    return JSON.stringify({handled:$failureHandled,pageIndex:0,pageCount:1,error:String(e)});
  }
})();
""".trimIndent()

/**
 * Find the page that contains the given character offset.
 *
 * Uses a proportional estimate (ratio of characterOffset to total text length)
 * to find the approximate Y position, then selects the nearest page boundary.
 * Returns the page index; the caller applies the page via applyPagedLayout.
 */
internal fun readerScrollToCharacterOffsetJs(characterOffset: Int): String = """
(function(){
  try{
    var pages=window.__mrcomicPageLayouts;
    if(!pages||!pages.length)return 0;
    var content=document.getElementById('__mrcomic_paged_content')||document.body;
    var fullText=(content.innerText||document.body.innerText||'');
    if(!fullText.length)return 0;
    var safeOffset=Math.max(0,Math.min(fullText.length,${characterOffset}||0));
    var ratio=safeOffset/fullText.length;
    var contentHeight=window.__mrcomicPagedContentHeight||Math.ceil(content.scrollHeight||content.offsetHeight||0);
    if(contentHeight<=0)return 0;
    var estimatedY=Math.round(ratio*contentHeight);
    var bestPage=0;
    for(var i=0;i<pages.length;i++){
      if((pages[i].start||0)<=estimatedY)bestPage=i;
      else break;
    }
    return bestPage;
  }catch(e){return -1;}
})();
""".trimIndent()
