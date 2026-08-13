package io.leostrange.mrcomic.engine.llm.llama

import android.content.Context
import android.util.Log
import io.leostrange.mrcomic.engine.llm.LlmEngine
import io.leostrange.mrcomic.engine.llm.LlmGenerationConfig
import io.leostrange.mrcomic.engine.llm.LlmModelInfo
import io.leostrange.mrcomic.engine.llm.LlmModelManager
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * LLM engine powered by llama.cpp for on-device inference.
 *
 * Supports GGUF quantized models (Q4_K_M, Q5_K_M, etc.) running on CPU
 * with optional GPU acceleration via Vulkan.
 *
 * This engine is used for:
 * - "LLM Polish" mode: improving translation literary quality
 * - Rich text explanations with cultural context
 * - Multi-turn conversations for complex queries
 *
 * Model requirements:
 * - Qwen2.5-1.5B Q4: ~1.2GB, ~15 tok/s on Snapdragon 8 Gen 2
 * - Gemma 2B IT Q4: ~1.5GB, ~12 tok/s
 *
 * Native library: libllama.so (llama.cpp compiled for Android arm64-v8a)
 *
 * @see <a href="https://github.com/ggerganov/llama.cpp">llama.cpp on GitHub</a>
 */
@Singleton
class LlamaCppEngine @Inject constructor(
    @ApplicationContext private val context: Context,
    private val modelManager: LlmModelManager
) : LlmEngine {

    private var nativeHandle: Long = 0L
    private var isModelLoaded = false

    /** Whether the native library is available. */
    private val isNativeAvailable: Boolean
        get() = try {
            System.loadLibrary("llama")
            true
        } catch (e: UnsatisfiedLinkError) {
            Log.w("LlamaCppEngine", "Native library not available: ${e.message}")
            false
        }

    override suspend fun isReady(): Boolean = isModelLoaded && nativeHandle != 0L

    override suspend fun isModelAvailable(): Boolean {
        val model = getPreferredModel() ?: return false
        return modelManager.isModelDownloaded(model)
    }

    override suspend fun loadModel(): Boolean = withContext(Dispatchers.IO) {
        if (isModelLoaded) return@withContext true

        val model = getPreferredModel() ?: return@withContext false
        val modelFile = modelManager.getModelFile(model) ?: return@withContext false

        if (!isNativeAvailable) {
            Log.w("LlamaCppEngine", "Cannot load model: native library not available")
            return@withContext false
        }

        try {
            nativeHandle = nativeLoadModel(
                modelPath = modelFile.absolutePath,
                contextSize = DEFAULT_CONTEXT_SIZE,
                threads = DEFAULT_THREADS,
                useGpu = false // CPU-only for now
            )
            isModelLoaded = nativeHandle != 0L
            if (isModelLoaded) {
                Log.i("LlamaCppEngine", "Model loaded: ${model.name}")
            }
            isModelLoaded
        } catch (e: Exception) {
            Log.e("LlamaCppEngine", "Failed to load model", e)
            false
        }
    }

    override suspend fun unloadModel() {
        if (nativeHandle != 0L) {
            try {
                nativeFreeModel(nativeHandle)
            } catch (e: Exception) {
                Log.w("LlamaCppEngine", "Error freeing model", e)
            }
            nativeHandle = 0L
            isModelLoaded = false
        }
    }

    override fun generate(prompt: String, config: LlmGenerationConfig): Flow<String> = flow {
        if (!isReady()) {
            emit("[LLM not loaded]")
            return@flow
        }

        try {
            val tokens = nativeTokenize(nativeHandle, prompt)
            nativeSetGenerationConfig(
                nativeHandle,
                maxTokens = config.maxTokens,
                temperature = config.temperature,
                topP = config.topP,
                topK = config.topK
            )

            // Stream tokens one by one
            var token: Int
            while (true) {
                token = nativeGenerateNextToken(nativeHandle)
                if (token == -1) break // EOS

                val text = nativeDetokenize(nativeHandle, token)
                if (text.isNotEmpty()) {
                    emit(text)
                }
            }
        } catch (e: Exception) {
            Log.e("LlamaCppEngine", "Generation failed", e)
            emit("[Error: ${e.message}]")
        }
    }

    override suspend fun generateText(prompt: String, config: LlmGenerationConfig): String {
        if (!isReady()) return "[LLM not loaded]"

        val sb = StringBuilder()
        generate(prompt, config).collect { sb.append(it) }
        return sb.toString()
    }

    /**
     * Get the preferred model for LLM polish.
     * Prefers Qwen2.5-1.5B for translation tasks.
     */
    fun getPreferredModel(): LlmModelInfo? {
        // Check downloaded models first
        val downloaded = modelManager.getDownloadedModels()
        return downloaded.firstOrNull()
            ?: LlmModelInfo.AVAILABLE_MODELS.firstOrNull()
    }

    // ─── Native JNI methods ───

    /**
     * Load a GGUF model file.
     * @return Native model handle, or 0 on failure.
     */
    private external fun nativeLoadModel(
        modelPath: String,
        contextSize: Int,
        threads: Int,
        useGpu: Boolean
    ): Long

    /** Free a loaded model. */
    private external fun nativeFreeModel(handle: Long)

    /** Tokenize a string into token IDs. */
    private external fun nativeTokenize(handle: Long, text: String): IntArray

    /** Detokenize a token ID back to text. */
    private external fun nativeDetokenize(handle: Long, tokenId: Int): String

    /** Set generation parameters. */
    private external fun nativeSetGenerationConfig(
        handle: Long,
        maxTokens: Int,
        temperature: Float,
        topP: Float,
        topK: Int
    )

    /**
     * Generate the next token.
     * @return Token ID, or -1 for EOS.
     */
    private external fun nativeGenerateNextToken(handle: Long): Int

    /** Reset the KV cache (for new conversation). */
    private external fun nativeResetState(handle: Long)

    companion object {
        const val DEFAULT_CONTEXT_SIZE = 2048
        const val DEFAULT_THREADS = 4
    }
}
