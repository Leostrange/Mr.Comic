package com.example.feature.reader.domain.session

internal data class ReaderSessionSnapshot(
    val comicId: String,
    val format: String,
    val totalPages: Int,
    val startPage: Int,
    val readingMode: String,
    val startedAtMillis: Long,
    val resumedFromProgress: Boolean
)
