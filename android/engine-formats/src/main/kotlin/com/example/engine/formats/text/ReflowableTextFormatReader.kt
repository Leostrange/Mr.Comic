package com.example.engine.formats.text

/**
 * Text formats that expose logical document sections before viewport pagination.
 */
interface ReflowableTextFormatReader {
    suspend fun getTextDocumentSections(): List<TextDocumentSection>
}

internal fun List<TextDocumentSection>.withSequentialIndices(): List<TextDocumentSection> =
    mapIndexed { index, section -> section.copy(index = index) }
