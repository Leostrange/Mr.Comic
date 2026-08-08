package io.leostrange.mrcomic.engine.formats.text

import io.leostrange.mrcomic.engine.api.TextDocumentSection

/**
 * Backward-compatible re-export. The canonical capability interface lives in
 * engine-api so feature modules can type-check readers without importing
 * engine-formats.
 */
typealias ReflowableTextFormatReader = io.leostrange.mrcomic.engine.api.ReflowableTextFormatReader

internal fun List<TextDocumentSection>.withSequentialIndices(): List<TextDocumentSection> =
    mapIndexed { index, section -> section.copy(index = index) }
