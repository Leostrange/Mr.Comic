package io.leostrange.mrcomic.feature.ocr.ui

import io.leostrange.mrcomic.core.model.OcrBlockType
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationProviderType
import io.leostrange.mrcomic.core.ui.locale.translationLanguageShortLabel

data class OcrUiText(
    val screenTitle: String,
    val back: String,
    val pagePreviewDescription: String,
    val translationProfileTitle: String,
    val sourceLanguage: String,
    val ocrLanguage: String,
    val targetLanguage: String,
    val translationMode: String,
    val transportPrefix: String,
    val transportAuto: String,
    val transportOffline: String,
    val transportOnline: String,
    val textModeTitle: String,
    val textModeHint: String,
    val imageModeTitle: String,
    val imageModeHint: String,
    val pickOtherImage: String,
    val manualMode: String,
    val standaloneTitle: String,
    val standaloneHint: String,
    val pickPageImage: String,
    val manualInputLabel: String,
    val manualInputPlaceholder: String,
    val manualActionsTitle: String,
    val manualActionsWordHint: String,
    val manualActionsPhraseHint: String,
    val imageActionsTitle: String,
    val imageActionsInitialHint: String,
    val imageActionsRecognizedHint: String,
    val imageActionsTranslatedHint: String,
    val dictionary: String,
    val dictionaryLemma: String,
    val dictionaryPartOfSpeech: String,
    val dictionaryMeanings: String,
    val dictionaryForms: String,
    val translating: String,
    val translate: String,
    val translateVisiblePage: String,
    val recognizeOnly: String,
    val recognizingPage: String,
    val translatingPage: String,
    val recognizedText: String,
    val textBlocksPrefix: String,
    val blockPrefix: String,
    val tapForBlockCard: String,
    val translation: String,
    val saveNote: String,
    val hideOverlay: String,
    val showOverlay: String,
    val bubblePreview: String,
    val overlayMode: String,
    val translatedBlocksPrefix: String,
    val translatedBlockPrefix: String,
    val translationBlockTitle: String,
    val original: String,
    val contextTitle: String,
    val contextBefore: String,
    val contextAfter: String,
    val translatingBlock: String,
    val blockTranslationPending: String,
    val cleanedOcr: String,
    val cleaningOcr: String,
    val explanation: String,
    val preparingExplanation: String,
    val cleanupOcr: String,
    val explain: String,
    val copyOriginal: String,
    val copyCleaned: String,
    val copyTranslation: String,
    val dismissMessage: String
)

fun ocrUiText(language: String): OcrUiText = when (language) {
    "en" -> OcrUiText(
        screenTitle = "OCR / Translate",
        back = "Back",
        pagePreviewDescription = "Comic page preview",
        translationProfileTitle = "Translation profile",
        sourceLanguage = "Text language",
        ocrLanguage = "OCR language",
        targetLanguage = "Translate to",
        translationMode = "Mode",
        transportPrefix = "Uses the translation mode from settings.",
        transportAuto = "Auto",
        transportOffline = "Offline",
        transportOnline = "Online",
        textModeTitle = "Text mode",
        textModeHint = "Type or paste text, then translate it, open the dictionary for a word, or ask for an explanation.",
        imageModeTitle = "Image OCR mode",
        imageModeHint = "Use a page image to detect text blocks, translate the whole page, or tap a specific block.",
        pickOtherImage = "Choose another image",
        manualMode = "Switch to text mode",
        standaloneTitle = "Standalone translation",
        standaloneHint = "In this mode you can translate typed text or choose a page image for OCR and overlay translation, even outside the reader.",
        pickPageImage = "Choose page image",
        manualInputLabel = "Text to translate",
        manualInputPlaceholder = "Paste a word, phrase, or short paragraph",
        manualActionsTitle = "Actions for this text",
        manualActionsWordHint = "For a single word, you can open the dictionary directly or ask for a short explanation.",
        manualActionsPhraseHint = "For a phrase or a short paragraph, start with translation and use explanation when you need more context.",
        imageActionsTitle = "Actions for this page",
        imageActionsInitialHint = "Start with page translation if you want the whole page overlay, or run OCR only when you want to inspect the source text first.",
        imageActionsRecognizedHint = "Text blocks are already detected. You can translate the whole page now or open a specific block card.",
        imageActionsTranslatedHint = "The page translation is ready. You can refresh OCR, change overlay mode, or tap a block to inspect it in detail.",
        dictionary = "Dictionary",
        dictionaryLemma = "Lemma",
        dictionaryPartOfSpeech = "Part of speech",
        dictionaryMeanings = "Meanings",
        dictionaryForms = "Form in text",
        translating = "Translating…",
        translate = "Translate",
        translateVisiblePage = "Translate visible page",
        recognizeOnly = "Recognize text only",
        recognizingPage = "Recognizing page…",
        translatingPage = "Translating page…",
        recognizedText = "Recognized text",
        textBlocksPrefix = "Text blocks",
        blockPrefix = "Block",
        tapForBlockCard = "Tap to open block card",
        translation = "Translation",
        saveNote = "Save as page note",
        hideOverlay = "Hide overlay",
        showOverlay = "Show overlay",
        bubblePreview = "Bubble preview",
        overlayMode = "Overlay mode",
        translatedBlocksPrefix = "Translated blocks",
        translatedBlockPrefix = "Translated block",
        translationBlockTitle = "Translation block",
        original = "Original",
        contextTitle = "Nearby context",
        contextBefore = "Before",
        contextAfter = "After",
        translatingBlock = "Translating block…",
        blockTranslationPending = "Translation for this block is not ready yet.",
        cleanedOcr = "Cleaned OCR",
        cleaningOcr = "Cleaning text…",
        explanation = "Explanation",
        preparingExplanation = "Preparing explanation…",
        cleanupOcr = "Clean OCR",
        explain = "Explain",
        copyOriginal = "Copy original",
        copyCleaned = "Copy cleaned",
        copyTranslation = "Copy translation",
        dismissMessage = "Dismiss"
    )
    "ja" -> OcrUiText(
        screenTitle = "OCR / 翻訳",
        back = "戻る",
        pagePreviewDescription = "コミックページのプレビュー",
        translationProfileTitle = "翻訳プロファイル",
        sourceLanguage = "テキスト言語",
        ocrLanguage = "OCR 言語",
        targetLanguage = "翻訳先",
        translationMode = "モード",
        transportPrefix = "翻訳モードは設定の内容を使います。",
        transportAuto = "自動",
        transportOffline = "オフライン",
        transportOnline = "オンライン",
        textModeTitle = "テキストモード",
        textModeHint = "テキストを入力または貼り付けて翻訳したり、単語の辞書を開いたり、解説を表示できます。",
        imageModeTitle = "画像 OCR モード",
        imageModeHint = "ページ画像からテキストブロックを検出し、ページ全体を翻訳したり、特定のブロックをタップして確認できます。",
        pickOtherImage = "別の画像を選ぶ",
        manualMode = "テキストモードに戻る",
        standaloneTitle = "単体翻訳",
        standaloneHint = "このモードでは手入力テキストの翻訳に加えて、ページ画像を選んで OCR とオーバーレイ翻訳を使うこともできます。",
        pickPageImage = "ページ画像を選ぶ",
        manualInputLabel = "翻訳するテキスト",
        manualInputPlaceholder = "単語、フレーズ、短い段落を貼り付け",
        manualActionsTitle = "このテキストでできること",
        manualActionsWordHint = "単語ひとつなら、辞書を直接開いたり、短い説明を表示できます。",
        manualActionsPhraseHint = "フレーズや短い段落なら、まず翻訳し、必要に応じて説明で文脈を確認できます。",
        imageActionsTitle = "このページでできること",
        imageActionsInitialHint = "ページ全体のオーバーレイが欲しいならまずページ翻訳、元のテキストを先に確認したいなら OCR のみを使えます。",
        imageActionsRecognizedHint = "テキストブロックはすでに検出されています。ページ全体を翻訳するか、特定のブロックカードを開けます。",
        imageActionsTranslatedHint = "ページ翻訳はすでに準備できています。OCR を更新したり、オーバーレイ表示を切り替えたり、ブロックをタップして詳細を確認できます。",
        dictionary = "辞書",
        dictionaryLemma = "見出し語",
        dictionaryPartOfSpeech = "品詞",
        dictionaryMeanings = "意味",
        dictionaryForms = "本文中の形",
        translating = "翻訳中…",
        translate = "翻訳",
        translateVisiblePage = "表示中のページを翻訳",
        recognizeOnly = "テキスト認識のみ",
        recognizingPage = "ページを認識中…",
        translatingPage = "ページを翻訳中…",
        recognizedText = "認識結果",
        textBlocksPrefix = "テキストブロック",
        blockPrefix = "ブロック",
        tapForBlockCard = "タップしてブロックカードを開く",
        translation = "翻訳",
        saveNote = "ページメモとして保存",
        hideOverlay = "オーバーレイを隠す",
        showOverlay = "オーバーレイを表示",
        bubblePreview = "吹き出しプレビュー",
        overlayMode = "オーバーレイ表示",
        translatedBlocksPrefix = "翻訳済みブロック",
        translatedBlockPrefix = "翻訳ブロック",
        translationBlockTitle = "翻訳ブロック",
        original = "原文",
        contextTitle = "近くの文脈",
        contextBefore = "前",
        contextAfter = "後",
        translatingBlock = "ブロックを翻訳中…",
        blockTranslationPending = "このブロックの翻訳はまだありません。",
        cleanedOcr = "OCR整形結果",
        cleaningOcr = "テキストを整形中…",
        explanation = "説明",
        preparingExplanation = "説明を準備中…",
        cleanupOcr = "OCRを整える",
        explain = "説明",
        copyOriginal = "原文をコピー",
        copyCleaned = "整形版をコピー",
        copyTranslation = "翻訳をコピー",
        dismissMessage = "閉じる"
    )
    "zh" -> OcrUiText(
        screenTitle = "OCR / 翻译",
        back = "返回",
        pagePreviewDescription = "漫画页面预览",
        translationProfileTitle = "翻译配置",
        sourceLanguage = "文本语言",
        ocrLanguage = "OCR 语言",
        targetLanguage = "翻译到",
        translationMode = "模式",
        transportPrefix = "翻译模式使用设置中的选项。",
        transportAuto = "自动",
        transportOffline = "离线",
        transportOnline = "在线",
        textModeTitle = "文本模式",
        textModeHint = "输入或粘贴文本后即可翻译、查询单词词典或查看解释。",
        imageModeTitle = "图片 OCR 模式",
        imageModeHint = "使用页面图片识别文本块，翻译整页内容，或点击单个文本块查看结果。",
        pickOtherImage = "选择其他图片",
        manualMode = "切换到文本模式",
        standaloneTitle = "独立翻译",
        standaloneHint = "在这个模式中，既可以翻译手动输入的文本，也可以选择页面图片来执行 OCR 和叠层翻译。",
        pickPageImage = "选择页面图片",
        manualInputLabel = "待翻译文本",
        manualInputPlaceholder = "粘贴单词、短语或短段落",
        manualActionsTitle = "此文本可执行的操作",
        manualActionsWordHint = "如果只有一个词，可以直接打开词典或查看简短解释。",
        manualActionsPhraseHint = "如果是短语或短段落，先翻译，再在需要时查看解释会更自然。",
        imageActionsTitle = "此页面可执行的操作",
        imageActionsInitialHint = "如果想直接得到整页叠层翻译，就先翻译页面；如果想先确认原文识别结果，就只运行 OCR。",
        imageActionsRecognizedHint = "文本块已经识别完成。现在可以翻译整页，也可以打开某个文本块卡片单独查看。",
        imageActionsTranslatedHint = "整页翻译已经准备好。现在可以重新识别、切换叠层显示方式，或点击某个文本块查看详情。",
        dictionary = "词典",
        dictionaryLemma = "词元",
        dictionaryPartOfSpeech = "词性",
        dictionaryMeanings = "含义",
        dictionaryForms = "文中形式",
        translating = "翻译中…",
        translate = "翻译",
        translateVisiblePage = "翻译当前页面",
        recognizeOnly = "仅识别文本",
        recognizingPage = "正在识别页面…",
        translatingPage = "正在翻译页面…",
        recognizedText = "识别文本",
        textBlocksPrefix = "文本块",
        blockPrefix = "块",
        tapForBlockCard = "点击打开块卡片",
        translation = "翻译",
        saveNote = "保存为页面笔记",
        hideOverlay = "隐藏叠层",
        showOverlay = "显示叠层",
        bubblePreview = "气泡预览",
        overlayMode = "叠层模式",
        translatedBlocksPrefix = "已翻译文本块",
        translatedBlockPrefix = "翻译块",
        translationBlockTitle = "翻译块",
        original = "原文",
        contextTitle = "邻近语境",
        contextBefore = "前文",
        contextAfter = "后文",
        translatingBlock = "正在翻译块…",
        blockTranslationPending = "此块的翻译尚未准备好。",
        cleanedOcr = "清理后的 OCR",
        cleaningOcr = "正在清理文本…",
        explanation = "解释",
        preparingExplanation = "正在准备解释…",
        cleanupOcr = "清理 OCR",
        explain = "解释",
        copyOriginal = "复制原文",
        copyCleaned = "复制清理后文本",
        copyTranslation = "复制翻译",
        dismissMessage = "关闭"
    )
    "ko" -> OcrUiText(
        screenTitle = "OCR / 번역",
        back = "뒤로",
        pagePreviewDescription = "만화 페이지 미리보기",
        translationProfileTitle = "번역 프로필",
        sourceLanguage = "텍스트 언어",
        ocrLanguage = "OCR 언어",
        targetLanguage = "번역 대상",
        translationMode = "모드",
        transportPrefix = "번역 모드는 설정 값을 사용합니다.",
        transportAuto = "자동",
        transportOffline = "오프라인",
        transportOnline = "온라인",
        textModeTitle = "텍스트 모드",
        textModeHint = "텍스트를 입력하거나 붙여 넣고 번역하거나, 단어 사전을 열거나, 설명을 볼 수 있습니다.",
        imageModeTitle = "이미지 OCR 모드",
        imageModeHint = "페이지 이미지에서 텍스트 블록을 감지하고, 전체 페이지를 번역하거나 특정 블록을 눌러 확인할 수 있습니다.",
        pickOtherImage = "다른 이미지 선택",
        manualMode = "텍스트 모드로 전환",
        standaloneTitle = "독립 번역",
        standaloneHint = "이 모드에서는 직접 입력한 텍스트를 번역할 수도 있고, 페이지 이미지를 선택해 OCR 및 오버레이 번역을 실행할 수도 있습니다.",
        pickPageImage = "페이지 이미지 선택",
        manualInputLabel = "번역할 텍스트",
        manualInputPlaceholder = "단어, 구문 또는 짧은 문단을 붙여 넣으세요",
        manualActionsTitle = "이 텍스트로 할 수 있는 작업",
        manualActionsWordHint = "한 단어라면 바로 사전을 열거나 짧은 설명을 볼 수 있습니다.",
        manualActionsPhraseHint = "구문이나 짧은 문단이라면 먼저 번역하고, 필요할 때 설명으로 맥락을 확인하는 흐름이 자연스럽습니다.",
        imageActionsTitle = "이 페이지로 할 수 있는 작업",
        imageActionsInitialHint = "페이지 전체 오버레이가 필요하면 먼저 페이지 번역을, 원문 인식 결과를 먼저 보고 싶다면 OCR만 실행하면 됩니다.",
        imageActionsRecognizedHint = "텍스트 블록이 이미 감지되었습니다. 이제 전체 페이지를 번역하거나 특정 블록 카드를 열 수 있습니다.",
        imageActionsTranslatedHint = "페이지 번역이 준비되었습니다. OCR을 다시 실행하거나 오버레이 표시를 바꾸거나, 블록을 눌러 자세히 볼 수 있습니다.",
        dictionary = "사전",
        dictionaryLemma = "표제어",
        dictionaryPartOfSpeech = "품사",
        dictionaryMeanings = "의미",
        dictionaryForms = "본문 형태",
        translating = "번역 중…",
        translate = "번역",
        translateVisiblePage = "현재 페이지 번역",
        recognizeOnly = "텍스트만 인식",
        recognizingPage = "페이지 인식 중…",
        translatingPage = "페이지 번역 중…",
        recognizedText = "인식된 텍스트",
        textBlocksPrefix = "텍스트 블록",
        blockPrefix = "블록",
        tapForBlockCard = "탭해서 블록 카드 열기",
        translation = "번역",
        saveNote = "페이지 메모로 저장",
        hideOverlay = "오버레이 숨기기",
        showOverlay = "오버레이 표시",
        bubblePreview = "버블 미리보기",
        overlayMode = "오버레이 모드",
        translatedBlocksPrefix = "번역된 블록",
        translatedBlockPrefix = "번역 블록",
        translationBlockTitle = "번역 블록",
        original = "원문",
        contextTitle = "주변 문맥",
        contextBefore = "앞 문맥",
        contextAfter = "뒤 문맥",
        translatingBlock = "블록 번역 중…",
        blockTranslationPending = "이 블록의 번역이 아직 준비되지 않았습니다.",
        cleanedOcr = "정리된 OCR",
        cleaningOcr = "텍스트 정리 중…",
        explanation = "설명",
        preparingExplanation = "설명을 준비 중…",
        cleanupOcr = "OCR 정리",
        explain = "설명",
        copyOriginal = "원문 복사",
        copyCleaned = "정리본 복사",
        copyTranslation = "번역 복사",
        dismissMessage = "닫기"
    )
    else -> OcrUiText(
        screenTitle = "OCR / Перевод",
        back = "Назад",
        pagePreviewDescription = "Предпросмотр страницы комикса",
        translationProfileTitle = "Профиль перевода",
        sourceLanguage = "Язык текста",
        ocrLanguage = "Язык OCR",
        targetLanguage = "Перевести на",
        translationMode = "Режим",
        transportPrefix = "Режим перевода берётся из настроек.",
        transportAuto = "Авто",
        transportOffline = "Офлайн",
        transportOnline = "Онлайн",
        textModeTitle = "Текстовый режим",
        textModeHint = "Введите или вставьте текст, затем переведите его, откройте словарь для слова или получите пояснение.",
        imageModeTitle = "OCR-режим по изображению",
        imageModeHint = "Используйте изображение страницы, чтобы найти текстовые блоки, перевести всю страницу или открыть отдельный блок по нажатию.",
        pickOtherImage = "Другое изображение",
        manualMode = "Переключиться в текстовый режим",
        standaloneTitle = "Отдельный перевод",
        standaloneHint = "В этом режиме можно переводить введённый текст или выбрать изображение страницы и запустить OCR с наложением перевода даже вне ридера.",
        pickPageImage = "Выбрать изображение страницы",
        manualInputLabel = "Текст для перевода",
        manualInputPlaceholder = "Вставьте слово, фразу или короткий абзац",
        manualActionsTitle = "Что можно сделать с этим текстом",
        manualActionsWordHint = "Для одного слова можно сразу открыть словарь или получить короткое пояснение.",
        manualActionsPhraseHint = "Для фразы или короткого абзаца сначала логичнее перевести текст, а затем при необходимости открыть пояснение.",
        imageActionsTitle = "Что можно сделать с этой страницей",
        imageActionsInitialHint = "Если нужен перевод всей страницы с наложением, начните с перевода страницы. Если сначала хотите проверить исходный текст, запустите только OCR.",
        imageActionsRecognizedHint = "Текстовые блоки уже найдены. Теперь можно перевести всю страницу или открыть карточку конкретного блока.",
        imageActionsTranslatedHint = "Перевод страницы уже готов. Можно обновить OCR, поменять режим наложения или нажать на блок для детального просмотра.",
        dictionary = "Словарь",
        dictionaryLemma = "Лемма",
        dictionaryPartOfSpeech = "Часть речи",
        dictionaryMeanings = "Значения",
        dictionaryForms = "Форма в тексте",
        translating = "Перевожу…",
        translate = "Перевести",
        translateVisiblePage = "Перевести видимую страницу",
        recognizeOnly = "Только распознать текст",
        recognizingPage = "Распознаю страницу…",
        translatingPage = "Перевожу страницу…",
        recognizedText = "Распознанный текст",
        textBlocksPrefix = "Текстовые блоки",
        blockPrefix = "Блок",
        tapForBlockCard = "Нажмите для карточки блока",
        translation = "Перевод",
        saveNote = "Сохранить как заметку к странице",
        hideOverlay = "Скрыть наложение",
        showOverlay = "Показать наложение",
        bubblePreview = "Предпросмотр баббла",
        overlayMode = "Режим наложения",
        translatedBlocksPrefix = "Переведённые блоки",
        translatedBlockPrefix = "Перевод блока",
        translationBlockTitle = "Блок перевода",
        original = "Оригинал",
        contextTitle = "Соседний контекст",
        contextBefore = "Перед",
        contextAfter = "После",
        translatingBlock = "Перевожу блок…",
        blockTranslationPending = "Перевод для этого блока ещё не готов.",
        cleanedOcr = "Очищенный OCR",
        cleaningOcr = "Очищаем текст…",
        explanation = "Пояснение",
        preparingExplanation = "Готовим пояснение…",
        cleanupOcr = "Очистить OCR",
        explain = "Объяснить",
        copyOriginal = "Копировать оригинал",
        copyCleaned = "Копировать очищенный",
        copyTranslation = "Копировать перевод",
        dismissMessage = "Закрыть"
    )
}

fun ocrBlockTypeLabel(type: OcrBlockType, language: String): String = when (type) {
    OcrBlockType.SPEECH -> when (language) {
        "en" -> "Dialogue"
        "ja" -> "会話"
        "zh" -> "对话"
        "ko" -> "대사"
        else -> "Диалог"
    }
    OcrBlockType.NARRATION -> when (language) {
        "en" -> "Narration"
        "ja" -> "地の文"
        "zh" -> "旁白"
        "ko" -> "내레이션"
        else -> "Наррация"
    }
    OcrBlockType.SFX -> "SFX"
    OcrBlockType.UNKNOWN -> when (language) {
        "en" -> "Unknown"
        "ja" -> "未分類"
        "zh" -> "未分类"
        "ko" -> "미분류"
        else -> "Неопределённый"
    }
}

fun ocrAvailabilityTitle(language: String): String = when (language) {
    "en" -> "What is available for this pair"
    "ja" -> "この言語ペアで使えるもの"
    "zh" -> "这组语言当前可用的能力"
    "ko" -> "이 언어 쌍에서 가능한 기능"
    else -> "Что доступно для этой языковой пары"
}

fun ocrAvailabilityChecking(language: String): String = when (language) {
    "en" -> "Checking dictionary, offline model, and explain options…"
    "ja" -> "辞書・オフラインモデル・説明オプションを確認中…"
    "zh" -> "正在检查词典、离线模型和解释能力…"
    "ko" -> "사전, 오프라인 모델, 설명 가능 여부를 확인하는 중…"
    else -> "Проверяем словарь, офлайн-модель и режимы пояснения…"
}

fun ocrAvailabilitySameLanguage(language: String): String = when (language) {
    "en" -> "Source and target language are the same."
    "ja" -> "入力言語と翻訳先が同じです。"
    "zh" -> "源语言和目标语言相同。"
    "ko" -> "원본 언어와 대상 언어가 같습니다."
    else -> "Исходный и целевой язык совпадают."
}

fun ocrAvailabilityDictionaryReady(language: String): String = when (language) {
    "en" -> "Dictionary fallback is ready for single words"
    "ja" -> "単語用の辞書フォールバックが利用できます"
    "zh" -> "单词可使用词典回退"
    "ko" -> "단어 하나에는 사전 경로를 사용할 수 있습니다"
    else -> "Для одного слова доступен словарный путь"
}

fun ocrAvailabilityDictionaryMissing(language: String): String = when (language) {
    "en" -> "No direct dictionary fallback for this pair"
    "ja" -> "このペアには直接の辞書フォールバックがありません"
    "zh" -> "这组语言没有直接词典回退"
    "ko" -> "이 언어 쌍에는 직접 사전 경로가 없습니다"
    else -> "Для этой пары нет прямого словарного пути"
}

fun ocrAvailabilityOfflineReady(language: String): String = when (language) {
    "en" -> "Offline model is already installed"
    "ja" -> "オフラインモデルはすでにインストール済みです"
    "zh" -> "离线模型已安装"
    "ko" -> "오프라인 모델이 이미 설치되어 있습니다"
    else -> "Офлайн-модель уже установлена"
}

fun ocrAvailabilityOfflineCanDownload(language: String): String = when (language) {
    "en" -> "Offline model can be downloaded now"
    "ja" -> "オフラインモデルを今すぐダウンロードできます"
    "zh" -> "现在可以下载离线模型"
    "ko" -> "오프라인 모델을 지금 다운로드할 수 있습니다"
    else -> "Офлайн-модель можно скачать сейчас"
}

fun ocrAvailabilityOfflineNeedsNetwork(language: String): String = when (language) {
    "en" -> "Offline model needs network once for download"
    "ja" -> "オフラインモデルの準備には一度ネット接続が必要です"
    "zh" -> "离线模型需要联网下载一次"
    "ko" -> "오프라인 모델은 한 번 네트워크 다운로드가 필요합니다"
    else -> "Для офлайн-модели нужен один доступ к сети для загрузки"
}

fun ocrAvailabilityOfflineUnsupported(language: String): String = when (language) {
    "en" -> "Offline translation is not supported for this pair"
    "ja" -> "この言語ペアはオフライン翻訳に対応していません"
    "zh" -> "这组语言不支持离线翻译"
    "ko" -> "이 언어 쌍은 오프라인 번역을 지원하지 않습니다"
    else -> "Для этой языковой пары офлайн-перевод не поддерживается"
}

fun ocrAvailabilityExplainWord(language: String): String = when (language) {
    "en" -> "Single-word explanation can work locally"
    "ja" -> "単語ひとつの説明はローカルで使えます"
    "zh" -> "单词解释可以本地工作"
    "ko" -> "단어 하나 설명은 로컬로 동작할 수 있습니다"
    else -> "Пояснение для одного слова может работать локально"
}

fun ocrAvailabilityExplainPhraseEnabled(language: String): String = when (language) {
    "en" -> "Extended phrase explanation is enabled"
    "ja" -> "拡張フレーズ説明が有効です"
    "zh" -> "扩展短语解释已开启"
    "ko" -> "확장 구문 설명이 켜져 있습니다"
    else -> "Расширенное пояснение для фраз включено"
}

fun ocrAvailabilityExplainPhraseDisabled(language: String): String = when (language) {
    "en" -> "Local phrase explanation is available"
    "ja" -> "ローカルのフレーズ説明は利用できます"
    "zh" -> "本地短语解释可用"
    "ko" -> "로컬 구문 설명을 사용할 수 있습니다"
    else -> "Локальное пояснение для фраз доступно"
}

fun ocrDownloadOfflineModelAction(language: String): String = when (language) {
    "en" -> "Prepare offline model"
    "ja" -> "オフラインモデルを準備"
    "zh" -> "准备离线模型"
    "ko" -> "오프라인 모델 준비"
    else -> "Подготовить офлайн-модель"
}

fun ocrRepeatBlockOcrAction(language: String): String = when (language) {
    "en" -> "Repeat OCR"
    "ja" -> "OCR をやり直す"
    "zh" -> "重新执行 OCR"
    "ko" -> "OCR 다시 실행"
    else -> "Повторить OCR"
}

fun ocrTranslateBlockAction(language: String, hasTranslation: Boolean): String = when (language) {
    "en" -> if (hasTranslation) "Translate again" else "Translate block"
    "ja" -> if (hasTranslation) "もう一度翻訳" else "ブロックを翻訳"
    "zh" -> if (hasTranslation) "重新翻译" else "翻译文本块"
    "ko" -> if (hasTranslation) "다시 번역" else "블록 번역"
    else -> if (hasTranslation) "Перевести заново" else "Перевести блок"
}

fun ocrRerunningBlockOcr(language: String): String = when (language) {
    "en" -> "Running OCR again for the selected block…"
    "ja" -> "選択したブロックに対して OCR を再実行中…"
    "zh" -> "正在重新对所选文本块执行 OCR…"
    "ko" -> "선택한 블록에 대해 OCR을 다시 실행하는 중…"
    else -> "Повторно запускаем OCR для выбранного блока…"
}

fun ocrDetectedLanguageChipLabel(detectedLanguage: String?, language: String): String? {
    val normalized = detectedLanguage?.trim()?.lowercase()?.takeIf { it.isNotBlank() } ?: return null
    val shortLabel = translationLanguageShortLabel(normalized)
    return when (language) {
        "en" -> "OCR: $shortLabel"
        "ja" -> "OCR: $shortLabel"
        "zh" -> "OCR：$shortLabel"
        "ko" -> "OCR: $shortLabel"
        else -> "OCR: $shortLabel"
    }
}

fun ocrConfidenceChipLabel(confidence: Float?, language: String): String? {
    val normalized = confidence?.takeIf { it > 0f } ?: return null
    val percent = (normalized * 100f).coerceIn(0f, 100f).toInt()
    return when (language) {
        "en" -> "Confidence: $percent%"
        "ja" -> "信頼度: $percent%"
        "zh" -> "置信度：$percent%"
        "ko" -> "신뢰도: $percent%"
        else -> "Уверенность: $percent%"
    }
}

fun ocrOverlayTranslationMetaLabel(
    mode: TranslationMode?,
    provider: TranslationProviderType,
    isOffline: Boolean,
    language: String
): String? {
    val modeLabel = ocrTranslationModeLabel(
        mode = if (mode == null && isOffline) TranslationMode.OFFLINE_MT else mode,
        language = language
    )
    val providerLabel = when (provider) {
        TranslationProviderType.ML_KIT -> "ML Kit"
        TranslationProviderType.LOCAL_DICTIONARY -> when (language) {
            "en" -> "Dictionary"
            "ja" -> "辞書"
            "zh" -> "词典"
            "ko" -> "사전"
            else -> "Словарь"
        }
        TranslationProviderType.ONLINE_PROVIDER -> when (language) {
            "en" -> "Online provider"
            "ja" -> "オンライン翻訳"
            "zh" -> "在线翻译"
            "ko" -> "온라인 번역"
            else -> "Онлайн-перевод"
        }
        TranslationProviderType.LLM_PROVIDER -> when (language) {
            "en" -> "Explain provider"
            "ja" -> "解説サービス"
            "zh" -> "解释服务"
            "ko" -> "설명 서비스"
            else -> "Сервис пояснений"
        }
        TranslationProviderType.UNKNOWN -> null
    }
    return listOfNotNull(modeLabel, providerLabel).takeIf { it.isNotEmpty() }?.joinToString(" · ")
}
