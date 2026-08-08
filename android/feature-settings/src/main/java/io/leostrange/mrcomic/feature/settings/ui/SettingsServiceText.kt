// Phase S2 (2026-08-03): service i18n texts from SettingsScreen.kt.

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.locale.translationLanguageOptions
import io.leostrange.mrcomic.core.ui.theme.style

/* ──── TranslationSettingsMapText ──── */
internal data class TranslationSettingsMapText(
    val overviewTitle: String,
    val overviewDescription: String,
    val areasTitle: String,
    val languagesTitle: String,
    val languagesDescription: String,
    val ocrTitle: String,
    val ocrDescription: String,
    val overlayTitle: String,
    val overlayDescription: String,
    val servicesTitle: String,
    val servicesDescription: String,
    val dictionariesTitle: String,
    val dictionariesDescription: String
)


/* ──── TranslationServicesGatewayText ──── */
internal data class TranslationServicesGatewayText(
    val previewSubtitle: String,
    val ownershipTitle: String,
    val ownershipBody: String,
    val readAloudHint: String,
    val openButtonLabel: String
)


/* ──── ServiceSectionText ──── */
internal data class ServiceSectionText(
    val title: String,
    val description: String,
    val leadTitle: String,
    val leadDescription: String,
    val statusTitle: String,
    val statusBody: String,
    val roadmapTitle: String,
    val roadmapItems: List<String>
)


/* ──── AiServicesOverviewText ──── */
internal data class AiServicesOverviewText(
    val machineTranslationTitle: String,
    val machineTranslationHint: String,
    val localExplainTitle: String,
    val localExplainHint: String,
    val advancedExplainTitle: String,
    val advancedExplainHint: String,
    val summaryTitle: String,
    val summaryHint: String,
    val ocrTitle: String,
    val ocrHint: String,
    val providersTitle: String,
    val providersHint: String,
    val routeLabel: String,
    val statusLabel: String,
    val providerLabel: String,
    val expandedExplainLabel: String,
    val localProviderValue: String,
    val configuredValue: String,
    val notConnectedValue: String,
    val localFirstStatus: String,
    val onlineReadyStatus: String,
    val onlineNeedsNetworkStatus: String,
    val offlineStatus: String,
    val offlineReadyStatus: String,
    val offlineModelMissingStatus: String,
    val offlineModelNeedsNetworkStatus: String,
    val offlinePairUnsupportedStatus: String,
    val onlineUnavailableStatus: String,
    val translationDisabledStatus: String,
    val localExplainStatus: String,
    val advancedExplainDisabledStatus: String,
    val extendedExplainWaitingStatus: String,
    val summaryUnavailableStatus: String,
    val providersReadyStatus: String,
    val providersNeedNetworkStatus: String,
    val providersNeedValidationStatus: String,
    val providersUnavailableStatus: String
)


/* ──── translationSettingsMapText ──── */
internal fun translationSettingsMapText(language: String): TranslationSettingsMapText = when (language) {
    "en" -> TranslationSettingsMapText(
        overviewTitle = "Translation areas",
        overviewDescription = "Keep user translation behavior, OCR input, overlay, and service controls in separate layers.",
        areasTitle = "Translation areas",
        languagesTitle = "Behavior & languages",
        languagesDescription = "Translation mode, source language, and target language.",
        ocrTitle = "OCR input",
        ocrDescription = "OCR source language and comic filters for dialogue and SFX.",
        overlayTitle = "Overlay",
        overlayDescription = "Overlay opacity, font scale, and presentation style.",
        servicesTitle = "Services",
        servicesDescription = "Transport, Explain, and provider routes now live in AI Services.",
        dictionariesTitle = "Dictionaries",
        dictionariesDescription = "Download offline dictionaries for translation and lookup."
    )
    "ja" -> TranslationSettingsMapText(
        overviewTitle = "翻訳エリア",
        overviewDescription = "翻訳の挙動、OCR 入力、オーバーレイ、サービス制御を別々の層に整理します。",
        areasTitle = "翻訳エリア",
        languagesTitle = "挙動と言語",
        languagesDescription = "翻訳モード、原文言語、翻訳先言語。",
        ocrTitle = "OCR 入力",
        ocrDescription = "OCR の入力言語と、セリフや効果音のフィルター。",
        overlayTitle = "オーバーレイ",
        overlayDescription = "不透明度、フォント倍率、表示スタイル。",
        servicesTitle = "サービス",
        servicesDescription = "転送方式、Explain、provider 経路は AI Services に集約されました。",
        dictionariesTitle = "辞書",
        dictionariesDescription = "翻訳・辞書検索用のオフライン辞書をダウンロード。"
    )
    "zh" -> TranslationSettingsMapText(
        overviewTitle = "翻译区域",
        overviewDescription = "把翻译行为、OCR 输入、覆盖层和服务控制分开，避免混在一起。",
        areasTitle = "翻译区域",
        languagesTitle = "行为与语言",
        languagesDescription = "翻译模式、源语言和目标语言。",
        ocrTitle = "OCR 输入",
        ocrDescription = "OCR 识别语言，以及对白和拟声词过滤。",
        overlayTitle = "覆盖层",
        overlayDescription = "透明度、字体缩放和显示样式。",
        servicesTitle = "服务",
        servicesDescription = "传输、Explain 和 provider 路径现在集中在 AI Services。",
        dictionariesTitle = "词典",
        dictionariesDescription = "下载离线词典用于翻译和查询。"
    )
    "ko" -> TranslationSettingsMapText(
        overviewTitle = "번역 영역",
        overviewDescription = "번역 동작, OCR 입력, 오버레이, 서비스 제어를 분리해 구조를 더 명확하게 유지합니다.",
        areasTitle = "번역 영역",
        languagesTitle = "동작과 언어",
        languagesDescription = "번역 모드, 원문 언어, 대상 언어.",
        ocrTitle = "OCR 입력",
        ocrDescription = "OCR 입력 언어와 말풍선/SFX 필터.",
        overlayTitle = "오버레이",
        overlayDescription = "투명도, 글꼴 비율, 표시 스타일.",
        servicesTitle = "서비스",
        servicesDescription = "전송, Explain, provider 경로는 이제 AI Services에 모였습니다.",
        dictionariesTitle = "사전",
        dictionariesDescription = "번역 및 조회를 위한 오프라인 사전을 다운로드합니다."
    )
    else -> TranslationSettingsMapText(
        overviewTitle = "Зоны перевода",
        overviewDescription = "Разнесите поведение перевода, OCR-ввод, оверлей и сервисные переключатели по разным слоям.",
        areasTitle = "Зоны перевода",
        languagesTitle = "Поведение и языки",
        languagesDescription = "Режим перевода, язык источника и язык результата.",
        ocrTitle = "OCR-ввод",
        ocrDescription = "Язык OCR и фильтры для реплик и звуковых эффектов.",
        overlayTitle = "Оверлей",
        overlayDescription = "Прозрачность, масштаб шрифта и стиль показа.",
        servicesTitle = "Сервисы",
        servicesDescription = "Транспорт, Explain и маршруты провайдеров теперь собраны в AI Services.",
        dictionariesTitle = "Словари",
        dictionariesDescription = "Скачать оффлайн-словари для перевода и поиска."
    )
}

/* ──── translationServicesGatewayText ──── */
internal fun translationServicesGatewayText(
    language: String,
    aiServicesTitle: String,
    readAloudTitle: String
): TranslationServicesGatewayText = when (language) {
    "en" -> TranslationServicesGatewayText(
        previewSubtitle = "Service-level controls now live in $aiServicesTitle.",
        ownershipTitle = "Where service controls live now",
        ownershipBody = "Translation keeps languages, OCR behavior, and overlay presentation here. Transport, Explain, summary, and provider-level routing now open through $aiServicesTitle.",
        readAloudHint = "Voice defaults and TTS-provider controls live in $readAloudTitle.",
        openButtonLabel = "Open $aiServicesTitle"
    )
    "ja" -> TranslationServicesGatewayText(
        previewSubtitle = "サービスレベルの設定は $aiServicesTitle に移動しました。",
        ownershipTitle = "サービス設定の配置",
        ownershipBody = "翻訳には言語、OCR挙動、オーバーレイ表示を残します。転送方式、Explain、summary、provider レベルの経路は $aiServicesTitle から開きます。",
        readAloudHint = "音声の既定値と TTS provider の設定は $readAloudTitle にあります。",
        openButtonLabel = "$aiServicesTitle を開く"
    )
    "zh" -> TranslationServicesGatewayText(
        previewSubtitle = "服务级控制现在统一放到 $aiServicesTitle。",
        ownershipTitle = "服务控制现在放在哪里",
        ownershipBody = "翻译这里保留语言、OCR 行为和覆盖层展示。传输、Explain、摘要以及 provider 级路由现在都从 $aiServicesTitle 打开。",
        readAloudHint = "语音默认值和 TTS provider 控制位于 $readAloudTitle。",
        openButtonLabel = "打开 $aiServicesTitle"
    )
    "ko" -> TranslationServicesGatewayText(
        previewSubtitle = "서비스 레벨 제어는 이제 $aiServicesTitle 에 모였습니다.",
        ownershipTitle = "서비스 제어 위치",
        ownershipBody = "번역에는 언어, OCR 동작, 오버레이 표시만 남깁니다. 전송, Explain, summary, provider 레벨 경로는 이제 $aiServicesTitle 에서 엽니다.",
        readAloudHint = "음성 기본값과 TTS provider 제어는 $readAloudTitle 에 있습니다.",
        openButtonLabel = "$aiServicesTitle 열기"
    )
    else -> TranslationServicesGatewayText(
        previewSubtitle = "Сервисные настройки теперь вынесены в $aiServicesTitle.",
        ownershipTitle = "Где теперь живут сервисные настройки",
        ownershipBody = "В переводе остаются языки, OCR и способ показа. Транспорт, Explain, summary и маршруты внешних провайдеров теперь открываются через $aiServicesTitle.",
        readAloudHint = "Голоса по умолчанию и TTS-провайдеры вынесены в $readAloudTitle.",
        openButtonLabel = "Открыть $aiServicesTitle"
    )
}

/* ──── aiServicesSectionText ──── */
internal fun aiServicesSectionText(language: String): ServiceSectionText = when (language) {
    "en" -> ServiceSectionText(
        title = "AI Services",
        description = "Transport, explain, and future provider-level controls.",
        leadTitle = "AI service layer",
        leadDescription = "Keep provider and transport logic separate from user-facing translation behavior.",
        statusTitle = "Current status",
        statusBody = "This section currently owns transport preference and explain service behavior. Provider selection can land here later without crowding OCR.",
        roadmapTitle = "Next service surfaces",
        roadmapItems = listOf(
            "Provider selection and status",
            "Summary and explain service controls",
            "Usage and rate limits"
        )
    )
    "ja" -> ServiceSectionText(
        title = "AI サービス",
        description = "転送方式、Explain、将来のプロバイダ設定。",
        leadTitle = "AI サービス層",
        leadDescription = "ユーザー向けの翻訳挙動と、プロバイダや転送方式の設定を分離します。",
        statusTitle = "現在の状態",
        statusBody = "このセクションは、転送方式の優先度と Explain サービスの挙動を担当します。今後のプロバイダ選択もここに追加できます。",
        roadmapTitle = "次のサービス面",
        roadmapItems = listOf(
            "プロバイダ選択と状態",
            "要約と Explain のサービス設定",
            "利用量とレート制限"
        )
    )
    "zh" -> ServiceSectionText(
        title = "AI 服务",
        description = "传输、Explain，以及未来的 provider 级控制。",
        leadTitle = "AI 服务层",
        leadDescription = "把用户可见的翻译行为和 provider/transport 逻辑拆开。",
        statusTitle = "当前状态",
        statusBody = "这里现在负责传输偏好和 Explain 行为。以后 provider 选择也应放在这里，而不是挤进 OCR。",
        roadmapTitle = "下一步服务面",
        roadmapItems = listOf(
            "Provider 选择与状态",
            "摘要与 Explain 服务控制",
            "使用量与速率限制"
        )
    )
    "ko" -> ServiceSectionText(
        title = "AI 서비스",
        description = "전송 방식, Explain, 그리고 향후 provider 레벨 제어.",
        leadTitle = "AI 서비스 레이어",
        leadDescription = "사용자 번역 동작과 provider/transport 로직을 분리합니다.",
        statusTitle = "현재 상태",
        statusBody = "이 섹션은 현재 전송 선호도와 Explain 동작을 담당합니다. 이후 provider 선택도 여기로 들어올 수 있습니다.",
        roadmapTitle = "다음 서비스 영역",
        roadmapItems = listOf(
            "Provider 선택과 상태",
            "요약 및 Explain 서비스 제어",
            "사용량과 레이트 제한"
        )
    )
    else -> ServiceSectionText(
        title = "AI Services",
        description = "Транспорт, Explain и будущие сервисные настройки провайдеров.",
        leadTitle = "Слой AI-сервисов",
        leadDescription = "Отделяет пользовательское поведение перевода от логики провайдеров и транспорта.",
        statusTitle = "Текущий статус",
        statusBody = "Сейчас здесь живут приоритет транспорта и поведение Explain. Позже сюда же можно вынести выбор провайдера, не перегружая OCR.",
        roadmapTitle = "Следующие сервисные блоки",
        roadmapItems = listOf(
            "Выбор провайдера и его статус",
            "Настройки summary и Explain",
            "Лимиты использования и rate limits"
        )
    )
}

/* ──── readAloudSectionText ──── */
internal fun readAloudSectionText(language: String): ServiceSectionText = when (language) {
    "en" -> ServiceSectionText(
        title = "Read Aloud",
        description = "TTS engine, voice, playback, and accessibility controls.",
        leadTitle = "Read aloud / TTS",
        leadDescription = "A separate home for voice reading so it does not get buried inside reader behavior or translation.",
        statusTitle = "Default behavior",
        statusBody = "These defaults apply in the reader services tab for text books. Voice reading stays close to reading instead of living as a hidden global feature.",
        roadmapTitle = "Next improvements",
        roadmapItems = listOf(
            "Background playback and media session controls",
            "Resume from the paused phrase instead of the current chunk start",
            "Accessibility polish and optional headphone actions"
        )
    )
    "ja" -> ServiceSectionText(
        title = "読み上げ",
        description = "TTS エンジン、音声、再生、アクセシビリティ設定。",
        leadTitle = "読み上げ / TTS",
        leadDescription = "音声読書を、リーダー挙動や翻訳の奥に埋もれさせないための専用ホームです。",
        statusTitle = "既定の挙動",
        statusBody = "ここで設定した既定値は、テキスト本のリーダー内サービス欄にそのまま反映されます。読み上げを隠れた全体設定にしません。",
        roadmapTitle = "次の改善",
        roadmapItems = listOf(
            "バックグラウンド再生とメディア操作",
            "チャンク先頭ではなく一時停止位置からの再開",
            "アクセシビリティ調整とヘッドホン操作"
        )
    )
    "zh" -> ServiceSectionText(
        title = "朗读",
        description = "TTS 引擎、声音、播放和无障碍控制。",
        leadTitle = "朗读 / TTS",
        leadDescription = "给语音阅读一个独立入口，不再埋在阅读器行为或翻译设置里。",
        statusTitle = "默认行为",
        statusBody = "这里的默认值会直接应用到文本书阅读器里的服务面板，让朗读紧贴阅读流程，而不是藏在全局设置里。",
        roadmapTitle = "后续增强",
        roadmapItems = listOf(
            "后台播放与媒体控制",
            "从暂停位置继续，而不是从当前片段开头重放",
            "无障碍细化与耳机按键操作"
        )
    )
    "ko" -> ServiceSectionText(
        title = "읽어주기",
        description = "TTS 엔진, 음성, 재생, 접근성 제어.",
        leadTitle = "읽어주기 / TTS",
        leadDescription = "음성 읽기를 리더 동작이나 번역 설정 아래에 묻지 않도록 별도 홈을 둡니다.",
        statusTitle = "기본 동작",
        statusBody = "여기서 고른 기본값은 텍스트 책 리더의 서비스 탭에 그대로 적용됩니다. 읽어주기를 숨어 있는 전역 기능으로 두지 않습니다.",
        roadmapTitle = "다음 개선",
        roadmapItems = listOf(
            "백그라운드 재생과 미디어 컨트롤",
            "현재 청크 처음이 아니라 일시정지 지점에서 다시 시작",
            "접근성 다듬기와 헤드폰 동작"
        )
    )
    else -> ServiceSectionText(
        title = "Чтение голосом",
        description = "TTS-движок, голос, воспроизведение и accessibility-настройки.",
        leadTitle = "Чтение голосом / TTS",
        leadDescription = "Отдельный дом для голосового чтения, чтобы оно не терялось внутри ридера или перевода.",
        statusTitle = "Поведение по умолчанию",
        statusBody = "Эти значения сразу применяются в сервисной вкладке ридера для текстовых книг. Озвучивание остаётся рядом с чтением, а не прячется в глубокой глобальной настройке.",
        roadmapTitle = "Следующие улучшения",
        roadmapItems = listOf(
            "Фоновое воспроизведение и media controls",
            "Продолжение с точки паузы, а не с начала фрагмента",
            "Accessibility-полировка и действия с гарнитуры"
        )
    )
}

/* ──── TranslationSectionText ──── */
internal data class TranslationSectionText(
    val title: String,
    val description: String,
    val translationBehaviorCard: String,
    val sourceLanguageCard: String,
    val sourceLanguageHint: String,
    val targetLanguageCard: String,
    val targetLanguageHint: String,
    val transportCard: String,
    val transportHint: String,
    val explainCard: String,
    val explainTitle: String,
    val explainSubtitle: String,
    val autoSource: String,
    val appLanguageTarget: String,
    val transportAuto: String,
    val transportOffline: String,
    val transportOnline: String,
    val explainComingSoon: String,
    val comicFiltersCard: String,
    val comicFiltersHint: String,
    val dialoguesOnlyTitle: String,
    val dialoguesOnlySubtitle: String,
    val includeSfxTitle: String,
    val includeSfxSubtitle: String,
    val overlayCard: String,
    val overlayHint: String,
    val overlayOpacityTitle: String,
    val overlayFontScaleTitle: String,
    val overlayStyleTitle: String,
    val overlayStyleAuto: String,
    val overlayStyleLight: String,
    val overlayStyleDark: String
)


/* ──── translationSectionText ──── */
internal fun translationSectionText(language: String): TranslationSectionText = when (language) {
    "en" -> TranslationSectionText(
        title = "Translation & OCR",
        description = "Translation behavior, OCR language, and future explain options live here in one compact section.",
        translationBehaviorCard = "Translation behavior",
        sourceLanguageCard = "Source language",
        sourceLanguageHint = "Auto works well for most text books. Switch manually if a book mixes languages badly.",
        targetLanguageCard = "Target language",
        targetLanguageHint = "App language follows the current UI language automatically.",
        transportCard = "Translation transport",
        transportHint = "Auto prefers local models first, then tries the network path if it becomes available.",
        explainCard = "Explain options",
        explainTitle = "Use expanded explain when available",
        explainSubtitle = "Local explanations for words and phrases already work. Keep this on if you also want richer contextual explain once an advanced provider is connected.",
        autoSource = "Auto",
        appLanguageTarget = "App language",
        transportAuto = "Auto",
        transportOffline = "Offline",
        transportOnline = "Online",
        explainComingSoon = "Local explain already works. This toggle is reserved for richer explain when an advanced provider is connected.",
        comicFiltersCard = "Comic OCR filters",
        comicFiltersHint = "These filters affect automatic page translation. Manual tap-to-translate stays available for every block.",
        dialoguesOnlyTitle = "Prefer dialogue blocks only",
        dialoguesOnlySubtitle = "Skips narration boxes during page-wide translation, but keeps uncertain blocks so we do not lose likely speech.",
        includeSfxTitle = "Include SFX blocks",
        includeSfxSubtitle = "When disabled, sound effects stay visible in OCR results but are skipped during automatic page translation.",
        overlayCard = "Comic overlay",
        overlayHint = "Tune how translated text sits on top of the page without changing the original image.",
        overlayOpacityTitle = "Overlay opacity",
        overlayFontScaleTitle = "Overlay font size",
        overlayStyleTitle = "Overlay style",
        overlayStyleAuto = "Auto theme",
        overlayStyleLight = "Light",
        overlayStyleDark = "Dark"
    )
    "ja" -> TranslationSectionText(
        title = "翻訳とOCR",
        description = "翻訳の動作、OCR 言語、今後の解説機能を、このセクションにまとめています。",
        translationBehaviorCard = "翻訳の動作",
        sourceLanguageCard = "原文の言語",
        sourceLanguageHint = "通常は自動判定で十分です。混在テキストで崩れる場合のみ手動にします。",
        targetLanguageCard = "翻訳先の言語",
        targetLanguageHint = "アプリ言語を選ぶと、現在の UI 言語に自動追従します。",
        transportCard = "翻訳経路",
        transportHint = "自動では、まずローカルモデルを優先し、必要なら将来のオンライン経路を試します。",
        explainCard = "解説オプション",
        explainTitle = "拡張解説が使えるときに有効化する",
        explainSubtitle = "単語やフレーズのローカル解説はすでに使えます。今後より高度な解説サービスが使えるようになったときも文脈解説を使いたいならオンにしておきます。",
        autoSource = "自動",
        appLanguageTarget = "アプリ言語",
        transportAuto = "自動",
        transportOffline = "オフライン",
        transportOnline = "オンライン",
        explainComingSoon = "ローカル解説はすでに使えます。このトグルは今後の高度な解説サービス用に残しています。",
        comicFiltersCard = "コミックOCRフィルター",
        comicFiltersHint = "これらのフィルターはページ全体の自動翻訳にだけ影響します。手動のブロック翻訳は常に使えます。",
        dialoguesOnlyTitle = "セリフ中心で翻訳する",
        dialoguesOnlySubtitle = "ページ全体の翻訳ではナレーション枠を外しつつ、判定が曖昧なブロックは会話候補として残します。",
        includeSfxTitle = "SFX ブロックを含める",
        includeSfxSubtitle = "オフにすると OCR 結果には表示されますが、ページ全体の自動翻訳では効果音を飛ばします。",
        overlayCard = "コミックオーバーレイ",
        overlayHint = "原画像は変えずに、翻訳テキストの重なり方だけを調整します。",
        overlayOpacityTitle = "オーバーレイの濃さ",
        overlayFontScaleTitle = "オーバーレイ文字サイズ",
        overlayStyleTitle = "オーバーレイの見た目",
        overlayStyleAuto = "テーマに合わせる",
        overlayStyleLight = "ライト",
        overlayStyleDark = "ダーク"
    )
    "zh" -> TranslationSectionText(
        title = "翻译与 OCR",
        description = "这里集中放置翻译行为、OCR 语言，以及后续的解释层开关。",
        translationBehaviorCard = "翻译行为",
        sourceLanguageCard = "源语言",
        sourceLanguageHint = "大多数文本书用自动即可；只有语言混杂明显时再手动指定。",
        targetLanguageCard = "目标语言",
        targetLanguageHint = "选择应用语言后，会自动跟随当前界面语言。",
        transportCard = "翻译通道",
        transportHint = "自动模式会先尝试本地模型，之后再走未来可用的在线路径。",
        explainCard = "解释选项",
        explainTitle = "可用时启用扩展解释",
        explainSubtitle = "单词和短语的本地解释已经可用。如果以后接入更强的解释服务，还想继续获得更丰富的上下文解释，就保持开启。",
        autoSource = "自动",
        appLanguageTarget = "应用语言",
        transportAuto = "自动",
        transportOffline = "离线",
        transportOnline = "在线",
        explainComingSoon = "本地解释已经可用。这个开关主要为未来更强的解释服务预留。",
        comicFiltersCard = "漫画 OCR 过滤",
        comicFiltersHint = "这些过滤只影响整页自动翻译。手动点按单个文本块仍然始终可用。",
        dialoguesOnlyTitle = "优先只翻译对话块",
        dialoguesOnlySubtitle = "整页翻译时跳过旁白框，但会保留不确定块，避免错过可能的对白。",
        includeSfxTitle = "包含 SFX 块",
        includeSfxSubtitle = "关闭后，拟声词仍会出现在 OCR 结果里，但整页自动翻译会跳过它们。",
        overlayCard = "漫画叠层",
        overlayHint = "只调整翻译文本叠在页面上的方式，不改动原图。",
        overlayOpacityTitle = "叠层不透明度",
        overlayFontScaleTitle = "叠层字号",
        overlayStyleTitle = "叠层风格",
        overlayStyleAuto = "跟随主题",
        overlayStyleLight = "浅色",
        overlayStyleDark = "深色"
    )
    "ko" -> TranslationSectionText(
        title = "번역과 OCR",
        description = "번역 동작, OCR 언어, 이후 설명 레이어 설정을 이 섹션에 모았습니다.",
        translationBehaviorCard = "번역 동작",
        sourceLanguageCard = "원문 언어",
        sourceLanguageHint = "대부분의 텍스트 책은 자동으로 충분하며, 언어가 섞여 있을 때만 수동으로 고릅니다.",
        targetLanguageCard = "대상 언어",
        targetLanguageHint = "앱 언어를 고르면 현재 UI 언어를 따라갑니다.",
        transportCard = "번역 경로",
        transportHint = "자동은 먼저 로컬 모델을 우선하고, 이후 가능해지면 온라인 경로를 시도합니다.",
        explainCard = "설명 옵션",
        explainTitle = "확장 설명이 가능할 때 사용",
        explainSubtitle = "단어와 구문에 대한 로컬 설명은 이미 동작합니다. 나중에 더 강한 설명 서비스가 연결될 때도 풍부한 문맥 설명을 원하면 켜 두세요.",
        autoSource = "자동",
        appLanguageTarget = "앱 언어",
        transportAuto = "자동",
        transportOffline = "오프라인",
        transportOnline = "온라인",
        explainComingSoon = "로컬 설명은 이미 동작합니다. 이 토글은 앞으로의 확장 설명 서비스용입니다.",
        comicFiltersCard = "코믹 OCR 필터",
        comicFiltersHint = "이 필터는 페이지 전체 자동 번역에만 적용됩니다. 개별 블록 수동 번역은 계속 사용할 수 있습니다.",
        dialoguesOnlyTitle = "대사 블록 위주로 번역",
        dialoguesOnlySubtitle = "페이지 전체 번역에서 내레이션 상자는 빼되, 확신이 낮은 블록은 대사 후보로 남겨 둡니다.",
        includeSfxTitle = "SFX 블록 포함",
        includeSfxSubtitle = "끄면 OCR 결과에는 보이지만 페이지 전체 자동 번역에서는 효과음을 건너뜁니다.",
        overlayCard = "코믹 오버레이",
        overlayHint = "원본 이미지는 그대로 두고, 번역 텍스트가 페이지 위에 놓이는 방식만 조정합니다.",
        overlayOpacityTitle = "오버레이 불투명도",
        overlayFontScaleTitle = "오버레이 글자 크기",
        overlayStyleTitle = "오버레이 스타일",
        overlayStyleAuto = "테마 자동",
        overlayStyleLight = "라이트",
        overlayStyleDark = "다크"
    )
    else -> TranslationSectionText(
        title = "Перевод и OCR",
        description = "Здесь собраны поведение перевода, язык OCR и будущий слой пояснений, без лишних служебных блоков вокруг.",
        translationBehaviorCard = "Поведение перевода",
        sourceLanguageCard = "Исходный язык",
        sourceLanguageHint = "Для большинства текстовых книг достаточно автоопределения. Ручной выбор нужен только если книга плохо смешивает языки.",
        targetLanguageCard = "Целевой язык",
        targetLanguageHint = "Режим «Язык приложения» автоматически следует за текущим языком интерфейса.",
        transportCard = "Режим перевода",
        transportHint = "Авто сначала пробует локальные модели, а затем использует сетевой путь, если он станет доступен.",
        explainCard = "Параметры пояснений",
        explainTitle = "Использовать расширенные пояснения при доступности",
        explainSubtitle = "Локальные пояснения для слов и фраз уже работают. Оставьте это включённым, если позже захотите и более глубокие контекстные пояснения от расширенного сервиса.",
        autoSource = "Авто",
        appLanguageTarget = "Язык приложения",
        transportAuto = "Авто",
        transportOffline = "Офлайн",
        transportOnline = "Онлайн",
        explainComingSoon = "Локальные пояснения уже работают. Этот тумблер нужен для будущего расширенного сервиса пояснений.",
        comicFiltersCard = "Фильтры OCR-комиксов",
        comicFiltersHint = "Эти фильтры влияют только на автоматический перевод всей страницы. Ручной тап по отдельному блоку остаётся доступным всегда.",
        dialoguesOnlyTitle = "Предпочитать только диалоги",
        dialoguesOnlySubtitle = "При переводе страницы пропускает блоки повествования, но оставляет неопределённые сегменты, чтобы не потерять возможную реплику.",
        includeSfxTitle = "Включать SFX-блоки",
        includeSfxSubtitle = "Если выключено, звукоподражания остаются в OCR-результате, но не переводятся автоматически на всю страницу.",
        overlayCard = "Наложение перевода",
        overlayHint = "Здесь настраивается, как перевод ложится поверх страницы, не меняя оригинальное изображение.",
        overlayOpacityTitle = "Прозрачность наложения",
        overlayFontScaleTitle = "Размер шрифта наложения",
        overlayStyleTitle = "Стиль наложения",
        overlayStyleAuto = "Авто по теме",
        overlayStyleLight = "Светлый",
        overlayStyleDark = "Тёмный"
    )
}

/* ──── aiServicesOverviewText ──── */
internal fun aiServicesOverviewText(language: String): AiServicesOverviewText = when (language) {
    "ja" -> AiServicesOverviewText(
        machineTranslationTitle = "機械翻訳",
        machineTranslationHint = "現在の翻訳ルートと、ローカル優先か外部待ちかをここで確認します。",
        localExplainTitle = "ローカル Explain",
        localExplainHint = "単語や短いフレーズの説明は、外部サービスなしでもローカルで動作します。",
        advancedExplainTitle = "拡張 Explain",
        advancedExplainHint = "長めの文脈解説や外部プロバイダー経由の Explain はこのレイヤーで扱います。",
        summaryTitle = "要約",
        summaryHint = "章や本全体の summary は、実際の外部ルートができた後にここへ入ります。",
        ocrTitle = "OCR サービス",
        ocrHint = "ページOCRの言語と、自動翻訳時のフィルター状況をまとめます。",
        providersTitle = "外部プロバイダー",
        providersHint = "モデル、API キー、RPM のような provider レベル設定はここに集約します。",
        routeLabel = "現在のルート",
        statusLabel = "状態",
        providerLabel = "プロバイダー",
        expandedExplainLabel = "拡張 Explain",
        localProviderValue = "ローカル",
        configuredValue = "設定済み",
        notConnectedValue = "未接続",
        localFirstStatus = "自動ではローカル経路を優先します。",
        onlineReadyStatus = "オンライン翻訳ルートは設定済みで利用できます。",
        onlineNeedsNetworkStatus = "オンライン翻訳ルートは設定済みですが、今はネットワークが必要です。",
        offlineStatus = "オフライン翻訳だけを使います。",
        offlineReadyStatus = "現在の言語ペアはオフラインで利用できます。",
        offlineModelMissingStatus = "現在の言語ペアは対応していますが、オフラインモデルはまだ未インストールです。",
        offlineModelNeedsNetworkStatus = "現在の言語ペアは対応していますが、モデル準備にはネットワークが必要です。",
        offlinePairUnsupportedStatus = "現在の言語ペアはオフライン翻訳に対応していません。",
        onlineUnavailableStatus = "オンライン翻訳プロバイダーはまだ接続されていません。",
        translationDisabledStatus = "翻訳は現在オフです。",
        localExplainStatus = "ローカル Explain だけで動作します。",
        advancedExplainDisabledStatus = "外部プロバイダーが来るまでは拡張 Explain は待機します。",
        extendedExplainWaitingStatus = "外部プロバイダーが来るまではローカル Explain を保ちます。",
        summaryUnavailableStatus = "summary サービスはまだ接続されていません。",
        providersReadyStatus = "少なくとも 1 つの外部ルートは設定済みで利用できます。",
        providersNeedNetworkStatus = "外部ルートは設定済みですが、今はネットワークが必要です。",
        providersNeedValidationStatus = "OpenRouter のキーまたはモデルを確認してください。",
        providersUnavailableStatus = "まだ外部 AI プロバイダーは設定されていません。"
    )
    "zh" -> AiServicesOverviewText(
        machineTranslationTitle = "机器翻译",
        machineTranslationHint = "这里集中说明当前翻译路径，以及它是本地优先还是在等待外部服务。",
        localExplainTitle = "本地 Explain",
        localExplainHint = "单词和短语的解释已经可以在本地运行，不依赖外部服务。",
        advancedExplainTitle = "增强 Explain",
        advancedExplainHint = "更长的上下文解释和外部 provider 支持的 Explain 会放在这一层。",
        summaryTitle = "摘要",
        summaryHint = "章节或整书摘要会在真实外部路径准备好后放到这里。",
        ocrTitle = "OCR 服务",
        ocrHint = "集中显示页面 OCR 语言和自动翻译过滤规则。",
        providersTitle = "外部 Provider",
        providersHint = "模型、API Key、RPM 这类 provider 级设置以后都在这里。",
        routeLabel = "当前路径",
        statusLabel = "状态",
        providerLabel = "Provider",
        expandedExplainLabel = "增强 Explain",
        localProviderValue = "本地",
        configuredValue = "已配置",
        notConnectedValue = "未连接",
        localFirstStatus = "自动模式会优先尝试本地路径。",
        onlineReadyStatus = "在线翻译路线已配置并可直接使用。",
        onlineNeedsNetworkStatus = "在线翻译路线已配置，但当前需要网络连接。",
        offlineStatus = "只使用离线路径。",
        offlineReadyStatus = "当前语言对可直接使用离线翻译。",
        offlineModelMissingStatus = "当前语言对受支持，但离线模型还未安装。",
        offlineModelNeedsNetworkStatus = "当前语言对受支持，但准备离线模型需要网络。",
        offlinePairUnsupportedStatus = "当前语言对不支持离线翻译。",
        onlineUnavailableStatus = "在线翻译 provider 目前还没有接入。",
        translationDisabledStatus = "翻译当前已关闭。",
        localExplainStatus = "仅使用本地 Explain。",
        advancedExplainDisabledStatus = "在外部 provider 接入前，增强 Explain 会保持待机。",
        extendedExplainWaitingStatus = "在外部 provider 接入前仍保持本地 Explain。",
        summaryUnavailableStatus = "摘要服务目前还没有接入。",
        providersReadyStatus = "至少有一个外部路线已配置并可用。",
        providersNeedNetworkStatus = "外部路线已配置，但当前需要网络连接。",
        providersNeedValidationStatus = "请检查 OpenRouter 密钥或模型。",
        providersUnavailableStatus = "当前还没有配置任何外部 AI provider。"
    )
    "ko" -> AiServicesOverviewText(
        machineTranslationTitle = "기계 번역",
        machineTranslationHint = "현재 번역 경로와 로컬 우선 여부, 외부 서비스 대기 여부를 여기서 확인합니다.",
        localExplainTitle = "로컬 Explain",
        localExplainHint = "단어와 짧은 구문 설명은 외부 서비스 없이도 로컬에서 이미 동작합니다.",
        advancedExplainTitle = "확장 Explain",
        advancedExplainHint = "더 긴 문맥 설명과 외부 provider 기반 Explain은 이 레이어에서 다룹니다.",
        summaryTitle = "요약",
        summaryHint = "챕터나 책 요약은 실제 외부 경로가 준비된 뒤 여기에 들어옵니다.",
        ocrTitle = "OCR 서비스",
        ocrHint = "페이지 OCR 언어와 자동 번역 필터 상태를 한곳에서 보여줍니다.",
        providersTitle = "외부 provider",
        providersHint = "모델, API 키, RPM 같은 provider 레벨 설정은 이후 여기에 모입니다.",
        routeLabel = "현재 경로",
        statusLabel = "상태",
        providerLabel = "Provider",
        expandedExplainLabel = "확장 Explain",
        localProviderValue = "로컬",
        configuredValue = "설정됨",
        notConnectedValue = "미연결",
        localFirstStatus = "자동 모드는 로컬 경로를 먼저 시도합니다.",
        onlineReadyStatus = "온라인 번역 경로가 설정되어 바로 사용할 수 있습니다.",
        onlineNeedsNetworkStatus = "온라인 번역 경로가 설정되어 있지만 지금은 네트워크가 필요합니다.",
        offlineStatus = "오프라인 경로만 사용합니다.",
        offlineReadyStatus = "현재 언어 쌍은 오프라인으로 바로 사용할 수 있습니다.",
        offlineModelMissingStatus = "현재 언어 쌍은 지원되지만 오프라인 모델이 아직 설치되지 않았습니다.",
        offlineModelNeedsNetworkStatus = "현재 언어 쌍은 지원되지만 모델 준비에는 네트워크가 필요합니다.",
        offlinePairUnsupportedStatus = "현재 언어 쌍은 오프라인 번역을 지원하지 않습니다.",
        onlineUnavailableStatus = "온라인 번역 provider는 아직 연결되지 않았습니다.",
        translationDisabledStatus = "번역이 현재 꺼져 있습니다.",
        localExplainStatus = "로컬 Explain만 사용합니다.",
        advancedExplainDisabledStatus = "외부 provider가 생기기 전까지 확장 Explain은 대기 상태입니다.",
        extendedExplainWaitingStatus = "외부 provider가 생기기 전까지는 로컬 Explain을 유지합니다.",
        summaryUnavailableStatus = "요약 서비스는 아직 연결되지 않았습니다.",
        providersReadyStatus = "적어도 하나의 외부 경로가 설정되어 바로 사용할 수 있습니다.",
        providersNeedNetworkStatus = "외부 경로는 설정되었지만 지금은 네트워크가 필요합니다.",
        providersNeedValidationStatus = "OpenRouter 키 또는 모델을 확인하세요.",
        providersUnavailableStatus = "아직 설정된 외부 AI provider가 없습니다."
    )
    "ru" -> AiServicesOverviewText(
        machineTranslationTitle = "Машинный перевод",
        machineTranslationHint = "Здесь видно текущий маршрут перевода и то, идёт ли он локально или ждёт внешний сервис.",
        localExplainTitle = "Локальный Explain",
        localExplainHint = "Пояснения для слов и коротких фрагментов уже работают локально, без внешнего сервиса.",
        advancedExplainTitle = "Расширенный Explain",
        advancedExplainHint = "Более глубокие контекстные пояснения и внешний Explain-маршрут будут жить в этом слое.",
        summaryTitle = "Сводка",
        summaryHint = "Сводки по главе или книге появятся здесь только после появления реального внешнего маршрута.",
        ocrTitle = "OCR-сервисы",
        ocrHint = "Здесь собраны язык OCR и фильтры, которые влияют на автоматический перевод страницы.",
        providersTitle = "Внешние провайдеры",
        providersHint = "Модель, API-ключи и RPM для внешних сервисов будут жить здесь, а не в общем переводе.",
        routeLabel = "Текущий маршрут",
        statusLabel = "Статус",
        providerLabel = "Провайдер",
        expandedExplainLabel = "Расширенный Explain",
        localProviderValue = "Локальный",
        configuredValue = "Настроен",
        notConnectedValue = "Не подключён",
        localFirstStatus = "В автоматическом режиме сначала пробуется локальный маршрут.",
        onlineReadyStatus = "Онлайн-маршрут перевода настроен и готов к работе.",
        onlineNeedsNetworkStatus = "Онлайн-маршрут настроен, но сейчас ему нужна сеть.",
        offlineStatus = "Используется только офлайн-маршрут.",
        offlineReadyStatus = "Текущая языковая пара уже готова для офлайн-перевода.",
        offlineModelMissingStatus = "Текущая языковая пара поддерживается, но офлайн-модель ещё не установлена.",
        offlineModelNeedsNetworkStatus = "Текущая языковая пара поддерживается, но для подготовки модели нужна сеть.",
        offlinePairUnsupportedStatus = "Текущая языковая пара не поддерживается офлайн-переводом.",
        onlineUnavailableStatus = "Внешний провайдер онлайн-перевода пока не подключён.",
        translationDisabledStatus = "Перевод сейчас выключен.",
        localExplainStatus = "Работает только локальный Explain.",
        advancedExplainDisabledStatus = "Пока внешний провайдер не подключён, расширенный Explain остаётся в ожидании.",
        extendedExplainWaitingStatus = "До подключения внешнего провайдера останется локальный Explain.",
        summaryUnavailableStatus = "Сервис сводок пока не подключён.",
        providersReadyStatus = "Как минимум один внешний маршрут настроен и готов к работе.",
        providersNeedNetworkStatus = "Внешний маршрут настроен, но сейчас ему нужна сеть.",
        providersNeedValidationStatus = "Проверьте ключ или модель OpenRouter.",
        providersUnavailableStatus = "Внешние AI-провайдеры пока не настроены."
    )
    else -> AiServicesOverviewText(
        machineTranslationTitle = "Machine translation",
        machineTranslationHint = "This card shows the current translation route and whether it stays local or waits for an external service.",
        localExplainTitle = "Local Explain",
        localExplainHint = "Word and short-phrase explanations already work locally without any external service.",
        advancedExplainTitle = "Advanced Explain",
        advancedExplainHint = "Longer contextual explanations and provider-backed Explain should live in this layer.",
        summaryTitle = "Summary",
        summaryHint = "Chapter or book summaries should appear here only after a real external route exists.",
        ocrTitle = "OCR services",
        ocrHint = "Keep OCR language and automatic page-translation filters visible in one place.",
        providersTitle = "External providers",
        providersHint = "Model, API keys, and RPM-level controls should live here instead of inside generic translation settings.",
        routeLabel = "Current route",
        statusLabel = "Status",
        providerLabel = "Provider",
        expandedExplainLabel = "Expanded Explain",
        localProviderValue = "Local",
        configuredValue = "Configured",
        notConnectedValue = "Not connected",
        localFirstStatus = "Auto mode tries the local route first.",
        onlineReadyStatus = "The online translation route is configured and ready.",
        onlineNeedsNetworkStatus = "The online translation route is configured, but it needs network access right now.",
        offlineStatus = "Offline translation is used exclusively.",
        offlineReadyStatus = "The current language pair is ready for offline translation.",
        offlineModelMissingStatus = "The current language pair is supported, but the offline model is not installed yet.",
        offlineModelNeedsNetworkStatus = "The current language pair is supported, but network is needed to prepare the offline model.",
        offlinePairUnsupportedStatus = "The current language pair is not supported for offline translation.",
        onlineUnavailableStatus = "No online translation provider is connected yet.",
        translationDisabledStatus = "Translation is currently off.",
        localExplainStatus = "Local Explain is active on its own.",
        advancedExplainDisabledStatus = "Advanced Explain stays idle until an external provider is connected.",
        extendedExplainWaitingStatus = "Expanded Explain stays local until an external provider is connected.",
        summaryUnavailableStatus = "Summary service is not connected yet.",
        providersReadyStatus = "At least one external route is configured and ready.",
        providersNeedNetworkStatus = "An external route is configured, but it currently needs network access.",
        providersNeedValidationStatus = "Check the OpenRouter key or model.",
        providersUnavailableStatus = "No external AI providers are configured yet."
    )
}

/* ──── aiMachineTranslationStatus ──── */
internal fun aiMachineTranslationStatus(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return when (resolveSettingsMachineTranslationStatusKind(uiState)) {
        SettingsMachineTranslationStatusKind.DISABLED -> text.translationDisabledStatus
        SettingsMachineTranslationStatusKind.ONLINE_READY -> text.onlineReadyStatus
        SettingsMachineTranslationStatusKind.ONLINE_MISSING -> text.onlineUnavailableStatus
        SettingsMachineTranslationStatusKind.ONLINE_NEEDS_NETWORK -> text.onlineNeedsNetworkStatus
        SettingsMachineTranslationStatusKind.OFFLINE_GENERIC -> text.offlineStatus
        SettingsMachineTranslationStatusKind.OFFLINE_READY -> text.offlineReadyStatus
        SettingsMachineTranslationStatusKind.OFFLINE_MODEL_MISSING -> text.offlineModelMissingStatus
        SettingsMachineTranslationStatusKind.OFFLINE_MODEL_NEEDS_NETWORK -> text.offlineModelNeedsNetworkStatus
        SettingsMachineTranslationStatusKind.OFFLINE_PAIR_UNSUPPORTED -> text.offlinePairUnsupportedStatus
        SettingsMachineTranslationStatusKind.AUTO_LOCAL_FIRST -> text.localFirstStatus
        SettingsMachineTranslationStatusKind.AUTO_OFFLINE_MODEL_MISSING -> text.offlineModelMissingStatus
        SettingsMachineTranslationStatusKind.AUTO_OFFLINE_MODEL_NEEDS_NETWORK -> text.offlineModelNeedsNetworkStatus
        SettingsMachineTranslationStatusKind.AUTO_PAIR_UNSUPPORTED -> text.offlinePairUnsupportedStatus
    }
}

/* ──── aiProvidersStatus ──── */
internal fun aiProvidersStatus(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return when (resolveSettingsProvidersStatusKind(uiState)) {
        SettingsProvidersStatusKind.READY -> text.providersReadyStatus
        SettingsProvidersStatusKind.NEEDS_NETWORK -> text.providersNeedNetworkStatus
        SettingsProvidersStatusKind.NEEDS_VALIDATION -> text.providersNeedValidationStatus
        SettingsProvidersStatusKind.NOT_CONFIGURED -> text.providersUnavailableStatus
    }
}

/* ──── aiProvidersValue ──── */
internal fun aiProvidersValue(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return when (resolveSettingsProvidersStatusKind(uiState)) {
        SettingsProvidersStatusKind.NOT_CONFIGURED -> text.notConnectedValue
        SettingsProvidersStatusKind.READY,
        SettingsProvidersStatusKind.NEEDS_VALIDATION,
        SettingsProvidersStatusKind.NEEDS_NETWORK -> configuredOnlineProviderLabel(uiState, language)
    }
}

/* ──── configuredOnlineProviderLabel ──── */
internal fun configuredOnlineProviderLabel(
    uiState: SettingsUiState,
    language: String
): String {
    return if (uiState.openRouterApiKey.isBlank()) {
        aiServicesOverviewText(language).configuredValue
    } else {
        "OpenRouter"
    }
}

/* ──── aiExplainStatus ──── */
internal fun aiExplainStatus(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return if (uiState.translationExplainEnabled) {
        text.extendedExplainWaitingStatus
    } else {
        text.localExplainStatus
    }
}

/* ──── aiAdvancedExplainStatus ──── */
internal fun aiAdvancedExplainStatus(
    uiState: SettingsUiState,
    language: String
): String {
    val text = aiServicesOverviewText(language)
    return if (uiState.translationExplainEnabled) {
        text.extendedExplainWaitingStatus
    } else {
        text.advancedExplainDisabledStatus
    }
}

/* ──── translationModeLabel ──── */
internal fun translationModeLabel(strings: AppStrings, mode: String): String = when (mode) {
    "OCR" -> strings.transOcr
    "DICTIONARY" -> strings.transDict
    else -> strings.transOff
}

/* ──── transportLabel ──── */
internal fun transportLabel(
    language: String,
    transport: String
): String {
    val text = translationSectionText(language)
    return when (transport) {
        TranslationTransportPreference.OFFLINE.name -> text.transportOffline
        TranslationTransportPreference.ONLINE.name -> text.transportOnline
        else -> text.transportAuto
    }
}

/* ──── translationEndpointLabel ──── */
internal fun translationEndpointLabel(
    language: String,
    code: String,
    isTarget: Boolean
): String {
    val text = translationSectionText(language)
    return when {
        !isTarget && code == "AUTO" -> text.autoSource
        isTarget && code == "APP" -> text.appLanguageTarget
        else -> translationLanguageOptions(language).firstOrNull { it.first == code }?.second ?: code
    }
}

