package io.leostrange.mrcomic.engine.api

import io.leostrange.mrcomic.core.model.BookFormat

interface BookEngine {
    val supportedFormats: Set<BookFormat>

    suspend fun open(request: OpenBookRequest): BookSession

    suspend fun close(sessionId: String)
}
