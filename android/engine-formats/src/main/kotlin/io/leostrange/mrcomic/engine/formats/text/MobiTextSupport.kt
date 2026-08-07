package io.leostrange.mrcomic.engine.formats.text

import kotlin.math.min

internal object MobiTextSupport {
    fun extract(bytes: ByteArray): MobiExtractionResult {
        val records = readPalmDatabaseRecords(bytes)
            ?: return MobiExtractionResult.Unsupported("Unable to read MOBI/AZW3 container.")
        if (records.size < 2) {
            return MobiExtractionResult.Unsupported("MOBI/AZW3 file does not contain readable text records.")
        }

        val header = records.first()
        if (!header.hasSliceAt(MOBI_HEADER_OFFSET, MOBI_IDENTIFIER)) {
            return MobiExtractionResult.Unsupported("Unsupported MOBI/AZW3 header.")
        }

        val compression = header.readUInt16BE(0) ?: return MobiExtractionResult.Unsupported("Broken MOBI/AZW3 compression header.")
        val declaredTextLength = header.readUInt32BE(4)
            ?.takeIf { it in 1..MAX_MOBI_DECOMPRESSED_TEXT_BYTES.toLong() }
            ?.toInt()
        val textRecordCount = header.readUInt16BE(8) ?: return MobiExtractionResult.Unsupported("Broken MOBI/AZW3 text record header.")
        val encryptionType = header.readUInt16BE(12) ?: 0
        val headerLength = header.readUInt32BE(MOBI_HEADER_LENGTH_OFFSET)?.toInt()
        val textEncoding = header.readUInt32BE(MOBI_TEXT_ENCODING_OFFSET)?.toInt() ?: 65001
        val unsupportedDetails = MobiUnsupportedDetails(
            reason = "unknown",
            declaredEncoding = textEncoding,
            compression = compression,
            textRecordCount = min(textRecordCount, records.lastIndex),
            encryptionType = encryptionType,
            containsHuffCdicTables = containsHuffCdicTables(records)
        )

        if (encryptionType != 0) {
            return MobiExtractionResult.Unsupported(
                message = "This MOBI/AZW3 file is DRM-protected and cannot be opened.",
                details = unsupportedDetails.copy(reason = "drm")
            )
        }

        val extraDataFlags = resolveExtraDataFlags(header, headerLength)

        if (compression == HUFF_CDIC_COMPRESSION) {
            return MobiExtractionResult.Unsupported(
                message = "This MOBI/AZW3 file uses HUFF/CDIC compression, which needs a dedicated MOBI/AZW3 decoder.",
                details = unsupportedDetails.copy(reason = "huff-cdic")
            )
        }

        val limit = min(textRecordCount, records.lastIndex)
        if (limit <= 0) {
            return MobiExtractionResult.Unsupported("MOBI/AZW3 file does not contain readable text content.")
        }

        val decompressedChunks = mutableListOf<ByteArray>()
        var decompressedBytes = 0
        var writtenBytes = 0
        for (index in 1..limit) {
            val trimmedRecord = stripTrailingData(records[index], extraDataFlags)
            val chunk = when (compression) {
                PALMDOC_COMPRESSION_NONE -> trimmedRecord
                PALMDOC_COMPRESSION -> decompressPalmDoc(trimmedRecord)
                    ?: return MobiExtractionResult.Unsupported(
                        message = "PalmDOC text record expands beyond the safe MOBI/AZW3 limit.",
                        details = unsupportedDetails.copy(reason = "palm-doc-expansion-limit")
                    )
                else -> return MobiExtractionResult.Unsupported(
                    message = "This MOBI/AZW3 file uses unsupported compression: $compression.",
                    details = unsupportedDetails.copy(reason = "unsupported-compression")
                )
            }
            decompressedBytes += chunk.size
            if (decompressedBytes > MAX_MOBI_DECOMPRESSED_TEXT_BYTES) {
                return MobiExtractionResult.Unsupported(
                    message = "MOBI/AZW3 text expands beyond the safe reader limit.",
                    details = unsupportedDetails.copy(reason = "decompressed-text-limit")
                )
            }
            val bytesToWrite = declaredTextLength?.let { expectedLength ->
                (expectedLength - writtenBytes).coerceIn(0, chunk.size)
            } ?: chunk.size
            if (bytesToWrite > 0) {
                decompressedChunks += if (bytesToWrite == chunk.size) {
                    chunk
                } else {
                    chunk.copyOf(bytesToWrite)
                }
                writtenBytes += bytesToWrite
            }
            if (declaredTextLength != null && writtenBytes >= declaredTextLength) {
                break
            }
        }
        val decodedChunk = decodeTextRecords(decompressedChunks, textEncoding)
        if (decodedChunk.text.length > MAX_MOBI_DECODED_TEXT_CHARS) {
            return MobiExtractionResult.Unsupported(
                message = "MOBI/AZW3 text expands beyond the safe reader limit.",
                details = unsupportedDetails.copy(reason = "decoded-text-limit")
            )
        }
        val decoded = decodedChunk.text

        val cleaned = decoded
            .replace("\u0000", "")
            .replace("\uFFFD", "")
            .replace(Regex("[\\u0001-\\u0008\\u000B\\u000C\\u000E-\\u001F]"), "")
            .trim()
        val normalizedText = sanitizeResidualMobiCorruption(
            repairWholeTextMojibake(repairLocalizedUtf8Mojibake(cleaned))
        ).replace("\uFFFD", "")

        if (normalizedText.isBlank()) {
            return MobiExtractionResult.Unsupported("Unable to extract readable text from MOBI/AZW3.")
        }

        val markup = extractMarkupFragment(normalizedText)
        val resolvedEncoding = decodedChunk.encodingName
        val pageBreakCount = Regex(
            """(?is)<(?:mbp:pagebreak|pagebreak)\b[^>]*(?:/?>|>.*?</(?:mbp:pagebreak|pagebreak)>)"""
        ).findAll(markup ?: normalizedText).count()
        val diagnostics = MobiDiagnostics(
            declaredEncoding = textEncoding,
            resolvedEncoding = resolvedEncoding,
            compression = compression,
            textRecordCount = limit,
            pageBreakCount = pageBreakCount,
            containsMarkup = markup != null
        )
        return if (markup != null) {
            MobiExtractionResult.Success(markup, isMarkup = true, diagnostics = diagnostics)
        } else {
            MobiExtractionResult.Success(normalizedText, isMarkup = false, diagnostics = diagnostics)
        }
    }
}
