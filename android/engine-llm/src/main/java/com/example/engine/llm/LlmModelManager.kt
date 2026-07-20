package com.example.engine.llm

import android.content.Context
import android.util.Log
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.withContext
import java.io.File
import java.net.HttpURLConnection
import java.net.URL
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Manages downloading, storing, and querying LLM model files.
 *
 * Models are stored in the app's internal files directory under `llm_models/`.
 * Download progress is exposed as a [StateFlow] for UI binding.
 */
@Singleton
class LlmModelManager @Inject constructor(
    @ApplicationContext private val context: Context
) {
    private val modelsDir: File
        get() = File(context.filesDir, "llm_models").also { it.mkdirs() }

    private val _downloadState = MutableStateFlow<LlmDownloadState>(LlmDownloadState.Idle)
    val downloadState: StateFlow<LlmDownloadState> = _downloadState

    /** Returns the local file for a model, or null if not downloaded. */
    fun getModelFile(model: LlmModelInfo): File? {
        val file = File(modelsDir, model.fileName)
        return file.takeIf { it.exists() && it.length() > 0 }
    }

    /** Checks if a model is downloaded. */
    fun isModelDownloaded(model: LlmModelInfo): Boolean {
        val file = getModelFile(model)
        return file != null && file.length() >= model.sizeBytes * 0.9 // allow 10% tolerance
    }

    /** Returns all downloaded models. */
    fun getDownloadedModels(): List<LlmModelInfo> {
        return LlmModelInfo.AVAILABLE_MODELS.filter { isModelDownloaded(it) }
    }

    /** Returns the preferred model (first downloaded, or the default). */
    fun getPreferredModel(): LlmModelInfo? {
        val downloaded = getDownloadedModels()
        return downloaded.firstOrNull() ?: LlmModelInfo.AVAILABLE_MODELS.firstOrNull()
    }

    /**
     * Download a model file. Progress is reported via [downloadState].
     * This is a cancellable operation — set [downloadState] to [LlmDownloadState.Cancelled]
     * to interrupt the download.
     */
    suspend fun downloadModel(model: LlmModelInfo) = withContext(Dispatchers.IO) {
        val targetFile = File(modelsDir, model.fileName)
        val tempFile = File(modelsDir, "${model.fileName}.tmp")

        _downloadState.value = LlmDownloadState.Downloading(model, 0f)

        try {
            val url = URL(model.downloadUrl)
            val conn = url.openConnection() as HttpURLConnection
            conn.connectTimeout = 30_000
            conn.readTimeout = 60_000
            conn.setRequestProperty("User-Agent", "MrComic-Android/1.0")

            // Resume from temp file if it exists
            val existingBytes = if (tempFile.exists()) tempFile.length() else 0L
            if (existingBytes > 0) {
                conn.setRequestProperty("Range", "bytes=$existingBytes-")
            }

            conn.connect()
            val responseCode = conn.responseCode

            if (responseCode !in 200..299 && responseCode != 206) {
                _downloadState.value = LlmDownloadState.Error("HTTP $responseCode")
                return@withContext
            }

            val totalBytes = conn.contentLength.toLong() + existingBytes
            val inputStream = conn.inputStream

            tempFile.outputStream().use { out ->
                if (existingBytes > 0) {
                    // Append to existing temp file
                    out.channel.position(existingBytes)
                }
                val buffer = ByteArray(8192)
                var downloaded = existingBytes
                var bytesRead: Int

                while (inputStream.read(buffer).also { bytesRead = it } != -1) {
                    out.write(buffer, 0, bytesRead)
                    downloaded += bytesRead
                    val progress = if (totalBytes > 0) downloaded.toFloat() / totalBytes else 0f
                    _downloadState.value = LlmDownloadState.Downloading(model, progress.coerceIn(0f, 1f))

                    if (_downloadState.value is LlmDownloadState.Cancelled) {
                        inputStream.close()
                        return@withContext
                    }
                }
            }

            inputStream.close()

            // Rename temp file to final name
            if (targetFile.exists()) targetFile.delete()
            tempFile.renameTo(targetFile)

            _downloadState.value = LlmDownloadState.Completed(model)
            Log.i("LlmModelManager", "Model downloaded: ${model.name} -> ${targetFile.absolutePath}")

        } catch (e: Exception) {
            Log.e("LlmModelManager", "Download failed for ${model.name}", e)
            _downloadState.value = LlmDownloadState.Error(e.message ?: "Download failed")
        }
    }

    /** Cancel the current download. */
    fun cancelDownload() {
        val current = _downloadState.value
        if (current is LlmDownloadState.Downloading) {
            _downloadState.value = LlmDownloadState.Cancelled(current.model)
        }
    }

    /** Delete a downloaded model. */
    fun deleteModel(model: LlmModelInfo) {
        val file = File(modelsDir, model.fileName)
        if (file.exists()) file.delete()
        val tempFile = File(modelsDir, "${model.fileName}.tmp")
        if (tempFile.exists()) tempFile.delete()
    }

    /** Total size of all downloaded models in bytes. */
    fun totalDownloadedSize(): Long {
        return modelsDir.listFiles()?.sumOf { it.length() } ?: 0L
    }
}

sealed class LlmDownloadState {
    data object Idle : LlmDownloadState()
    data class Downloading(val model: LlmModelInfo, val progress: Float) : LlmDownloadState()
    data class Completed(val model: LlmModelInfo) : LlmDownloadState()
    data class Error(val message: String) : LlmDownloadState()
    data class Cancelled(val model: LlmModelInfo) : LlmDownloadState()
}
