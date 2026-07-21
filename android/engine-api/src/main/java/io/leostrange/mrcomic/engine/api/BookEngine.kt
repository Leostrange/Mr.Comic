package io.leostrange.mrcomic.engine.api

import io.leostrange.mrcomic.core.model.BookFormat

/**
 * Strategy for reading a specific family of book formats.
 *
 * Implementations are registered via Dagger `@IntoSet` multibinding and
 * resolved by [BookEngineRegistry] based on [BookFormat].
 *
 * **Lifecycle:** created once (Singleton); sessions are created per book.
 *
 * **Thread-safety:** implementations MUST be safe for concurrent calls to
 * [open] from different coroutines.
 *
 * @see BookEngineRegistry
 * @see BookSession
 */
interface BookEngine {
    /**
     * Formats this engine can handle.
     * Used by [BookEngineRegistry.resolve] for dispatch.
     *
     * @return non-empty set of supported formats; empty set = engine is never selected.
     */
    val supportedFormats: Set<BookFormat>

    /**
     * Opens a reading session for a book.
     *
     * @param request path, format, and optional locator for the book to open.
     * @return a [BookSession] for page-by-page access.
     * @throws IllegalArgumentException if the format is not in [supportedFormats].
     * @throws java.io.IOException on file read errors.
     */
    suspend fun open(request: OpenBookRequest): BookSession

    /**
     * Closes a previously opened session and releases its resources.
     *
     * @param sessionId the identifier returned by [open].
     */
    suspend fun close(sessionId: String)
}
