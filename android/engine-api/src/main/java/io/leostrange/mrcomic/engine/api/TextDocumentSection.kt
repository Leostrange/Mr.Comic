package io.leostrange.mrcomic.engine.api

/**
 * A logical section/chapter slice returned by text format engines before viewport pagination.
 *
 * Moved from engine.formats.text to engine-api so feature modules
 * can reference text sections without depending on engine-formats.
 */
data class TextDocumentSection(
    val index: Int,
    val id: String? = null,
    val title: String? = null,
    val html: String,
    val baseUrl: String? = null,
    val isFrontMatter: Boolean = false,
    /** Index of a logical HTML block inside [index] when one engine page maps to several splits. */
    val splitIndex: Int = 0
)
