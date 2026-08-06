package io.leostrange.mrcomic.feature.ocr.ui

import android.graphics.BitmapFactory
import android.net.Uri
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File

/**
 * Standalone image import and cleanup. Extracted from OcrViewModel.kt as
 * extension functions.
 */

internal fun OcrViewModel.loadStandaloneImage(uri: Uri) {
    if (_uiState.value.isInteractionLocked()) return
    viewModelScope.launch {
        val uiLanguage = currentUiLanguage()
        val copiedFile = withContext(Dispatchers.IO) {
            copyStandaloneImageToStorage(uri)
        }
        if (copiedFile == null) {
            _uiState.update { it.copy(error = ocrImageOpenFailedMessage(uiLanguage)) }
            return@launch
        }

        val bitmap = withContext(Dispatchers.IO) {
            runCatching { BitmapFactory.decodeFile(copiedFile.absolutePath) }.getOrNull()
        }
        if (bitmap == null) {
            _uiState.update { it.copy(error = ocrImageDecodeFailedMessage(uiLanguage)) }
            return@launch
        }

        savedStateHandle["imagePath"] = copiedFile.absolutePath
        savedStateHandle["comicId"] = null
        savedStateHandle["page"] = -1

        _uiState.update {
            it.clearImageScenarioState()
                .clearManualScenarioState(clearManualText = true)
                .clearTransientFeedback()
                .copy(
                    imagePath = copiedFile.absolutePath,
                    comicId = null,
                    page = -1,
                    imageBitmap = bitmap,
                    sourceLang = it.sourceLang.coerceToSupportedOcrSourceLanguage(),
                    isTranslating = false
                )
        }
        refreshTranslationAvailability()
    }
}

internal fun OcrViewModel.clearStandaloneImage() {
    if (_uiState.value.isInteractionLocked()) return
    val currentPath = _uiState.value.imagePath
    if (_uiState.value.comicId != null) return
    if (!currentPath.isNullOrBlank()) {
        runCatching {
            val file = File(currentPath)
            if (file.exists() && file.isFile && file.parentFile?.name == "ocr_imports") {
                file.delete()
            }
        }
    }
    savedStateHandle["imagePath"] = null
    savedStateHandle["comicId"] = null
    savedStateHandle["page"] = -1
    _uiState.update {
        it.clearImageScenarioState()
            .clearManualScenarioState()
            .clearTransientFeedback()
            .copy(
                imagePath = null,
                comicId = null,
                page = -1,
                imageBitmap = null,
                isTranslating = false
            )
    }
    refreshTranslationAvailabilityAsync()
}

internal fun OcrViewModel.copyStandaloneImageToStorage(uri: Uri): File? {
    val storageDir = File(context.filesDir, "ocr_imports").apply { mkdirs() }
    val extension = runCatching {
        context.contentResolver.getType(uri)
            ?.substringAfterLast('/', "")
            ?.substringBefore(';')
            ?.takeIf { it.isNotBlank() }
    }.getOrNull()?.let { ".$it" } ?: ".img"
    val target = File(storageDir, "ocr_${System.currentTimeMillis()}$extension")
    return runCatching {
        context.contentResolver.openInputStream(uri)?.use { input ->
            target.outputStream().use { output -> input.copyTo(output) }
        } ?: return null
        target
    }.getOrNull()
}
