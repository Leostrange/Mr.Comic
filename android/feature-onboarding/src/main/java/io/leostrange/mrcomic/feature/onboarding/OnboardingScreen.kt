package io.leostrange.mrcomic.feature.onboarding

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.Button
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import io.leostrange.mrcomic.core.ui.mascot.MrComicSceneLead
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style

private data class OnboardingText(
    val skip: String,
    val start: String,
    val readingStyle: String,
    val heroLabel: String,
    val heroBody: String,
    val localLibraryTitle: String,
    val localLibraryDescription: String,
    val continueTitle: String,
    val continueDescription: String,
    val ocrTitle: String,
    val ocrDescription: String,
    val paperTitle: String,
    val paperDescription: String,
    val sepiaTitle: String,
    val sepiaDescription: String,
    val nightInkTitle: String,
    val nightInkDescription: String,
    val oledTitle: String,
    val oledDescription: String,
    val einkTitle: String,
    val einkDescription: String
)

private fun onboardingText(language: String): OnboardingText = when (language) {
    "en" -> OnboardingText(
        skip = "Skip",
        start = "Start",
        readingStyle = "Reading style",
        heroLabel = "Mr.Comic",
        heroBody = "A calm start: add local files, choose your reading style, and keep the interface out of the way.",
        localLibraryTitle = "Local library",
        localLibraryDescription = "Add a file or folder directly from storage without depending on the cloud.",
        continueTitle = "Continue only for active reading",
        continueDescription = "The Continue screen shows only titles that are actually in progress.",
        ocrTitle = "OCR when needed",
        ocrDescription = "Translation starts from the reader only when you need it, instead of taking over the whole interface.",
        paperTitle = "Paper",
        paperDescription = "Bright page and soft contrast for long reading sessions.",
        sepiaTitle = "Sepia",
        sepiaDescription = "Warmer paper tone and softer rhythm for evening book reading.",
        nightInkTitle = "Night Ink",
        nightInkDescription = "Dark reader and lower brightness for evening reading.",
        oledTitle = "OLED Black",
        oledDescription = "Pure black background and quiet chrome for night reading in the dark.",
        einkTitle = "E-Ink",
        einkDescription = "High contrast and minimal chrome for e-ink and calm reading."
    )
    "ja" -> OnboardingText(
        skip = "スキップ",
        start = "開始",
        readingStyle = "読書スタイル",
        heroLabel = "Mr.Comic",
        heroBody = "落ち着いたスタートです。ローカルファイルを追加し、読書スタイルを選べば、あとは画面が邪魔をしません。",
        localLibraryTitle = "ローカルライブラリ",
        localLibraryDescription = "クラウド前提ではなく、端末から直接ファイルやフォルダを追加できます。",
        continueTitle = "続きを読むは進行中だけ",
        continueDescription = "「続きを読む」には、本当に読みかけの作品だけが並びます。",
        ocrTitle = "必要なときだけ OCR",
        ocrDescription = "翻訳は必要になった瞬間にリーダーから呼び出し、常に画面を占有しません。",
        paperTitle = "Paper",
        paperDescription = "明るい紙面とやわらかいコントラストで、長時間の読書に向きます。",
        sepiaTitle = "Sepia",
        sepiaDescription = "少し暖かい紙色と落ち着いたリズムで、本をゆっくり読むのに向きます。",
        nightInkTitle = "Night Ink",
        nightInkDescription = "夜の読書向けに、暗いリーダーと落ち着いた明るさを使います。",
        oledTitle = "OLED Black",
        oledDescription = "真っ黒な背景と静かなクロームで、暗い場所の読書に向きます。",
        einkTitle = "E-Ink",
        einkDescription = "高コントラストで余計な要素を減らし、e-ink と静かな読書に合わせます。"
    )
    "zh" -> OnboardingText(
        skip = "跳过",
        start = "开始",
        readingStyle = "阅读风格",
        heroLabel = "Mr.Comic",
        heroBody = "从安静的起点开始：添加本地文件，选择阅读风格，然后让界面尽量不打扰你。",
        localLibraryTitle = "本地图书馆",
        localLibraryDescription = "直接从本地存储添加文件或文件夹，不依赖云端。",
        continueTitle = "“继续”只保留在读内容",
        continueDescription = "“继续”页面只显示真正还在阅读中的作品。",
        ocrTitle = "需要时再用 OCR",
        ocrDescription = "翻译只在你需要时从阅读器里启动，不会长期占据主界面。",
        paperTitle = "Paper",
        paperDescription = "明亮纸面和柔和对比，适合长时间阅读。",
        sepiaTitle = "Sepia",
        sepiaDescription = "更温暖的纸色与更柔和的节奏，适合慢慢读书。",
        nightInkTitle = "Night Ink",
        nightInkDescription = "深色阅读器与更低亮度，适合夜间阅读。",
        oledTitle = "OLED Black",
        oledDescription = "纯黑背景与安静界面，更适合黑暗环境下阅读。",
        einkTitle = "E-Ink",
        einkDescription = "高对比与极简界面，更适合电子墨水屏和安静阅读。"
    )
    "ko" -> OnboardingText(
        skip = "건너뛰기",
        start = "시작",
        readingStyle = "읽기 스타일",
        heroLabel = "Mr.Comic",
        heroBody = "차분한 시작입니다. 로컬 파일을 추가하고 읽기 스타일을 고르면, 나머지는 화면이 방해하지 않습니다.",
        localLibraryTitle = "로컬 라이브러리",
        localLibraryDescription = "클라우드에 의존하지 않고 기기에서 바로 파일이나 폴더를 추가합니다.",
        continueTitle = "계속 읽기는 진행 중 작품만",
        continueDescription = "계속 읽기 화면에는 실제로 읽던 작품만 표시됩니다.",
        ocrTitle = "필요할 때만 OCR",
        ocrDescription = "번역은 필요할 때 리더 안에서만 시작되고, 메인 화면을 계속 차지하지 않습니다.",
        paperTitle = "Paper",
        paperDescription = "밝은 페이지와 부드러운 대비로 긴 읽기에 잘 맞습니다.",
        sepiaTitle = "Sepia",
        sepiaDescription = "더 따뜻한 종이 톤과 차분한 리듬으로 천천히 읽기에 좋습니다.",
        nightInkTitle = "Night Ink",
        nightInkDescription = "밤 시간대에 맞춘 어두운 리더와 낮은 밝기입니다.",
        oledTitle = "OLED Black",
        oledDescription = "완전한 검정 배경과 조용한 크롬으로 어두운 곳 reading에 맞춥니다.",
        einkTitle = "E-Ink",
        einkDescription = "높은 대비와 최소한의 요소로 e-ink 와 차분한 읽기에 맞춥니다."
    )
    else -> OnboardingText(
        skip = "Пропустить",
        start = "Начать",
        readingStyle = "Стиль чтения",
        heroLabel = "Mr.Comic",
        heroBody = "Спокойный старт: добавляете локальные файлы, выбираете стиль чтения и дальше интерфейс не мешает.",
        localLibraryTitle = "Локальная библиотека",
        localLibraryDescription = "Файл или папка добавляются из памяти устройства без обязательного облака.",
        continueTitle = "«Продолжить» только для читаемого",
        continueDescription = "Экран «Продолжить» показывает только те тайтлы, которые действительно в процессе.",
        ocrTitle = "OCR по необходимости",
        ocrDescription = "Перевод запускается из ридера, когда нужен, а не занимает главное место в интерфейсе.",
        paperTitle = "Paper",
        paperDescription = "Светлый лист и мягкий контраст для длинного чтения.",
        sepiaTitle = "Сепия",
        sepiaDescription = "Тёплый бумажный тон и более мягкий ритм для спокойного книжного чтения.",
        nightInkTitle = "Night Ink",
        nightInkDescription = "Тёмный ридер и приглушённая яркость для вечерних сессий.",
        oledTitle = "OLED Black",
        oledDescription = "Чистый чёрный фон и тихий chrome для чтения в темноте.",
        einkTitle = "E-Ink",
        einkDescription = "Высокий контраст и минимум лишнего для e-ink и спокойного чтения."
    )
}

@Composable
fun OnboardingScreen(
    onOnboardingComplete: () -> Unit,
    viewModel: OnboardingViewModel = hiltViewModel()
) {
    var selectedPreset by remember { mutableStateOf(ReadingPreset.PAPER) }
    val scrollState = rememberScrollState()
    val mascotUiEnabled by viewModel.mascotUiEnabled.collectAsStateWithLifecycle()
    val strings = LocalStrings.current
    val text = remember(strings.languageCode) { onboardingText(strings.languageCode) }

    Scaffold(
        bottomBar = {
            Surface(shadowElevation = 6.dp, tonalElevation = 2.dp) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .navigationBarsPadding()
                        .padding(horizontal = 24.dp, vertical = 16.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    TextButton(
                        onClick = {
                            viewModel.completeOnboarding(selectedPreset, onOnboardingComplete)
                        }
                    ) {
                        Text(text.skip)
                    }
                    Button(
                        onClick = {
                            viewModel.completeOnboarding(selectedPreset, onOnboardingComplete)
                        },
                        contentPadding = PaddingValues(horizontal = 22.dp, vertical = 12.dp)
                    ) {
                        Text(text.start)
                    }
                }
            }
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .verticalScroll(scrollState)
                .padding(horizontal = 24.dp, vertical = 20.dp),
            verticalArrangement = Arrangement.spacedBy(20.dp)
        ) {
            WelcomeHero(showMascot = mascotUiEnabled, text = text)
            WelcomeHighlights(text = text)
            Text(
                text = text.readingStyle,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            PresetChoiceList(
                text = text,
                selectedPreset = selectedPreset,
                onPresetSelected = { selectedPreset = it }
            )
        }
    }
}

@Composable
private fun WelcomeHero(showMascot: Boolean, text: OnboardingText) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(32.dp),
        color = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.52f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(24.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp)
        ) {
            MrComicSceneLead(
                showMascot = showMascot,
                label = text.heroLabel,
                neutralIcon = Icons.AutoMirrored.Filled.MenuBook
            )
            Text(
                text = "Mr.Comic",
                style = MaterialTheme.typography.headlineMedium,
                fontWeight = FontWeight.SemiBold
            )
            Text(
                text = text.heroBody,
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun WelcomeHighlights(text: OnboardingText) {
    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        WelcomeFeatureRow(
            icon = Icons.Default.FolderOpen,
            title = text.localLibraryTitle,
            description = text.localLibraryDescription
        )
        WelcomeFeatureRow(
            icon = Icons.AutoMirrored.Filled.MenuBook,
            title = text.continueTitle,
            description = text.continueDescription
        )
        WelcomeFeatureRow(
            icon = Icons.Default.Translate,
            title = text.ocrTitle,
            description = text.ocrDescription
        )
    }
}

@Composable
private fun WelcomeFeatureRow(
    icon: ImageVector,
    title: String,
    description: String
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(22.dp),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.22f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Surface(
                shape = CircleShape,
                color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.9f)
            ) {
                Icon(
                    icon,
                    contentDescription = null,
                    modifier = Modifier.padding(10.dp).size(18.dp),
                    tint = MaterialTheme.colorScheme.onSecondaryContainer
                )
            }
            Column(modifier = Modifier.weight(1f)) {
                Text(title, style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.SemiBold)
                Spacer(Modifier.height(2.dp))
                Text(
                    text = description,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun PresetChoiceList(
    text: OnboardingText,
    selectedPreset: ReadingPreset,
    onPresetSelected: (ReadingPreset) -> Unit
) {
    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        PresetChoiceCard(
            preset = ReadingPreset.PAPER,
            title = text.paperTitle,
            description = text.paperDescription,
            isSelected = selectedPreset == ReadingPreset.PAPER,
            onClick = { onPresetSelected(ReadingPreset.PAPER) }
        )
        PresetChoiceCard(
            preset = ReadingPreset.SEPIA_BOOK,
            title = text.sepiaTitle,
            description = text.sepiaDescription,
            isSelected = selectedPreset == ReadingPreset.SEPIA_BOOK,
            onClick = { onPresetSelected(ReadingPreset.SEPIA_BOOK) }
        )
        PresetChoiceCard(
            preset = ReadingPreset.NIGHT_INK,
            title = text.nightInkTitle,
            description = text.nightInkDescription,
            isSelected = selectedPreset == ReadingPreset.NIGHT_INK,
            onClick = { onPresetSelected(ReadingPreset.NIGHT_INK) }
        )
        PresetChoiceCard(
            preset = ReadingPreset.OLED_BLACK,
            title = text.oledTitle,
            description = text.oledDescription,
            isSelected = selectedPreset == ReadingPreset.OLED_BLACK,
            onClick = { onPresetSelected(ReadingPreset.OLED_BLACK) }
        )
        PresetChoiceCard(
            preset = ReadingPreset.EINK,
            title = text.einkTitle,
            description = text.einkDescription,
            isSelected = selectedPreset == ReadingPreset.EINK,
            onClick = { onPresetSelected(ReadingPreset.EINK) }
        )
    }
}

@Composable
private fun PresetChoiceCard(
    preset: ReadingPreset,
    title: String,
    description: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    val style = preset.style()
    val background = style.backgroundColor?.let { Color(it.toInt()) } ?: MaterialTheme.colorScheme.surface
    val primary = style.primaryColor?.let { Color(it.toInt()) } ?: MaterialTheme.colorScheme.primary
    val secondary = style.secondaryColor?.let { Color(it.toInt()) } ?: MaterialTheme.colorScheme.secondary

    Surface(
        modifier = Modifier
            .fillMaxWidth()
            .border(
                width = if (isSelected) 2.dp else 1.dp,
                color = if (isSelected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.outlineVariant,
                shape = RoundedCornerShape(24.dp)
            )
            .clickable(onClick = onClick),
        shape = RoundedCornerShape(24.dp),
        color = MaterialTheme.colorScheme.surface
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(title, style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.SemiBold)
                Text(
                    text = description,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                listOf(primary, secondary, background).forEach { swatch ->
                    Box(
                        modifier = Modifier
                            .size(14.dp)
                            .background(swatch, CircleShape)
                            .border(1.dp, Color.Black.copy(alpha = 0.08f), CircleShape)
                    )
                }
            }
        }
    }
}
