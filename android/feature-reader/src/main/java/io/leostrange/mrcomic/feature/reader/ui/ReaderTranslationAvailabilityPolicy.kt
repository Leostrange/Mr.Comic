package io.leostrange.mrcomic.feature.reader.ui

internal fun readerPhraseTranslationAvailable(
    canTranslateAsPhrase: Boolean,
    offlineAvailable: Boolean,
    networkAvailable: Boolean,
    onlineTranslationAvailable: Boolean
): Boolean = canTranslateAsPhrase && (
    offlineAvailable || (networkAvailable && onlineTranslationAvailable)
)
