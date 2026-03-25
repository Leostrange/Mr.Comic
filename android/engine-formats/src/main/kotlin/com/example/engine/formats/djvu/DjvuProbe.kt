package com.example.engine.formats.djvu

import java.io.BufferedInputStream
import java.io.EOFException
import java.io.InputStream

data class DjvuProbeResult(
    val formType: String,
    val pageCount: Int
)

object DjvuProbe {
    private const val FORM_MAGIC = "AT&TFORM"
    private const val CHUNK_FORM = "FORM"
    private const val FORM_DJVU = "DJVU"
    private const val FORM_DJVM = "DJVM"

    fun probe(input: InputStream): DjvuProbeResult? {
        val stream = BufferedInputStream(input)
        val magic = stream.readAscii(8) ?: return null
        if (magic != FORM_MAGIC) return null

        val formSize = stream.readUnsignedInt() ?: return null
        val formType = stream.readAscii(4) ?: return null
        val pageCount = when (formType) {
            FORM_DJVU -> 1
            FORM_DJVM -> countBundledPages(stream, formSize - 4).coerceAtLeast(1)
            else -> 1
        }
        return DjvuProbeResult(formType = formType, pageCount = pageCount)
    }

    private fun countBundledPages(input: InputStream, remainingPayloadBytes: Long): Int {
        var remaining = remainingPayloadBytes.coerceAtLeast(0)
        var pages = 0
        while (remaining >= 8) {
            val chunkId = input.readAscii(4) ?: break
            val chunkSize = input.readUnsignedInt() ?: break
            remaining -= 8

            if (chunkId == CHUNK_FORM && chunkSize >= 4) {
                val nestedFormType = input.readAscii(4) ?: break
                if (nestedFormType == FORM_DJVU) {
                    pages++
                }
                if (!input.skipFully(chunkSize - 4)) break
                remaining -= chunkSize
            } else {
                if (!input.skipFully(chunkSize)) break
                remaining -= chunkSize
            }

            if (chunkSize % 2L == 1L) {
                if (!input.skipFully(1)) break
                remaining -= 1
            }
        }
        return pages
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
}
