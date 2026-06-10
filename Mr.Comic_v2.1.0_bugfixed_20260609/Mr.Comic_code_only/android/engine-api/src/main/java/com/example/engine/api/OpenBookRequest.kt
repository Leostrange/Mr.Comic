package com.example.engine.api

import com.example.core.model.BookFormat
import com.example.core.model.BookSource
import com.example.core.model.ReaderLocator
import com.example.core.model.ReaderPreferenceSnapshot

data class OpenBookRequest(
    val bookId: String,
    val format: BookFormat,
    val source: BookSource,
    val initialLocator: ReaderLocator? = null,
    val preferences: ReaderPreferenceSnapshot = ReaderPreferenceSnapshot()
)
