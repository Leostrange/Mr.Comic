package com.example.engine.formats.djvu

import android.graphics.Bitmap

sealed interface DjvuBackendStatus {
    val backendName: String

    data class Available(
        override val backendName: String,
        val nativeCompositeRendererAvailable: Boolean = false
    ) : DjvuBackendStatus

    data class Unavailable(
        override val backendName: String,
        val summary: String,
        val details: String
    ) : DjvuBackendStatus
}

data class DjvuPageSource(
    val index: Int,
    val documentBytes: ByteArray,
    val info: DjvuPageInfo? = null,
    val fileOffset: Long? = null,
    val byteLength: Long? = null
)

interface DjvuDocument {
    suspend fun getPageCount(): Int
    suspend fun renderPage(index: Int, renderQuality: Int = 1): Bitmap?
    suspend fun getHtmlPage(index: Int): String? = null
    suspend fun getPageSource(index: Int): DjvuPageSource? = null
    suspend fun getMetadata(): Map<String, String> = emptyMap()
    fun close()
}

interface DjvuBackend {
    val status: DjvuBackendStatus
    suspend fun open(path: String): DjvuDocument?
}
