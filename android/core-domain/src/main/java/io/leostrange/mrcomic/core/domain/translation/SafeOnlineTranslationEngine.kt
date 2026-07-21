package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.util.runCatchingResult
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationResult
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class SafeOnlineTranslationEngine @Inject constructor(
    private val offlineTranslationEngine: OfflineTranslationEngine
) : OnlineTranslationEngine {

    override suspend fun isConfigured(): Result<Boolean> = Result.Success(false)

    override suspend fun translate(
        request: TranslationRequest
    ): Result<TranslationResult> = runCatchingResult {
        require(request.mode == TranslationMode.ONLINE_MT) {
            "OnlineTranslationEngine supports only ONLINE_MT requests"
        }

        // We do not have a real online provider yet, so the safest thing we can do is
        // attempt the on-device path directly. The offline engine is now allowed to
        // download its model on explicit user action, which makes AUTO/ONLINE behave
        // much less like a false dead-end for non-English language pairs.
        return@runCatchingResult when (
            val fallbackResult = offlineTranslationEngine.translate(
                request.copy(mode = TranslationMode.OFFLINE_MT)
            )
        ) {
            is Result.Success -> fallbackResult.data
            is Result.Error -> throw TranslationBackendUnavailableException(
                sourceLanguage = request.sourceLanguage,
                targetLanguage = request.targetLanguage
            )
            Result.Loading -> error("Offline fallback entered loading state unexpectedly")
        }
    }
}
