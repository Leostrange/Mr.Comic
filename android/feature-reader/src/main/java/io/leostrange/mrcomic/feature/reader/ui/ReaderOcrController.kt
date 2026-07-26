package io.leostrange.mrcomic.feature.reader.ui

import android.content.Context
import android.util.Log
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceTier
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * Handles OCR page capture: renders the current page bitmap to a temp file
 * and emits the path via [ocrPagePath] for the OCR screen to consume.
 */
internal class ReaderOcrController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val pagePreloader: PagePreloader,
    private val renderProfile: io.leostrange.mrcomic.engine.formats.base.RenderDeviceProfile,
    private val context: Context,
    private val _ocrPagePath: MutableSharedFlow<OcrLaunchRequest>,
    private val getPage: (Int, Int) -> android.graphics.Bitmap?,
    private val formatReader: () -> FormatReader?
) {
    fun requestOcr() {
        viewModelScope.launch {
            val pageIndex = _uiState.value.currentPage
            val comicId = _uiState.value.comic?.id
            val reader = formatReader() ?: return@launch
            val preferredOcrQualityTier = when (renderProfile.tier) {
                RenderDeviceTier.HIGH_END -> 3
                RenderDeviceTier.MID_RANGE -> 2
                else -> 1
            }
            val bitmap = getPage(pageIndex, preferredOcrQualityTier)
                ?: getPage(pageIndex, 3)
                ?: getPage(pageIndex, 2)
                ?: getPage(pageIndex, 1)
                ?: pagePreloader.loadPage(reader, pageIndex, preferredOcrQualityTier)
                ?: pagePreloader.loadPage(reader, pageIndex, 3)
                ?: pagePreloader.loadPage(reader, pageIndex, 2)
                ?: pagePreloader.loadPage(reader, pageIndex, 1)
                ?: return@launch
            try {
                if (formatReader() !== reader || _uiState.value.comic?.id != comicId || _uiState.value.currentPage != pageIndex) {
                    return@launch
                }
                val file = java.io.File.createTempFile(
                    "ocr_page_${comicId ?: "standalone"}_${pageIndex}_",
                    ".png",
                    context.cacheDir
                )
                withContext(Dispatchers.IO) {
                    file.outputStream().use { out ->
                        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, out)
                    }
                }
                _ocrPagePath.emit(
                    OcrLaunchRequest(
                        imagePath = file.absolutePath,
                        comicId = comicId,
                        page = pageIndex
                    )
                )
            } catch (e: Exception) {
                Log.e("ReaderViewModel", "Failed to save page for OCR", e)
            }
        }
    }
}
