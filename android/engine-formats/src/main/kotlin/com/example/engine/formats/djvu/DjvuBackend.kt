package com.example.engine.formats.djvu

import android.graphics.Bitmap

sealed interface DjvuBackendStatus {
    val backendName: String

    data class Available(
        override val backendName: String
    ) : DjvuBackendStatus

    data class Unavailable(
        override val backendName: String,
        val summary: String,
        val details: String
    ) : DjvuBackendStatus
}

interface DjvuDocument {
    suspend fun getPageCount(): Int
    suspend fun renderPage(index: Int, renderQuality: Int = 1): Bitmap?
    suspend fun getMetadata(): Map<String, String> = emptyMap()
    fun close()
}

interface DjvuBackend {
    val status: DjvuBackendStatus
    suspend fun open(path: String): DjvuDocument?
}
