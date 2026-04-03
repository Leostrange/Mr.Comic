package com.example.feature.reader.ui

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

object ReaderTextFontCatalog {
    private val builtInFonts = linkedMapOf(
        "Georgia" to null,
        "Merriweather" to "Merriweather-Regular.ttf",
        "Open Sans" to "OpenSans-Regular.ttf",
        "Roboto Slab" to "RobotoSlab-Regular.ttf",
        "PT Serif" to "PTSerif-Regular.ttf",
        "Literata" to "Literata-Regular.ttf"
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
            return ReaderResolvedTextFont(
                familyName = requestedFamily,
                sourceUrl = builtInAsset?.let { READER_USER_FONT_BASE_URL + Uri.encode(it) }
            )
        }
        val customFont = scanCustomFonts(context).firstOrNull { it.displayName == requestedFamily }
        return if (customFont != null) {
            ReaderResolvedTextFont(
                familyName = customFont.displayName,
                sourceUrl = READER_USER_FONT_BASE_URL + Uri.encode(customFont.file.name)
            )
        } else {
            ReaderResolvedTextFont("Georgia")
        }
    }

    fun importFont(context: Context, uri: Uri): String? {
        val resolver = context.contentResolver
        val rawName = runCatching {
            resolver.query(uri, arrayOf(android.provider.OpenableColumns.DISPLAY_NAME), null, null, null)
                ?.use { cursor ->
                    val nameIndex = cursor.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
                    if (nameIndex >= 0 && cursor.moveToFirst()) cursor.getString(nameIndex) else null
                }
        }.getOrNull()
        val extension = (rawName?.substringAfterLast('.', "")
            ?: uri.lastPathSegment?.substringAfterLast('.', ""))
            .orEmpty()
            .lowercase(Locale.US)
        if (extension !in supportedFontMimeTypes.keys) return null
        val baseName = rawName?.substringBeforeLast('.', "")?.trim().orEmpty()
            .ifBlank { uri.lastPathSegment?.substringBeforeLast('.', "")?.trim().orEmpty() }
            .ifBlank { "ImportedFont" }
        val safeBaseName = baseName
            .replace(Regex("[^\\p{L}\\p{N}_\\- ]+"), " ")
            .replace(Regex("\\s+"), "_")
            .trim('_')
            .ifBlank { "ImportedFont" }
        val targetFile = nextAvailableFontFile(fontDirectory(context), safeBaseName, extension)
        resolver.openInputStream(uri)?.use { input ->
            FileOutputStream(targetFile).use { output -> input.copyTo(output) }
        } ?: return null
        return availableFontFamilies(context).firstOrNull {
            it == prettifyFontDisplayName(targetFile.name) || it.startsWith(prettifyFontDisplayName(targetFile.name))
        } ?: prettifyFontDisplayName(targetFile.name)
    }

    fun deleteCustomFont(context: Context, displayName: String): Boolean {
        val entry = scanCustomFonts(context).firstOrNull { it.displayName == displayName } ?: return false
        return runCatching { entry.file.delete() }.getOrDefault(false)
    }

    fun fontDirectory(context: Context): File =
        File(context.filesDir, "fonts").apply { mkdirs() }

    fun prettifyFontDisplayName(fileName: String): String {
        val baseName = fileName.substringBeforeLast('.', fileName)
        return baseName
            .replace(Regex("[_\\-]+"), " ")
            .replace(Regex("[^\\p{L}\\p{N} ]+"), " ")
            .replace(Regex("\\s+"), " ")
            .trim()
    }

    private fun scanCustomFonts(context: Context): List<CustomFontEntry> {
        val reservedNames = linkedSetOf<String>().apply { addAll(defaultFontFamilies) }
        return fontDirectory(context)
            .listFiles()
            .orEmpty()
            .asSequence()
            .filter { it.isFile && supportedFontMimeTypes.containsKey(it.extension.lowercase(Locale.US)) }
            .sortedBy { it.name.lowercase(Locale.US) }
            .map { file ->
                val baseLabel = prettifyFontDisplayName(file.name).ifBlank { file.nameWithoutExtension }
                var displayName = baseLabel
                if (!reservedNames.add(displayName)) {
                    displayName = "$baseLabel (User)"
                }
                var suffix = 2
                while (!reservedNames.add(displayName)) {
                    displayName = "$baseLabel (User $suffix)"
                    suffix += 1
                }
                CustomFontEntry(displayName = displayName, file = file)
            }
            .toList()
    }

    private fun nextAvailableFontFile(root: File, baseName: String, extension: String): File {
        var candidate = File(root, "$baseName.$extension")
        var suffix = 2
        while (candidate.exists()) {
            candidate = File(root, "${baseName}_$suffix.$extension")
            suffix += 1
        }
        return candidate
    }

    private data class CustomFontEntry(
        val displayName: String,
        val file: File
    )
}
