package com.example.core.model

enum class TranslationSourceType {
    BOOK_TEXT,
    OCR_TEXT,
    COMIC_BLOCK
}

enum class TranslationMode {
    DICTIONARY,
    OFFLINE_MT,
    ONLINE_MT,
    LLM
}

enum class TranslationTransportPreference {
    AUTO,
    OFFLINE,
    ONLINE
}

enum class TranslationProviderType {
    LOCAL_DICTIONARY,
    ML_KIT,
    ONLINE_PROVIDER,
    LLM_PROVIDER,
    UNKNOWN
}

enum class OcrBlockType {
    SPEECH,
    NARRATION,
    SFX,
    UNKNOWN
}

enum class OverlayDisplayMode {
    OVERLAY,
    BUBBLE_PREVIEW
}

enum class BubbleMaskShape {
    ROUNDED_RECT,
    CAPSULE,
    RECTANGLE,
    NONE
}

enum class LookupRouteKind {
    DICTIONARY_LOOKUP,
    DICTIONARY_WITH_TRANSLATION_OPTION,
    MACHINE_TRANSLATION,
    LLM_EXPLAIN,
    REVIEW_OCR_TEXT,
    UNAVAILABLE
}

enum class TranslationRoutingFailureReason {
    NO_TEXT,
    NO_TRANSLATION_BACKEND
}

data class LanguageCandidate(
    val languageCode: String,
    val confidence: Float? = null
)

data class LanguageDetectionResult(
    val languageCode: String,
    val confidence: Float? = null,
    val isReliable: Boolean = false,
    val fallbackUsed: Boolean = false,
    val candidates: List<LanguageCandidate> = emptyList()
)

data class TranslationRoutingRequest(
    val text: String,
    val sourceType: TranslationSourceType,
    val sourceLanguageHint: String? = null,
    val fallbackLanguage: String? = null,
    val preferredTransport: TranslationTransportPreference = TranslationTransportPreference.AUTO,
    val networkAvailable: Boolean = false,
    val onlineTranslationAvailable: Boolean = false,
    val offlineModelAvailable: Boolean = false,
    val dictionaryAvailable: Boolean = false,
    val llmAvailable: Boolean = false,
    val ocrConfidence: Float? = null,
    val forceExplain: Boolean = false
)

data class TranslationRoutingDecision(
    val routeKind: LookupRouteKind,
    val primaryMode: TranslationMode? = null,
    val secondaryModes: List<TranslationMode> = emptyList(),
    val detectedLanguage: LanguageDetectionResult? = null,
    val requiresUserReview: Boolean = false,
    val shouldOfferPhraseTranslation: Boolean = false,
    val shouldOfferExplanation: Boolean = false,
    val isLongText: Boolean = false,
    val unavailableReason: TranslationRoutingFailureReason? = null
)

data class ExplainRequest(
    val id: String,
    val sourceType: TranslationSourceType,
    val text: String,
    val sourceLanguage: String? = null,
    val targetLanguage: String? = null,
    val translatedText: String? = null,
    val contextBefore: String? = null,
    val contextAfter: String? = null,
    val ocrConfidence: Float? = null,
    val createdAt: Long
)

data class ExplainResult(
    val requestId: String,
    val explanation: String,
    val provider: TranslationProviderType = TranslationProviderType.LLM_PROVIDER,
    val isOffline: Boolean = false,
    val confidence: Float? = null,
    val cached: Boolean = false,
    val cleanedText: String? = null
)

data class DictionaryEntry(
    val id: String,
    val languageFrom: String,
    val languageTo: String,
    val lemma: String,
    val normalizedLemma: String,
    val partOfSpeech: String? = null,
    val translations: List<String> = emptyList(),
    val glosses: List<String> = emptyList(),
    val examples: List<String> = emptyList(),
    val forms: List<String> = emptyList()
)

data class TranslationRequest(
    val id: String,
    val sourceType: TranslationSourceType,
    val text: String,
    val sourceLanguage: String,
    val targetLanguage: String,
    val mode: TranslationMode,
    val createdAt: Long
)

data class TranslationResult(
    val requestId: String,
    val translatedText: String,
    val provider: TranslationProviderType = TranslationProviderType.UNKNOWN,
    val isOffline: Boolean = false,
    val confidence: Float? = null,
    val cached: Boolean = false,
    val explanation: String? = null
)

data class OcrBlock(
    val id: String,
    val pageId: String,
    val bboxLeft: Float,
    val bboxTop: Float,
    val bboxWidth: Float,
    val bboxHeight: Float,
    val textOriginal: String,
    val textNormalized: String = textOriginal,
    val detectedLanguage: String? = null,
    val confidence: Float? = null,
    val blockType: OcrBlockType = OcrBlockType.UNKNOWN,
    val rotation: Float = 0f
)

data class OverlayBlock(
    val ocrBlockId: String,
    val translatedText: String,
    val translationMode: TranslationMode? = null,
    val provider: TranslationProviderType = TranslationProviderType.UNKNOWN,
    val isOffline: Boolean = false,
    val displayMode: OverlayDisplayMode = OverlayDisplayMode.OVERLAY,
    val fontSize: Float = 14f,
    val padding: Float = 8f,
    val backgroundOpacity: Float = 0.78f,
    val maskShape: BubbleMaskShape = BubbleMaskShape.ROUNDED_RECT,
    val maskCornerRadius: Float = 12f,
    val maskInset: Float = 0f,
    val prefersReplacementPreview: Boolean = false
)
