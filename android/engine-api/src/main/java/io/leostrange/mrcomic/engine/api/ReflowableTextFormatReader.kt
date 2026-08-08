package io.leostrange.mrcomic.engine.api

/**
 * Capability of text format readers that expose logical document sections
 * before viewport pagination.
 */
interface ReflowableTextFormatReader {
    suspend fun getTextDocumentSections(): List<TextDocumentSection>
}
