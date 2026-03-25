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
    val controlCenterTitle: String,
    val controlCenterAction: String,
    val controlTabReading: String,
    val controlTabStyle: String,
    val controlTabServices: String,
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
    val styleUnavailableTitle: String,
    val styleUnavailableBody: String,
    val displaySectionTitle: String,
    val mechanicsSectionTitle: String,
    val panelSectionTitle: String,
    val typographySectionTitle: String,
    val readingModeTitle: String,
    val screenTimeoutTitle: String,
    val pageAnimationTitle: String,
    val pageAnimationDisabledHint: String,
    val landscapeSpreadTitle: String,
    val landscapeSpreadHint: String,
    val volumePagingTitle: String,
    val volumePagingHint: String,
    val chromeAutoHideTitle: String,
    val chromeAutoHideHint: String,
    val topToolbarOpacityTitle: String,
    val bottomToolbarOpacityTitle: String,
    val toolbarBlurTitle: String,
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
    val saveQuote: String,
    val translationLoading: String,
    val explainLoading: String,
    val copyTranslation: String,
    val servicesQuickActionsTitle: String,
    val servicesSelectionTitle: String,
    val servicesSelectionBody: String,
    val servicesOcrBody: String,
    val servicesTtsTitle: String,
    val servicesTtsBody: String,
    val servicesTtsUnavailableBody: String,
    val ttsPlay: String,
    val ttsPause: String,
    val ttsStop: String,
    val ttsPrevious: String,
    val ttsNext: String,
    val ttsVoiceTitle: String,
    val ttsVoiceDefault: String,
    val ttsSpeedTitle: String,
    val ttsPitchTitle: String,
    val ttsVolumeTitle: String,
    val ttsSleepTimerTitle: String,
    val ttsReadyLabel: String,
    val ttsUnavailableLabel: String,
    val quoteSaved: String,
    val quoteUpdated: String,
    val quoteSaveFailed: String,
    val titleCompleted: String,
    val titleCompletedNeutral: String,
    val chapterReached: String,
    val chapterReachedNeutral: String,
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
        controlCenterTitle = "Reader controls",
        controlCenterAction = "Reader controls",
        controlTabReading = "Reading",
        controlTabStyle = "Style",
        controlTabServices = "Services",
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
        styleUnavailableTitle = "Style is text-only",
        styleUnavailableBody = "Typography controls appear for text books. Comics and image formats use the Reading tab instead.",
        displaySectionTitle = "Display",
        mechanicsSectionTitle = "Mechanics",
        panelSectionTitle = "Panels",
        typographySectionTitle = "Typography",
        readingModeTitle = "Reading mode",
        screenTimeoutTitle = "Screen timeout",
        pageAnimationTitle = "Page animation",
        pageAnimationDisabledHint = "Page animation is disabled in vertical strip mode.",
        landscapeSpreadTitle = "Landscape spread",
        landscapeSpreadHint = "Show a wider spread on large landscape screens.",
        volumePagingTitle = "Volume buttons paging",
        volumePagingHint = "Volume up goes back, volume down goes forward.",
        chromeAutoHideTitle = "Hide toolbars while reading",
        chromeAutoHideHint = "Bring them back with a center tap.",
        topToolbarOpacityTitle = "Top toolbar opacity",
        bottomToolbarOpacityTitle = "Bottom toolbar opacity",
        toolbarBlurTitle = "Panel blur",
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
        saveQuote = "Save quote",
        translationLoading = "Translating selection…",
        explainLoading = "Preparing explanation…",
        copyTranslation = "Copy",
        servicesQuickActionsTitle = "Quick actions",
        servicesSelectionTitle = "Selection tools",
        servicesSelectionBody = "Select text to translate it, open the dictionary, ask for an explanation, or save a quote.",
        servicesOcrBody = "Use OCR and translation on the current page, then jump back into reading.",
        servicesTtsTitle = "Read aloud",
        servicesTtsBody = "Read the current text page aloud with the system voice, then stay inside the same reader services panel.",
        servicesTtsUnavailableBody = "Read aloud is available for text books. Comics and image formats keep OCR and translation here instead.",
        ttsPlay = "Play",
        ttsPause = "Pause",
        ttsStop = "Stop",
        ttsPrevious = "Previous",
        ttsNext = "Next",
        ttsVoiceTitle = "Voice",
        ttsVoiceDefault = "System default",
        ttsSpeedTitle = "Speed",
        ttsPitchTitle = "Pitch",
        ttsVolumeTitle = "Volume",
        ttsSleepTimerTitle = "Sleep timer",
        ttsReadyLabel = "Ready",
        ttsUnavailableLabel = "Unavailable",
        quoteSaved = "Quote saved",
        quoteUpdated = "Quote updated",
        quoteSaveFailed = "Failed to save quote",
        titleCompleted = "Marker: title completed. Nice checkpoint.",
        titleCompletedNeutral = "Title completed. Nice checkpoint.",
        chapterReached = "Marker: chapter reached: %s.",
        chapterReachedNeutral = "Chapter reached: %s.",
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
        controlCenterTitle = "読書コントロール",
        controlCenterAction = "読書コントロール",
        controlTabReading = "読書",
        controlTabStyle = "表示",
        controlTabServices = "サービス",
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
        styleUnavailableTitle = "表示設定はテキスト用です",
        styleUnavailableBody = "文字組みの調整はテキスト本で利用できます。コミックや画像形式では読書タブを使います。",
        displaySectionTitle = "表示",
        mechanicsSectionTitle = "操作",
        panelSectionTitle = "パネル",
        typographySectionTitle = "文字組み",
        readingModeTitle = "読書モード",
        screenTimeoutTitle = "画面を消すまで",
        pageAnimationTitle = "ページアニメーション",
        pageAnimationDisabledHint = "縦スクロールではページアニメーションを使えません。",
        landscapeSpreadTitle = "横向き見開き",
        landscapeSpreadHint = "大きな横画面で見開きを使います。",
        volumePagingTitle = "音量ボタンでページ送り",
        volumePagingHint = "音量上で戻る、音量下で進む。",
        chromeAutoHideTitle = "読書中はツールバーを自動で隠す",
        chromeAutoHideHint = "中央をタップすると再表示します。",
        topToolbarOpacityTitle = "上部ツールバーの透明度",
        bottomToolbarOpacityTitle = "下部ツールバーの透明度",
        toolbarBlurTitle = "パネルのブラー",
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
        saveQuote = "引用を保存",
        translationLoading = "選択範囲を翻訳中…",
        explainLoading = "解説を準備しています…",
        copyTranslation = "コピー",
        servicesQuickActionsTitle = "クイック操作",
        servicesSelectionTitle = "選択ツール",
        servicesSelectionBody = "文字を選択すると、翻訳、辞書、解説、引用保存をこの読書フローの中で使えます。",
        servicesOcrBody = "現在のページで OCR と翻訳を使い、そのまま読書に戻れます。",
        servicesTtsTitle = "読み上げ",
        servicesTtsBody = "現在のテキストページをシステム音声で読み上げ、この読書サービス内でそのまま使えます。",
        servicesTtsUnavailableBody = "読み上げはテキスト本で利用できます。コミックや画像形式では OCR と翻訳をここに残します。",
        ttsPlay = "再生",
        ttsPause = "一時停止",
        ttsStop = "停止",
        ttsPrevious = "前へ",
        ttsNext = "次へ",
        ttsVoiceTitle = "音声",
        ttsVoiceDefault = "システム既定",
        ttsSpeedTitle = "速度",
        ttsPitchTitle = "ピッチ",
        ttsVolumeTitle = "音量",
        ttsSleepTimerTitle = "スリープタイマー",
        ttsReadyLabel = "準備完了",
        ttsUnavailableLabel = "利用不可",
        quoteSaved = "引用を保存しました",
        quoteUpdated = "引用を更新しました",
        quoteSaveFailed = "引用を保存できませんでした",
        titleCompleted = "マーカー: 読了です。いい区切りでした。",
        titleCompletedNeutral = "読了です。いい区切りでした。",
        chapterReached = "マーカー: 新しい章に入りました: %s。",
        chapterReachedNeutral = "新しい章に入りました: %s。",
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
        controlCenterTitle = "阅读控制",
        controlCenterAction = "阅读控制",
        controlTabReading = "阅读",
        controlTabStyle = "样式",
        controlTabServices = "服务",
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
        styleUnavailableTitle = "样式仅适用于文本书籍",
        styleUnavailableBody = "排版控制会在文本书籍中显示。漫画和图片格式请使用“阅读”标签页。",
        displaySectionTitle = "显示",
        mechanicsSectionTitle = "操作",
        panelSectionTitle = "面板",
        typographySectionTitle = "排版",
        readingModeTitle = "阅读模式",
        screenTimeoutTitle = "息屏时间",
        pageAnimationTitle = "翻页动画",
        pageAnimationDisabledHint = "纵向卷轴模式下无法使用翻页动画。",
        landscapeSpreadTitle = "横屏双页",
        landscapeSpreadHint = "在较大的横屏上显示更宽的跨页。",
        volumePagingTitle = "音量键翻页",
        volumePagingHint = "音量加返回，音量减前进。",
        chromeAutoHideTitle = "阅读时自动隐藏工具栏",
        chromeAutoHideHint = "点击中间区域可重新显示。",
        topToolbarOpacityTitle = "顶部工具栏透明度",
        bottomToolbarOpacityTitle = "底部工具栏透明度",
        toolbarBlurTitle = "面板模糊",
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
        saveQuote = "保存摘录",
        translationLoading = "正在翻译选中文本…",
        explainLoading = "正在生成解释…",
        copyTranslation = "复制",
        servicesQuickActionsTitle = "快捷操作",
        servicesSelectionTitle = "选中文本工具",
        servicesSelectionBody = "选中文字后，可在阅读中直接翻译、查词典、查看解释或保存摘录。",
        servicesOcrBody = "可对当前页面执行 OCR 与翻译，然后直接回到阅读。",
        servicesTtsTitle = "朗读",
        servicesTtsBody = "用系统语音朗读当前文本页，并继续留在同一个阅读服务面板内。",
        servicesTtsUnavailableBody = "朗读仅适用于文本书籍。漫画和图片格式会继续在这里使用 OCR 与翻译。",
        ttsPlay = "播放",
        ttsPause = "暂停",
        ttsStop = "停止",
        ttsPrevious = "上一段",
        ttsNext = "下一段",
        ttsVoiceTitle = "声音",
        ttsVoiceDefault = "系统默认",
        ttsSpeedTitle = "语速",
        ttsPitchTitle = "音高",
        ttsVolumeTitle = "音量",
        ttsSleepTimerTitle = "睡眠定时",
        ttsReadyLabel = "已就绪",
        ttsUnavailableLabel = "不可用",
        quoteSaved = "摘录已保存",
        quoteUpdated = "摘录已更新",
        quoteSaveFailed = "无法保存摘录",
        titleCompleted = "Marker：这本书读完了，是个自然的收尾点。",
        titleCompletedNeutral = "这本书读完了，是个自然的收尾点。",
        chapterReached = "Marker：进入新章节：%s。",
        chapterReachedNeutral = "进入新章节：%s。",
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
        controlCenterTitle = "읽기 컨트롤",
        controlCenterAction = "읽기 컨트롤",
        controlTabReading = "읽기",
        controlTabStyle = "스타일",
        controlTabServices = "서비스",
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
        styleUnavailableTitle = "스타일은 텍스트 책 전용입니다",
        styleUnavailableBody = "타이포그래피 조절은 텍스트 책에서만 보입니다. 만화와 이미지 형식은 읽기 탭을 사용하세요.",
        displaySectionTitle = "화면",
        mechanicsSectionTitle = "조작",
        panelSectionTitle = "패널",
        typographySectionTitle = "텍스트",
        readingModeTitle = "읽기 모드",
        screenTimeoutTitle = "화면 꺼짐 시간",
        pageAnimationTitle = "페이지 애니메이션",
        pageAnimationDisabledHint = "세로 스크롤 모드에서는 페이지 애니메이션을 사용할 수 없습니다.",
        landscapeSpreadTitle = "가로 펼침",
        landscapeSpreadHint = "큰 가로 화면에서 더 넓은 펼침을 사용합니다.",
        volumePagingTitle = "볼륨 버튼 페이지 넘김",
        volumePagingHint = "볼륨 업은 이전, 볼륨 다운은 다음 페이지입니다.",
        chromeAutoHideTitle = "읽는 동안 툴바 자동 숨김",
        chromeAutoHideHint = "가운데를 탭하면 다시 표시합니다.",
        topToolbarOpacityTitle = "상단 툴바 투명도",
        bottomToolbarOpacityTitle = "하단 툴바 투명도",
        toolbarBlurTitle = "패널 블러",
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
        saveQuote = "문구 저장",
        translationLoading = "선택한 텍스트를 번역하는 중…",
        explainLoading = "설명을 준비하는 중…",
        copyTranslation = "복사",
        servicesQuickActionsTitle = "빠른 작업",
        servicesSelectionTitle = "선택 도구",
        servicesSelectionBody = "텍스트를 선택하면 번역, 사전, 설명, 인용 저장을 읽기 흐름 안에서 바로 쓸 수 있습니다.",
        servicesOcrBody = "현재 페이지에서 OCR과 번역을 사용하고 곧바로 읽기로 돌아올 수 있습니다.",
        servicesTtsTitle = "읽어주기",
        servicesTtsBody = "현재 텍스트 페이지를 시스템 음성으로 읽어 주고, 같은 읽기 서비스 패널 안에서 이어서 조정할 수 있습니다.",
        servicesTtsUnavailableBody = "읽어주기는 텍스트 책에서만 사용할 수 있습니다. 만화와 이미지 형식은 여기서 OCR과 번역을 계속 사용합니다.",
        ttsPlay = "재생",
        ttsPause = "일시정지",
        ttsStop = "정지",
        ttsPrevious = "이전",
        ttsNext = "다음",
        ttsVoiceTitle = "음성",
        ttsVoiceDefault = "시스템 기본",
        ttsSpeedTitle = "속도",
        ttsPitchTitle = "피치",
        ttsVolumeTitle = "볼륨",
        ttsSleepTimerTitle = "슬립 타이머",
        ttsReadyLabel = "준비됨",
        ttsUnavailableLabel = "사용 불가",
        quoteSaved = "문구를 저장했습니다",
        quoteUpdated = "문구를 업데이트했습니다",
        quoteSaveFailed = "문구를 저장할 수 없습니다",
        titleCompleted = "Marker: 이 작품을 끝까지 읽었어요. 좋은 체크포인트예요.",
        titleCompletedNeutral = "이 작품을 끝까지 읽었어요. 좋은 체크포인트예요.",
        chapterReached = "Marker: 새로운 챕터에 들어왔어요: %s.",
        chapterReachedNeutral = "새로운 챕터에 들어왔어요: %s.",
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
        controlCenterTitle = "Панель чтения",
        controlCenterAction = "Панель чтения",
        controlTabReading = "Чтение",
        controlTabStyle = "Стиль",
        controlTabServices = "Сервисы",
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
        styleUnavailableTitle = "Стиль доступен для текстовых книг",
        styleUnavailableBody = "Типографика настраивается для текстовых форматов. Для комиксов и изображений используйте вкладку «Чтение».",
        displaySectionTitle = "Экран",
        mechanicsSectionTitle = "Механика",
        panelSectionTitle = "Панели",
        typographySectionTitle = "Типографика",
        readingModeTitle = "Режим чтения",
        screenTimeoutTitle = "Отключение экрана",
        pageAnimationTitle = "Анимация страниц",
        pageAnimationDisabledHint = "В режиме вертикальной ленты анимация страниц недоступна.",
        landscapeSpreadTitle = "Разворот в альбоме",
        landscapeSpreadHint = "На широком экране в альбомной ориентации показывать разворот.",
        volumePagingTitle = "Листание кнопками громкости",
        volumePagingHint = "Громкость вверх — назад, вниз — вперёд.",
        chromeAutoHideTitle = "Скрывать тулбары во время чтения",
        chromeAutoHideHint = "Вернуть панели можно тапом по центру.",
        topToolbarOpacityTitle = "Прозрачность верхней панели",
        bottomToolbarOpacityTitle = "Прозрачность нижней панели",
        toolbarBlurTitle = "Блюр панелей",
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
        saveQuote = "Сохранить цитату",
        translationLoading = "Переводим выделенный фрагмент…",
        explainLoading = "Готовим пояснение…",
        copyTranslation = "Скопировать",
        servicesQuickActionsTitle = "Быстрые действия",
        servicesSelectionTitle = "Работа с выделением",
        servicesSelectionBody = "Выделяйте текст, чтобы сразу переводить, открывать словарь, получать объяснение или сохранять цитату.",
        servicesOcrBody = "Можно запустить OCR и перевод для текущей страницы и сразу вернуться к чтению.",
        servicesTtsTitle = "Озвучивание",
        servicesTtsBody = "Озвучивайте текущую текстовую страницу системным голосом и управляйте этим прямо в том же блоке сервисов.",
        servicesTtsUnavailableBody = "Озвучивание работает для текстовых книг. Для комиксов и изображений здесь остаются OCR и перевод.",
        ttsPlay = "Старт",
        ttsPause = "Пауза",
        ttsStop = "Стоп",
        ttsPrevious = "Назад",
        ttsNext = "Дальше",
        ttsVoiceTitle = "Голос",
        ttsVoiceDefault = "Системный по умолчанию",
        ttsSpeedTitle = "Скорость",
        ttsPitchTitle = "Тон",
        ttsVolumeTitle = "Громкость",
        ttsSleepTimerTitle = "Таймер сна",
        ttsReadyLabel = "Готово",
        ttsUnavailableLabel = "Недоступно",
        quoteSaved = "Цитата сохранена",
        quoteUpdated = "Цитата обновлена",
        quoteSaveFailed = "Не удалось сохранить цитату",
        titleCompleted = "Маркер: тайтл дочитан. Хорошая точка остановки.",
        titleCompletedNeutral = "Тайтл дочитан. Хорошая точка остановки.",
        chapterReached = "Маркер: новая глава: %s.",
        chapterReachedNeutral = "Новая глава: %s.",
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
