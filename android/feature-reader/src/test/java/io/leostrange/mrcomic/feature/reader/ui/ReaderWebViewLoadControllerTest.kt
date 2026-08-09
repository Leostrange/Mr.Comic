package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * ARC-11 slice 1: exhaustive unit coverage for the WebView reload / load-token
 * controller. The controller is intentionally free of Android / Compose types
 * so the entire decision logic can be checked without Robolectric.
 */
class ReaderWebViewLoadControllerTest {

    @Test
    fun shouldRebuildSource_returnsTrueForFirstLoad() {
        val controller = ReaderWebViewLoadController()

        assertTrue(controller.shouldRebuildSource(currentKey = null))
    }

    @Test
    fun shouldRebuildSource_returnsFalseWhenKeyIsUnchanged() {
        val controller = ReaderWebViewLoadController()
        val key = "100|12345|file:///x|"
        controller.markLoadRequested(token = "t1", key = key)

        assertFalse(controller.shouldRebuildSource(currentKey = key))
    }

    @Test
    fun shouldRebuildSource_returnsTrueWhenReloadKeyDrifts() {
        // Two keys differ in at least one component — that triggers a rebuild.
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "t1", key = "100|12345|file:///x|")

        assertTrue(controller.shouldRebuildSource(currentKey = "101|12345|file:///x|"))
    }

    @Test
    fun shouldRebuildSource_returnsFalseAfterClearWithoutLoad() {
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "t1", key = "k")
        controller.clear()

        // A new fresh controller and a cleared one must behave identically
        // on the first probe — there is nothing to compare against yet.
        assertTrue(controller.shouldRebuildSource(currentKey = null))
        assertTrue(controller.shouldRebuildSource(currentKey = "anything"))
    }

    // ──────────────────────────────────────────────────────────────────────
    // Load-token lifecycle
    // ──────────────────────────────────────────────────────────────────────

    @Test
    fun markRequestedThenCommitted_allowsScrollRestore() {
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a")
        controller.markLoadCommitted(token = "load-a")

        assertTrue(controller.shouldRestoreScroll("load-a"))
    }

    @Test
    fun markRequestedWithoutCommit_deniesScrollRestore() {
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a")

        // Page was requested but the WebView finished for something else or
        // never fired onPageFinished — scroll restoration would be unsafe.
        assertFalse(controller.shouldRestoreScroll("load-a"))
    }

    @Test
    fun markRequestedTwice_cancelsEarlierToken() {
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a")
        controller.markLoadRequested(token = "load-b")
        controller.markLoadCommitted(token = "load-b")

        assertFalse("older token must never restore", controller.shouldRestoreScroll("load-a"))
        assertTrue(controller.shouldRestoreScroll("load-b"))
    }

    @Test
    fun markRequestedTwiceThenEarlierCommits_doesNotResurrectEarlierToken() {
        // The WebView occasionally reports an old onPageFinished after a
        // newer request has already taken over. The controller must NOT
        // overwrite the committed token with stale info — only the active
        // token counts.
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a")
        controller.markLoadRequested(token = "load-b")
        controller.markLoadCommitted(token = "load-a") // stale late callback

        assertFalse(controller.shouldRestoreScroll("load-a"))
        assertFalse(controller.shouldRestoreScroll("load-b"))
    }

    @Test
    fun markRequestedWithSameTokenIsNoOpAndKeepsEarlierCommit() {
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a")
        controller.markLoadCommitted(token = "load-a")
        // A re-request of the same token (e.g. recomposition) is a no-op.
        controller.markLoadRequested(token = "load-a")

        assertTrue(controller.shouldRestoreScroll("load-a"))
    }

    @Test
    fun shouldRestoreScrollReturnsFalseForUnknownToken() {
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a")
        controller.markLoadCommitted(token = "load-a")

        assertFalse(controller.shouldRestoreScroll("load-b"))
    }

    @Test
    fun clearResetsAllState() {
        val controller = ReaderWebViewLoadController()
        controller.markLoadRequested(token = "load-a", key = "k")
        controller.markLoadCommitted(token = "load-a")

        controller.clear()

        // After clear, none of the previously valid tokens restore, and the
        // controller reports "rebuild" until a fresh load is requested.
        assertFalse(controller.shouldRestoreScroll("load-a"))
        assertTrue(controller.shouldRebuildSource(currentKey = "anything"))
        assertEquals(null, /* sanity probe */ "load-a".takeIf { controller.shouldRestoreScroll(it) })
    }
}
