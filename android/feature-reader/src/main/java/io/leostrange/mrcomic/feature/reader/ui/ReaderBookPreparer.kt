/*
 * Copyright 2026 Mr.Comic contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.engine.formats.base.FormatFactory
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.FileNotFoundException
import javax.inject.Inject

/**
 * Prepares a [FormatReader] for a comic book.
 *
 * Extracted from ReaderViewModel.openComic() to isolate IO-bound
 * reader preparation from ViewModel lifecycle and state management.
 */
class ReaderBookPreparer @Inject constructor(
    private val formatFactory: FormatFactory,
) {

    /**
     * Resolves the readable path, detects the format, and creates a reader.
     *
     * This runs on [Dispatchers.IO] and performs file I/O, so it must not
     * be called from the main thread.
     *
     * @param context Android context for file resolution.
     * @param comic The comic to open.
     * @param sourcePath The source path (may be content URI or file path).
     * @param textFormatReaderOpener Callback to open text format readers via BookEngine.
     *   The ViewModel passes its own `openTextFormatReader` method here.
     * @return [PreparedReaderOpen] with the resolved reader and metadata.
     * @throws FileNotFoundException if the source path is not readable.
     */
    suspend fun prepare(
        context: Context,
        comic: Comic,
        sourcePath: String,
        textFormatReaderOpener: suspend (Comic, String, ComicFormat) -> FormatReader?,
    ): PreparedReaderOpen = withContext(Dispatchers.IO) {
        val resolvedPath = ReaderContentPathResolver.resolveReadablePath(context, comic, sourcePath)
            ?: throw FileNotFoundException("Reader source is not readable: $sourcePath")

        // Re-detect by extension when stored format might be wrong (e.g. EPUB stored as CBZ
        // because magic bytes of EPUB == ZIP). Extension is always more reliable than magic.
        val detectedFormat = when (comic.format) {
            ComicFormat.UNKNOWN, ComicFormat.CBZ, ComicFormat.ZIP -> {
                val byPath = ReaderContentPathResolver.detectFormatForPath(context, resolvedPath)
                if (byPath != ComicFormat.UNKNOWN) byPath else comic.format
            }
            else -> comic.format
        }

        val newReader = if (detectedFormat.isTextReadingFormat()) {
            textFormatReaderOpener(comic, resolvedPath, detectedFormat)
        } else {
            formatFactory.createReader(resolvedPath, detectedFormat)
        }

        val readerRendersHtmlContent =
            newReader?.rendersHtmlContent() == true || detectedFormat.isTextReadingFormat()
        val contentFormat = newReader?.resolvedContentFormat() ?: detectedFormat
        val deferPageCount = shouldDeferReaderPageCount(
            readerRendersHtmlContent = readerRendersHtmlContent,
            contentFormat = contentFormat
        )

        val pages = if (deferPageCount) {
            1
        } else {
            try {
                newReader?.getPageCount() ?: 0
            } catch (t: Throwable) {
                newReader?.close()
                throw t
            }
        }

        PreparedReaderOpen(
            resolvedPath = resolvedPath,
            detectedFormat = detectedFormat,
            contentFormat = contentFormat,
            reader = newReader,
            pages = pages,
            readerRendersHtmlContent = readerRendersHtmlContent,
            deferPageCount = deferPageCount
        )
    }
}
