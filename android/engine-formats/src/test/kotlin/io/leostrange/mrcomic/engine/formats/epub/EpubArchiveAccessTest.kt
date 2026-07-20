package io.leostrange.mrcomic.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * Characterization tests for [EpubArchiveAccess].
 */
class EpubArchiveAccessTest {

    // ── mimeTypeFor ────────────────────────────────────────────────────────

    @Test
    fun mimeTypeFor_images() {
        assertEquals("image/jpeg", EpubArchiveAccess.mimeTypeFor("jpg"))
        assertEquals("image/jpeg", EpubArchiveAccess.mimeTypeFor("jpeg"))
        assertEquals("image/png", EpubArchiveAccess.mimeTypeFor("png"))
        assertEquals("image/gif", EpubArchiveAccess.mimeTypeFor("gif"))
        assertEquals("image/webp", EpubArchiveAccess.mimeTypeFor("webp"))
        assertEquals("image/svg+xml", EpubArchiveAccess.mimeTypeFor("svg"))
    }

    @Test
    fun mimeTypeFor_text() {
        assertEquals("text/css", EpubArchiveAccess.mimeTypeFor("css"))
        assertEquals("text/html", EpubArchiveAccess.mimeTypeFor("html"))
        assertEquals("text/html", EpubArchiveAccess.mimeTypeFor("xhtml"))
        assertEquals("text/html", EpubArchiveAccess.mimeTypeFor("htm"))
    }

    @Test
    fun mimeTypeFor_fonts() {
        assertEquals("font/ttf", EpubArchiveAccess.mimeTypeFor("ttf"))
        assertEquals("font/otf", EpubArchiveAccess.mimeTypeFor("otf"))
        assertEquals("font/woff", EpubArchiveAccess.mimeTypeFor("woff"))
        assertEquals("font/woff2", EpubArchiveAccess.mimeTypeFor("woff2"))
    }

    @Test
    fun mimeTypeFor_other() {
        assertEquals("application/javascript", EpubArchiveAccess.mimeTypeFor("js"))
        assertEquals("application/xml", EpubArchiveAccess.mimeTypeFor("xml"))
        assertEquals("application/xml", EpubArchiveAccess.mimeTypeFor("ncx"))
        assertEquals("application/octet-stream", EpubArchiveAccess.mimeTypeFor("bin"))
        assertEquals("application/octet-stream", EpubArchiveAccess.mimeTypeFor("unknown"))
    }

    // ── textEncodingFor ────────────────────────────────────────────────────

    @Test
    fun textEncodingFor_textFormats() {
        assertEquals("UTF-8", EpubArchiveAccess.textEncodingFor("css"))
        assertEquals("UTF-8", EpubArchiveAccess.textEncodingFor("html"))
        assertEquals("UTF-8", EpubArchiveAccess.textEncodingFor("xhtml"))
        assertEquals("UTF-8", EpubArchiveAccess.textEncodingFor("xml"))
        assertEquals("UTF-8", EpubArchiveAccess.textEncodingFor("ncx"))
        assertEquals("UTF-8", EpubArchiveAccess.textEncodingFor("js"))
    }

    @Test
    fun textEncodingFor_binaryFormats() {
        assertNull(EpubArchiveAccess.textEncodingFor("jpg"))
        assertNull(EpubArchiveAccess.textEncodingFor("png"))
        assertNull(EpubArchiveAccess.textEncodingFor("ttf"))
        assertNull(EpubArchiveAccess.textEncodingFor("bin"))
    }

    // ── normalizePath ──────────────────────────────────────────────────────

    @Test
    fun normalizePath_resolvesDotDot() {
        assertEquals("OPS/fonts/book.woff2",
            EpubArchiveAccess.normalizePath("OPS/styles/../fonts/book.woff2"))
    }

    @Test
    fun normalizePath_stripsLeadingSlash() {
        assertEquals("fonts/book.woff2",
            EpubArchiveAccess.normalizePath("/fonts/book.woff2"))
    }

    @Test
    fun normalizePath_stripsDots() {
        assertEquals("fonts/book.woff2",
            EpubArchiveAccess.normalizePath("./fonts/book.woff2"))
    }

    @Test
    fun normalizePath_emptySegments() {
        assertEquals("a/b",
            EpubArchiveAccess.normalizePath("a//b"))
    }

    @Test
    fun normalizePath_complex() {
        assertEquals("fonts/book.woff2",
            EpubArchiveAccess.normalizePath("OPS/styles/../../fonts/book.woff2"))
    }
}
