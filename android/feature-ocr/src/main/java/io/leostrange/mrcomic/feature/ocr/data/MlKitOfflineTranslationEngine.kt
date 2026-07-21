package io.leostrange.mrcomic.feature.ocr.data

import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.util.runCatchingResult
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationProviderType
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationResult
import com.google.mlkit.common.model.RemoteModelManager
import com.google.mlkit.nl.translate.TranslateRemoteModel
import com.google.mlkit.nl.translate.Translation
import com.google.mlkit.nl.translate.TranslatorOptions
import kotlinx.coroutines.tasks.await
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class MlKitOfflineTranslationEngine @Inject constructor() : OfflineTranslationEngine {

    private val remoteModelManager = RemoteModelManager.getInstance()

    override suspend fun isLanguagePairAvailable(
        sourceLanguage: String,
        targetLanguage: String
    ): Result<Boolean> = runCatchingResult {
        val source = requireNotNull(MlKitTranslationSupport.toTranslateLanguage(sourceLanguage)) {
            "Unsupported offline source language: $sourceLanguage"
        }
        val target = requireNotNull(MlKitTranslationSupport.toTranslateLanguage(targetLanguage)) {
            "Unsupported offline target language: $targetLanguage"
        }

        val downloadedModels = remoteModelManager
            .getDownloadedModels(TranslateRemoteModel::class.java)
            .await()
            .map { it.language }
            .toSet()

        source in downloadedModels && target in downloadedModels
    }

    override suspend fun prepareLanguagePair(
        sourceLanguage: String,
        targetLanguage: String
    ): Result<Boolean> = runCatchingResult {
        val source = requireNotNull(MlKitTranslationSupport.toTranslateLanguage(sourceLanguage)) {
            "Unsupported offline source language: $sourceLanguage"
        }
        val target = requireNotNull(MlKitTranslationSupport.toTranslateLanguage(targetLanguage)) {
            "Unsupported offline target language: $targetLanguage"
        }

        val translator = Translation.getClient(
            TranslatorOptions.Builder()
                .setSourceLanguage(source)
                .setTargetLanguage(target)
                .build()
        )

        try {
            translator.downloadModelIfNeeded().await()
            true
        } finally {
            translator.close()
        }
    }

    override suspend fun translate(
        request: TranslationRequest
    ): Result<TranslationResult> = runCatchingResult {
        require(request.mode == TranslationMode.OFFLINE_MT) {
            "OfflineTranslationEngine supports only OFFLINE_MT requests"
        }

        val source = requireNotNull(MlKitTranslationSupport.toTranslateLanguage(request.sourceLanguage)) {
            "Unsupported offline source language: ${request.sourceLanguage}"
        }
        val target = requireNotNull(MlKitTranslationSupport.toTranslateLanguage(request.targetLanguage)) {
            "Unsupported offline target language: ${request.targetLanguage}"
        }

        val translator = Translation.getClient(
            TranslatorOptions.Builder()
                .setSourceLanguage(source)
                .setTargetLanguage(target)
                .build()
        )

        try {
            // The translate action is already an explicit user action, so it is safe to
            // materialize the required on-device models here when they are missing.
            translator.downloadModelIfNeeded().await()
            val translatedText = translator.translate(request.text).await()
            TranslationResult(
                requestId = request.id,
                translatedText = translatedText,
                provider = TranslationProviderType.ML_KIT,
                isOffline = true,
                cached = false
            )
        } finally {
            translator.close()
        }
    }
}
