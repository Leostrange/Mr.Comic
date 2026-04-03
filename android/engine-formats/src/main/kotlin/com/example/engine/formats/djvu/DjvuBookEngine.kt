package com.example.engine.formats.djvu

import android.content.Context
import com.example.core.model.BookFormat
import com.example.core.model.BookMetadata
import com.example.core.model.BookSearchHit
import com.example.core.model.BookTocItem
import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderPreferenceSnapshot
import com.example.core.model.ReaderRendererKey
import com.example.core.model.asPathString
import com.example.engine.api.BookEngine
import com.example.engine.api.BookSession
import com.example.engine.api.OpenBookRequest
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.LegacyFormatSessionAccess
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import dagger.multibindings.IntoSet
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class DjvuBookEngine @Inject constructor(
    @ApplicationContext private val context: Context,
    private val backend: DjvuBackend
) : BookEngine {

    override val supportedFormats: Set<BookFormat> = setOf(BookFormat.DJVU)

    private val activeSessions = ConcurrentHashMap<String, DjvuBookSession>()

    override suspend fun open(request: OpenBookRequest): BookSession {
        val path = request.source.asPathString()
        val reader = DjvuFormatReader(context, path, backend)
        val session = DjvuBookSession(
            bookId = request.bookId,
            legacyReader = reader,
            initialLocator = request.initialLocator,
            onClose = { activeSessions.remove(it) }
        )
        activeSessions[session.sessionId] = session
        return session
    }

    override suspend fun close(sessionId: String) {
        activeSessions.remove(sessionId)?.close()
    }
}

internal class DjvuBookSession(
    override val bookId: String,
    override val legacyReader: FormatReader,
    initialLocator: ReaderLocator?,
    private val onClose: (String) -> Unit
) : BookSession, LegacyFormatSessionAccess {

    override val sessionId: String = UUID.randomUUID().toString()
    override val format: BookFormat = BookFormat.DJVU
    override val rendererKey: ReaderRendererKey = ReaderRendererKey.LEGACY_PAGED_BITMAP

    private var currentLocator: ReaderLocator? = initialLocator
    private var isClosed = false

    override suspend fun metadata(): BookMetadata {
        val meta = legacyReader.getMetadata()
        return BookMetadata(
            title = meta["title"].orEmpty(),
            language = meta["language"],
            description = meta["description"]
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
abstract class DjvuBookEngineModule {
    @Binds
    @IntoSet
    abstract fun bindDjvuBookEngine(engine: DjvuBookEngine): BookEngine
}
