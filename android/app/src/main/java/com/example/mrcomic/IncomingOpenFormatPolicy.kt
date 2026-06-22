package com.example.mrcomic

import com.example.core.model.ReaderFormatCatalog

internal object IncomingOpenFormatPolicy {
    fun resolveExtension(displayName: String?, mimeType: String?): String? {
        displayName
            ?.substringAfterLast('.', "")
            ?.lowercase()
            ?.takeIf { it.isNotBlank() }
            ?.let { return it }

        val readerFormat = ReaderFormatCatalog.detectByMimeType(mimeType)
        return ReaderFormatCatalog.preferredExtensionFor(readerFormat)
    }
}
