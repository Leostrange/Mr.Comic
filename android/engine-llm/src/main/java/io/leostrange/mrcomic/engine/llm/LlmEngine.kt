package io.leostrange.mrcomic.engine.llm

import kotlinx.coroutines.flow.Flow

/**
 * Interface for on-device LLM inference.
 *
 * Implementations wrap a local model (e.g. Gemma 2B via MediaPipe or llama.cpp)
 * and provide streaming text generation for translation and explanation tasks.
 */
interface LlmEngine {

    /** Whether a model is loaded and ready for inference. */
    suspend fun isReady(): Boolean

    /** Whether any model is downloaded and available for loading. */
    suspend fun isModelAvailable(): Boolean

    /**
     * Load the model into memory. This may take several seconds.
     * @return true if the model was loaded successfully.
     */
    suspend fun loadModel(): Boolean

    /** Unload the model to free memory. */
    suspend fun unloadModel()

    /**
     * Generate text from a prompt. Returns a flow of token strings
     * for streaming display, or a single-element flow for batch mode.
     */
    fun generate(prompt: String, config: LlmGenerationConfig = LlmGenerationConfig()): Flow<String>

    /**
     * Generate text synchronously (collects all tokens into a single string).
     */
    suspend fun generateText(prompt: String, config: LlmGenerationConfig = LlmGenerationConfig()): String
}

/**
 * Configuration for text generation.
 */
data class LlmGenerationConfig(
    val maxTokens: Int = 512,
    val temperature: Float = 0.3f,
    val topP: Float = 0.9f,
    val topK: Int = 40,
    val stopSequences: List<String> = emptyList()
)

/**
 * Information about an available LLM model.
 */
data class LlmModelInfo(
    val id: String,
    val name: String,
    val description: String,
    val downloadUrl: String,
    val fileName: String,
    /** Approximate size in bytes. */
    val sizeBytes: Long,
    /** Quantization level, e.g. "Q4_K_M". */
    val quantization: String,
    /** Minimum RAM required in bytes. */
    val minRamBytes: Long
) {
    companion object {
        val GEMMA_2B_Q4 = LlmModelInfo(
            id = "gemma-2b-it-Q4_K_M",
            name = "Gemma 2B IT",
            description = "Google Gemma 2B Instruct — fast, good for translation and explanation",
            downloadUrl = "https://huggingface.co/google/gemma-2b-it-GGUF/resolve/main/gemma-2b-it-Q4_K_M.gguf",
            fileName = "gemma-2b-it-Q4_K_M.gguf",
            sizeBytes = 1_500_000_000L,
            quantization = "Q4_K_M",
            minRamBytes = 2_000_000_000L
        )

        val PHI3_MINI_Q4 = LlmModelInfo(
            id = "phi-3-mini-4k-Q4_K_M",
            name = "Phi-3 Mini 4K",
            description = "Microsoft Phi-3 Mini — better reasoning, slightly larger",
            downloadUrl = "https://huggingface.co/microsoft/Phi-3-mini-4k-instruct-gguf/resolve/main/Phi-3-mini-4k-instruct-q4.gguf",
            fileName = "Phi-3-mini-4k-instruct-q4.gguf",
            sizeBytes = 2_300_000_000L,
            quantization = "Q4_K_M",
            minRamBytes = 3_000_000_000L
        )

        val AVAILABLE_MODELS = listOf(GEMMA_2B_Q4, PHI3_MINI_Q4)
    }
}
