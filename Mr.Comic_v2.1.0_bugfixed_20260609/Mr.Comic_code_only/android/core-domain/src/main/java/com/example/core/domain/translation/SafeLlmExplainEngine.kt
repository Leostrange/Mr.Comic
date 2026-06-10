package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.domain.util.runCatchingResult
import com.example.core.model.ExplainRequest
import com.example.core.model.ExplainResult
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationProviderType
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class SafeLlmExplainEngine @Inject constructor(
    private val offlineTranslationEngine: OfflineTranslationEngine
) : LlmExplainEngine {

    override suspend fun isConfigured(): Result<Boolean> = Result.Success(true)

    override suspend fun explain(
        request: ExplainRequest
    ): Result<ExplainResult> = runCatchingResult {
        val normalizedText = request.text.trim()
        require(normalizedText.isNotEmpty()) {
            "Explain request text is empty"
        }

        val explainLanguage = preferredExplainLanguage(
            request.targetLanguage,
            request.sourceLanguage
        )
        val localTranslation = resolveLocalTranslation(request, normalizedText)
        val translatedText = request.translatedText
            ?.trim()
            ?.takeIf { it.isNotEmpty() }
            ?: localTranslation
        val sourceContext = localizedSourceContext(request, explainLanguage)
        val tone = detectTone(normalizedText)
        val explanation = buildExplanation(
            request = request,
            normalizedText = normalizedText,
            translatedText = translatedText,
            sourceContext = sourceContext,
            tone = tone,
            language = explainLanguage
        )

        return Result.Success(ExplainResult(
            requestId = request.id,
            explanation = explanation,
            provider = TranslationProviderType.LLM_PROVIDER,
            isOffline = localTranslation != null,
            confidence = explanationConfidence(request, translatedText),
            cached = false,
            cleanedText = normalizedText
        ))
    }

    private suspend fun resolveLocalTranslation(
        request: ExplainRequest,
        normalizedText: String
    ): String? {
        val sourceLanguage = normalizeLanguageCode(request.sourceLanguage) ?: return null
        val targetLanguage = normalizeLanguageCode(request.targetLanguage) ?: return null
        if (sourceLanguage == targetLanguage) return normalizedText

        val available = when (
            val result = offlineTranslationEngine.isLanguagePairAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> result.data
            is Result.Error -> false
            Result.Loading -> false
        }
        if (!available) return null

        return when (
            val result = offlineTranslationEngine.translate(
                com.example.core.model.TranslationRequest(
                    id = "safe-explain-${request.id}",
                    sourceType = request.sourceType,
                    text = normalizedText,
                    sourceLanguage = sourceLanguage,
                    targetLanguage = targetLanguage,
                    mode = TranslationMode.OFFLINE_MT,
                    createdAt = request.createdAt
                )
            )
        ) {
            is Result.Success -> result.data.translatedText.trim().takeIf { it.isNotEmpty() }
            is Result.Error -> null
            Result.Loading -> null
        }
    }

    private fun preferredExplainLanguage(
        targetLanguage: String?,
        sourceLanguage: String?
    ): String {
        val target = normalizeLanguageCode(targetLanguage)
        if (target in SUPPORTED_EXPLAIN_LANGUAGES) return target!!
        val source = normalizeLanguageCode(sourceLanguage)
        if (source in SUPPORTED_EXPLAIN_LANGUAGES) return source!!
        return "en"
    }

    private fun buildExplanation(
        request: ExplainRequest,
        normalizedText: String,
        translatedText: String?,
        sourceContext: String,
        tone: ExplainTone?,
        language: String
    ): String {
        val lines = mutableListOf<String>()
        lines += explanationTitle(normalizedText, language)
        lines += ""
        lines += directMeaningLine(translatedText, language)
        lines += contextLine(sourceContext, language)
        tone?.let { lines += toneLine(it, language) }
        request.ocrConfidence
            ?.takeIf { it < 0.75f }
            ?.let { lines += ocrNoteLine(it, language) }
        request.contextBefore
            ?.trim()
            ?.takeIf { it.isNotEmpty() }
            ?.let { lines += contextBeforeLine(it, language) }
        request.contextAfter
            ?.trim()
            ?.takeIf { it.isNotEmpty() }
            ?.let { lines += contextAfterLine(it, language) }
        lines += explainModeNoteLine(translatedText != null, language)
        return lines.joinToString("\n")
    }

    private fun localizedSourceContext(
        request: ExplainRequest,
        language: String
    ): String = when (request.sourceType) {
        com.example.core.model.TranslationSourceType.COMIC_BLOCK -> when (language) {
            "ru" -> "Это реплика или текстовый блок со страницы комикса."
            "ja" -> "これはコミックのページから取った台詞またはテキストブロックです。"
            "zh" -> "这是漫画页面上的对白或文字块。"
            "ko" -> "이 텍스트는 만화 페이지의 말풍선이나 텍스트 블록입니다."
            else -> "This text comes from a comic page speech bubble or text block."
        }

        com.example.core.model.TranslationSourceType.OCR_TEXT -> when (language) {
            "ru" -> "Это текст после OCR-распознавания изображения."
            "ja" -> "これは画像から OCR で抽出したテキストです。"
            "zh" -> "这是从图像中通过 OCR 识别出的文本。"
            "ko" -> "이 텍스트는 이미지에서 OCR로 추출되었습니다."
            else -> "This text was extracted from an image using OCR."
        }

        com.example.core.model.TranslationSourceType.BOOK_TEXT -> when (language) {
            "ru" -> "Это выделенный фрагмент текста книги."
            "ja" -> "これは本の本文から選択した一節です。"
            "zh" -> "这是从书本文中选中的片段。"
            "ko" -> "이 텍스트는 책 본문에서 선택한 구절입니다."
            else -> "This text is a selected fragment from a book."
        }
    }

    private fun explanationTitle(text: String, language: String): String = when (language) {
        "ru" -> "Пояснение: \"$text\""
        "ja" -> "説明: \"$text\""
        "zh" -> "解释：“$text”"
        "ko" -> "설명: \"$text\""
        else -> "Explanation: \"$text\""
    }

    private fun directMeaningLine(translatedText: String?, language: String): String = when (language) {
        "ru" -> translatedText?.let { "Прямой смысл: $it" }
            ?: "Прямой смысл локально определить не удалось, но контекст ниже всё равно может помочь."
        "ja" -> translatedText?.let { "直訳に近い意味: $it" }
            ?: "ローカルでは直訳を確定できませんでしたが、下の文脈ヒントは役立ちます。"
        "zh" -> translatedText?.let { "直译含义：$it" }
            ?: "目前无法在本地确定直译，但下面的语境提示仍然有帮助。"
        "ko" -> translatedText?.let { "직접적인 뜻: $it" }
            ?: "로컬에서는 직역을 확정하지 못했지만, 아래 맥락 힌트는 참고할 수 있습니다."
        else -> translatedText?.let { "Direct meaning: $it" }
            ?: "A direct local translation is not available, but the context hints below can still help."
    }

    private fun contextLine(sourceContext: String, language: String): String = when (language) {
        "ru" -> "Контекст: $sourceContext"
        "ja" -> "文脈: $sourceContext"
        "zh" -> "语境：$sourceContext"
        "ko" -> "맥락: $sourceContext"
        else -> "Context: $sourceContext"
    }

    private fun toneLine(tone: ExplainTone, language: String): String = when (language) {
        "ru" -> "Оттенок: ${tone.ruLabel}"
        "ja" -> "ニュアンス: ${tone.jaLabel}"
        "zh" -> "语气：${tone.zhLabel}"
        "ko" -> "뉘앙스: ${tone.koLabel}"
        else -> "Tone: ${tone.enLabel}"
    }

    private fun ocrNoteLine(confidence: Float, language: String): String = when (language) {
        "ru" -> "Примечание OCR: уверенность распознавания низкая (${(confidence * 100).toInt()}%), поэтому смысл лучше сверять с оригиналом."
        "ja" -> "OCR メモ: 認識精度が低めです（${(confidence * 100).toInt()}%）。原文も合わせて確認するのがおすすめです。"
        "zh" -> "OCR 备注：识别置信度偏低（${(confidence * 100).toInt()}%），最好同时对照原文。"
        "ko" -> "OCR 참고: 인식 신뢰도가 낮습니다 (${(confidence * 100).toInt()}%). 원문도 함께 확인하는 편이 좋습니다."
        else -> "OCR note: recognition confidence is low (${(confidence * 100).toInt()}%), so it is worth checking the original text as well."
    }

    private fun contextBeforeLine(context: String, language: String): String = when (language) {
        "ru" -> "Перед этим: $context"
        "ja" -> "前後の手前: $context"
        "zh" -> "前文：$context"
        "ko" -> "앞 문맥: $context"
        else -> "Before this: $context"
    }

    private fun contextAfterLine(context: String, language: String): String = when (language) {
        "ru" -> "После этого: $context"
        "ja" -> "後続の文脈: $context"
        "zh" -> "后文：$context"
        "ko" -> "뒤 문맥: $context"
        else -> "After this: $context"
    }

    private fun explainModeNoteLine(hasMeaning: Boolean, language: String): String = when (language) {
        "ru" -> if (hasMeaning) {
            "Локальное пояснение собрано без внешнего explain-провайдера."
        } else {
            "Это локальное пояснение без внешнего explain-провайдера; оно помогает с контекстом, но не заменяет полноценный разбор."
        }
        "ja" -> if (hasMeaning) {
            "これは外部 explain-provider を使わずに組み立てたローカル説明です。"
        } else {
            "これは外部 explain-provider を使わないローカル説明で、文脈理解の補助に向いています。"
        }
        "zh" -> if (hasMeaning) {
            "这是在不依赖外部 explain-provider 的情况下生成的本地解释。"
        } else {
            "这是不依赖外部 explain-provider 的本地解释，适合辅助理解语境。"
        }
        "ko" -> if (hasMeaning) {
            "이 설명은 외부 explain-provider 없이 로컬에서 구성되었습니다."
        } else {
            "이 설명은 외부 explain-provider 없이 만든 로컬 설명으로, 맥락 이해를 돕는 용도입니다."
        }
        else -> if (hasMeaning) {
            "This explanation was assembled locally without an external explain provider."
        } else {
            "This is a local explanation without an external explain provider, so it is best used as a context hint."
        }
    }

    private fun explanationConfidence(
        request: ExplainRequest,
        translatedText: String?
    ): Float {
        val ocrConfidence = request.ocrConfidence
        return when {
        ocrConfidence != null && translatedText != null -> ocrConfidence.coerceIn(0.35f, 0.95f)
        ocrConfidence != null -> ocrConfidence.coerceIn(0.25f, 0.8f)
        translatedText != null -> 0.78f
        else -> 0.55f
    }
    }

    private fun detectTone(text: String): ExplainTone? {
        val trimmed = text.trim()
        if (trimmed.isEmpty()) return null
        if (trimmed.contains("?!") || trimmed.contains("!?")) return ExplainTone.EMPHATIC_QUESTION
        if (trimmed.contains('?')) return ExplainTone.QUESTION
        if (trimmed.contains('!')) return ExplainTone.EXCLAMATION
        if (trimmed.contains("…") || trimmed.contains("...")) return ExplainTone.TRAILING_THOUGHT
        val letters = trimmed.filter(Char::isLetter)
        if (letters.length >= 4 && letters.count(Char::isUpperCase) >= letters.length * 0.7f) {
            return ExplainTone.EMPHASIS
        }
        return null
    }

    private fun normalizeLanguageCode(code: String?): String? =
        code?.trim()?.lowercase()?.substringBefore('-')?.takeIf { it.isNotEmpty() }

    private enum class ExplainTone(
        val enLabel: String,
        val ruLabel: String,
        val jaLabel: String,
        val zhLabel: String,
        val koLabel: String
    ) {
        QUESTION(
            enLabel = "sounds like a question or request for clarification",
            ruLabel = "звучит как вопрос или просьба уточнить",
            jaLabel = "質問や確認の響きがあります",
            zhLabel = "听起来像是在提问或确认",
            koLabel = "질문하거나 확인하는 뉘앙스입니다"
        ),
        EXCLAMATION(
            enLabel = "has an emotional or emphatic tone",
            ruLabel = "звучит эмоционально или с нажимом",
            jaLabel = "感情や強調が乗っています",
            zhLabel = "带有情绪或强调感",
            koLabel = "감정이나 강조가 실려 있습니다"
        ),
        EMPHATIC_QUESTION(
            enLabel = "sounds like an emotional question or a surprised reaction",
            ruLabel = "звучит как эмоциональный вопрос или удивлённая реакция",
            jaLabel = "感情を伴う質問や驚きの反応に近いです",
            zhLabel = "像是带情绪的提问或惊讶反应",
            koLabel = "감정이 실린 질문이나 놀란 반응에 가깝습니다"
        ),
        TRAILING_THOUGHT(
            enLabel = "feels unfinished, hesitant, or reflective",
            ruLabel = "ощущается как незавершённая, осторожная или задумчивая фраза",
            jaLabel = "言い切らず、ためらいまたは余韻があります",
            zhLabel = "带有未说完、犹豫或留白的感觉",
            koLabel = "끝맺지 않거나 망설이는, 여운 있는 느낌입니다"
        ),
        EMPHASIS(
            enLabel = "is strongly emphasized",
            ruLabel = "сильно акцентировано",
            jaLabel = "強く強調されています",
            zhLabel = "强调感很强",
            koLabel = "강하게 강조되어 있습니다"
        )
    }

    private companion object {
        val SUPPORTED_EXPLAIN_LANGUAGES = setOf("en", "ru", "ja", "zh", "ko")
    }
}
