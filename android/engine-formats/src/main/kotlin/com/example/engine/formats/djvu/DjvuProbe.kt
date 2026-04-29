package com.example.engine.formats.djvu

import java.io.BufferedInputStream
import java.io.EOFException
import java.io.InputStream

data class DjvuProbeResult(
    val formType: String,
    val pageCount: Int,
    val topLevelChunkIds: List<String> = emptyList(),
    val pages: List<DjvuPlaceholderPage> = emptyList()
)

data class DjvuPageInfo(
    val width: Int? = null,
    val height: Int? = null,
    val dpi: Int? = null
)

data class DjvuPlaceholderPage(
    val index: Int,
    val formType: String,
    val chunkIds: List<String> = emptyList(),
    val info: DjvuPageInfo? = null,
    val fileOffset: Long? = null,
    val byteLength: Long? = null
)

object DjvuProbe {
    private const val FORM_MAGIC = "AT&TFORM"
    private const val CHUNK_FORM = "FORM"
    private const val CHUNK_INFO = "INFO"
    private const val FORM_DJVU = "DJVU"
    private const val FORM_DJVM = "DJVM"

    fun probe(input: InputStream): DjvuProbeResult? {
        val stream = BufferedInputStream(input)
        val magic = stream.readAscii(8) ?: return null
        if (magic != FORM_MAGIC) return null

        val formSize = stream.readUnsignedInt() ?: return null
        val formType = stream.readAscii(4) ?: return null
        val inspection = when (formType) {
            FORM_DJVU -> inspectSinglePageDocument(stream, formSize - 4, formSize)
            FORM_DJVM -> inspectBundledDocument(stream, formSize - 4)
            else -> DjvuProbeResult(formType = formType, pageCount = 1)
        }
        return inspection.copy(
            formType = formType,
            pageCount = inspection.pages.size.coerceAtLeast(inspection.pageCount).coerceAtLeast(1)
        )
    }

    private fun inspectSinglePageDocument(
        input: InputStream,
        remainingPayloadBytes: Long,
        rootFormSize: Long
    ): DjvuProbeResult {
        val chunks = collectDirectChunks(input, remainingPayloadBytes)
        return DjvuProbeResult(
            formType = FORM_DJVU,
            pageCount = 1,
            topLevelChunkIds = chunks.chunkIds,
            pages = listOf(
                DjvuPlaceholderPage(
                    index = 0,
                    formType = FORM_DJVU,
                    chunkIds = chunks.chunkIds,
                    info = chunks.pageInfo,
                    fileOffset = 0L,
                    byteLength = 12L + rootFormSize
                )
            )
        )
    }

    private fun inspectBundledDocument(
        input: InputStream,
        remainingPayloadBytes: Long
    ): DjvuProbeResult {
        var remaining = remainingPayloadBytes.coerceAtLeast(0)
        var cursorOffset = 16L
        val topLevelChunkIds = mutableListOf<String>()
        val pages = mutableListOf<DjvuPlaceholderPage>()
        while (remaining >= 8) {
            val chunkStartOffset = cursorOffset
            val chunkId = input.readAscii(4) ?: break
            val chunkSize = input.readUnsignedInt() ?: break
            remaining -= 8
            cursorOffset += 8

            if (chunkId == CHUNK_FORM && chunkSize >= 4) {
                val nestedFormType = input.readAscii(4) ?: break
                topLevelChunkIds += "FORM:$nestedFormType"
                cursorOffset += 4
                if (nestedFormType == FORM_DJVU) {
                    val chunks = collectDirectChunks(input, chunkSize - 4)
                    pages += DjvuPlaceholderPage(
                        index = pages.size,
                        formType = nestedFormType,
                        chunkIds = chunks.chunkIds,
                        info = chunks.pageInfo,
                        fileOffset = chunkStartOffset,
                        byteLength = 8L + chunkSize + if (chunkSize % 2L == 1L) 1L else 0L
                    )
                } else {
                    if (!input.skipFully(chunkSize - 4)) break
                }
                remaining -= chunkSize
                cursorOffset += chunkSize - 4
            } else {
                topLevelChunkIds += chunkId
                if (!input.skipFully(chunkSize)) break
                remaining -= chunkSize
                cursorOffset += chunkSize
            }

            if (chunkSize % 2L == 1L) {
                if (!input.skipFully(1)) break
                remaining -= 1
                cursorOffset += 1
            }
        }
        return DjvuProbeResult(
            formType = FORM_DJVM,
            pageCount = pages.size.coerceAtLeast(1),
            topLevelChunkIds = topLevelChunkIds,
            pages = pages
        )
    }

    private data class CollectedChunks(
        val chunkIds: List<String>,
        val pageInfo: DjvuPageInfo? = null
    )

    private fun collectDirectChunks(
        input: InputStream,
        remainingPayloadBytes: Long
    ): CollectedChunks {
        var remaining = remainingPayloadBytes.coerceAtLeast(0)
        val chunkIds = mutableListOf<String>()
        var pageInfo: DjvuPageInfo? = null
        while (remaining >= 8) {
            val chunkId = input.readAscii(4) ?: break
            val chunkSize = input.readUnsignedInt() ?: break
            remaining -= 8

            if (chunkId == CHUNK_FORM && chunkSize >= 4) {
                val nestedFormType = input.readAscii(4) ?: break
                chunkIds += "FORM:$nestedFormType"
                if (!input.skipFully(chunkSize - 4)) break
                remaining -= chunkSize
            } else if (chunkId == CHUNK_INFO && chunkSize in 4..64) {
                val payload = input.readByteArray(chunkSize.toInt()) ?: break
                chunkIds += chunkId
                remaining -= chunkSize
                pageInfo = pageInfo ?: parseInfoChunk(payload)
            } else {
                chunkIds += chunkId
                if (!input.skipFully(chunkSize)) break
                remaining -= chunkSize
            }

            if (chunkSize % 2L == 1L) {
                if (!input.skipFully(1)) break
                remaining -= 1
            }
        }
        return CollectedChunks(
            chunkIds = chunkIds,
            pageInfo = pageInfo
        )
    }

    private fun parseInfoChunk(payload: ByteArray): DjvuPageInfo? {
        if (payload.size < 4) return null
        val width = payload.readUnsignedShort(0).takeIf { it > 0 }
        val height = payload.readUnsignedShort(2).takeIf { it > 0 }
        val dpi = payload
            .takeIf { it.size >= 6 }
            ?.readUnsignedShort(4)
            ?.takeIf { it in 1..2400 }
        return DjvuPageInfo(
            width = width,
            height = height,
            dpi = dpi
        ).takeIf { it.width != null || it.height != null || it.dpi != null }
    }

    private fun InputStream.readAscii(length: Int): String? {
        val bytes = ByteArray(length)
        return try {
            readFully(bytes)
            bytes.decodeToString()
        } catch (_: EOFException) {
            null
        }
    }

    private fun InputStream.readUnsignedInt(): Long? {
        val bytes = ByteArray(4)
        return try {
            readFully(bytes)
            ((bytes[0].toLong() and 0xFF) shl 24) or
                ((bytes[1].toLong() and 0xFF) shl 16) or
                ((bytes[2].toLong() and 0xFF) shl 8) or
                (bytes[3].toLong() and 0xFF)
        } catch (_: EOFException) {
            null
        }
    }

    private fun InputStream.readFully(buffer: ByteArray) {
        var offset = 0
        while (offset < buffer.size) {
            val read = read(buffer, offset, buffer.size - offset)
            if (read <= 0) throw EOFException("Unexpected end of DjVu stream")
            offset += read
        }
    }

    private fun InputStream.readByteArray(byteCount: Int): ByteArray? {
        if (byteCount < 0) return null
        val buffer = ByteArray(byteCount)
        return try {
            readFully(buffer)
            buffer
        } catch (_: EOFException) {
            null
        }
    }

    private fun InputStream.skipFully(byteCount: Long): Boolean {
        var remaining = byteCount.coerceAtLeast(0)
        while (remaining > 0) {
            val skipped = skip(remaining)
            if (skipped > 0) {
                remaining -= skipped
                continue
            }
            if (read() == -1) return false
            remaining--
        }
        return true
    }

    private fun ByteArray.readUnsignedShort(offset: Int): Int {
        if (offset + 1 >= size) return 0
        return ((this[offset].toInt() and 0xFF) shl 8) or
            (this[offset + 1].toInt() and 0xFF)
    }
}
