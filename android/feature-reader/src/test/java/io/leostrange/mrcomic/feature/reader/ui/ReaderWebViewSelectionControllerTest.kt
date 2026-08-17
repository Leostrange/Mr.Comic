package io.leostrange.mrcomic.feature.reader.ui

import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Test

class ReaderWebViewSelectionControllerTest {

    @Test
    fun decodeJavascriptString_handlesQuotesAndNull() {
        val controller = ReaderWebViewSelectionController(
            evaluateJavascript = { _, _ -> },
            post = { it.run() },
            clearFocus = { },
            onSelectionAction = { _, _ -> },
            onActionModeChange = { }
        )

        assertEquals("Hello World", controller.decodeJavascriptString(JSONObject.quote("Hello World")))
        assertEquals("", controller.decodeJavascriptString(null))
        assertEquals("", controller.decodeJavascriptString("null"))
    }

    @Test
    fun hasActiveSelection_reflectsActionModeState() {
        val controller = ReaderWebViewSelectionController(
            evaluateJavascript = { _, _ -> },
            post = { it.run() },
            clearFocus = { },
            onSelectionAction = { _, _ -> },
            onActionModeChange = { }
        )

        assertFalse(controller.hasActiveSelection)
    }

    @Test
    fun requestSelectedText_executesScriptAndExtractsString() {
        var result = ReaderTextSelection("", 0, 0)
        val controller = ReaderWebViewSelectionController(
            evaluateJavascript = { _, callback ->
                callback?.invoke(
                    JSONObject.quote(
                        """{"text":"Selected sample phrase","startOffset":41,"endOffset":63}"""
                    )
                )
            },
            post = { it.run() },
            clearFocus = { },
            onSelectionAction = { _, _ -> },
            onActionModeChange = { }
        )

        controller.requestSelectedText { selection ->
            result = selection
        }

        assertEquals(ReaderTextSelection("Selected sample phrase", 41, 63), result)
    }

    @Test
    fun dispatchSelectionAction_finishesActionModeBeforeOpeningReaderUi() {
        val events = mutableListOf<String>()
        val postedActions = ArrayDeque<Runnable>()
        val controller = ReaderWebViewSelectionController(
            evaluateJavascript = { _, callback ->
                callback?.invoke(
                    JSONObject.quote("""{"text":"Selected text","startOffset":12,"endOffset":25}""")
                )
            },
            post = { postedActions.addLast(it) },
            clearFocus = { },
            onSelectionAction = { action, selection -> events += "action:$action:${selection.text}" },
            onActionModeChange = { }
        )

        controller.dispatchSelectionAction(
            action = ReaderSelectionAction.HIGHLIGHT,
            finishActionMode = { events += "finish" }
        )

        postedActions.removeFirst().run()
        assertEquals(listOf("finish"), events)

        postedActions.removeFirst().run()
        assertEquals(
            listOf("finish", "action:HIGHLIGHT:Selected text"),
            events
        )
    }
}
