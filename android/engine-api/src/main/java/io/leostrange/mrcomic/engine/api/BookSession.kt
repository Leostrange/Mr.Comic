package io.leostrange.mrcomic.engine.api

import io.leostrange.mrcomic.core.model.BookFormat
import io.leostrange.mrcomic.core.model.BookMetadata
import io.leostrange.mrcomic.core.model.BookSearchHit
import io.leostrange.mrcomic.core.model.BookTocItem
import io.leostrange.mrcomic.core.model.ReaderLocator
import io.leostrange.mrcomic.core.model.ReaderPreferenceSnapshot
import io.leostrange.mrcomic.core.model.ReaderRendererKey

/**
 * A live reading session for one book.
 *
 * Created by [BookEngine.open] — holds the open file handles, parsed
 * structure, and renderer state needed to serve pages.  Each session
 * is identified by [sessionId] and MUST be closed via [close] when
 * the reader exits.
 *
 * **Thread-safety:** all `suspend` methods are safe to call from any
 * coroutine. Non-suspend property reads are safe from any thread.
 *
 * @see BookEngine
 */
interface BookSession {
    /** Unique identifier for this session instance. */
    val sessionId: String

    /** The book identifier (typically a UUID from the library database). */
    val bookId: String

    /** The resolved format of the opened book. */
    val format: BookFormat

    /**
     * Identifies which renderer should display this session's content.
     * The reader UI uses this to choose between raster-page, text-HTML,
     * and webtoon containers.
     */
    val rendererKey: ReaderRendererKey

    /** Returns book metadata (title, author, series, etc.). */
    suspend fun metadata(): BookMetadata

    /** Returns the table of contents as a flat list of entries. */
    suspend fun tableOfContents(): List<BookTocItem>

    /**
     * Full-text search within the book.
     *
     * @param query the search string (case-insensitive).
     * @return matching locations sorted by relevance.
     */
    suspend fun search(query: String): List<BookSearchHit>

    /**
     * Returns the last known reading position, or null if the book
     * has not been opened before. Reflowable sessions should populate
     * section/character coordinates in addition to format-native href and
     * progression; raster sessions should populate pageIndex.
     */
    suspend fun currentLocator(): ReaderLocator?

    /**
     * Jumps to the given locator and returns the resolved position,
     * or null if the locator could not be resolved. Implementations prefer
     * href/fragment, then section/character coordinates, then progression or
     * page fallback when the preferred coordinate is unavailable.
     */
    suspend fun goTo(locator: ReaderLocator): ReaderLocator?

    /**
     * Updates reader-side preferences (font, theme, brightness, etc.)
     * so the engine can adjust rendering without a full reload.
     */
    suspend fun updatePreferences(preferences: ReaderPreferenceSnapshot)

    /**
     * Releases all resources held by this session (open files, caches,
     * renderer state).  Must be called exactly once when the reader exits.
     */
    suspend fun close()
}
