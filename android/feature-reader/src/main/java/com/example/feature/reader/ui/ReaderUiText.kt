package com.example.feature.reader.ui

import com.example.core.ui.theme.ReadingPreset
import com.example.core.model.TranslationMode

internal data class ReaderUiText(
    val errorTitle: String,
    val noteTitle: String,
    val noteCompactTitle: String,
    val close: String,
    val collapse: String,
    val expand: String,
    val chapters: String,
    val noBookmarks: String,
    val deleteBookmark: String,
    val textSettingsTitle: String,
    val quickPresetsTitle: String,
    val colorSchemeTitle: String,
    val fontTitle: String,
    val boldFont: String,
    val textAlignTitle: String,
    val resetDefaults: String,
    val directionToggle: String,
    val ocrTranslation: String,
    val openPanel: String,
    val savedNote: String,
    val day: String,
    val sepia: String,
    val night: String,
    val alignJustify: String,
    val alignLeft: String,
    val alignRight: String,
    val alignCenter: String,
    val eyeRestTitle: String,
    val eyeRestMessage: String,
    val eyeRestDismiss: String,
    val eyeRestSnooze: String,
    val translateSelectionAction: String,
    val selectionActionSheetTitle: String,
    val selectionTranslateAction: String,
    val selectionExplainAction: String,
    val translationSheetTitle: String,
    val dictionarySheetTitle: String,
    val explainSheetTitle: String,
    val translationOriginalLabel: String,
    val translationResultLabel: String,
    val explanationResultLabel: String,
    val dictionaryLemmaLabel: String,
    val dictionaryMeaningsLabel: String,
    val dictionaryFormsLabel: String,
    val dictionaryPartOfSpeechLabel: String,
    val translationTransportTitle: String,
    val translationAutoLabel: String,
    val translateAsPhrase: String,
    val openDictionary: String,
    val openExplain: String,
    val translationLoading: String,
    val explainLoading: String,
    val copyTranslation: String,
    val dictionaryUnavailable: String,
    val explainUnavailable: String
)

internal fun readerUiText(language: String): ReaderUiText = when (language) {
    "en" -> ReaderUiText(
        errorTitle = "Error",
        noteTitle = "Note",
        noteCompactTitle = "Note · brief",
        close = "Close",
        collapse = "Collapse",
        expand = "Expand",
        chapters = "Chapters",
        noBookmarks = "No bookmarks",
        deleteBookmark = "Delete bookmark",
        textSettingsTitle = "TEXT SETTINGS",
        quickPresetsTitle = "Quick presets",
        colorSchemeTitle = "Color scheme",
        fontTitle = "Font",
        boldFont = "Bold font",
        textAlignTitle = "Align text to",
        resetDefaults = "Reset to default",
        directionToggle = "LTR / RTL",
        ocrTranslation = "OCR / Translate",
        openPanel = "Open panel",
        savedNote = "Saved note",
        day = "Day",
        sepia = "Sepia",
        night = "Night",
        alignJustify = "Justify",
        alignLeft = "Left",
        alignRight = "Right",
        alignCenter = "Center",
        eyeRestTitle = "Time to rest your eyes",
        eyeRestMessage = "Look away from the screen for 20 seconds and focus on something in the distance.",
        eyeRestDismiss = "Got it",
        eyeRestSnooze = "Snooze 5 min",
        translateSelectionAction = "Actions…",
        selectionActionSheetTitle = "Selected text",
        selectionTranslateAction = "Translate",
        selectionExplainAction = "Explain",
        translationSheetTitle = "Translation",
        dictionarySheetTitle = "Dictionary",
        explainSheetTitle = "Explanation",
        translationOriginalLabel = "Original",
        translationResultLabel = "Translation",
        explanationResultLabel = "Explanation",
        dictionaryLemmaLabel = "Lemma",
        dictionaryMeaningsLabel = "Meanings",
        dictionaryFormsLabel = "Form in text",
        dictionaryPartOfSpeechLabel = "Part of speech",
        translationTransportTitle = "Mode",
        translationAutoLabel = "Auto",
        translateAsPhrase = "Translate as phrase",
        openDictionary = "Dictionary",
        openExplain = "Explain",
        translationLoading = "Translating selection…",
        explainLoading = "Preparing explanation…",
        copyTranslation = "Copy",
        dictionaryUnavailable = "Dictionary lookup is unavailable for this word right now.",
        explainUnavailable = "Explanation is unavailable right now."
    )
    "ja" -> ReaderUiText(
        errorTitle = "エラー",
        noteTitle = "注記",
        noteCompactTitle = "注記 · 短縮表示",
        close = "閉じる",
        collapse = "折りたたむ",
        expand = "展開",
        chapters = "章",
        noBookmarks = "しおりはありません",
        deleteBookmark = "しおりを削除",
        textSettingsTitle = "テキスト設定",
        quickPresetsTitle = "クイックプリセット",
        colorSchemeTitle = "配色",
        fontTitle = "フォント",
        boldFont = "太字",
        textAlignTitle = "テキストの配置",
        resetDefaults = "デフォルトに戻す",
        directionToggle = "LTR / RTL",
        ocrTranslation = "OCR / 翻訳",
        openPanel = "パネルを開く",
        savedNote = "保存された注記",
        day = "昼",
        sepia = "セピア",
        night = "夜",
        alignJustify = "両端",
        alignLeft = "左",
        alignRight = "右",
        alignCenter = "中央",
        eyeRestTitle = "目を休める時間です",
        eyeRestMessage = "20秒ほど画面から目を離し、遠くを見るようにしてください。",
        eyeRestDismiss = "閉じる",
        eyeRestSnooze = "5分後に再通知",
        translateSelectionAction = "操作…",
        selectionActionSheetTitle = "選択テキスト",
        selectionTranslateAction = "翻訳",
        selectionExplainAction = "解説",
        translationSheetTitle = "翻訳",
        dictionarySheetTitle = "辞書",
        explainSheetTitle = "解説",
        translationOriginalLabel = "原文",
        translationResultLabel = "翻訳結果",
        explanationResultLabel = "解説",
        dictionaryLemmaLabel = "見出し語",
        dictionaryMeaningsLabel = "意味",
        dictionaryFormsLabel = "本文の形",
        dictionaryPartOfSpeechLabel = "品詞",
        translationTransportTitle = "モード",
        translationAutoLabel = "自動",
        translateAsPhrase = "フレーズとして翻訳",
        openDictionary = "辞書",
        openExplain = "解説",
        translationLoading = "選択範囲を翻訳中…",
        explainLoading = "解説を準備しています…",
        copyTranslation = "コピー",
        dictionaryUnavailable = "現在、この単語の辞書検索は利用できません。",
        explainUnavailable = "現在、解説は利用できません。"
    )
    "zh" -> ReaderUiText(
        errorTitle = "错误",
        noteTitle = "注释",
        noteCompactTitle = "注释 · 简略",
        close = "关闭",
        collapse = "收起",
        expand = "展开",
        chapters = "章节",
        noBookmarks = "没有书签",
        deleteBookmark = "删除书签",
        textSettingsTitle = "文本设置",
        quickPresetsTitle = "快捷预设",
        colorSchemeTitle = "配色方案",
        fontTitle = "字体",
        boldFont = "粗体",
        textAlignTitle = "文本对齐",
        resetDefaults = "恢复默认",
        directionToggle = "LTR / RTL",
        ocrTranslation = "OCR / 翻译",
        openPanel = "打开面板",
        savedNote = "已保存注释",
        day = "白天",
        sepia = "棕褐",
        night = "夜间",
        alignJustify = "两端",
        alignLeft = "左对齐",
        alignRight = "右对齐",
        alignCenter = "居中",
        eyeRestTitle = "该让眼睛休息了",
        eyeRestMessage = "请把视线从屏幕上移开 20 秒，看看远处的物体。",
        eyeRestDismiss = "知道了",
        eyeRestSnooze = "5 分钟后再提醒",
        translateSelectionAction = "操作…",
        selectionActionSheetTitle = "选中文本",
        selectionTranslateAction = "翻译",
        selectionExplainAction = "解释",
        translationSheetTitle = "翻译",
        dictionarySheetTitle = "词典",
        explainSheetTitle = "解释",
        translationOriginalLabel = "原文",
        translationResultLabel = "译文",
        explanationResultLabel = "解释",
        dictionaryLemmaLabel = "词条",
        dictionaryMeaningsLabel = "释义",
        dictionaryFormsLabel = "正文形式",
        dictionaryPartOfSpeechLabel = "词性",
        translationTransportTitle = "模式",
        translationAutoLabel = "自动",
        translateAsPhrase = "按短语翻译",
        openDictionary = "词典",
        openExplain = "解释",
        translationLoading = "正在翻译选中文本…",
        explainLoading = "正在生成解释…",
        copyTranslation = "复制",
        dictionaryUnavailable = "当前无法为该单词提供词典结果。",
        explainUnavailable = "当前无法提供解释。"
    )
    "ko" -> ReaderUiText(
        errorTitle = "오류",
        noteTitle = "주석",
        noteCompactTitle = "주석 · 요약",
        close = "닫기",
        collapse = "접기",
        expand = "펼치기",
        chapters = "챕터",
        noBookmarks = "북마크가 없습니다",
        deleteBookmark = "북마크 삭제",
        textSettingsTitle = "텍스트 설정",
        quickPresetsTitle = "빠른 프리셋",
        colorSchemeTitle = "색상 구성",
        fontTitle = "글꼴",
        boldFont = "굵은 글꼴",
        textAlignTitle = "텍스트 정렬",
        resetDefaults = "기본값으로 재설정",
        directionToggle = "LTR / RTL",
        ocrTranslation = "OCR / 번역",
        openPanel = "패널 열기",
        savedNote = "저장된 메모",
        day = "주간",
        sepia = "세피아",
        night = "야간",
        alignJustify = "양쪽 맞춤",
        alignLeft = "왼쪽",
        alignRight = "오른쪽",
        alignCenter = "가운데",
        eyeRestTitle = "눈을 쉬게 할 시간입니다",
        eyeRestMessage = "20초 정도 화면에서 시선을 떼고 먼 곳을 바라보세요.",
        eyeRestDismiss = "확인",
        eyeRestSnooze = "5분 후 다시",
        translateSelectionAction = "작업…",
        selectionActionSheetTitle = "선택한 텍스트",
        selectionTranslateAction = "번역",
        selectionExplainAction = "설명",
        translationSheetTitle = "번역",
        dictionarySheetTitle = "사전",
        explainSheetTitle = "설명",
        translationOriginalLabel = "원문",
        translationResultLabel = "번역문",
        explanationResultLabel = "설명",
        dictionaryLemmaLabel = "표제어",
        dictionaryMeaningsLabel = "뜻",
        dictionaryFormsLabel = "본문 형태",
        dictionaryPartOfSpeechLabel = "품사",
        translationTransportTitle = "모드",
        translationAutoLabel = "자동",
        translateAsPhrase = "구문으로 번역",
        openDictionary = "사전",
        openExplain = "설명",
        translationLoading = "선택한 텍스트를 번역하는 중…",
        explainLoading = "설명을 준비하는 중…",
        copyTranslation = "복사",
        dictionaryUnavailable = "현재 이 단어의 사전 조회를 사용할 수 없습니다.",
        explainUnavailable = "현재 설명을 사용할 수 없습니다."
    )
    else -> ReaderUiText(
        errorTitle = "Ошибка",
        noteTitle = "Примечание",
        noteCompactTitle = "Примечание · кратко",
        close = "Закрыть",
        collapse = "Свернуть",
        expand = "Развернуть",
        chapters = "Главы",
        noBookmarks = "Нет закладок",
        deleteBookmark = "Удалить закладку",
        textSettingsTitle = "НАСТРОЙКИ ТЕКСТА",
        quickPresetsTitle = "Быстрые пресеты",
        colorSchemeTitle = "Цветовая схема",
        fontTitle = "Шрифт",
        boldFont = "Жирный шрифт",
        textAlignTitle = "Выравнивать текст по",
        resetDefaults = "Сбросить по умолчанию",
        directionToggle = "LTR / RTL",
        ocrTranslation = "OCR / Перевод",
        openPanel = "Открыть панель",
        savedNote = "Сохранённая заметка",
        day = "День",
        sepia = "Сепия",
        night = "Ночь",
        alignJustify = "Ширине",
        alignLeft = "Левому",
        alignRight = "Правому",
        alignCenter = "Центру",
        eyeRestTitle = "Пора дать глазам отдохнуть",
        eyeRestMessage = "Отведите взгляд от экрана на 20 секунд и посмотрите вдаль.",
        eyeRestDismiss = "Понял",
        eyeRestSnooze = "Отложить на 5 мин",
        translateSelectionAction = "Действия…",
        selectionActionSheetTitle = "Выделенный фрагмент",
        selectionTranslateAction = "Перевести",
        selectionExplainAction = "Объяснить",
        translationSheetTitle = "Перевод",
        dictionarySheetTitle = "Словарь",
        explainSheetTitle = "Пояснение",
        translationOriginalLabel = "Оригинал",
        translationResultLabel = "Перевод",
        explanationResultLabel = "Пояснение",
        dictionaryLemmaLabel = "Лемма",
        dictionaryMeaningsLabel = "Значения",
        dictionaryFormsLabel = "Форма в тексте",
        dictionaryPartOfSpeechLabel = "Часть речи",
        translationTransportTitle = "Режим",
        translationAutoLabel = "Авто",
        translateAsPhrase = "Перевести как фразу",
        openDictionary = "Словарь",
        openExplain = "Объяснить",
        translationLoading = "Переводим выделенный фрагмент…",
        explainLoading = "Готовим пояснение…",
        copyTranslation = "Скопировать",
        dictionaryUnavailable = "Словарный поиск для этого слова сейчас недоступен.",
        explainUnavailable = "Пояснение сейчас недоступно."
    )
}

internal fun readerPresetLabel(preset: ReadingPreset, language: String): String = when (preset) {
    ReadingPreset.PAPER -> when (language) {
        "ja" -> "ペーパー"
        "zh" -> "纸感"
        "ko" -> "페이퍼"
        "ru" -> "Бумага"
        else -> "Paper"
    }
    ReadingPreset.NIGHT_INK -> when (language) {
        "ja" -> "ナイトインク"
        "zh" -> "夜墨"
        "ko" -> "나이트 잉크"
        "ru" -> "Ночная тушь"
        else -> "Night Ink"
    }
    ReadingPreset.EINK -> when (language) {
        "ja" -> "E-Ink"
        "zh" -> "电子墨水"
        "ko" -> "E-Ink"
        "ru" -> "E-Ink"
        else -> "E-Ink"
    }
    else -> preset.name
}

internal fun readerBookmarksTabLabel(count: Int, language: String): String {
    val base = when (language) {
        "en" -> "Bookmarks"
        "ja" -> "しおり"
        "zh" -> "书签"
        "ko" -> "북마크"
        else -> "Закладки"
    }
    return if (count > 0) "$base ($count)" else base
}

internal fun readerPageLabel(page: Int, language: String): String = when (language) {
    "en" -> "Page ${page + 1}"
    "ja" -> "ページ ${page + 1}"
    "zh" -> "第 ${page + 1} 页"
    "ko" -> "페이지 ${page + 1}"
    else -> "Страница ${page + 1}"
}

internal fun readerFontSizeLabel(fontSize: Int, language: String): String = when (language) {
    "en" -> "Font size: ${fontSize}px"
    "ja" -> "文字サイズ: ${fontSize}px"
    "zh" -> "字体大小: ${fontSize}px"
    "ko" -> "글꼴 크기: ${fontSize}px"
    else -> "Размер шрифта: ${fontSize}px"
}

internal fun readerLineHeightLabel(percent: Int, language: String): String = when (language) {
    "en" -> "Line height: ${percent}%"
    "ja" -> "行間: ${percent}%"
    "zh" -> "行距: ${percent}%"
    "ko" -> "줄 간격: ${percent}%"
    else -> "Межстрочный интервал: ${percent}%"
}

internal fun readerComicNotFoundMessage(language: String): String = when (language) {
    "en" -> "The item was not found in the library."
    "ja" -> "ライブラリ内に項目が見つかりません。"
    "zh" -> "未在资料库中找到该项目。"
    "ko" -> "라이브러리에서 항목을 찾을 수 없습니다."
    else -> "Файл не найден в библиотеке."
}

internal fun readerComicLookupFailedMessage(language: String): String = when (language) {
    "en" -> "Failed to add or find the item."
    "ja" -> "項目を追加または検索できませんでした。"
    "zh" -> "无法添加或找到该项目。"
    "ko" -> "항목을 추가하거나 찾지 못했습니다."
    else -> "Не удалось добавить или найти файл."
}

internal fun readerUnsupportedFormatMessage(format: String, language: String): String = when (language) {
    "en" -> "Unsupported format: $format"
    "ja" -> "未対応の形式: $format"
    "zh" -> "不支持的格式: $format"
    "ko" -> "지원되지 않는 형식: $format"
    else -> "Неподдерживаемый формат: $format"
}

internal fun readerNoReadablePagesMessage(language: String): String = when (language) {
    "en" -> "The file does not contain readable pages."
    "ja" -> "ファイルに読めるページがありません。"
    "zh" -> "文件中没有可阅读的页面。"
    "ko" -> "파일에 읽을 수 있는 페이지가 없습니다."
    else -> "Файл не содержит читаемых страниц."
}

internal fun readerOpenFailedMessage(language: String): String = when (language) {
    "en" -> "Failed to open the item."
    "ja" -> "項目を開けませんでした。"
    "zh" -> "无法打开该项目。"
    "ko" -> "항목을 열지 못했습니다."
    else -> "Не удалось открыть файл."
}

internal fun readerTranslationLanguageDetectFailedMessage(language: String): String = when (language) {
    "en" -> "Could not determine the language of the selected text."
    "ja" -> "選択したテキストの言語を判定できませんでした。"
    "zh" -> "无法确定所选文本的语言。"
    "ko" -> "선택한 텍스트의 언어를 확인할 수 없습니다."
    else -> "Не удалось определить язык выделенного текста."
}

internal fun readerTranslationUnavailableMessage(language: String): String = when (language) {
    "en" -> "Translation is unavailable for the selected fragment right now."
    "ja" -> "現在、この選択範囲の翻訳は利用できません。"
    "zh" -> "当前无法翻译所选片段。"
    "ko" -> "현재 선택한 구문의 번역을 사용할 수 없습니다."
    else -> "Сейчас перевод для выделенного фрагмента недоступен."
}

internal fun readerTranslationBackendUnavailableMessage(language: String): String = when (language) {
    "en" -> "Online translation is not configured, and the offline model for this language pair is missing."
    "ja" -> "オンライン翻訳はまだ設定されておらず、この言語ペアのオフラインモデルもありません。"
    "zh" -> "在线翻译尚未配置，而且此语言对的离线模型也未安装。"
    "ko" -> "온라인 번역이 아직 설정되지 않았고, 이 언어 조합의 오프라인 모델도 없습니다."
    else -> "Онлайн-перевод пока не настроен, а офлайн-модель для этой языковой пары не установлена."
}

internal fun readerDictionaryUnavailableMessage(language: String): String =
    readerUiText(language).dictionaryUnavailable

internal fun readerExplainUnavailableMessage(language: String): String =
    readerUiText(language).explainUnavailable

internal fun readerTranslationModeLabel(
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
        "ja" -> "解説"
        "zh" -> "解释"
        "ko" -> "설명"
        else -> "Пояснение"
    }
    null -> null
}

internal fun readerTransportPreferenceLabel(
    preference: com.example.core.model.TranslationTransportPreference,
    language: String
): String = when (preference) {
    com.example.core.model.TranslationTransportPreference.AUTO -> readerUiText(language).translationAutoLabel
    com.example.core.model.TranslationTransportPreference.OFFLINE -> when (language) {
        "en" -> "Offline"
        "ja" -> "オフライン"
        "zh" -> "离线"
        "ko" -> "오프라인"
        else -> "Офлайн"
    }
    com.example.core.model.TranslationTransportPreference.ONLINE -> when (language) {
        "en" -> "Online"
        "ja" -> "オンライン"
        "zh" -> "在线"
        "ko" -> "온라인"
        else -> "Онлайн"
    }
}

internal fun readerDictionaryPartOfSpeechLabel(
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
    else -> null
}
