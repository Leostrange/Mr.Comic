package com.example.feature.ocr.data

import com.example.core.domain.translation.LanguageDetector
import com.example.core.domain.util.Result
import com.example.core.domain.util.runCatchingResult
import com.example.core.model.LanguageCandidate
import com.example.core.model.LanguageDetectionResult
import com.google.mlkit.nl.languageid.LanguageIdentification
import com.google.mlkit.nl.languageid.LanguageIdentificationOptions
import kotlinx.coroutines.tasks.await
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class MlKitLanguageDetector @Inject constructor() : LanguageDetector {

    private val identifier by lazy {
        LanguageIdentification.getClient(
            LanguageIdentificationOptions.Builder()
                .setConfidenceThreshold(0f)
                .build()
        )
    }

    override suspend fun detectLanguage(
        text: String,
        fallbackLanguage: String?
    ): Result<LanguageDetectionResult> = runCatchingResult {
        val normalizedFallback = normalizeLanguageCode(fallbackLanguage)
        val normalizedText = text.trim()

        if (normalizedText.isBlank()) {
            return@runCatchingResult LanguageDetectionResult(
                languageCode = normalizedFallback ?: UNKNOWN_LANGUAGE,
                fallbackUsed = normalizedFallback != null
            )
        }

        val candidates = identifier.identifyPossibleLanguages(normalizedText)
            .await()
            .mapNotNull { candidate ->
                normalizeLanguageCode(candidate.languageTag)?.let { languageCode ->
                    LanguageCandidate(
                        languageCode = languageCode,
                        confidence = candidate.confidence
                    )
                }
            }
            .sortedByDescending { it.confidence ?: 0f }

        val bestCandidate = candidates.firstOrNull()
        if (bestCandidate != null) {
            return@runCatchingResult LanguageDetectionResult(
                languageCode = bestCandidate.languageCode,
                confidence = bestCandidate.confidence,
                isReliable = (bestCandidate.confidence ?: 0f) >= RELIABLE_CONFIDENCE,
                candidates = candidates
            )
        }

        LanguageDetectionResult(
            languageCode = normalizedFallback ?: UNKNOWN_LANGUAGE,
            fallbackUsed = normalizedFallback != null
        )
    }

    private fun normalizeLanguageCode(rawCode: String?): String? {
        val normalized = rawCode
            ?.trim()
            ?.replace('_', '-')
            ?.lowercase()
            ?.substringBefore('-')
            ?.trim()
            .orEmpty()

        return normalized.takeUnless { it.isBlank() || it == UNKNOWN_LANGUAGE }
    }

    private companion object {
        const val UNKNOWN_LANGUAGE = "und"
        const val RELIABLE_CONFIDENCE = 0.5f
    }
}
