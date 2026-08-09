package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

/**
 * ARC-11 S8: preload policy tests.
 *
 * Covers edge cases around center-page, visible range, total-page clamping,
 * and preload distance clamping. Plain JUnit — no coroutines, no Android.
 */
class ReaderPagePreloadPolicyTest {

    @Test
    fun empty_when_totalPages_is_zero() {
        assertEquals(
            emptyList<Int>(),
            ReaderPagePreloadPolicy.pagesToPreload(
                centerPage = 5,
                visiblePages = listOf(5),
                totalPages = 0,
                preloadDistance = 3
            )
        )
    }

    @Test
    fun single_visible_page_expands_both_directions() {
        val result = ReaderPagePreloadPolicy.pagesToPreload(
            centerPage = 5,
            visiblePages = listOf(5),
            totalPages = 20,
            preloadDistance = 2
        )

        // 5 visible; preload 2 outward: left=[4,3], right=[6,7]
        assertEquals(listOf(3, 4, 6, 7), result)
    }

    @Test
    fun dual_page_spread_expands_from_visible_range() {
        val result = ReaderPagePreloadPolicy.pagesToPreload(
            centerPage = 5,
            visiblePages = listOf(4, 5),
            totalPages = 20,
            preloadDistance = 2
        )

        // min=4, max=5; left=[3,2], right=[6,7]
        assertEquals(listOf(2, 3, 6, 7), result)
    }

    @Test
    fun clamped_at_left_boundary() {
        val result = ReaderPagePreloadPolicy.pagesToPreload(
            centerPage = 0,
            visiblePages = listOf(0, 1),
            totalPages = 10,
            preloadDistance = 3
        )

        // min=0, left side produces no pages (0-1=-1 < 0; 0-2=-2; 0-3=-3)
        // right side: 1+1=2, 1+2=3, 1+3=4
        assertEquals(listOf(2, 3, 4), result)
    }

    @Test
    fun clamped_at_right_boundary() {
        val result = ReaderPagePreloadPolicy.pagesToPreload(
            centerPage = 9,
            visiblePages = listOf(8, 9),
            totalPages = 10,
            preloadDistance = 3
        )

        // max=9, right side: 9+1=10 >= total → skip
        // left side: 8-1=7, 8-2=6, 8-3=5
        assertEquals(listOf(5, 6, 7), result)
    }

    @Test
    fun small_book_fewer_than_preload_distance() {
        val result = ReaderPagePreloadPolicy.pagesToPreload(
            centerPage = 1,
            visiblePages = listOf(1),
            totalPages = 4,
            preloadDistance = 5
        )

        // distance clamped to 8 (already ≤8 for 5), visible=1
        // left: 0; right: 2, 3 (4 out of range)
        assertEquals(listOf(0, 2, 3), result)
    }

    @Test
    fun preloadDistance_exceeds_max_clamped_to_8() {
        val result = ReaderPagePreloadPolicy.pagesToPreload(
            centerPage = 0,
            visiblePages = listOf(0),
            totalPages = 100,
            preloadDistance = 99
        )

        // clamped to 8, right: 1..8
        assertEquals((1..8).toList(), result)
    }

    @Test
    fun preloadDistance_zero_clamped_to_1() {
        val result = ReaderPagePreloadPolicy.pagesToPreload(
            centerPage = 5,
            visiblePages = listOf(5),
            totalPages = 20,
            preloadDistance = 0
        )

        // clamped to 1: left=4, right=6
        assertEquals(listOf(4, 6), result)
    }

    @Test
    fun empty_visible_list_falls_back_to_center() {
        val result = ReaderPagePreloadPolicy.pagesToPreload(
            centerPage = 5,
            visiblePages = emptyList(),
            totalPages = 20,
            preloadDistance = 2
        )

        // minVisible=center=5, maxVisible=center=5
        // left=[4,3], right=[6,7]
        assertEquals(listOf(3, 4, 6, 7), result)
    }

    @Test
    fun distinct_pages_when_visible_range_smaller_than_preload() {
        // When visible range is just 1 page and preloadDistance=1,
        // there should be no overlap (left ≠ right).
        val result = ReaderPagePreloadPolicy.pagesToPreload(
            centerPage = 3,
            visiblePages = listOf(3),
            totalPages = 10,
            preloadDistance = 1
        )

        assertEquals(listOf(2, 4), result)
    }
}
