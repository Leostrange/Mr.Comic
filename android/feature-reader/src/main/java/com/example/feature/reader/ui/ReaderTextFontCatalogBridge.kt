package com.example.feature.reader.ui

import android.content.Context
import android.net.Uri
import com.example.engine.formats.base.FormatReaderWebResource
import java.io.ByteArrayInputStream
import java.util.Locale

internal fun ReaderTextFontCatalog.openCustomFontAsset(
    context: Context,
    path: String
): FormatReaderWebResource? {
    val decodedPath = Uri.decode(path).replace('\\', '/').trimStart('/')
    val fileName = decodedPath.substringAfterLast('/').trim()
    if (fileName.isBlank()) return null
    val mimeType = when (fileName.substringAfterLast('.', "").lowercase(Locale.US)) {
        "ttf" -> "font/ttf"
        "otf" -> "font/otf"
        "woff" -> "font/woff"
        "woff2" -> "font/woff2"
        else -> return null
    }
    val assetBytes = runCatching {
        context.assets.open("fonts/$fileName").use { it.readBytes() }
    }.getOrNull()
    if (assetBytes != null) {
        return FormatReaderWebResource(
            bytes = assetBytes,
            mimeType = mimeType,
            encoding = "binary"
        )
    }
    val rootDir = ReaderTextFontCatalog.fontDirectory(context).canonicalFile
    val file = java.io.File(rootDir, fileName).canonicalFile
    if (file.parentFile != rootDir || !file.exists() || !file.isFile || !file.canRead()) {
        return null
    }
    return FormatReaderWebResource(
        bytes = file.readBytes(),
        mimeType = mimeType,
        encoding = "binary"
    )
}
