package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode

/**
 * Pure helper function to determine if TTS should be restarted from beginning after page change.
 */
fun shouldRestartTtsFromBeginning(
    pendingTtsRestartTargetPage: Int?,
    currentPage: Int,
    currentHtmlContent: String?
): Boolean = pendingTtsRestartTargetPage == currentPage && !currentHtmlContent.isNullOrBlank()

@Composable
internal fun ReaderTtsSyncEffect(
    ttsController: ReaderTextToSpeechController,
    currentPage: Int,
    currentHtmlContent: String?,
    ttsVoiceName: String?,
    ttsSpeed: Float,
    ttsPitch: Float,
    ttsVolume: Float,
    ttsSleepTimerModeStored: String?,
    comicTitle: String?,
    chapterTitle: String?,
    pendingTtsRestartTargetPage: Int?,
    onClearPendingTtsRestartTargetPage: () -> Unit
) {
    LaunchedEffect(
        currentPage,
        currentHtmlContent,
        ttsVoiceName,
        ttsSpeed,
        ttsPitch,
        ttsVolume,
        ttsSleepTimerModeStored,
        comicTitle,
        chapterTitle
    ) {
        ttsController.updateContent(
            rawHtml = currentHtmlContent,
            preferredVoiceName = ttsVoiceName,
            speed = ttsSpeed,
            pitch = ttsPitch,
            volume = ttsVolume,
            sleepTimerMode = ReaderTtsSleepTimerMode.fromStored(ttsSleepTimerModeStored),
            title = comicTitle,
            chapterTitle = chapterTitle
        )
        if (shouldRestartTtsFromBeginning(pendingTtsRestartTargetPage, currentPage, currentHtmlContent)) {
            onClearPendingTtsRestartTargetPage()
            ttsController.restartFromBeginning()
        }
    }
}
