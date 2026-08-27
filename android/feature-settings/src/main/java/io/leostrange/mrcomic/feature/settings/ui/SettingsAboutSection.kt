// Phase J (2026-08-03): About/Color-picker-блок вынесен из SettingsScreen.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import android.os.Build
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.style

/**
 * About + Color picker (Phase J, 2026-08-03): AboutSection with its i18n
 * helpers (AboutSectionText, aboutSectionText, aboutCountValue), the shared
 * AboutBulletList, and the color picker (COLOR_PALETTE, ColorPickerRow,
 * ColorSwatch). Moved from SettingsScreen.kt; behavior is unchanged.
 */

/* ──── AboutSectionText (data class) ──── */
internal data class AboutSectionText(
    val title: String,
    val description: String,
    val versionTitle: String,
    val overviewTitle: String,
    val overviewBody: String,
    val featuresTitle: String,
    val features: List<String>,
    val librariesTitle: String,
    val libraries: List<String>,
    val licensesTitle: String,
    val licenses: List<String>,
    val developerTitle: String,
    val developerName: String,
    val developerRole: String,
    val contactsTitle: String,
    val contactsHint: String
)

/* ──── aboutSectionText (fun) ──── */
internal fun aboutSectionText(language: String): AboutSectionText = when (language) {
    "en" -> AboutSectionText(
        title = "About the app",
        description = "What the app does, what it is built with, and how to contact the developer.",
        versionTitle = "Installed version",
        overviewTitle = "Program description",
        overviewBody = "Mr.Comic is an Android reader for books and comics from a local library. It combines file management, reading modes for graphics and text, OCR and dictionary tools, reading progress, and backup features in one app.",
        featuresTitle = "Key features",
        features = listOf(
            "Local library with files, folders, bookmarks, quotes, and the Mr.Comic tab.",
            "Reader modes for page reading, webtoon scrolling, and text formats with saved progress.",
            "Developing OCR, offline dictionary, translation, and text explanation tools.",
            "Theme customization, progress export/import, and library access recovery."
        ),
        librariesTitle = "Main libraries",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt, Room, DataStore, Media3, Coil",
            "ML Kit, Retrofit, OkHttp, Gson, Zip4j, Apache Commons Compress, 7-Zip-JBinding, Junrar"
        ),
        licensesTitle = "Licenses and attribution",
        licenses = listOf(
            "A large part of the AndroidX / Jetpack / Retrofit / OkHttp stack uses Apache 2.0.",
            "Offline FreeDict dictionary data is bundled under CC BY-SA 3.0.",
            "Some third-party components are shipped with separate LGPL / other notice files inside the project.",
            "GPL-based DjVu renderers are not bundled in the current Android build.",
            "Project attribution and license notes are stored in bundled resources and project documentation."
        ),
        developerTitle = "Developer",
        developerName = "Leostrange (Соболев Алексей)",
        developerRole = "Design, development, and support",
        contactsTitle = "Contacts",
        contactsHint = "Feedback, bug reports, and suggestions:"
    )
    "ja" -> AboutSectionText(
        title = "アプリについて",
        description = "アプリの役割、使用している技術、開発者への連絡先をまとめています。",
        versionTitle = "インストール済みバージョン",
        overviewTitle = "プログラム概要",
        overviewBody = "Mr.Comic は、ローカルライブラリの本とコミックを読むための Android リーダーです。ファイル管理、画像とテキストの読書モード、OCR と辞書、読書進捗、バックアップをひとつにまとめています。",
        featuresTitle = "主な機能",
        features = listOf(
            "ファイル、フォルダ、ブックマーク、引用、Mr.Comic タブを備えたローカルライブラリ。",
            "ページ送り、ウェブトゥーン、テキスト形式に対応したリーダーと進捗保存。",
            "OCR、オフライン辞書、翻訳、テキスト解説ツール。",
            "テーマ調整、進捗の書き出し/読み込み、ライブラリアクセスの復旧。"
        ),
        librariesTitle = "主なライブラリ",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt、Room、DataStore、Media3、Coil",
            "ML Kit、Retrofit、OkHttp、Gson、Zip4j、Apache Commons Compress、7-Zip-JBinding、Junrar"
        ),
        licensesTitle = "ライセンスと帰属",
        licenses = listOf(
            "AndroidX / Jetpack / Retrofit / OkHttp 系の多くは Apache 2.0 を採用しています。",
            "オフライン FreeDict 辞書データは CC BY-SA 3.0 で同梱されています。",
            "一部サードパーティには LGPL などの個別 notice ファイルを別途同梱しています。",
            "GPL ベースの DjVu レンダラーは現在の Android ビルドには含めていません。",
            "帰属情報とライセンス注記は同梱アセットとプロジェクト文書に保存されています。"
        ),
        developerTitle = "開発者",
        developerName = "Leostrange（Соболев Алексей）",
        developerRole = "設計・開発・サポート",
        contactsTitle = "連絡先",
        contactsHint = "感想、バグ報告、提案はこちらへ:"
    )
    "zh" -> AboutSectionText(
        title = "关于应用",
        description = "这里汇总应用用途、技术栈以及开发者联系方式。",
        versionTitle = "已安装版本",
        overviewTitle = "程序说明",
        overviewBody = "Mr.Comic 是一款用于阅读本地书库中图书和漫画的 Android 阅读器。它把文件管理、图像与文本阅读模式、OCR 与词典工具、阅读进度和备份功能集中在一个应用里。",
        featuresTitle = "主要功能",
        features = listOf(
            "本地图书馆：文件、文件夹、书签、摘录和 Mr.Comic 标签页。",
            "支持分页、条漫滚动和文本格式的阅读器，并保存阅读进度。",
            "OCR、离线词典、翻译与文本解释工具。",
            "主题自定义、进度导出/导入，以及图书馆访问修复。"
        ),
        librariesTitle = "主要库",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt、Room、DataStore、Media3、Coil",
            "ML Kit、Retrofit、OkHttp、Gson、Zip4j、Apache Commons Compress、7-Zip-JBinding、Junrar"
        ),
        licensesTitle = "许可证与署名",
        licenses = listOf(
            "AndroidX / Jetpack / Retrofit / OkHttp 这类主要栈的大部分组件采用 Apache 2.0。",
            "离线 FreeDict 词典数据以 CC BY-SA 3.0 方式提供。",
            "部分第三方组件另附 LGPL 等单独的 notice 文件。",
            "基于 GPL 的 DjVu 渲染器未包含在当前 Android 构建中。",
            "署名信息和许可证说明保存在随包资源与项目文档中。"
        ),
        developerTitle = "开发者",
        developerName = "Leostrange（Соболев Алексей）",
        developerRole = "设计、开发与维护",
        contactsTitle = "联系方式",
        contactsHint = "欢迎发送反馈、问题报告和建议："
    )
    "ko" -> AboutSectionText(
        title = "앱 정보",
        description = "앱의 역할, 사용한 기술, 개발자 연락처를 한곳에 모았습니다.",
        versionTitle = "설치된 버전",
        overviewTitle = "프로그램 설명",
        overviewBody = "Mr.Comic 은 로컬 라이브러리의 책과 코믹을 읽기 위한 Android 리더입니다. 파일 관리, 그래픽/텍스트 읽기 모드, OCR과 사전 도구, 읽기 진행도와 백업 기능을 하나의 앱으로 묶었습니다.",
        featuresTitle = "주요 기능",
        features = listOf(
            "파일, 폴더, 북마크, 인용문, Mr.Comic 탭을 갖춘 로컬 라이브러리.",
            "페이지 리딩, 웹툰 스크롤, 텍스트 형식을 지원하는 리더와 진행도 저장.",
            "OCR, 오프라인 사전, 번역, 텍스트 설명 도구.",
            "테마 커스터마이즈, 진행도 내보내기/가져오기, 라이브러리 접근 복구."
        ),
        librariesTitle = "주요 라이브러리",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt, Room, DataStore, Media3, Coil",
            "ML Kit, Retrofit, OkHttp, Gson, Zip4j, Apache Commons Compress, 7-Zip-JBinding, Junrar"
        ),
        licensesTitle = "라이선스와 고지",
        licenses = listOf(
            "AndroidX / Jetpack / Retrofit / OkHttp 계열의 큰 축은 Apache 2.0을 사용합니다.",
            "오프라인 FreeDict 사전 데이터는 CC BY-SA 3.0으로 포함됩니다.",
            "일부 서드파티 구성요소는 LGPL 등 별도 notice 파일과 함께 제공됩니다.",
            "GPL 기반 DjVu 렌더러는 현재 Android 빌드에 포함하지 않았습니다.",
            "출처 표기와 라이선스 메모는 번들 자산과 프로젝트 문서에 저장되어 있습니다."
        ),
        developerTitle = "개발자",
        developerName = "Leostrange (Соболев Алексей)",
        developerRole = "설계, 개발, 유지보수",
        contactsTitle = "연락처",
        contactsHint = "피드백, 버그 제보, 제안:"
    )
    else -> AboutSectionText(
        title = "О приложении",
        description = "Здесь собраны назначение приложения, стек, лицензии и контакты разработчика.",
        versionTitle = "Установленная версия",
        overviewTitle = "Описание программы",
        overviewBody = "Mr.Comic — Android-приложение для чтения книг и комиксов из локальной библиотеки. Оно объединяет управление файлами, режимы чтения для графики и текста, OCR и словарные инструменты, прогресс чтения и резервное копирование.",
        featuresTitle = "Основные функции",
        features = listOf(
            "Локальная библиотека: файлы, папки, закладки, цитаты и вкладка Mr.Comic.",
            "Ридер для постраничного чтения, webtoon-режима и текстовых форматов с сохранением прогресса.",
            "Развивающиеся инструменты OCR, офлайн-словарей, перевода и объяснения текста.",
            "Темы и кастомизация, экспорт/импорт прогресса и восстановление доступа к библиотеке."
        ),
        librariesTitle = "Основные библиотеки",
        libraries = listOf(
            "AndroidX / Jetpack Compose / Material 3 / Navigation",
            "Hilt, Room, DataStore, Media3, Coil",
            "ML Kit, Retrofit, OkHttp, Gson, Zip4j, Apache Commons Compress, 7-Zip-JBinding, Junrar"
        ),
        licensesTitle = "Лицензии и атрибуция",
        licenses = listOf(
            "Заметная часть стека AndroidX / Jetpack / Retrofit / OkHttp использует Apache 2.0.",
            "Офлайн-данные FreeDict поставляются по лицензии CC BY-SA 3.0.",
            "Для части сторонних компонентов приложены отдельные notice-файлы с LGPL и другими условиями.",
            "GPL-зависимые DjVu-рендеры в текущую Android-сборку не включены.",
            "Файлы атрибуции и тексты лицензий лежат во встроенных ресурсах и документации проекта."
        ),
        developerTitle = "Разработчик",
        developerName = "Leostrange (Соболев Алексей)",
        developerRole = "Дизайн, разработка и сопровождение",
        contactsTitle = "Контакты",
        contactsHint = "Для отзывов, баг-репортов и предложений:"
    )
}

/* ──── aboutCountValue (fun) ──── */
internal fun aboutCountValue(language: String, count: Int): String = when (language) {
    "en" -> "$count items"
    "ja" -> "${count}件"
    "zh" -> "${count}项"
    "ko" -> "${count}개"
    else -> "$count пункт."
}

/* ──── AboutSection (fun) ──── */
@Composable
internal fun AboutSection(
    strings: AppStrings,
    modifier: Modifier = Modifier
) {
    val sectionText = remember(strings.languageCode) { aboutSectionText(strings.languageCode) }
    val context = LocalContext.current
    val packageInfo = remember(context.packageName) {
        context.packageManager.getPackageInfo(context.packageName, 0)
    }
    val versionCode = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
        packageInfo.longVersionCode
    } else {
        @Suppress("DEPRECATION")
        packageInfo.versionCode.toLong()
    }
    val installedVersion = "${packageInfo.versionName.orEmpty()} ($versionCode)"
    val contacts = remember {
        listOf(
            "xmetalcore@outlook.com",
            "chester.god.alive@gmail.com",
            "xmetalcore@mail.ru"
        )
    }

    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsCompactSummaryCard(
                title = settingsSectionSummaryText(strings.languageCode).title,
                hint = sectionText.description,
                items = listOf(
                    sectionText.featuresTitle to aboutCountValue(strings.languageCode, sectionText.features.size),
                    sectionText.librariesTitle to aboutCountValue(strings.languageCode, sectionText.libraries.size),
                    sectionText.licensesTitle to aboutCountValue(strings.languageCode, sectionText.licenses.size),
                    sectionText.contactsTitle to aboutCountValue(strings.languageCode, contacts.size)
                )
            )
        }
        item {
            SettingsCard(title = sectionText.versionTitle) {
                Text(
                    text = installedVersion,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.SemiBold
                )
            }
        }
        item {
            SettingsCard(title = sectionText.overviewTitle) {
                Text(
                    text = sectionText.overviewBody,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
        item {
            SettingsCard(title = sectionText.featuresTitle) {
                AboutBulletList(items = sectionText.features)
            }
        }
        item {
            SettingsCard(title = sectionText.librariesTitle) {
                AboutBulletList(items = sectionText.libraries)
            }
        }
        item {
            SettingsCard(title = sectionText.licensesTitle) {
                AboutBulletList(items = sectionText.licenses)
            }
        }
        item {
            SettingsCard(title = sectionText.developerTitle) {
                Text(
                    text = sectionText.developerName,
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.SemiBold
                )
                Text(
                    text = sectionText.developerRole,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
        item {
            SettingsCard(title = sectionText.contactsTitle) {
                Text(
                    text = sectionText.contactsHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                androidx.compose.foundation.text.selection.SelectionContainer {
                    Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                        contacts.forEach { contact ->
                            MrComicCardSurface(
                                fillMaxWidth = false,
                                cornerRadius = 14.dp,
                                containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.55f)
                            ) {
                                Text(
                                    text = contact,
                                    style = MaterialTheme.typography.bodyMedium,
                                    modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp)
                                )
                            }
                        }
                    }
                }
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

/* ──── AboutBulletList (fun) ──── */
@Composable
internal fun AboutBulletList(items: List<String>) {
    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
        items.forEach { item ->
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.Top
            ) {
                Text(
                    text = "•",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = item,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.weight(1f)
                )
            }
        }
    }
}

/* ──── COLOR_PALETTE (val) ──── */
private val COLOR_PALETTE: List<Long> = listOf(
    0xFF6200EEL,
    0xFF3700B3L,
    0xFF0288D1L,
    0xFF00897BL,
    0xFF388E3CL,
    0xFFFF8F00L,
    0xFFE53935L,
    0xFFD81B60L,
    0xFF5D4037L,
    0xFF455A64L,
    0xFF212121L,
    0xFFF5F5F5L
)

/* ──── ColorPickerRow (fun) ──── */
@Composable
internal fun ColorPickerRow(
    label: String,
    selectedColor: Color?,
    onColorSelected: (Color?) -> Unit
) {
    Column {
        Text(label, style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant)
        Spacer(Modifier.height(6.dp))
        LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            item(key = "$label-default") {
                ColorSwatch(color = null, isSelected = selectedColor == null,
                    onClick = { onColorSelected(null) })
            }
            items(
                items = COLOR_PALETTE,
                key = { argb -> "$label-$argb" }
            ) { argb ->
                val color = Color(argb.toInt())
                ColorSwatch(
                    color = color,
                    isSelected = selectedColor != null && selectedColor == color,
                    onClick = { onColorSelected(color) }
                )
            }
        }
    }
}

/* ──── ColorSwatch (fun) ──── */
@Composable
internal fun ColorSwatch(color: Color?, isSelected: Boolean, onClick: () -> Unit) {
    val borderColor = if (isSelected) MaterialTheme.colorScheme.primary else Color.Transparent
    val swatchColor = color ?: MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 1f)
    Box(
        modifier = Modifier
            .size(36.dp)
            .clip(CircleShape)
            .background(swatchColor)
            .border(2.dp, borderColor, CircleShape)
            .clickable(onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        if (color == null) {
            Icon(
                imageVector = Icons.Default.Close,
                contentDescription = null,
                modifier = Modifier.size(14.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        if (isSelected) {
            Icon(Icons.Default.Check, contentDescription = null,
                modifier = Modifier.size(16.dp),
                tint = if (color == null) MaterialTheme.colorScheme.onSurfaceVariant else Color.White)
        }
    }
}

