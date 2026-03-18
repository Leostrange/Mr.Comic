package com.example.feature.ocr.ui

import com.example.core.model.DictionaryEntry
import com.example.core.model.TranslationMode

internal fun ocrDictionaryExplanation(
    entry: DictionaryEntry,
    language: String
): String {
    val text = ocrUiText(language)
    return buildList {
        add("${text.dictionaryLemma}: ${entry.lemma}")
        ocrLocalizePartOfSpeech(entry.partOfSpeech, language)?.let {
            add("${text.dictionaryPartOfSpeech}: $it")
        }
        val meanings = entry.translations.map { it.trim() }.filter { it.isNotBlank() }.take(4)
        if (meanings.isNotEmpty()) {
            add("${text.dictionaryMeanings}: ${meanings.joinToString("; ")}")
        }
        val glosses = entry.glosses.map { it.trim() }.filter { it.isNotBlank() }.take(2)
        if (glosses.isNotEmpty()) {
            add(glosses.joinToString("\n"))
        }
        val forms = entry.forms.map { it.trim() }.filter { it.isNotBlank() }.take(4)
        if (forms.isNotEmpty()) {
            add("${text.dictionaryForms}: ${forms.joinToString(", ")}")
        }
    }.joinToString("\n")
}

internal fun ocrExplainUnavailableMessage(language: String): String = when (language) {
    "en" -> "Explanation is not available right now."
    "ja" -> "現在、この解説は利用できません。"
    "zh" -> "当前无法提供解释。"
    "ko" -> "지금은 설명을 사용할 수 없습니다."
    else -> "Пояснение сейчас недоступно."
}

internal fun ocrCleanupNoChangeMessage(language: String): String = when (language) {
    "en" -> "The text already looks clean."
    "ja" -> "テキストはすでに十分きれいです。"
    "zh" -> "这段文本已经比较干净了。"
    "ko" -> "텍스트가 이미 충분히 정리되어 있습니다."
    else -> "Текст уже выглядит достаточно чисто."
}

internal fun ocrTranslationUnavailableMessage(language: String): String = when (language) {
    "en" -> "Translation is not available for this text right now."
    "ja" -> "現在、このテキストは翻訳できません。"
    "zh" -> "当前无法翻译这段文本。"
    "ko" -> "지금은 이 텍스트를 번역할 수 없습니다."
    else -> "Перевод для этого текста сейчас недоступен."
}

internal fun ocrPreparingOfflineModelMessage(language: String): String = when (language) {
    "en" -> "Preparing the offline language model…"
    "ja" -> "オフライン言語モデルを準備中…"
    "zh" -> "正在准备离线语言模型…"
    "ko" -> "오프라인 언어 모델을 준비하는 중…"
    else -> "Подготавливаем офлайн-языковую модель…"
}

internal fun ocrOfflineModelReadyMessage(
    sourceLanguage: String,
    targetLanguage: String,
    language: String
): String {
    val pair = "${sourceLanguage.uppercase()} → ${targetLanguage.uppercase()}"
    return when (language) {
        "en" -> "Offline model is ready for $pair."
        "ja" -> "$pair 用のオフラインモデルを準備しました。"
        "zh" -> "$pair 的离线模型已准备好。"
        "ko" -> "$pair 오프라인 모델이 준비되었습니다."
        else -> "Офлайн-модель для пары $pair готова."
    }
}

internal fun ocrOfflineModelUnavailableMessage(language: String): String = when (language) {
    "en" -> "Could not prepare the offline model for this language pair."
    "ja" -> "この言語ペアのオフラインモデルを準備できませんでした。"
    "zh" -> "无法为这组语言准备离线模型。"
    "ko" -> "이 언어 쌍의 오프라인 모델을 준비하지 못했습니다."
    else -> "Не удалось подготовить офлайн-модель для этой языковой пары."
}

internal fun ocrTranslationBackendUnavailableMessage(language: String): String = when (language) {
    "en" -> "Online translation is not configured yet, and the offline model for this language pair is not installed."
    "ja" -> "オンライン翻訳はまだ設定されておらず、この言語ペアのオフラインモデルもインストールされていません。"
    "zh" -> "在线翻译尚未配置，并且此语言对的离线模型也未安装。"
    "ko" -> "온라인 번역이 아직 설정되지 않았고, 이 언어 쌍의 오프라인 모델도 설치되어 있지 않습니다."
    else -> "Онлайн-перевод пока не настроен, а офлайн-модель для этой языковой пары не установлена."
}

internal fun ocrDictionaryUnavailableMessage(language: String): String = when (language) {
    "en" -> "Dictionary lookup is not available for this word right now."
    "ja" -> "現在、この単語の辞書検索は利用できません。"
    "zh" -> "当前无法查询这个词的词典。"
    "ko" -> "지금은 이 단어에 대한 사전 조회를 사용할 수 없습니다."
    else -> "Словарный поиск для этого слова сейчас недоступен."
}

internal fun ocrImageOpenFailedMessage(language: String): String = when (language) {
    "en" -> "Could not open the selected image for OCR."
    "ja" -> "選択した画像を OCR 用に開けませんでした。"
    "zh" -> "无法打开所选图片进行 OCR。"
    "ko" -> "선택한 이미지를 OCR용으로 열 수 없습니다."
    else -> "Не удалось открыть выбранное изображение для OCR."
}

internal fun ocrImageDecodeFailedMessage(language: String): String = when (language) {
    "en" -> "Could not decode the selected image."
    "ja" -> "選択した画像をデコードできませんでした。"
    "zh" -> "无法解码所选图片。"
    "ko" -> "선택한 이미지를 디코딩할 수 없습니다."
    else -> "Не удалось декодировать выбранное изображение."
}

internal fun ocrRecognitionFailedMessage(language: String): String = when (language) {
    "en" -> "OCR failed for this image."
    "ja" -> "この画像の OCR に失敗しました。"
    "zh" -> "这张图片的 OCR 失败了。"
    "ko" -> "이 이미지의OCR에 실패했습니다."
    else -> "Ошибка распознавания для этого изображения."
}

internal fun ocrPageTranslationNoBlocksMessage(language: String): String = when (language) {
    "en" -> "After the current OCR filters, there are no blocks left to translate on this page."
    "ja" -> "現在の OCR フィルターでは、このページに翻訳できるブロックが残っていません。"
    "zh" -> "按当前 OCR 过滤条件，这一页没有可翻译的文本块。"
    "ko" -> "현재 OCR 필터 기준으로 이 페이지에 번역할 블록이 남아 있지 않습니다."
    else -> "После текущих OCR-фильтров для перевода страницы не осталось блоков."
}

internal fun ocrBlockTranslationFailedMessage(language: String): String = when (language) {
    "en" -> "Could not translate this block right now."
    "ja" -> "現在、このブロックは翻訳できません。"
    "zh" -> "当前无法翻译这个文本块。"
    "ko" -> "지금은 이 블록을 번역할 수 없습니다."
    else -> "Сейчас не удалось перевести этот блок."
}

internal fun ocrBlockUpdatedMessage(language: String): String = when (language) {
    "en" -> "OCR text for this block was updated. Translate it again to refresh the translation."
    "ja" -> "このブロックの OCR テキストを更新しました。翻訳も更新するには、もう一度翻訳してください。"
    "zh" -> "这个文本块的 OCR 文本已更新。如需刷新翻译，请重新翻译一次。"
    "ko" -> "이 블록의 OCR 텍스트를 업데이트했습니다. 번역도 새로 반영하려면 다시 번역하세요."
    else -> "OCR-текст этого блока обновлён. Чтобы обновить перевод, переведите блок ещё раз."
}

internal fun ocrBlockNoChangeMessage(language: String): String = when (language) {
    "en" -> "Repeated OCR returned the same text for this block."
    "ja" -> "このブロックの再 OCR では同じテキストが返りました。"
    "zh" -> "这个文本块重复 OCR 后得到的仍然是同样的文本。"
    "ko" -> "이 블록을 다시 OCR했지만 같은 텍스트가 나왔습니다."
    else -> "Повторный OCR вернул для этого блока тот же текст."
}

internal fun ocrBlockRepeatFailedMessage(language: String): String = when (language) {
    "en" -> "Could not run OCR again for this block."
    "ja" -> "このブロックに対して OCR を再実行できませんでした。"
    "zh" -> "无法重新对这个文本块执行 OCR。"
    "ko" -> "이 블록에 대해 OCR을 다시 실행하지 못했습니다."
    else -> "Не удалось повторно запустить OCR для этого блока."
}

internal fun ocrNoteSavedMessage(page: Int, language: String): String = when (language) {
    "en" -> "Saved a note for page ${page + 1}."
    "ja" -> "ページ ${page + 1} のメモを保存しました。"
    "zh" -> "已保存第 ${page + 1} 页的笔记。"
    "ko" -> "${page + 1}페이지 메모를 저장했습니다."
    else -> "Заметка сохранена для страницы ${page + 1}."
}

internal fun ocrTranslationModeLabel(
    mode: TranslationMode?,
    language: String
): String? = when (mode) {
    TranslationMode.OFFLINE_MT -> when (language) {
        "en" -> "Offline"
        "ja" -> "オフライン"
        "zh" -> "离线"
        "ko" -> "오프라인"
        else -> "Офлайн"
    }
    TranslationMode.ONLINE_MT -> when (language) {
        "en" -> "Online"
        "ja" -> "オンライン"
        "zh" -> "在线"
        "ko" -> "온라인"
        else -> "Онлайн"
    }
    TranslationMode.DICTIONARY -> when (language) {
        "en" -> "Dictionary"
        "ja" -> "辞書"
        "zh" -> "词典"
        "ko" -> "사전"
        else -> "Словарь"
    }
    TranslationMode.LLM -> when (language) {
        "en" -> "Explain"
        "ja" -> "説明"
        "zh" -> "解释"
        "ko" -> "설명"
        else -> "Пояснение"
    }
    null -> null
}

internal fun ocrLocalizePartOfSpeech(
    partOfSpeech: String?,
    language: String
): String? = when (partOfSpeech?.lowercase()) {
    "noun" -> when (language) {
        "en" -> "Noun"
        "ja" -> "名詞"
        "zh" -> "名词"
        "ko" -> "명사"
        else -> "Существительное"
    }
    "verb" -> when (language) {
        "en" -> "Verb"
        "ja" -> "動詞"
        "zh" -> "动词"
        "ko" -> "동사"
        else -> "Глагол"
    }
    "adjective" -> when (language) {
        "en" -> "Adjective"
        "ja" -> "形容詞"
        "zh" -> "形容词"
        "ko" -> "형용사"
        else -> "Прилагательное"
    }
    "adverb" -> when (language) {
        "en" -> "Adverb"
        "ja" -> "副詞"
        "zh" -> "副词"
        "ko" -> "부사"
        else -> "Наречие"
    }
    "pronoun" -> when (language) {
        "en" -> "Pronoun"
        "ja" -> "代名詞"
        "zh" -> "代词"
        "ko" -> "대명사"
        else -> "Местоимение"
    }
    "article" -> when (language) {
        "en" -> "Article"
        "ja" -> "冠詞"
        "zh" -> "冠词"
        "ko" -> "관사"
        else -> "Артикль"
    }
    "preposition" -> when (language) {
        "en" -> "Preposition"
        "ja" -> "前置詞"
        "zh" -> "介词"
        "ko" -> "전치사"
        else -> "Предлог"
    }
    "conjunction" -> when (language) {
        "en" -> "Conjunction"
        "ja" -> "接続詞"
        "zh" -> "连词"
        "ko" -> "접속사"
        else -> "Союз"
    }
    "interjection" -> when (language) {
        "en" -> "Interjection"
        "ja" -> "感動詞"
        "zh" -> "感叹词"
        "ko" -> "감탄사"
        else -> "Междометие"
    }
    else -> partOfSpeech?.takeIf { it.isNotBlank() }
}
