package com.example.core.model

data class ReaderFormatDescriptor(
    val format: ComicFormat,
    val extensions: Set<String>,
    val mimeTypes: Set<String> = emptySet()
)

object ReaderFormatCatalog {
    val descriptors: List<ReaderFormatDescriptor> = listOf(
        ReaderFormatDescriptor(
            format = ComicFormat.CBZ,
            extensions = setOf("cbz"),
            mimeTypes = setOf("application/x-cbz", "application/vnd.comicbook+zip")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.ZIP,
            extensions = setOf("zip"),
            mimeTypes = setOf("application/zip")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.CBR,
            extensions = setOf("cbr"),
            mimeTypes = setOf("application/x-cbr", "application/vnd.comicbook-rar")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.RAR,
            extensions = setOf("rar"),
            mimeTypes = setOf(
                "application/x-rar-compressed",
                "application/x-rar",
                "application/vnd.rar"
            )
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.SEVENZ,
            extensions = setOf("7z", "cb7"),
            mimeTypes = setOf("application/x-7z-compressed")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.TAR,
            extensions = setOf("tar", "cbt"),
            mimeTypes = setOf("application/x-tar")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.PDF,
            extensions = setOf("pdf"),
            mimeTypes = setOf("application/pdf")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.DJVU,
            extensions = setOf("djvu", "djv"),
            mimeTypes = setOf(
                "image/vnd.djvu",
                "image/x-djvu",
                "image/vnd.djvu+multipage",
                "application/x-djvu"
            )
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.EPUB,
            extensions = setOf("epub"),
            mimeTypes = setOf("application/epub+zip")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.FB2,
            extensions = setOf("fb2"),
            mimeTypes = setOf("application/fb2+xml", "application/x-fictionbook+xml", "text/xml")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.TXT,
            extensions = setOf("txt", "text"),
            mimeTypes = setOf("text/plain")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.HTML,
            extensions = setOf("html", "htm", "xhtml"),
            mimeTypes = setOf("text/html", "application/xhtml+xml")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.MARKDOWN,
            extensions = setOf("md", "markdown"),
            mimeTypes = setOf("text/markdown")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.RTF,
            extensions = setOf("rtf"),
            mimeTypes = setOf("application/rtf", "text/rtf")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.MOBI,
            extensions = setOf("mobi", "prc"),
            mimeTypes = setOf(
                "application/x-mobipocket-ebook",
                "application/vnd.amazon.ebook",
                "application/vnd.amazon.mobi8-ebook"
            )
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.AZW3,
            extensions = setOf("azw", "azw3", "kf8"),
            mimeTypes = emptySet()
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.DOCX,
            extensions = setOf("docx"),
            mimeTypes = setOf("application/vnd.openxmlformats-officedocument.wordprocessingml.document")
        ),
        ReaderFormatDescriptor(
            format = ComicFormat.ODT,
            extensions = setOf("odt"),
            mimeTypes = setOf("application/vnd.oasis.opendocument.text")
        )
    )

    val readerOpenDocumentMimeTypes: Array<String> = descriptors
        .flatMap { it.mimeTypes }
        .distinct()
        .toTypedArray()

    val audioMimeTypes: Array<String> = arrayOf(
        "audio/mpeg",
        "audio/mp4",
        "audio/ogg",
        "audio/x-wav",
        "audio/flac",
        "audio/aac"
    )

    private val extensionToFormat: Map<String, ComicFormat> = descriptors
        .flatMap { descriptor ->
            descriptor.extensions.map { extension -> extension.lowercase() to descriptor.format }
        }
        .toMap()

    private val mimeTypeToFormat: Map<String, ComicFormat> = descriptors
        .flatMap { descriptor ->
            descriptor.mimeTypes.map { mimeType -> mimeType.lowercase() to descriptor.format }
        }
        .toMap()

    fun detectByExtension(nameOrExtension: String?): ComicFormat {
        val normalized = nameOrExtension
            ?.substringBefore('?')
            ?.substringBefore('#')
            ?.substringAfterLast('/')
            ?.substringAfterLast('\\')
            ?.substringAfterLast('.', missingDelimiterValue = nameOrExtension)
            ?.lowercase()
            ?.trim()
            .orEmpty()
        return extensionToFormat[normalized] ?: ComicFormat.UNKNOWN
    }

    fun detectByMimeType(mimeType: String?): ComicFormat {
        val normalized = mimeType
            ?.substringBefore(';')
            ?.lowercase()
            ?.trim()
            .orEmpty()
        return mimeTypeToFormat[normalized] ?: ComicFormat.UNKNOWN
    }

    fun extensionsFor(format: ComicFormat): Set<String> =
        descriptors.firstOrNull { it.format == format }?.extensions.orEmpty()

    fun preferredExtensionFor(format: ComicFormat): String? =
        extensionsFor(format).firstOrNull()

    fun mimeTypesFor(format: ComicFormat): Set<String> =
        descriptors.firstOrNull { it.format == format }?.mimeTypes.orEmpty()
}
