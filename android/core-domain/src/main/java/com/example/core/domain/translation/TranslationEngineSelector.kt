package com.example.core.domain.translation

import android.util.Log
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Selects the best available translation engine based on user preferences
 * and runtime conditions.
 *
 * Engine priority (AUTO mode):
 * 1. NLLB (best quality offline, if model downloaded)
 * 2. ML Kit (fast, always available)
 * 3. Online providers (if network available + configured)
 *
 * @see TranslationEngineMode
 */
@Singleton
class TranslationEngineSelector @Inject constructor(
    private val mlKitEngine: MlKitTranslatorEngine,
    private val cachingEngine: CachingTranslatorEngine
) {
    var nllbEngine: TranslatorEngine? = null
    var onlineEngine: TranslatorEngine? = null
    var mode: TranslationEngineMode = TranslationEngineMode.AUTO

    /**
     * Select the best engine for the given language pair.
     * Returns a [TranslatorEngine] that is ready to use.
     */
    suspend fun selectEngine(
        sourceLang: String,
        targetLang: String
    ): TranslatorEngine {
        return when (mode) {
            TranslationEngineMode.AUTO -> selectAuto(sourceLang, targetLang)
            TranslationEngineMode.ML_KIT -> cachingEngine
            TranslationEngineMode.NLLB -> selectNllbOrFallback(sourceLang, targetLang)
            TranslationEngineMode.ONLINE -> selectOnlineOrFallback(sourceLang, targetLang)
            TranslationEngineMode.LLM_POLISH -> selectNllbOrFallback(sourceLang, targetLang)
        }
    }

    private suspend fun selectAuto(
        sourceLang: String,
        targetLang: String
    ): TranslatorEngine {
        // Try NLLB first (best quality)
        nllbEngine?.let { nllb ->
            if (nllb.isLanguagePairAvailable(sourceLang, targetLang)) {
                Log.d("EngineSelector", "AUTO → NLLB")
                return nllb
            }
        }

        // Try ML Kit (fast, always available)
        if (mlKitEngine.isLanguagePairAvailable(sourceLang, targetLang)) {
            Log.d("EngineSelector", "AUTO → ML Kit")
            return cachingEngine
        }

        // Try online
        onlineEngine?.let { online ->
            if (online.isLanguagePairAvailable(sourceLang, targetLang)) {
                Log.d("EngineSelector", "AUTO → Online")
                return online
            }
        }

        // Fallback to ML Kit (may fail but will give a clear error)
        Log.d("EngineSelector", "AUTO → ML Kit (fallback)")
        return cachingEngine
    }

    private suspend fun selectNllbOrFallback(
        sourceLang: String,
        targetLang: String
    ): TranslatorEngine {
        nllbEngine?.let { nllb ->
            if (nllb.isLanguagePairAvailable(sourceLang, targetLang)) {
                return nllb
            }
        }
        // Fallback to ML Kit
        return cachingEngine
    }

    private suspend fun selectOnlineOrFallback(
        sourceLang: String,
        targetLang: String
    ): TranslatorEngine {
        onlineEngine?.let { online ->
            if (online.isLanguagePairAvailable(sourceLang, targetLang)) {
                return online
            }
        }
        // Fallback to ML Kit
        return cachingEngine
    }

    /**
     * Get the name of the engine that would be selected for display in UI.
     */
    suspend fun getEngineName(sourceLang: String, targetLang: String): String {
        return selectEngine(sourceLang, targetLang).engineName
    }
}

/**
 * Translation engine selection mode.
 */
enum class TranslationEngineMode {
    /** Automatically select the best available engine. */
    AUTO,
    /** Force ML Kit (fast, lower quality). */
    ML_KIT,
    /** Force NLLB-200 (best quality, requires model download). */
    NLLB,
    /** Force online providers (requires network + API keys). */
    ONLINE,
    /** Use NLLB for translation, then LLM for literary polish. */
    LLM_POLISH
}
