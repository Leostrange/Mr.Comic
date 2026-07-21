package io.leostrange.mrcomic.feature.ocr.data

import io.leostrange.mrcomic.core.model.OcrBlockType
import javax.inject.Inject
import javax.inject.Singleton
import kotlin.math.max

@Singleton
class ComicBlockClassifier @Inject constructor() {

    fun classify(
        text: String,
        lineCount: Int,
        boxWidth: Float,
        boxHeight: Float
    ): OcrBlockType {
        val normalized = text.trim()
        if (normalized.isBlank()) return OcrBlockType.UNKNOWN

        val aspectRatio = boxWidth / max(boxHeight, 1f)
        val compactText = normalized.replace('\n', ' ')
        val tokenCount = compactText.split(Regex("\\s+")).count { it.isNotBlank() }
        val charCount = compactText.count { !it.isWhitespace() }
        val punctuationCount = compactText.count { it in PUNCTUATION_MARKS }
        val uppercaseLetters = compactText.count { it.isLetter() && it.isUpperCase() }
        val letters = compactText.count { it.isLetter() }
        val uppercaseRatio = if (letters == 0) 0f else uppercaseLetters.toFloat() / letters.toFloat()
        val hasDialoguePunctuation = compactText.any { it in DIALOGUE_MARKS }
        val hasNarrationBrackets = compactText.startsWith("[") ||
            compactText.startsWith("【") ||
            compactText.startsWith("(") ||
            compactText.startsWith("（")
        val repeatedSymbolRun = REPEATED_SOUND_REGEX.containsMatchIn(compactText)
        val latinShortBurst = letters in 2..12 && tokenCount <= 3 && uppercaseRatio >= 0.7f
        val likelySfx = (
            charCount in 1..16 &&
                tokenCount <= 3 &&
                lineCount <= 3 &&
                (latinShortBurst || repeatedSymbolRun || punctuationCount == 0)
            ) && aspectRatio <= 2.3f

        if (likelySfx) {
            return OcrBlockType.SFX
        }

        val likelyNarration = hasNarrationBrackets ||
            (tokenCount >= 8 && aspectRatio >= 1.1f) ||
            (lineCount >= 3 && punctuationCount >= 1) ||
            (compactText.endsWith(".") || compactText.endsWith("…") || compactText.endsWith("...")) && !hasDialoguePunctuation

        if (likelyNarration) {
            return OcrBlockType.NARRATION
        }

        return if (tokenCount > 0) OcrBlockType.SPEECH else OcrBlockType.UNKNOWN
    }

    private companion object {
        private val PUNCTUATION_MARKS = setOf('.', ',', '!', '?', ';', ':', '…', '。', '！', '？', '、', '，')
        private val DIALOGUE_MARKS = setOf('!', '?', '！', '？', '—', '-', '「', '」', '"', '“', '”')
        private val REPEATED_SOUND_REGEX = Regex("(.)\\1{2,}")
    }
}
