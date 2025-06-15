package com.mrcomic.viewmodel

import android.graphics.Bitmap
import android.net.Uri
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.mrcomic.core.ImageProcessor
import com.mrcomic.core.TranslationManager
import com.mrcomic.core.TranslationResult
import com.mrcomic.plugins.ocr.OcrPlugin
import com.mrcomic.plugins.ocr.OcrResult
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.launch
import javax.inject.Inject

/**
 * ViewModel для управления переводом
 */
@HiltViewModel
class TranslationViewModel @Inject constructor(
    private val imageProcessor: ImageProcessor,
    private val translationManager: TranslationManager,
    private val ocrPlugin: OcrPlugin
) : ViewModel() {
    
    private val _isLoading = MutableLiveData<Boolean>()
    val isLoading: LiveData<Boolean> = _isLoading
    
    private val _currentImage = MutableLiveData<Bitmap?>()
    val currentImage: LiveData<Bitmap?> = _currentImage
    
    private val _ocrResults = MutableLiveData<List<OcrResult>>()
    val ocrResults: LiveData<List<OcrResult>> = _ocrResults
    
    private val _translationResults = MutableLiveData<List<TranslationResult>>()
    val translationResults: LiveData<List<TranslationResult>> = _translationResults
    
    private val _error = MutableLiveData<String?>()
    val error: LiveData<String?> = _error
    
    private val _savedTranslations = MutableLiveData<List<TranslationResult>>()
    val savedTranslations: LiveData<List<TranslationResult>> = _savedTranslations
    
    init {
        initializeOcr()
    }
    
    /**
     * Инициализация OCR плагина
     */
    private fun initializeOcr() {
        viewModelScope.launch {
            try {
                val success = ocrPlugin.initialize()
                if (!success) {
                    _error.value = "Failed to initialize OCR engine"
                }
            } catch (e: Exception) {
                _error.value = "OCR initialization error: ${e.message}"
            }
        }
    }
    
    /**
     * Загрузка изображения из URI
     */
    suspend fun loadImageFromUri(uri: Uri) {
        _isLoading.value = true
        try {
            val bitmap = imageProcessor.loadImageFromUri(uri)
            if (bitmap != null) {
                val processedBitmap = imageProcessor.preprocessForOcr(bitmap)
                _currentImage.value = processedBitmap
            } else {
                _error.value = "Failed to load image"
            }
        } catch (e: Exception) {
            _error.value = "Error loading image: ${e.message}"
        } finally {
            _isLoading.value = false
        }
    }
    
    /**
     * Загрузка изображения из Bitmap
     */
    suspend fun loadImageFromBitmap(bitmap: Bitmap) {
        _isLoading.value = true
        try {
            val processedBitmap = imageProcessor.preprocessForOcr(bitmap)
            _currentImage.value = processedBitmap
        } catch (e: Exception) {
            _error.value = "Error processing image: ${e.message}"
        } finally {
            _isLoading.value = false
        }
    }
    
    /**
     * Перевод текущего изображения
     */
    fun translateCurrentImage(fromLang: String, toLang: String, useOffline: Boolean) {
        val bitmap = _currentImage.value
        if (bitmap == null) {
            _error.value = "No image selected"
            return
        }
        
        viewModelScope.launch {
            _isLoading.value = true
            try {
                // Выполнение OCR
                val ocrResult = ocrPlugin.recognizeText(bitmap, fromLang)
                _ocrResults.value = listOf(ocrResult)
                
                if (ocrResult.error != null) {
                    _error.value = "OCR error: ${ocrResult.error}"
                    return@launch
                }
                
                // Сегментация текстовых блоков
                val textBlocks = imageProcessor.segmentTextBlocks(bitmap)
                val textsToTranslate = if (ocrResult.textBlocks.isNotEmpty()) {
                    ocrResult.textBlocks.map { it.text }
                } else {
                    listOf(ocrResult.text)
                }
                
                // Выполнение перевода
                val translationResults = translationManager.translateBatch(
                    textBlocks = textsToTranslate,
                    fromLang = fromLang,
                    toLang = toLang,
                    useOffline = useOffline
                )
                
                _translationResults.value = translationResults
                
                // Проверка на ошибки перевода
                val errors = translationResults.mapNotNull { it.error }.distinct()
                if (errors.isNotEmpty()) {
                    _error.value = "Translation errors: ${errors.joinToString(", ")}"
                }
                
            } catch (e: Exception) {
                _error.value = "Translation failed: ${e.message}"
            } finally {
                _isLoading.value = false
            }
        }
    }
    
    /**
     * Сохранение результата перевода
     */
    fun saveTranslation(result: TranslationResult) {
        viewModelScope.launch {
            try {
                val currentSaved = _savedTranslations.value?.toMutableList() ?: mutableListOf()
                currentSaved.add(result)
                _savedTranslations.value = currentSaved
                
                // Здесь можно добавить сохранение в базу данных
                
            } catch (e: Exception) {
                _error.value = "Failed to save translation: ${e.message}"
            }
        }
    }
    
    /**
     * Удаление сохраненного перевода
     */
    fun removeSavedTranslation(result: TranslationResult) {
        viewModelScope.launch {
            try {
                val currentSaved = _savedTranslations.value?.toMutableList() ?: mutableListOf()
                currentSaved.remove(result)
                _savedTranslations.value = currentSaved
                
            } catch (e: Exception) {
                _error.value = "Failed to remove translation: ${e.message}"
            }
        }
    }
    
    /**
     * Очистка ошибки
     */
    fun clearError() {
        _error.value = null
    }
    
    /**
     * Очистка результатов
     */
    fun clearResults() {
        _translationResults.value = emptyList()
        _ocrResults.value = emptyList()
        _currentImage.value = null
    }
    
    /**
     * Экспорт результатов в текстовый файл
     */
    fun exportResults(): String {
        val results = _translationResults.value ?: return ""
        
        val exportText = buildString {
            appendLine("=== Mr.Comic Translation Results ===")
            appendLine("Generated: ${java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(java.util.Date())}")
            appendLine()
            
            results.forEachIndexed { index, result ->
                appendLine("--- Translation ${index + 1} ---")
                appendLine("Original (${result.fromLanguage}): ${result.originalText}")
                appendLine("Translated (${result.toLanguage}): ${result.translatedText}")
                appendLine("Provider: ${result.provider}")
                appendLine("Confidence: ${(result.confidence * 100).toInt()}%")
                appendLine("Mode: ${if (result.isOffline) "Offline" else "Online"}")
                if (result.error != null) {
                    appendLine("Error: ${result.error}")
                }
                appendLine()
            }
        }
        
        return exportText
    }
    
    override fun onCleared() {
        super.onCleared()
        ocrPlugin.cleanup()
    }
}

