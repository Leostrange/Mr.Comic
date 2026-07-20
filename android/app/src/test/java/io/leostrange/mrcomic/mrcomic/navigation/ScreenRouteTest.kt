package io.leostrange.mrcomic.navigation

import org.junit.Assert.assertEquals
import org.junit.Test

class ScreenRouteTest {

    @Test
    fun `progress profile route stays stable`() {
        assertEquals("progress_profile", Screen.ProgressProfile.route)
    }

    @Test
    fun `reader comic route omits page when page is not provided`() {
        assertEquals(
            "reader?comicId=comic-123",
            Screen.Reader.createForComic("comic-123")
        )
    }

    @Test
    fun `reader comic route includes page when provided`() {
        assertEquals(
            "reader?comicId=comic-123&page=17",
            Screen.Reader.createForComic("comic-123", page = 17)
        )
    }

    @Test
    fun `reader uri route keeps encoded uri and page`() {
        assertEquals(
            "reader?uri=content%3A%2F%2Fexample&page=5",
            Screen.Reader.createForUri("content%3A%2F%2Fexample", page = 5)
        )
    }

    @Test
    fun `translation route omits query when arguments are absent`() {
        assertEquals("translation", Screen.Translation.create())
    }

    @Test
    fun `translation route includes all provided arguments`() {
        assertEquals(
            "translation?imagePath=%2Ftmp%2Fpage.png&comicId=comic-123&page=9",
            Screen.Translation.create(
                imagePath = "/tmp/page.png",
                comicId = "comic-123",
                page = 9
            )
        )
    }
}
