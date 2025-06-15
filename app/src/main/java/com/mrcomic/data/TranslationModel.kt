package com.example.mrcomic.data

data class TranslationModel(
    val id: String,
    val name: String,
    val filePath: String // Путь к ONNX-модели
) 