package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.data.db.entity.TextHighlight

/**
 * Pure JavaScript generator for text highlights in the reader WebView.
 *
 * Extracted from ReaderViewModel to isolate the JS generation logic
 * from the ViewModel lifecycle and state management.
 */
internal object HighlightJsGenerator {

    /**
     * Generates JavaScript that applies highlight marks to text nodes in the WebView.
     *
     * @param highlights List of highlights with start/end offsets and colors.
     * @return JavaScript string, or empty string if no highlights.
     */
    fun generate(highlights: List<TextHighlight>): String {
        if (highlights.isEmpty()) return ""
        return buildString {
            append("(function(){")
            append("try{")
            highlights.forEach { h ->
                val a = ((h.colorArgb shr 24) and 0xFF) / 255f
                val r = (h.colorArgb shr 16) and 0xFF
                val g = (h.colorArgb shr 8) and 0xFF
                val b = h.colorArgb and 0xFF
                val cssColor = "rgba($r,$g,$b,$a)"

                append("if(!document.querySelector(\"mark[data-highlight-id='${h.id}']\")){")
                append("var body=document.body;")
                append("if(!body)return;")
                append("var walker=document.createTreeWalker(body,NodeFilter.SHOW_TEXT,null);")
                append("var node;var offset=0;var nodes=[];var offsets=[];")
                append("while(node=walker.nextNode()){")
                append("if(node.parentElement&&node.parentElement.closest('mark[data-highlight-id]'))continue;")
                append("var len=node.nodeValue.length;")
                append("if(offset<${h.endOffset}&&offset+len>${h.startOffset}){nodes.push(node);offsets.push(offset);}")
                append("offset+=len;")
                append("}")
                append("for(var i=nodes.length-1;i>=0;i--){")
                append("node=nodes[i];offset=offsets[i];var len=node.nodeValue.length;")
                append("var start=Math.max(0,${h.startOffset}-offset);")
                append("var end=Math.min(len,${h.endOffset}-offset);")
                append("if(start<end){")
                append("var range=document.createRange();")
                append("range.setStart(node,start);")
                append("range.setEnd(node,end);")
                append("var mark=document.createElement('mark');")
                append("mark.style.backgroundColor='$cssColor';")
                append("mark.style.borderRadius='2px';")
                append("mark.dataset.highlightId='${h.id}';")
                append("try{range.surroundContents(mark);}catch(x){}")
                append("}")
                append("}")
                append("}")
            }
            append("}catch(e){}")
            append("})();")
        }
    }
}
