package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.ui.locale.translationLanguageShortLabel

internal fun resolveReaderTranslationUnavailableMessage(
    language: String,
    preferredTransport: TranslationTransportPreference,
    networkAvailable: Boolean,
    onlineConfigured: Boolean,
    offlineModelAvailable: Boolean,
    dictionaryRouteAvailable: Boolean = false,
    sourceLanguage: String? = null,
    targetLanguage: String? = null
): String = when (preferredTransport) {
    TranslationTransportPreference.OFFLINE -> when {
        offlineModelAvailable -> readerTranslationUnavailableMessage(language)
        networkAvailable -> readerOfflineModelMissingMessage(language, sourceLanguage, targetLanguage)
        else -> readerOfflineModelNeedsNetworkMessage(language, sourceLanguage, targetLanguage)
    }

    TranslationTransportPreference.ONLINE -> when {
        !onlineConfigured -> readerOnlineRouteMissingMessage(language, sourceLanguage, targetLanguage)
        !networkAvailable -> readerOnlineRouteNeedsNetworkMessage(language, sourceLanguage, targetLanguage)
        else -> readerTranslationUnavailableMessage(language)
    }

    TranslationTransportPreference.AUTO -> when {
        dictionaryRouteAvailable && !offlineModelAvailable && (!onlineConfigured || !networkAvailable) ->
            readerDictionaryOnlyRouteMessage(language, sourceLanguage, targetLanguage)
        !offlineModelAvailable && onlineConfigured && !networkAvailable ->
            readerOnlineRouteNeedsNetworkMessage(language, sourceLanguage, targetLanguage)
        !offlineModelAvailable && !onlineConfigured && networkAvailable ->
            readerTranslationBackendUnavailableMessage(language, sourceLanguage, targetLanguage)
        !offlineModelAvailable && !onlineConfigured ->
            readerTranslationBackendUnavailableMessage(language, sourceLanguage, targetLanguage)
        else -> readerTranslationUnavailableMessage(language)
    }
}

private fun readerLanguagePairLabel(
    sourceLanguage: String?,
    targetLanguage: String?
): String? {
    val source = sourceLanguage?.takeIf { it.isNotBlank() }?.let(::translationLanguageShortLabel) ?: return null
    val target = targetLanguage?.takeIf { it.isNotBlank() }?.let(::translationLanguageShortLabel) ?: return null
    return "$source → $target"
}

internal fun readerOfflineModelMissingMessage(
    language: String,
    sourceLanguage: String? = null,
    targetLanguage: String? = null
): String {
    val pair = readerLanguagePairLabel(sourceLanguage, targetLanguage)
    return if (pair == null) when (language) {
        "en" -> "The offline model for this language pair is not installed yet."
        "ja" -> "この言語ペアのオフラインモデルはまだインストールされていません。"
        "zh" -> "这个语言对的离线模型还未安装。"
        "ko" -> "이 언어 쌍의 오프라인 모델이 아직 설치되지 않았습니다."
        else -> "Офлайн-модель для этой языковой пары ещё не установлена."
    } else when (language) {
        "en" -> "The offline model for $pair is not installed yet."
        "ja" -> "$pair のオフラインモデルはまだインストールされていません。"
        "zh" -> "$pair 的离线模型还未安装。"
        "ko" -> "$pair 오프라인 모델이 아직 설치되지 않았습니다."
        else -> "Офлайн-модель для пары $pair ещё не установлена."
    }
}

internal fun readerOfflineModelNeedsNetworkMessage(
    language: String,
    sourceLanguage: String? = null,
    targetLanguage: String? = null
): String {
    val pair = readerLanguagePairLabel(sourceLanguage, targetLanguage)
    return if (pair == null) when (language) {
        "en" -> "The offline model for this language pair is missing, and the network is unavailable to prepare it."
        "ja" -> "この言語ペアのオフラインモデルがなく、準備するためのネットワークも利用できません。"
        "zh" -> "这个语言对缺少离线模型，而且当前网络不可用，无法准备。"
        "ko" -> "이 언어 쌍의 오프라인 모델이 없고, 준비할 네트워크도 사용할 수 없습니다."
        else -> "Для этой языковой пары нет офлайн-модели, и сеть сейчас недоступна, чтобы её подготовить."
    } else when (language) {
        "en" -> "The offline model for $pair is missing, and the network is unavailable to prepare it."
        "ja" -> "$pair のオフラインモデルがなく、準備するためのネットワークも利用できません。"
        "zh" -> "$pair 缺少离线模型，而且当前网络不可用，无法准备。"
        "ko" -> "$pair 오프라인 모델이 없고, 준비할 네트워크도 사용할 수 없습니다."
        else -> "Для пары $pair нет офлайн-модели, и сеть сейчас недоступна, чтобы её подготовить."
    }
}

internal fun readerOnlineRouteMissingMessage(
    language: String,
    sourceLanguage: String? = null,
    targetLanguage: String? = null
): String {
    val pair = readerLanguagePairLabel(sourceLanguage, targetLanguage)
    return if (pair == null) when (language) {
        "en" -> "The online translation route is not configured yet."
        "ja" -> "オンライン翻訳ルートはまだ設定されていません。"
        "zh" -> "在线翻译路线尚未配置。"
        "ko" -> "온라인 번역 경로가 아직 설정되지 않았습니다."
        else -> "Онлайн-маршрут перевода пока не настроен."
    } else when (language) {
        "en" -> "The online translation route for $pair is not configured yet."
        "ja" -> "$pair のオンライン翻訳ルートはまだ設定されていません。"
        "zh" -> "$pair 的在线翻译路线尚未配置。"
        "ko" -> "$pair 온라인 번역 경로가 아직 설정되지 않았습니다."
        else -> "Онлайн-маршрут перевода для пары $pair пока не настроен."
    }
}

internal fun readerOnlineRouteNeedsNetworkMessage(
    language: String,
    sourceLanguage: String? = null,
    targetLanguage: String? = null
): String {
    val pair = readerLanguagePairLabel(sourceLanguage, targetLanguage)
    return if (pair == null) when (language) {
        "en" -> "The online translation route needs network access right now."
        "ja" -> "オンライン翻訳ルートを使うには、今ネットワーク接続が必要です。"
        "zh" -> "在线翻译路线当前需要网络连接。"
        "ko" -> "온라인 번역 경로를 사용하려면 지금 네트워크 연결이 필요합니다."
        else -> "Для онлайн-маршрута перевода сейчас нужна сеть."
    } else when (language) {
        "en" -> "The online translation route for $pair needs network access right now."
        "ja" -> "$pair のオンライン翻訳ルートを使うには、今ネットワーク接続が必要です。"
        "zh" -> "$pair 的在线翻译路线当前需要网络连接。"
        "ko" -> "$pair 온라인 번역 경로를 사용하려면 지금 네트워크 연결이 필요합니다."
        else -> "Для онлайн-маршрута перевода пары $pair сейчас нужна сеть."
    }
}

internal fun readerDictionaryOnlyRouteMessage(
    language: String,
    sourceLanguage: String? = null,
    targetLanguage: String? = null
): String {
    val pair = readerLanguagePairLabel(sourceLanguage, targetLanguage)
    return if (pair == null) when (language) {
        "en" -> "Machine translation is unavailable for this pair right now. Dictionary lookup is still available for short text."
        "ja" -> "このペアでは今すぐ機械翻訳を使えません。短いテキストなら辞書検索は利用できます。"
        "zh" -> "这个语言对当前无法使用机器翻译，但短文本仍可走词典路线。"
        "ko" -> "이 언어 쌍은 지금 기계 번역을 사용할 수 없지만, 짧은 텍스트는 사전 경로를 사용할 수 있습니다."
        else -> "Для этой пары машинный перевод сейчас недоступен, но для короткого текста ещё можно использовать словарь."
    } else when (language) {
        "en" -> "Machine translation is unavailable for $pair right now. Dictionary lookup is still available for short text."
        "ja" -> "$pair では今すぐ機械翻訳を使えません。短いテキストなら辞書検索は利用できます。"
        "zh" -> "$pair 当前无法使用机器翻译，但短文本仍可走词典路线。"
        "ko" -> "$pair 는 지금 기계 번역을 사용할 수 없지만, 짧은 텍스트는 사전 경로를 사용할 수 있습니다."
        else -> "Для пары $pair машинный перевод сейчас недоступен, но для короткого текста ещё можно использовать словарь."
    }
}

internal fun readerTranslationBackendUnavailableMessage(
    language: String,
    sourceLanguage: String? = null,
    targetLanguage: String? = null
): String {
    val pair = readerLanguagePairLabel(sourceLanguage, targetLanguage)
    return if (pair == null) when (language) {
        "en" -> "Online translation is not configured, and the offline model for this language pair is missing."
        "ja" -> "オンライン翻訳はまだ設定されておらず、この言語ペアのオフラインモデルもありません。"
        "zh" -> "在线翻译尚未配置，而且此语言对的离线模型也未安装。"
        "ko" -> "온라인 번역이 아직 설정되지 않았고, 이 언어 조합의 오프라인 모델도 없습니다."
        else -> "Онлайн-перевод пока не настроен, а офлайн-модель для этой языковой пары не установлена."
    } else when (language) {
        "en" -> "Online translation is not configured, and the offline model for $pair is missing."
        "ja" -> "オンライン翻訳はまだ設定されておらず、$pair のオフラインモデルもありません。"
        "zh" -> "在线翻译尚未配置，而且 $pair 的离线模型也未安装。"
        "ko" -> "온라인 번역이 아직 설정되지 않았고, $pair 오프라인 모델도 없습니다."
        else -> "Онлайн-перевод для пары $pair пока не настроен, а офлайн-модель тоже не установлена."
    }
}
