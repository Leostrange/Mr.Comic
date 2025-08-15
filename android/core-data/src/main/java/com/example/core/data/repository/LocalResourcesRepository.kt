package com.example.core.data.repository

import android.content.Context
import android.net.Uri
import androidx.documentfile.provider.DocumentFile
import com.example.core.model.LocalDictionary
import com.example.core.model.LocalModel
import com.example.core.model.ModelType
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.util.UUID
import javax.inject.Inject

interface LocalResourcesRepository {
	suspend fun listDictionaries(): List<LocalDictionary>
	suspend fun listModels(): List<LocalModel>
	suspend fun setCustomRoots(dictionariesRoot: String?, modelsRoot: String?)
	suspend fun getRoots(): Pair<String, String>
}

class LocalResourcesRepositoryImpl @Inject constructor(
	private val context: Context,
) : LocalResourcesRepository {
	// Default roots: app-internal files dir
	@Volatile private var dictionariesRootInternal: String? = null
	@Volatile private var modelsRootInternal: String? = null

	override suspend fun setCustomRoots(dictionariesRoot: String?, modelsRoot: String?) {
		dictionariesRootInternal = dictionariesRoot
		modelsRootInternal = modelsRoot
	}

	override suspend fun getRoots(): Pair<String, String> = withContext(Dispatchers.IO) {
		val base = context.filesDir.absolutePath
		val dict = dictionariesRootInternal ?: "$base/local_resources/dictionaries"
		val models = modelsRootInternal ?: "$base/local_resources/llm"
		Pair(dict, models)
	}

	override suspend fun listDictionaries(): List<LocalDictionary> = withContext(Dispatchers.IO) {
		val (dictRoot, _) = getRoots()
		val rootDoc = DocumentFile.fromFile(java.io.File(dictRoot))
		if (!rootDoc.exists()) return@withContext emptyList()
		rootDoc.listFiles()
			.filter { it.isDirectory || it.name?.endsWith(".zip", true) == true }
			.mapNotNull { file ->
				val name = file.name ?: return@mapNotNull null
				val id = UUID.nameUUIDFromBytes(name.toByteArray()).toString()
				LocalDictionary(
					id = id,
					name = name,
					languages = emptyList(),
					version = null,
					path = file.uri.toString()
				)
			}
	}

	override suspend fun listModels(): List<LocalModel> = withContext(Dispatchers.IO) {
		val (_, modelsRoot) = getRoots()
		val rootDoc = DocumentFile.fromFile(java.io.File(modelsRoot))
		if (!rootDoc.exists()) return@withContext emptyList()
		rootDoc.listFiles()
			.filter { it.isFile || it.isDirectory }
			.mapNotNull { file ->
				val name = file.name ?: return@mapNotNull null
				val id = UUID.nameUUIDFromBytes(name.toByteArray()).toString()
				val type = when {
					name.endsWith(".gguf", true) -> ModelType.GGUF
					name.endsWith(".onnx", true) -> ModelType.ONNX
					else -> ModelType.OTHER
				}
				LocalModel(
					id = id,
					name = name,
					type = type,
					filePath = file.uri.toString(),
					sizeBytes = null
				)
			}
	}
}