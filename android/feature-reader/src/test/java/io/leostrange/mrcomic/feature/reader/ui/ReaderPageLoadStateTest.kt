package io.leostrange.mrcomic.feature.reader.ui

import android.graphics.Bitmap
import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner

/**
 * RASTER-01: per-page load state priority.
 *
 * Verifies the [pageLoadStateFrom] derivation that ReaderPageLoader feeds into the raster
 * containers: a decoded bitmap beats cached HTML, which beats an error, and only a page with
 * no bitmap, no HTML and no error is still loading. Robolectric is used solely to allocate
 * a real [Bitmap] for the ready branches.
 */
@RunWith(RobolectricTestRunner::class)
class ReaderPageLoadStateTest {

    @Test
    fun bitmap_wins_over_html_and_error() {
        val bitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888)

        val state = pageLoadStateFrom(bitmap = bitmap, html = "<p>x</p>", error = "boom")

        assertSame(bitmap, (state as PageLoadState.BitmapReady).bitmap)
    }

    @Test
    fun html_wins_over_error_when_bitmap_is_null() {
        val state = pageLoadStateFrom(bitmap = null, html = "<p>x</p>", error = "boom")

        assertEquals(PageLoadState.HtmlReady("<p>x</p>"), state)
    }

    @Test
    fun error_surfaces_when_bitmap_and_html_are_absent() {
        val state = pageLoadStateFrom(bitmap = null, html = null, error = "Failed to render page 3")

        assertEquals(PageLoadState.Failed("Failed to render page 3"), state)
    }

    @Test
    fun loading_when_everything_is_absent() {
        val state = pageLoadStateFrom(bitmap = null, html = null, error = null)

        assertEquals(PageLoadState.Loading, state)
    }

    @Test
    fun bitmap_ready_ignores_a_concurrent_error() {
        val bitmap = Bitmap.createBitmap(2, 2, Bitmap.Config.ARGB_8888)

        val state = pageLoadStateFrom(bitmap = bitmap, html = null, error = "stale failure")

        assertEquals(PageLoadState.BitmapReady(bitmap), state)
    }

    @Test
    fun html_ready_with_blank_html_still_wins_over_loading() {
        // A committed (even empty) HTML page is a ready page, not a spinner.
        val state = pageLoadStateFrom(bitmap = null, html = "", error = null)

        assertEquals(PageLoadState.HtmlReady(""), state)
    }
}
