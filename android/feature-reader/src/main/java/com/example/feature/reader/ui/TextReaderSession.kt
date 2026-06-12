package com.example.feature.reader.ui

import com.example.engine.formats.text.TextDocumentSection

/**
 * Stable text-reader session snapshot consumed by PAGE/WEBTOON containers.
 */
data class TextReaderSession(
    val sections: List<TextDocumentSection>,
    val totalEnginePages: Int,
    val tocTitlesByPage: Map<Int, String> = emptyMap()
)
