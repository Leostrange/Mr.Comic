package io.leostrange.mrcomic.core.ui.fonts

import android.content.Context
import android.net.Uri
import java.io.File
import java.io.FileOutputStream
import java.util.Locale

const val READER_USER_FONT_ASSET_PATH = "/reader/fonts/"
private const val READER_USER_FONT_BASE_URL = "https://appassets.androidplatform.net/reader/fonts/"

data class ReaderResolvedTextFont(
    val familyName: String,
    val sourceUrl: String? = null
)

data class ReaderFontWebResource(
    val bytes: ByteArray,
    val mimeType: String,
    val encoding: String
)

object ReaderTextFontCatalog {
    private val builtInFonts = linkedMapOf(
        "Georgia" to null,
        "Merriweather" to "Merriweather-Regular.ttf",
        "Open Sans" to "OpenSans-Regular.ttf",
        "Roboto Slab" to "RobotoSlab-Regular.ttf",
        "PT Serif" to "PTSerif-Regular.ttf",
        "Literata" to "Literata-Regular.ttf",
        "OpenDyslexic" to "OpenDyslexic-Regular.otf",
        "Accessible DfA" to "AccessibleDfA.otf",
        "iA Writer Duospace" to "iAWriterDuospace-Regular.ttf",
        "Liberation Sans" to "LiberationSans-Regular.ttf",
        "Lora" to "Lora-Regular.ttf",
        "Source Serif 4" to "SourceSerif4-Regular.ttf"
    )

    private val supportedFontMimeTypes = mapOf(
        "ttf" to "font/ttf",
        "otf" to "font/otf",
        "woff" to "font/woff",
        "woff2" to "font/woff2"
    )

    val defaultFontFamilies: List<String> = builtInFonts.keys.toList()

    fun availableFontFamilies(context: Context): List<String> =
        buildList {
            addAll(defaultFontFamilies)
            addAll(scanCustomFonts(context).map { it.displayName })
        }

    fun customFontFamilies(context: Context): List<String> =
        scanCustomFonts(context).map { it.displayName }

    fun isCustomFontFamily(context: Context, familyName: String): Boolean =
        scanCustomFonts(context).any { it.displayName == familyName }

    fun resolve(context: Context, selectedFamily: String?): ReaderResolvedTextFont {
        val requestedFamily = selectedFamily?.trim().orEmpty()
        if (requestedFamily.isBlank()) return ReaderResolvedTextFont("Georgia")
        val builtInAsset = builtInFonts[requestedFamily]
        if (builtInFonts.containsKey(requestedFamily)) {
            return if (builtInAsset != null) {
                ReaderResolvedTextFont(
                    familyName = requestedFamily,
                    sourceUrl = "$READER_USER_FONT_BASE_URL$builtInAsset"
                )
            } else {
                ReaderResolvedTextFont(requestedFamily)
            }
        }
        val customFont = scanCustomFonts(context).firstOrNull { it.displayName.equals(requestedFamily, ignoreCase = true) }
        return if (customFont != null) {
            ReaderResolvedTextFont(
                familyName = customFont.displayName,
                sourceUrl = "$READER_USER_FONT_BASE_URL${customFont.file.name}"
            )
        } else {
            ReaderResolvedTextFont(requestedFamily)
        }
    }

    fun resolveWebResource(context: Context, relativePath: String): ReaderFontWebResource? {
        val normalized = relativePath.trim().removePrefix("/").substringAfterLast('/')
        val extension = normalized.substringAfterLast('.', "").lowercase(Locale.ROOT)
        val mimeType = supportedFontMimeTypes[extension] ?: return null

        val customFontFile = File(getCustomFontsDir(context), normalized)
        if (customFontFile.exists() && customFontFile.isFile) {
            return ReaderFontWebResource(
                bytes = customFontFile.readBytes(),
                mimeType = mimeType,
                encoding = "binary"
            )
        }

        val builtInEntry = builtInFonts.entries.firstOrNull { it.value == normalized }
        if (builtInEntry?.value != null) {
            val bytes = context.assets.open("fonts/${builtInEntry.value}").use { it.readBytes() }
            return ReaderFontWebResource(
                bytes = bytes,
                mimeType = mimeType,
                encoding = "binary"
            )
        }

        return null
    }

    fun importCustomFont(context: Context, uri: Uri): Result<String> = runCatching {
        val contentResolver = context.contentResolver
        val fileName = getDisplayName(context, uri)
            ?: "imported_font_${System.currentTimeMillis()}.ttf"
        val extension = fileName.substringAfterLast('.', "").lowercase(Locale.ROOT)
        require(supportedFontMimeTypes.containsKey(extension)) {
            "Unsupported font format .$extension. Supported: ${supportedFontMimeTypes.keys.joinToString()}"
        }

        val fontsDir = getCustomFontsDir(context)
        val targetFile = File(fontsDir, sanitizeFileName(fileName))
        contentResolver.openInputStream(uri)?.use { input ->
            FileOutputStream(targetFile).use { output ->
                input.copyTo(output)
            }
        } ?: error("Cannot open font stream: $uri")

        val familyName = targetFile.nameWithoutExtension.replace('_', ' ').replace('-', ' ').trim()
        familyName.ifBlank { targetFile.nameWithoutExtension }
    }

    fun fontDirectory(context: Context): File = getCustomFontsDir(context)

    fun importFont(context: Context, uri: Uri): String =
        importCustomFont(context, uri).getOrThrow()

    fun prettifyFontDisplayName(rawName: String): String {
        val baseName = rawName.substringBeforeLast('.')
        return baseName
            .replace("[^a-zA-Z0-9]".toRegex(), " ")
            .split("\\s+".toRegex())
            .filter { it.isNotBlank() }
            .joinToString(" ")
            .trim()
    }

    fun deleteCustomFont(context: Context, familyName: String): Boolean {
        val font = scanCustomFonts(context).firstOrNull { it.displayName == familyName } ?: return false
        return font.file.delete()
    }

    private fun getCustomFontsDir(context: Context): File {
        val dir = File(context.filesDir, "reader_fonts")
        if (!dir.exists()) dir.mkdirs()
        return dir
    }

    private data class CustomFontItem(
        val displayName: String,
        val file: File
    )

    private fun scanCustomFonts(context: Context): List<CustomFontItem> {
        val dir = getCustomFontsDir(context)
        val files = dir.listFiles { file ->
            file.isFile && supportedFontMimeTypes.containsKey(file.extension.lowercase(Locale.ROOT))
        } ?: return emptyList()

        return files.sortedBy { it.name.lowercase(Locale.ROOT) }.map { file ->
            val displayName = file.nameWithoutExtension.replace('_', ' ').replace('-', ' ').trim()
            CustomFontItem(
                displayName = displayName.ifBlank { file.nameWithoutExtension },
                file = file
            )
        }
    }

    private fun sanitizeFileName(name: String): String =
        name.replace("[^a-zA-Z0-9._-]".toRegex(), "_")

    private fun getDisplayName(context: Context, uri: Uri): String? {
        if (uri.scheme == "file") return uri.lastPathSegment
        val cursor = context.contentResolver.query(uri, null, null, null, null) ?: return null
        cursor.use {
            val nameIndex = it.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
            if (nameIndex >= 0 && it.moveToFirst()) {
                return it.getString(nameIndex)
            }
        }
        return uri.lastPathSegment
    }
}
