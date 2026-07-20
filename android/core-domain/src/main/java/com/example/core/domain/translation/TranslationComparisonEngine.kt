package com.example.core.domain.translation

import android.util.Log
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Runs the same text through multiple translation engines and collects
 * results for side-by-side comparison.
 *
 * This is useful for:
 * - Comparing ML Kit vs DeepL vs Google quality
 * - Letting users pick the best translation
 * - Building a personal preference model over time
 */
@Singleton
class TranslationComparisonEngine @Inject constructor(
    private val mlKitEngine: MlKitTranslatorEngine,
    private val selector: TranslationEngineSelector
) {
    /**
     * Translate the same text through all available engines.
     * Returns results in order of availability.
     */
    suspend fun compare(
        text: String,
        sourceLang: String,
        targetLang: String
    ): List<ComparisonResult> = coroutineScope {
        val engines = mutableListOf<Pair<String, TranslatorEngine>>()

        // ML Kit (always available)
        engines.add("ML Kit" to mlKitEngine)

        // Online providers (if configured)
        selector.onlineEngine?.let { engines.add("Online" to it) }

        // NLLB (if model downloaded)
        selector.nllbEngine?.let { engines.add("NLLB" to it) }

        // Run all in parallel
        val results = engines.map { (name, engine) ->
            async {
                try {
                    val translated = engine.translate(text, sourceLang, targetLang)
                    ComparisonResult(
                        engineName = name,
                        translatedText = translated,
                        success = true
                    )
                } catch (e: Exception) {
                    Log.w("TranslationComparison", "$name failed: ${e.message}")
                    ComparisonResult(
                        engineName = name,
                        translatedText = "",
                        success = false,
                        error = e.message
                    )
                }
            }
        }.awaitAll()

        results.filter { it.success }
    }
}

data class ComparisonResult(
    val engineName: String,
    val translatedText: String,
    val success: Boolean,
    val error: String? = null
)
