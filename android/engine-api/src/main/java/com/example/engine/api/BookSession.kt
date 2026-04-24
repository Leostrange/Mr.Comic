package com.example.engine.api

import com.example.core.model.BookFormat
import com.example.core.model.BookMetadata
import com.example.core.model.BookSearchHit
import com.example.core.model.BookTocItem
import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderPreferenceSnapshot
import com.example.core.model.ReaderRendererKey

interface BookSession {
    val sessionId: String
    val bookId: String
    val format: BookFormat
    val rendererKey: ReaderRendererKey

    suspend fun metadata(): BookMetadata

    suspend fun tableOfContents(): List<BookTocItem>

    suspend fun search(query: String): List<BookSearchHit>

    suspend fun currentLocator(): ReaderLocator?

    suspend fun goTo(locator: ReaderLocator): ReaderLocator?

    suspend fun updatePreferences(preferences: ReaderPreferenceSnapshot)

    suspend fun close()
}
