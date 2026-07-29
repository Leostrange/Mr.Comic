package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.BookSource
import io.leostrange.mrcomic.core.model.storedReaderLocator
import io.leostrange.mrcomic.engine.api.BookSession
import io.leostrange.mrcomic.engine.api.OpenBookRequest
import io.leostrange.mrcomic.engine.formats.base.FormatFactory
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.LegacyFormatSessionAccess
import io.leostrange.mrcomic.engine.registry.BookEngineRegistry

/**
 * Manages the lifecycle of the active [BookSession] and [FormatReader]
 * for the reader ViewModel.
 *
 * Extracted from [ReaderViewModel] to reduce its size.
 */
internal class ReaderBookSessionManager(
    private val bookEngineRegistry: BookEngineRegistry,
    private val formatFactory: FormatFactory,
    private val textReaderOrchestrator: TextReaderOrchestrator
) {
    var formatReader: FormatReader? = null
        private set

    var activeBookSession: BookSession? = null
        private set

    /**
     * Opens a text format reader via BookEngine (Readium) or falls back to FormatFactory.
     */
    suspend fun openTextFormatReader(
        comic: Comic,
        resolvedPath: String,
        detectedFormat: ComicFormat
    ): FormatReader? {
        closeActiveBookSession()
        return runCatching {
            val engine = bookEngineRegistry.resolve(detectedFormat)
                ?: return@runCatching null
            val bookSource = if (resolvedPath.startsWith("content://")) {
                BookSource.ContentUri(resolvedPath)
            } else {
                BookSource.FilePath(resolvedPath)
            }
            val session = engine.open(
                OpenBookRequest(
                    bookId = comic.id,
                    format = detectedFormat,
                    source = bookSource,
                    initialLocator = comic.storedReaderLocator()
                )
            )
            activeBookSession = session
            when (session) {
                is LegacyFormatSessionAccess -> session.loadLegacyReader()
                else -> formatFactory.createReader(resolvedPath, detectedFormat)
            }
        }.getOrElse { error ->
            Log.w(TAG, "BookEngine open failed for $detectedFormat; falling back to FormatFactory", error)
            activeBookSession = null
            formatFactory.createReader(resolvedPath, detectedFormat)
        }
    }

    /**
     * Sets the format reader after [ReaderBookPreparer] creates it.
     */
    fun setFormatReader(reader: FormatReader?) {
        formatReader = reader
    }

    private suspend fun closeActiveBookSession() {
        val session = activeBookSession ?: return
        activeBookSession = null
        textReaderOrchestrator.activeSession = null
        runCatching {
            bookEngineRegistry.resolve(session.format)?.close(session.sessionId)
        }.onFailure { error ->
            Log.w(TAG, "Failed to close BookEngine session ${session.sessionId}", error)
        }
    }

    /**
     * Closes format reader and book session resources.
     */
    fun closeReaderResources() {
        textReaderOrchestrator.cancelWebtoonLoad()
        runCatching { formatReader?.close() }
        formatReader = null
    }

    /**
     * Closes the active book session asynchronously.
     */
    suspend fun closeBookSessionAsync() {
        closeActiveBookSession()
    }

    companion object {
        private const val TAG = "ReaderBookSession"
    }
}
