package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderHighlightRuntimeControllerTest {

    @Test
    fun newlySavedHighlightIsAppliedWithoutReloadingDocument() {
        val evaluated = mutableListOf<String>()
        val controller = ReaderHighlightRuntimeController { evaluated += it }

        controller.applyIfChanged("")
        controller.applyIfChanged("apply-highlight-1")
        controller.applyIfChanged("apply-highlight-1")

        assertEquals(listOf("apply-highlight-1"), evaluated)
    }

    @Test
    fun newDocumentAllowsSameHighlightScriptToBeAppliedAgain() {
        val evaluated = mutableListOf<String>()
        val controller = ReaderHighlightRuntimeController { evaluated += it }

        controller.applyIfChanged("apply-highlight-1")
        controller.onDocumentLoadRequested()
        controller.applyIfChanged("apply-highlight-1")

        assertEquals(listOf("apply-highlight-1", "apply-highlight-1"), evaluated)
    }
}
