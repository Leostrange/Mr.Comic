package io.leostrange.mrcomic.engine.api

import io.leostrange.mrcomic.core.model.BookFormat
import io.leostrange.mrcomic.core.model.BookMetadata
import io.leostrange.mrcomic.core.model.BookSearchHit
import io.leostrange.mrcomic.core.model.BookTocItem
import io.leostrange.mrcomic.core.model.ReaderLocator
import io.leostrange.mrcomic.core.model.ReaderPreferenceSnapshot
import io.leostrange.mrcomic.core.model.ReaderRendererKey

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
