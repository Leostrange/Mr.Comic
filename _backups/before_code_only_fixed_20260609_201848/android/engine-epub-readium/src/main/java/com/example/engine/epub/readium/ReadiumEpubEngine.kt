package com.example.engine.epub.readium

import com.example.core.model.BookFormat
import com.example.core.model.BookMetadata
import com.example.core.model.BookSearchHit
import com.example.core.model.BookSource
import com.example.core.model.BookTocItem
import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderPreferenceSnapshot
import com.example.core.model.ReaderRendererKey
import com.example.engine.api.BookEngine
import com.example.engine.api.BookSession
import com.example.engine.api.OpenBookRequest
import com.example.engine.formats.base.LegacyFormatBookEngine
import com.example.engine.formats.base.LegacyFormatSessionAccess
import android.util.Log
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import dagger.multibindings.IntoSet
import java.io.File
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap
import javax.inject.Inject
import javax.inject.Singleton
import org.readium.r2.shared.publication.Publication

/**
 * EPUB engine backed by Readium Publication + Navigator.
 *
 * If Readium opens the publication successfully, we render and navigate through the
 * Readium path end-to-end so front matter, cover, TOC and locators stay in one stack.
 * The legacy engine remains only as an emergency fallback when Publication open fails.
 */
@Singleton
class ReadiumEpubEngine @Inject constructor(
    private val legacyFormatBookEngine: LegacyFormatBookEngine,
    private val assetFactory: ReadiumAssetFactory,
    private val publicationFactory: ReadiumPublicationFactory
) : BookEngine {

    override val supportedFormats: Set<BookFormat> = setOf(BookFormat.EPUB)

    private val activeSessions = ConcurrentHashMap<String, BookSession>()

    override suspend fun open(request: OpenBookRequest): BookSession {
        require(request.format == BookFormat.EPUB) {
            "ReadiumEpubEngine can only open EPUB, got ${request.format}"
        }

        val resolvedAsset = assetFactory.resolve(request.source)
        val readiumPublication = runCatching {
            publicationFactory.open(resolvedAsset.file)
        }.onFailure { error ->
            Log.w(TAG, "Readium EPUB open failed for ${resolvedAsset.file.absolutePath}; using legacy fallback only", error)
        }.getOrNull()

        val legacyRequest = request.withResolvedFile(resolvedAsset.file)
        val session = if (readiumPublication != null) {
            val initialSessionLocator = resolveReadiumInitialSessionLocatorForOpen(
                resolvedRequestedLocator = resolveInitialSessionLocator(
                    hasReadiumPublication = true,
                    requestedLocator = request.initialLocator,
                    readiumLocatorResolver = { readiumPublication.resolveReadiumReaderLocator(request.initialLocator) }
                ),
                fallbackOpeningLocator = readiumPublication.resolveFallbackOpeningReaderLocator(),
                rendererKey = readiumEpubSessionRendererKey()
            )
            ReadiumEpubBookSession(
                bookId = request.bookId,
                publication = readiumPublication,
                legacySessionHandle = LazyLegacySessionHandle {
                    legacyFormatBookEngine.open(legacyRequest)
                },
                initialLocator = initialSessionLocator,
                cleanupFile = resolvedAsset.file.takeIf { resolvedAsset.cleanupOnClose },
                onClose = { closedSessionId -> activeSessions.remove(closedSessionId) }
            )
        } else {
            LegacyFallbackEpubBookSession(
                bookId = request.bookId,
                legacySession = legacyFormatBookEngine.open(legacyRequest),
                cleanupFile = resolvedAsset.file.takeIf { resolvedAsset.cleanupOnClose },
                onClose = { closedSessionId -> activeSessions.remove(closedSessionId) }
            )
        }
        activeSessions[session.sessionId] = session
        return session
    }

    override suspend fun close(sessionId: String) {
        val session = activeSessions.remove(sessionId) ?: return
        session.close()
    }

private fun OpenBookRequest.withResolvedFile(file: File): OpenBookRequest {
        val currentSource = source
        return if (currentSource is BookSource.FilePath && currentSource.path == file.absolutePath) {
            this
        } else {
            copy(source = BookSource.FilePath(file.absolutePath))
        }
    }

    private companion object {
        private const val TAG = "ReadiumEpubEngine"
    }
}

internal fun resolveInitialSessionLocator(
    hasReadiumPublication: Boolean,
    requestedLocator: ReaderLocator?,
    readiumLocatorResolver: () -> ReaderLocator?
): ReaderLocator? {
    return if (hasReadiumPublication) {
        readiumLocatorResolver() ?: requestedLocator?.takeIf {
            !it.hasReadiumLocationHint() && it.hasReadiumPageHint()
        }
    } else {
        requestedLocator
    }
}

internal fun shouldDelegatePreferencesToLegacy(rendererKey: ReaderRendererKey): Boolean =
    rendererKey.usesLegacyEpubRenderPath()

internal fun ReaderRendererKey.usesLegacyEpubRenderPath(): Boolean =
    this == ReaderRendererKey.HYBRID_EPUB_LEGACY_RENDER

internal fun readiumEpubSessionRendererKey(): ReaderRendererKey =
    ReaderRendererKey.HYBRID_EPUB_LEGACY_RENDER

@Suppress("UNUSED_PARAMETER")
internal fun resolveReadiumInitialSessionLocatorForOpen(
    resolvedRequestedLocator: ReaderLocator?,
    fallbackOpeningLocator: ReaderLocator?,
    rendererKey: ReaderRendererKey
): ReaderLocator? =
    // Some EPUBs use a standalone image resource as the first spine item/frontispiece.
    // Treat it as real reading content instead of jumping to a later fallback page.
    resolvedRequestedLocator ?: fallbackOpeningLocator

internal fun resolveReadiumGoToLocator(
    resolvedLocator: ReaderLocator?,
    requestedLocator: ReaderLocator? = null
): ReaderLocator? {
    return resolvedLocator ?: requestedLocator
}

internal fun resolveReadiumCurrentLocator(
    currentLocatorState: ReaderLocator?,
    hasReadiumPublication: Boolean,
    rendererKey: ReaderRendererKey = ReaderRendererKey.READIUM_EPUB
): ReaderLocator? {
    return if (hasReadiumPublication) {
        if (rendererKey.usesLegacyEpubRenderPath()) {
            currentLocatorState
        } else {
            currentLocatorState?.takeIf { it.hasReadiumNavigationHint() }
        }
    } else {
        currentLocatorState
    }
}

internal fun ReaderLocator.hasReadiumNavigationHint(): Boolean =
    !href.isNullOrBlank() ||
        !fragment.isNullOrBlank() ||
        title != null ||
        progression != null ||
        pageIndex != null ||
        position != null

internal fun ReaderLocator.hasReadiumPageHint(): Boolean =
    pageIndex != null || position != null

internal class LazyLegacySessionHandle(
    private val loader: suspend () -> BookSession
) {
    private var loadedSession: BookSession? = null

    fun peek(): BookSession? = loadedSession

    suspend fun getOrLoad(): BookSession {
        loadedSession?.let { return it }
        return loader().also { session ->
            loadedSession = session
        }
    }
}

private class ReadiumEpubBookSession(
    override val bookId: String,
    override val publication: Publication?,
    private val legacySessionHandle: LazyLegacySessionHandle,
    initialLocator: ReaderLocator?,
    private val cleanupFile: File?,
    private val onClose: (String) -> Unit
) : BookSession, ReadiumPublicationSessionAccess, LegacyFormatSessionAccess {

    private var isClosed: Boolean = false
    private val hasReadiumPublication: Boolean = publication != null

    override val sessionId: String = UUID.randomUUID().toString()
    override val format: BookFormat = BookFormat.EPUB
    override val rendererKey: ReaderRendererKey =
        readiumEpubSessionRendererKey()
    override val legacyReader: com.example.engine.formats.base.FormatReader
        get() = legacySessionHandle.peek().loadedLegacyReaderOrThrow()

    private var currentLocatorState: ReaderLocator? = initialLocator

    override suspend fun loadLegacyReader() =
        legacySessionHandle.getOrLoad().legacyReaderOrThrow()

    override suspend fun metadata(): BookMetadata =
        publication?.toBookMetadata()
            ?: error("Readium EPUB session requires a publication to expose metadata")

    override suspend fun tableOfContents(): List<BookTocItem> {
        return try {
            publication?.toBookToc().orEmpty()
        } catch (error: Throwable) {
            Log.w("ReadiumEpubEngine", "Readium EPUB TOC failed for $bookId; returning empty TOC", error)
            emptyList()
        }
    }

    override suspend fun search(query: String): List<BookSearchHit> {
        val normalizedQuery = query.trim()
        if (normalizedQuery.isBlank()) {
            return emptyList()
        }

        return try {
            publication?.toBookSearchHits(normalizedQuery).orEmpty()
        } catch (error: Throwable) {
            Log.w("ReadiumEpubEngine", "Readium EPUB search failed for $bookId; returning empty search results", error)
            emptyList()
        }
    }

    override suspend fun currentLocator(): ReaderLocator? =
        resolveReadiumCurrentLocator(
            currentLocatorState = currentLocatorState,
            hasReadiumPublication = true,
            rendererKey = rendererKey
        )

    override suspend fun goTo(locator: ReaderLocator): ReaderLocator? {
        val resolvedLocator = resolveReadiumGoToLocator(
            resolvedLocator = publication?.resolveReadiumReaderLocator(locator),
            requestedLocator = locator
        )
        if (resolvedLocator != null) {
            currentLocatorState = resolvedLocator
        }
        return resolvedLocator
    }

    override suspend fun updatePreferences(preferences: ReaderPreferenceSnapshot) {
        if (shouldDelegatePreferencesToLegacy(rendererKey)) {
            legacySessionHandle.getOrLoad().updatePreferences(preferences)
        }
    }

    override suspend fun close() {
        if (isClosed) return
        isClosed = true
        runCatching { publication?.close() }
        runCatching { legacySessionHandle.peek()?.close() }
        runCatching {
            cleanupFile?.takeIf(File::exists)?.delete()
        }
        onClose(sessionId)
    }
}

internal class LegacyFallbackEpubBookSession(
    override val bookId: String,
    private val legacySession: BookSession,
    private val cleanupFile: File?,
    private val onClose: (String) -> Unit
) : BookSession, LegacyFormatSessionAccess, ReadiumPublicationSessionAccess {

    private var isClosed: Boolean = false

    override val sessionId: String = legacySession.sessionId
    override val format: BookFormat = BookFormat.EPUB
    override val rendererKey: ReaderRendererKey = legacySession.rendererKey
    override val publication: Publication? = null
    override val legacyReader = legacySession.legacyReaderOrThrow()

    override suspend fun metadata(): BookMetadata = legacySession.metadata()

    override suspend fun tableOfContents(): List<BookTocItem> = legacySession.tableOfContents()

    override suspend fun search(query: String): List<BookSearchHit> = legacySession.search(query)

    override suspend fun currentLocator(): ReaderLocator? = legacySession.currentLocator()

    override suspend fun goTo(locator: ReaderLocator): ReaderLocator? = legacySession.goTo(locator)

    override suspend fun updatePreferences(preferences: ReaderPreferenceSnapshot) =
        legacySession.updatePreferences(preferences)

    override suspend fun close() {
        if (isClosed) return
        isClosed = true
        runCatching { legacySession.close() }
        runCatching {
            cleanupFile?.takeIf(File::exists)?.delete()
        }
        onClose(sessionId)
    }
}

private fun BookSession.legacyReaderOrThrow() = (this as? LegacyFormatSessionAccess)?.legacyReader
    ?: error("ReadiumEpubEngine requires a legacy EPUB fallback session when legacyReader is requested")

private fun BookSession?.loadedLegacyReaderOrThrow() = (this as? LegacyFormatSessionAccess)?.legacyReader
    ?: error("ReadiumEpubEngine requires loadLegacyReader() before accessing a lazy hybrid EPUB legacyReader")

@Module
@InstallIn(SingletonComponent::class)
abstract class ReadiumEpubEngineModule {
    @Binds
    @IntoSet
    abstract fun bindReadiumEpubEngine(engine: ReadiumEpubEngine): BookEngine
}
