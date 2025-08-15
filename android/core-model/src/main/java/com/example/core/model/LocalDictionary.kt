package com.example.core.model

import androidx.annotation.Keep

@Keep
data class LocalDictionary(
	val id: String,
	val name: String,
	val languages: List<String>,
	val version: String?,
	val path: String
)

@Keep
data class LocalModel(
	val id: String,
	val name: String,
	val type: ModelType,
	val filePath: String,
	val sizeBytes: Long? = null
)

enum class ModelType {
	GGUF,
	ONNX,
	TENSORFLOW,
	OTHER
}