package io.leostrange.mrcomic.engine.api

import io.leostrange.mrcomic.core.model.BookFormat
import io.leostrange.mrcomic.core.model.BookSource
import io.leostrange.mrcomic.core.model.ReaderLocator
import io.leostrange.mrcomic.core.model.ReaderPreferenceSnapshot

data class OpenBookRequest(
    val bookId: String,
    val format: BookFormat,
    val source: BookSource,
    val initialLocator: ReaderLocator? = null,
    val preferences: ReaderPreferenceSnapshot = ReaderPreferenceSnapshot()
)
