package com.example.engine.formats.djvu

import com.example.core.model.BookFormat
import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderRendererKey
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.LegacyFormatBookEngine
import com.example.engine.formats.base.LegacyFormatSessionAccess
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

class DjvuBookEngineTest {

    private lateinit var mockReader: FormatReader
    private lateinit var session: DjvuBookSession

    @Before
    fun setUp() {
        mockReader = mockk(relaxed = true)
        session = DjvuBookSession(
            bookId = "test-book-id",
            legacyReader = mockReader,
            initialLocator = null,
            onClose = {}
        )
    }

    // ── Engine-level ────────────────────────────────────────────────

    @Test
    fun `supportedFormats contains only DJVU`() {
        val engine = DjvuBookEngine(
            context = mockk(relaxed = true),
            backend = mockk(relaxed = true)
        )
        assertEquals(setOf(BookFormat.DJVU), engine.supportedFormats)
    }

    @Test
    fun `DJVU is not in LegacyFormatBookEngine supportedFormats`() {
        val legacyEngine = LegacyFormatBookEngine(formatFactory = mockk())
        assertFalse(
            "DJVU must not be handled by the legacy engine",
            legacyEngine.supportedFormats.contains(BookFormat.DJVU)
        )
    }

    // ── Session-level ───────────────────────────────────────────────

    @Test
    fun `session rendererKey is LEGACY_PAGED_BITMAP`() {
        assertEquals(ReaderRendererKey.LEGACY_PAGED_BITMAP, session.rendererKey)
    }

    @Test
    fun `session format is DJVU`() {
        assertEquals(BookFormat.DJVU, session.format)
    }

    @Test
    fun `goTo and currentLocator round-trip`() = runTest {
        val locator = ReaderLocator(pageIndex = 5, position = 5, title = "Chapter 3")

        val returned = session.goTo(locator)

        assertEquals(locator, returned)
        assertEquals(locator, session.currentLocator())
    }

    @Test
    fun `search returns empty list`() = runTest {
        val results = session.search("anything")
        assertNotNull(results)
        assertTrue(results.isEmpty())
    }

    @Test
    fun `session implements LegacyFormatSessionAccess`() {
        assertTrue(
            "DjvuBookSession must implement LegacyFormatSessionAccess",
            session is LegacyFormatSessionAccess
        )
        assertEquals(mockReader, (session as LegacyFormatSessionAccess).legacyReader)
    }
}
