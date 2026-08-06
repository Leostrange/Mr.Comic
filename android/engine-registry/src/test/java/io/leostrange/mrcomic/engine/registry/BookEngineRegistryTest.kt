package io.leostrange.mrcomic.engine.registry

import io.leostrange.mrcomic.core.model.BookFormat
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.api.BookEngine
import io.leostrange.mrcomic.engine.api.BookSession
import io.leostrange.mrcomic.engine.api.OpenBookRequest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Test

/**
 * Tests for [BookEngineRegistry] — the Dagger `@IntoSet` multibinding
 * resolution of a [ComicFormat] to the first engine that supports it.
 */
class BookEngineRegistryTest {

    private class FakeEngine(vararg formats: ComicFormat) : BookEngine {
        override val supportedFormats: Set<BookFormat> = formats.toSet()
        override suspend fun open(request: OpenBookRequest): BookSession =
            error("open() must not be called in registry tests")
        override suspend fun close(sessionId: String) = Unit
    }

    private val epubEngine = FakeEngine(ComicFormat.EPUB)
    private val rasterEngine = FakeEngine(ComicFormat.CBZ, ComicFormat.CBR)

    @Test
    fun `resolve returns the engine that supports the format`() {
        val registry = BookEngineRegistry(setOf(epubEngine, rasterEngine))
        assertSame(epubEngine, registry.resolve(ComicFormat.EPUB))
        assertSame(rasterEngine, registry.resolve(ComicFormat.CBZ))
        assertSame(rasterEngine, registry.resolve(ComicFormat.CBR))
    }

    @Test
    fun `resolve returns null when no engine supports the format`() {
        val registry = BookEngineRegistry(setOf(epubEngine))
        assertNull(registry.resolve(ComicFormat.DJVU))
        assertNull(registry.resolve(ComicFormat.UNKNOWN))
    }

    @Test
    fun `resolve returns null for an empty registry`() {
        val registry = BookEngineRegistry(emptySet())
        assertNull(registry.resolve(ComicFormat.EPUB))
    }

    @Test
    fun `resolve picks first matching engine by set order`() {
        // setOf() is insertion-ordered: resolve() must return the first match
        val registry = BookEngineRegistry(setOf(epubEngine, rasterEngine))
        assertSame(epubEngine, registry.resolve(ComicFormat.EPUB))
    }
}
