package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.engine.api.TextDocumentSection

/**
 * Stable text-reader session snapshot consumed by PAGE/WEBTOON containers.
 */
data class TextReaderSession(
    val sections: List<TextDocumentSection>,
    val totalEnginePages: Int,
    val tocTitlesByPage: Map<Int, String> = emptyMap()
)
