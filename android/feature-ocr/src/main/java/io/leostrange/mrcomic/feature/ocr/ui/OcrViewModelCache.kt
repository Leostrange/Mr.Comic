package io.leostrange.mrcomic.feature.ocr.ui

import android.net.Uri
import android.provider.OpenableColumns
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.OcrBlock
import io.leostrange.mrcomic.core.model.OcrBlockType
import io.leostrange.mrcomic.core.model.OverlayBlock
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.withContext
import java.io.File
import java.util.LinkedHashMap

/**
 * Filter state for page translation (dialogues-only / SFX toggle).
 */
internal data class OcrTranslationFilterState(
    val dialoguesOnly: Boolean,
    val includeSfx: Boolean
) {
    val cacheKey: String get() = "dialogues=$dialoguesOnly;sfx=$includeSfx"
}

internal fun OcrViewModel.buildPageBaseId(): String {
    val comicId = _uiState.value.comicId
    val page = _uiState.value.page
    return when {
        !comicId.isNullOrBlank() && page >= 0 -> "$comicId:$page"
        !comicId.isNullOrBlank() -> comicId
        !_uiState.value.imagePath.isNullOrBlank() -> _uiState.value.imagePath!!
        else -> "ocr_preview"
    }
}

internal suspend fun OcrViewModel.buildPageCacheId(): String {
    val state = _uiState.value
    val baseId = buildPageBaseId()
    val sourceFingerprint = when {
        !state.comicId.isNullOrBlank() -> {
            libraryRepository.getComicById(state.comicId)?.let { comic ->
                computeComicSourceFingerprint(comic)
            } ?: "comic-missing"
        }
        !state.imagePath.isNullOrBlank() -> computeImageSourceFingerprint(state.imagePath)
        else -> "transient-preview"
    }
    return "$baseId@$sourceFingerprint"
}

internal suspend fun OcrViewModel.computeComicSourceFingerprint(comic: Comic): String =
    withContext(Dispatchers.IO) {
        val rawPath = comic.path.trim()
        if (rawPath.isBlank()) {
            return@withContext "blank|${comic.id}|${comic.lastModified}|${comic.fileSize}"
        }

        if (rawPath.startsWith("content://")) {
            val uri = Uri.parse(rawPath)
            val displayName = runCatching {
                context.contentResolver.query(
                    uri,
                    arrayOf(OpenableColumns.DISPLAY_NAME),
                    null,
                    null,
                    null
                )?.use { cursor ->
                    if (cursor.moveToFirst()) cursor.getString(0) else null
                }
            }.getOrNull()
            val assetLength = runCatching {
                context.contentResolver.openAssetFileDescriptor(uri, "r")?.use { descriptor ->
                    descriptor.length.takeIf { it >= 0L }
                }
            }.getOrNull()
            val name = displayName ?: uri.lastPathSegment.orEmpty()
            val length = assetLength?.coerceAtLeast(0L) ?: comic.fileSize.coerceAtLeast(0L)
            val lastModified = comic.lastModified
            val documentId = comic.documentId.orEmpty()
            return@withContext "content|$name|$length|$lastModified|$documentId"
        }

        val localFile = File(rawPath)
        if (localFile.exists() && localFile.isFile) {
            return@withContext "file|${localFile.absolutePath}|${localFile.length()}|${localFile.lastModified()}"
        }

        "stored|$rawPath|${comic.fileSize.coerceAtLeast(0L)}|${comic.lastModified}|${comic.format.name}|${comic.documentId.orEmpty()}"
    }

internal fun OcrViewModel.computeImageSourceFingerprint(imagePath: String): String {
    val localFile = File(imagePath)
    if (localFile.exists() && localFile.isFile) {
        return "image-file|${localFile.absolutePath}|${localFile.length()}|${localFile.lastModified()}"
    }
    return "image-path|$imagePath"
}

internal suspend fun OcrViewModel.loadTranslationFilterState(): OcrTranslationFilterState {
    val dialoguesOnly = preferences.get(PreferencesKeys.OCR_DIALOGUES_ONLY, false).first()
    val includeSfx = preferences.get(PreferencesKeys.OCR_INCLUDE_SFX, true).first()
    return OcrTranslationFilterState(
        dialoguesOnly = dialoguesOnly,
        includeSfx = includeSfx
    )
}

internal fun filterBlocksForPageTranslation(
    blocks: List<OcrBlock>,
    filterState: OcrTranslationFilterState
): List<OcrBlock> {
    return blocks.filter { block ->
        val includeByDialogueFilter = if (filterState.dialoguesOnly) {
            block.blockType == OcrBlockType.SPEECH || block.blockType == OcrBlockType.UNKNOWN
        } else {
            true
        }
        val includeBySfxFilter = if (filterState.includeSfx) {
            true
        } else {
            block.blockType != OcrBlockType.SFX
        }
        includeByDialogueFilter && includeBySfxFilter
    }
}

internal fun OcrViewModel.mergeTranslatedBlocks(newBlocks: List<OverlayBlock>): List<OverlayBlock> {
    val mergedById = LinkedHashMap<String, OverlayBlock>()
    _uiState.value.translatedBlocks.forEach { mergedById[it.ocrBlockId] = it }
    newBlocks.forEach { mergedById[it.ocrBlockId] = it }
    return _uiState.value.recognizedBlocks.mapNotNull { block -> mergedById[block.id] }
}
