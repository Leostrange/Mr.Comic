package io.leostrange.mrcomic.core.data.repository

import java.io.File
import java.io.InputStream

/**
 * Adapter contract for opening an archive as a sequential stream.
 * ZIP and TAR can be scanned through a plain [InputStream];
 * 7Z and RAR need the random-access counterpart below instead.
 *
 * Implementations should hand a fresh stream each call. The detector closes
 * whatever it receives and never re-opens it.
 */
internal fun interface ArchiveStreamSource {
    fun openStream(): InputStream?
}

/**
 * Adapter contract for materialising an archive into a temporary file with
 * random access. 7Z (commons-compress [SevenZFile]) and RAR4 (junrar [Archive])
 * cannot be scanned through a sequential stream and need seekable storage.
 *
 * The detector MUST delete the returned file after use; see
 * [detectArchiveContentFormat] for the cleanup contract.
 */
internal fun interface RandomAccessArchiveMaterialiser {
    /**
     * Copies the source to a temp file with the given extension and returns
     * it, or returns null if the source cannot be materialised. The detector
     * deletes the returned file in a `finally` block regardless of outcome.
     */
    fun materialise(extension: String): File?
}

/**
 * Bundle of the two adapter contracts that the archive-content scanner needs.
 *
 * Wiring them through this aggregate (rather than letting the detector open
 * streams or write temp files itself) keeps the scan logic separable from
 * platform-specific code — content URIs, file schemes, temp-file lifecycle —
 * that lives in [ComicRepository].
 */
internal data class ArchiveAccess(
    val stream: ArchiveStreamSource,
    val randomAccess: RandomAccessArchiveMaterialiser
)
