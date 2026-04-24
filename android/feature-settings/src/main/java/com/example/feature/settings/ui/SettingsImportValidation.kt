package com.example.feature.settings.ui

import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import java.util.Locale

internal const val SETTINGS_IMPORT_REJECTION_MESSAGE = "Это ошибка, которую я не могу игнорировать."
private const val SETTINGS_IMPORT_MAX_BYTES = 8L * 1024L * 1024L

internal data class SettingsImportMetadata(
    val mimeType: String?,
    val displayName: String?,
    val sizeBytes: Long?
)

internal fun Uri.looksLikeJsonSettingsImport(context: Context): Boolean =
    readSettingsImportMetadata(context).looksLikeJson()

internal fun Uri.isAcceptedSettingsJsonImport(context: Context): Boolean =
    readSettingsImportMetadata(context).isAcceptedJsonImport()

internal fun Uri.readAcceptedSettingsImportText(context: Context): String {
    val metadata = readSettingsImportMetadata(context)
    if (!metadata.isAcceptedJsonImport()) {
        throw IllegalArgumentException(SETTINGS_IMPORT_REJECTION_MESSAGE)
    }

    val builder = StringBuilder()
    val stream = context.contentResolver.openInputStream(this)
        ?: throw IllegalStateException("Failed to read the file")
    stream.bufferedReader(Charsets.UTF_8).use { reader ->
        val buffer = CharArray(8 * 1024)
        var totalChars = 0L
        while (true) {
            val count = reader.read(buffer)
            if (count <= 0) break
            totalChars += count
            if (totalChars > SETTINGS_IMPORT_MAX_BYTES) {
                throw IllegalArgumentException(SETTINGS_IMPORT_REJECTION_MESSAGE)
            }
            builder.append(buffer, 0, count)
        }
    }
    return builder.toString()
}

internal fun SettingsImportMetadata.looksLikeJson(): Boolean {
    val normalizedType = mimeType
        ?.lowercase(Locale.US)
        ?.trim()
    if (normalizedType == "application/json" || normalizedType == "text/json") return true
    return displayName
        ?.trim()
        ?.lowercase(Locale.US)
        ?.endsWith(".json")
        ?: false
}

internal fun SettingsImportMetadata.isAcceptedJsonImport(): Boolean {
    val size = sizeBytes
    return looksLikeJson() && (size == null || size in 1..SETTINGS_IMPORT_MAX_BYTES)
}

private fun Uri.readSettingsImportMetadata(context: Context): SettingsImportMetadata {
    val mimeType = context.contentResolver.getType(this)
    var displayName: String? = null
    var sizeBytes: Long? = null

    context.contentResolver.query(
        this,
        arrayOf(OpenableColumns.DISPLAY_NAME, OpenableColumns.SIZE),
        null,
        null,
        null
    )?.use { cursor ->
        if (cursor.moveToFirst()) {
            val displayNameIndex = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
            val sizeIndex = cursor.getColumnIndex(OpenableColumns.SIZE)
            if (displayNameIndex >= 0) {
                displayName = cursor.getString(displayNameIndex)
            }
            if (sizeIndex >= 0 && !cursor.isNull(sizeIndex)) {
                sizeBytes = cursor.getLong(sizeIndex)
            }
        }
    }

    return SettingsImportMetadata(
        mimeType = mimeType,
        displayName = displayName,
        sizeBytes = sizeBytes
    )
}
