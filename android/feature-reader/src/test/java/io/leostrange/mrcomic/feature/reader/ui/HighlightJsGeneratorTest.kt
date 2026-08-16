package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.data.db.entity.TextHighlight
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class HighlightJsGeneratorTest {

    @Test
    fun generatedScriptWrapsEveryTextNodeIntersectingSelectionRange() {
        val script = HighlightJsGenerator.generate(
            listOf(
                TextHighlight(
                    id = "highlight-1",
                    comicId = "book",
                    comicTitle = "Book",
                    page = 0,
                    text = "selected words",
                    startOffset = 41,
                    endOffset = 55,
                    colorArgb = TextHighlight.COLOR_YELLOW,
                )
            )
        )

        assertTrue(script.contains("offset<55&&offset+len>41"))
        assertTrue(script.contains("for(var i=nodes.length-1;i>=0;i--)"))
        assertFalse(script.contains("))return;"))
    }

    @Test
    fun multipleHighlightsShareOneValidTryCatchAndSkipExistingMarksIndividually() {
        fun highlight(id: String, start: Int) = TextHighlight(
            id = id,
            comicId = "book",
            comicTitle = "Book",
            page = 0,
            text = id,
            startOffset = start,
            endOffset = start + id.length,
            colorArgb = TextHighlight.COLOR_YELLOW,
        )

        val script = HighlightJsGenerator.generate(
            listOf(highlight("first", 1), highlight("second", 20))
        )

        assertTrue(script.contains("mark[data-highlight-id='first']"))
        assertTrue(script.contains("mark[data-highlight-id='second']"))
        assertTrue(script.indexOf("}catch(e){}") == script.lastIndexOf("}catch(e){}"))
    }
}
