package io.leostrange.mrcomic.core.domain.translation

class TranslationBackendUnavailableException(
    val sourceLanguage: String,
    val targetLanguage: String
) : IllegalStateException(
    "No configured online translation provider and no offline model for $sourceLanguage -> $targetLanguage"
)
