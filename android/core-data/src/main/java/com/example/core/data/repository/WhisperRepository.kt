package com.example.core.data.repository

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.withContext
import java.io.File
import javax.inject.Inject

interface WhisperRepository {
    val isModelDownloaded: Flow<Boolean>
    suspend fun downloadModel()
}

class WhisperRepositoryImpl @Inject constructor(
    @ApplicationContext private val context: Context,
    private val ioDispatcher: CoroutineDispatcher = Dispatchers.IO
) : WhisperRepository {

    private val modelFile: File
        get() = File(context.filesDir, "whisper.tflite")

    override val isModelDownloaded: Flow<Boolean> = flow {
        emit(modelFile.exists())
    }

    override suspend fun downloadModel() {
        withContext(ioDispatcher) {
            if (!modelFile.exists()) {
                modelFile.parentFile?.mkdirs()
                modelFile.writeBytes(byteArrayOf())
            }
        }
    }
}
