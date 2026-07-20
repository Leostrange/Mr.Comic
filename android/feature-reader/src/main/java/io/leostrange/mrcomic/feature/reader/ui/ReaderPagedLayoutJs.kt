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

internal fun readerPagedLayoutJs(targetPage: Int): String = readerPagedCoreJs(
    """
    var requested=$targetPage;
    var target=(requested<0)?current:((requested>=2147483647)?(pageCount-1):Math.max(0,Math.min(pageCount-1,requested||0)));
    """.trimIndent()
)

internal fun readerPagedTurnJs(delta: Int): String = readerPagedCoreJs(
    """
    var target=current+($delta);
    if(target<0||target>=pageCount){
      return JSON.stringify({handled:false,pageIndex:current,pageCount:pageCount});
    }
    """.trimIndent(),
    failureHandled = false,
    reuseExistingLayoutsOnly = true
)

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
    var rawUsableHeight=Math.max(lineHeight*3,clipHeight-pageInsetTop-pageInsetBottom-Math.max(4,lineHeight*0.18));
    var usableLineCount=Math.max(3,Math.floor(rawUsableHeight/lineHeight));
    var usableHeight=Math.max(lineHeight*3,usableLineCount*lineHeight);
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
      var sig=['text-page-no-overlap-v7',pageWidth,clipHeight,contentHeight,(content.innerText||body.innerText||'').length,body.style.fontSize,body.style.lineHeight,body.style.textAlign,pageInsetTop,pageInsetBottom].join('|');
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
      }catch(e){}
      try{
        content.querySelectorAll('img,svg,canvas,video,table,figure,hr').forEach(function(el){
          var rects=el.getClientRects();
          for(var i=0;i<rects.length;i++){
            var r=rects[i];
            if(r&&r.height>2)addFragment(r.top-contentRect.top,r.bottom-contentRect.top);
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

      function nearestBreakBetween(minY,maxY,targetY){
        var safeMin=Math.max(0,Number(minY)||0);
        var safeMax=Math.max(safeMin,Number(maxY)||safeMin);
        var safeTarget=Math.max(safeMin,Math.min(safeMax,Number(targetY)||safeMin));
        var best=-1;
        var bestDistance=Number.MAX_VALUE;
        for(var breakIdx=0;breakIdx<blockStarts.length;breakIdx++){
          var candidate=Math.floor(Number(blockStarts[breakIdx])||0);
          if(candidate<=safeMin||candidate>=safeMax)continue;
          var distance=Math.abs(candidate-safeTarget);
          if(distance<bestDistance){
            best=candidate;
            bestDistance=distance;
          }
        }
        if(best>=0)return best;
        for(var fragmentIdx=0;fragmentIdx<unique.length;fragmentIdx++){
          var fragmentTop=Math.floor(Number(unique[fragmentIdx].top)||0);
          if(fragmentTop<=safeMin||fragmentTop>=safeMax)continue;
          var fragmentDistance=Math.abs(fragmentTop-safeTarget);
          if(fragmentDistance<bestDistance){
            best=fragmentTop;
            bestDistance=fragmentDistance;
          }
        }
        return best;
      }

      function makeVisibleHeight(pageStart,pageEnd,pageTopInset,pageBottomInset){
        var span=Math.max(1,Number(pageEnd||0)-Number(pageStart||0));
        var leadingViewportOffset=contentViewportTopOffset+Math.max(0,Number(pageTopInset||0));
        return Math.ceil(Math.max(
          1,
          Math.min(
            clipHeight,
            leadingViewportOffset+span+1
          )
        ));
      }

      function rebalanceTrailingPages(pages){
        if(!pages||pages.length<2)return pages;
        var lastIndex=pages.length-1;
        var lastPage=pages[lastIndex];
        var prevPage=pages[lastIndex-1];
        if(!lastPage||!prevPage)return pages;

        var prevSpan=Math.max(0,Number(prevPage.end||0)-Number(prevPage.start||0));
        var lastSpan=Math.max(0,Number(lastPage.end||0)-Number(lastPage.start||0));
        if(prevSpan<=0||lastSpan<=0)return pages;

        var minTailSpan=Math.max(lineHeight*5,usableHeight*0.58);
        if(lastSpan>=minTailSpan)return pages;
        if(prevSpan<=Math.max(lineHeight*7,usableHeight*0.72))return pages;

        var mergedStart=Math.max(0,Number(prevPage.start||0));
        var mergedEnd=Math.max(mergedStart+lineHeight*2,Number(lastPage.end||0));
        var targetBreak=mergedStart+((mergedEnd-mergedStart)/2);
        var minBreak=mergedStart+Math.max(lineHeight*6,usableHeight*0.36);
        var maxBreak=mergedEnd-Math.max(lineHeight*5,usableHeight*0.32);
        if(maxBreak<=minBreak)return pages;

        var balancedBreak=nearestBreakBetween(minBreak,maxBreak,targetBreak);
        if(!(balancedBreak>mergedStart+lineHeight*2&&balancedBreak<mergedEnd-lineHeight*2)){
          return pages;
        }

        prevPage.end=Math.round(balancedBreak);
        prevPage.visibleHeight=makeVisibleHeight(prevPage.start,balancedBreak,pageInsetTop,pageInsetBottom);
        lastPage.start=Math.round(balancedBreak);
        lastPage.visibleHeight=makeVisibleHeight(balancedBreak,lastPage.end,pageInsetTop,pageInsetBottom);
        return pages;
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
        var pageBudget=Math.max(lineHeight*3,clipHeight-pageTopInset-pageBottomInset-bodyPaddingBottom-Math.max(2,lineHeight*0.12));
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
        if(orphanGuardStart>current+lineHeight*1.1&&endBottom-orphanGuardStart<=lineHeight*1.35){
          var backupBottom=0;
          for(var p=0;p<=lastFitIndex;p++){
            var fitted=unique[p];
            if(fitted.bottom<orphanGuardStart-1&&fitted.top>current+lineHeight*0.25){
              backupBottom=fitted.bottom;
            }
          }
          var pageFillRatio=(backupBottom-current)/usableHeight;
          if(backupBottom>current+lineHeight*0.75&&pageFillRatio>=0.65){
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
          visibleHeight:makeVisibleHeight(current,nextStart,pageTopInset,pageBottomInset)
        });

        if(nextStart>=contentHeight||nextStart<=current){
          break;
        }
        current=nextStart;
      }
      pages=rebalanceTrailingPages(pages);
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
      var bottomTextGutter=isMediaPage?0:Math.max(lineHeight,pageInsetBottom,viewportBottomSafety);
      var shieldTop=Math.max(
        0,
        Math.min(
          visibleHeight,
          Math.max(0,rawVisibleHeight-1),
          visibleHeight-bottomTextGutter
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
    applyPage(target,pages);
    return JSON.stringify({
      handled:true,
      pageIndex:target,
      pageCount:pageCount,
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
