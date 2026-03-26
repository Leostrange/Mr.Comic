package com.example.core.ui.tts

import android.content.Context
import android.speech.tts.TextToSpeech
import android.speech.tts.Voice
import kotlinx.coroutines.suspendCancellableCoroutine
import java.util.Locale
import kotlin.coroutines.resume

data class SystemTtsVoiceOption(
    val name: String,
    val label: String
)

fun mapSystemTtsVoiceOptions(voices: Set<Voice>?): List<SystemTtsVoiceOption> {
    val deviceLocale = Locale.getDefault()
    return voices
        .orEmpty()
        .asSequence()
        .distinctBy { it.name.lowercase(deviceLocale) }
        .sortedWith(
            compareBy<Voice>(
                { it.locale?.language.orEmpty() != deviceLocale.language },
                { it.isNetworkConnectionRequired },
                { it.locale?.displayName.orEmpty() },
                { it.name.lowercase(deviceLocale) }
            )
        )
        .map { voice ->
            val localeLabel = voice.locale
                ?.takeIf { !it.language.isNullOrBlank() }
                ?.getDisplayName(deviceLocale)
                ?.replaceFirstChar { if (it.isLowerCase()) it.titlecase(deviceLocale) else it.toString() }
                .orEmpty()
            val label = buildString {
                if (localeLabel.isNotBlank()) {
                    append(localeLabel)
                    append(" · ")
                }
                append(voice.name)
            }
            SystemTtsVoiceOption(
                name = voice.name,
                label = label
            )
        }
        .toList()
}

suspend fun loadSystemTtsVoiceOptions(context: Context): List<SystemTtsVoiceOption> =
    suspendCancellableCoroutine { continuation ->
        val holder = arrayOfNulls<TextToSpeech>(1)
        val appContext = context.applicationContext
        holder[0] = TextToSpeech(appContext) { status ->
            val engine = holder[0]
            val voices = if (status == TextToSpeech.SUCCESS) {
                mapSystemTtsVoiceOptions(engine?.voices)
            } else {
                emptyList()
            }
            if (continuation.isActive) {
                continuation.resume(voices)
            }
            engine?.stop()
            engine?.shutdown()
            holder[0] = null
        }
        continuation.invokeOnCancellation {
            holder[0]?.stop()
            holder[0]?.shutdown()
            holder[0] = null
        }
    }
