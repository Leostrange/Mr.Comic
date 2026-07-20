package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class ReaderFootnotePopupPolicyTest {

    @Test
    fun normalizesHtmlAndInlineArtifactsIntoReadablePopupText() {
        val source = "12&nbsp;First<br>second <em>line</em>\u00AD\u200B"

        assertEquals(
            "First second line",
            ReaderFootnotePopupPolicy.toPopupText(source)
        )
    }

    @Test
    fun returnsNullForTextWithoutVisibleContent() {
        assertNull(ReaderFootnotePopupPolicy.toPopupText("<br>\u00AD\u200B"))
    }
}
