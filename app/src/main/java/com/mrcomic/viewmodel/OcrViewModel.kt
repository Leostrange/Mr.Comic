package com.example.mrcomic.viewmodel

import android.app.Application
import android.graphics.Bitmap
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.example.mrcomic.data.OcrResult
import com.example.mrcomic.utils.OcrProcessor
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch

class OcrViewModel(app: Application) : AndroidViewModel(app) {
    private val _ocrResults = MutableStateFlow<List<OcrResult>>(emptyList())
    val ocrResults: StateFlow<List<OcrResult>> = _ocrResults

    fun processOcr(comicId: Int, pageIndex: Int, image: Bitmap) {
        viewModelScope.launch {
            val text = OcrProcessor.processImage(image)
            val result = OcrResult(comicId = comicId, pageIndex = pageIndex, text = text)
            _ocrResults.value = _ocrResults.value + result
            // Сохранить в БД при необходимости
        }
    }
} 