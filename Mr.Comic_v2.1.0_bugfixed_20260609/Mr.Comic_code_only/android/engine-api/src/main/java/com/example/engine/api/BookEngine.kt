package com.example.engine.api

import com.example.core.model.BookFormat

interface BookEngine {
    val supportedFormats: Set<BookFormat>

    suspend fun open(request: OpenBookRequest): BookSession

    suspend fun close(sessionId: String)
}
