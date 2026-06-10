package com.example.engine.formats.base

import com.example.core.model.BookFormat
import com.example.core.model.BookMetadata
import com.example.core.model.BookSearchHit
import com.example.core.model.BookTocItem
import com.example.core.model.ComicFormat
import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderPreferenceSnapshot
import com.example.core.model.ReaderRendererKey
import com.example.core.model.asPathString
import com.example.core.model.isTextReadingFormat
import com.example.engine.api.BookEngine
import com.example.engine.api.BookSession
import com.example.engine.api.OpenBookRequest
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import dagger.multibindings.IntoSet
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap
import javax.inject.Inject
import javax.inject.Singleton

interface LegacyFormatSessionAccess {
    val legacyReader: FormatReader

    suspend fun loadLegacyReader(): FormatReader = legacyReader
}

@Singleton
class LegacyFormatBookEngine @Inject constructor(
    private val formatFactory: FormatFactory
) : BookEngine {

    override val supportedFormats: Set<BookFormat> = ComicFormat.entries
        .filterNot { it == ComicFormat.UNKNOWN || it == ComicFormat.EPUB || it == ComicFormat.DJVU }
        .toSet()

    private val activeSessions = ConcurrentHashMap<String, BookSession>()

    override suspend fun open(request: OpenBookRequest): BookSession {
        val path = request.source.asPathString()
        val reader = formatFactory.createReader(path, request.format)
            ?: error("Format engine failed to create reader for ${request.format} at $path")
        val session = LegacyFormatBookSession(
            bookId = request.bookId,
            format = request.format,
            legacyReader = reader,
            currentLocatorState = request.initialLocator,
            onClose = { closedSessionId -> activeSessions.remove(closedSessionId) }
        )
        activeSessions[session.sessionId] = session
        return session
    }

    override suspend fun close(sessionId: String) {
        val session = activeSessions.remove(sessionId) ?: return
        session.close()
    }
}

class LegacyFormatBookSession(
    override val bookId: String,
    override val format: BookFormat,
    override val legacyReader: FormatReader,
    currentLocatorState: ReaderLocator?,
    private val onClose: (String) -> Unit
) : BookSession, LegacyFormatSessionAccess {
    override val sessionId: String = UUID.randomUUID().toString()
    override val rendererKey: ReaderRendererKey = if (format.isTextReadingFormat()) {
        ReaderRendererKey.LEGACY_TEXT_WEB
    } else {
        ReaderRendererKey.LEGACY_PAGED_BITMAP
    }

    private var currentLocator: ReaderLocator? = currentLocatorState
    private var isClosed: Boolean = false

    override suspend fun metadata(): BookMetadata {
        val metadata = legacyReader.getMetadata()
        val authors = buildList {
            metadata["author"]?.takeIf { it.isNotBlank() }?.let(::add)
            metadata["authors"]
                ?.split(';', ',')
                ?.map { it.trim() }
                ?.filter { it.isNotBlank() }
                ?.forEach(::add)
        }.distinct()
        return BookMetadata(
            title = metadata["title"].orEmpty(),
            authors = authors,
            language = metadata["language"],
            description = metadata["description"],
            coverPath = metadata["coverPath"] ?: metadata["cover"]
        )
    }

    override suspend fun tableOfContents(): List<BookTocItem> =
        legacyReader.getTableOfContents().map { entry ->
            BookTocItem(
                title = entry.title,
                locator = ReaderLocator(
                    title = entry.title,
                    pageIndex = entry.pageIndex,
                    position = entry.pageIndex
                )
            )
        }

    override suspend fun search(query: String): List<BookSearchHit> = emptyList()

    override suspend fun currentLocator(): ReaderLocator? = currentLocator

    override suspend fun goTo(locator: ReaderLocator): ReaderLocator? {
        currentLocator = locator
        return currentLocator
    }

    override suspend fun updatePreferences(preferences: ReaderPreferenceSnapshot) = Unit

    override suspend fun close() {
        if (isClosed) return
        isClosed = true
        legacyReader.close()
        onClose(sessionId)
    }
}

@Module
@InstallIn(SingletonComponent::class)
abstract class LegacyFormatBookEngineModule {
    @Binds
    @IntoSet
    abstract fun bindLegacyFormatBookEngine(engine: LegacyFormatBookEngine): BookEngine
}
