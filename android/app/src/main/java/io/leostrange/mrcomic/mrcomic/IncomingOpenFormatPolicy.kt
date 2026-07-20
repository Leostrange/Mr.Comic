package io.leostrange.mrcomic

import io.leostrange.mrcomic.core.model.ReaderFormatCatalog

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
