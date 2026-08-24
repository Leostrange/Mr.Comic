package io.leostrange.mrcomic.core.ui.locale

/**
 * Dictionary section strings, split out of [AppStrings] because its primary
 * constructor exceeded the JVM 254-parameter limit (ClassFormatError:
 * "Too many arguments in method signature"). Accessed through delegation
 * properties on AppStrings, so `strings.dictXxx` call sites are unchanged.
 */
data class DictionaryStrings(
    /** "Dictionaries" */
    val dictSectionTitle: String,
    /** Section hint / description */
    val dictSectionHint: String,
    /** Installed count label */
    val dictInstalledLabel: String,
    /** Total size label */
    val dictTotalSizeLabel: String,
    /** Language name: English */
    val dictLangEnglish: String,
    /** Language name: French */
    val dictLangFrench: String,
    /** Language name: Italian */
    val dictLangItalian: String,
    /** Language name: Japanese */
    val dictLangJapanese: String,
    /** Language name: Korean */
    val dictLangKorean: String,
    /** Language name: Polish */
    val dictLangPolish: String,
    /** Language name: Portuguese */
    val dictLangPortuguese: String,
    /** Language name: Russian */
    val dictLangRussian: String,
    /** Language name: Turkish */
    val dictLangTurkish: String,
    /** Language name: Chinese */
    val dictLangChinese: String,
    /** Status chip: Bundled */
    val dictStatusBundled: String,
    /** Status chip: Installed */
    val dictStatusInstalled: String,
    /** Status chip: Not installed */
    val dictStatusNotInstalled: String,
    /** Download button label */
    val dictBtnDownload: String,
    /** Delete button label */
    val dictBtnDelete: String,
    /** Export button label */
    val dictBtnExport: String,
    /** Download confirmation dialog title template (%s = language name) */
    val dictConfirmDownloadTitle: String,
    /** Download confirmation dialog message template (%s = size) */
    val dictConfirmDownloadMessage: String,
    /** Button: Download all */
    val dictBtnDownloadAll: String,
    /** Button: Export all installed */
    val dictBtnExportAll: String,
    /** Button: Import */
    val dictBtnImport: String,
    /** Import prompt: choose language */
    val dictImportSelectLanguage: String,
    /** Operation state: Deleting */
    val dictOpDeleting: String,
    /** Operation state: Importing */
    val dictOpImporting: String,
    /** Operation state: Exporting */
    val dictOpExporting: String,
    /** Operation error */
    val dictOpError: String,
    /** Import success */
    val dictImportSuccess: String,
    /** Import failure (not SQLite) */
    val dictImportInvalidFile: String,
    /** Export success */
    val dictExportSuccess: String,
) {
    companion object {
        fun forLanguage(languageCode: String): DictionaryStrings = when (normalizeAppLanguageCode(languageCode)) {
            "en" -> DictionaryStrings(
                dictSectionTitle = "Dictionaries",
                dictSectionHint = "Download offline dictionaries for translation and lookup.",
                dictInstalledLabel = "Installed",
                dictTotalSizeLabel = "Total size",
                dictLangEnglish = "English",
                dictLangFrench = "French",
                dictLangItalian = "Italian",
                dictLangJapanese = "Japanese",
                dictLangKorean = "Korean",
                dictLangPolish = "Polish",
                dictLangPortuguese = "Portuguese",
                dictLangRussian = "Russian",
                dictLangTurkish = "Turkish",
                dictLangChinese = "Chinese",
                dictStatusBundled = "Bundled",
                dictStatusInstalled = "Installed",
                dictStatusNotInstalled = "Not installed",
                dictBtnDownload = "Download",
                dictBtnDelete = "Delete",
                dictBtnExport = "Export",
                dictConfirmDownloadTitle = "Download dictionary?",
                dictConfirmDownloadMessage = "Download %s dictionary? ~%s",
                dictBtnDownloadAll = "Download all",
                dictBtnExportAll = "Export all",
                dictBtnImport = "Import",
                dictImportSelectLanguage = "Select language",
                dictOpDeleting = "Deleting…",
                dictOpImporting = "Importing…",
                dictOpExporting = "Exporting…",
                dictOpError = "Error",
                dictImportSuccess = "Dictionary imported successfully",
                dictImportInvalidFile = "Invalid dictionary file",
                dictExportSuccess = "Export completed",
            )
            "ja" -> DictionaryStrings(
                dictSectionTitle = "辞書",
                dictSectionHint = "翻訳・辞書検索用のオフライン辞書をダウンロードします。",
                dictInstalledLabel = "インストール済み",
                dictTotalSizeLabel = "合計サイズ",
                dictLangEnglish = "英語",
                dictLangFrench = "フランス語",
                dictLangItalian = "イタリア語",
                dictLangJapanese = "日本語",
                dictLangKorean = "韓国語",
                dictLangPolish = "ポーランド語",
                dictLangPortuguese = "ポルトガル語",
                dictLangRussian = "ロシア語",
                dictLangTurkish = "トルコ語",
                dictLangChinese = "中国語",
                dictStatusBundled = "バンドル済み",
                dictStatusInstalled = "インストール済み",
                dictStatusNotInstalled = "未インストール",
                dictBtnDownload = "ダウンロード",
                dictBtnDelete = "削除",
                dictBtnExport = "エクスポート",
                dictConfirmDownloadTitle = "辞書をダウンロードしますか？",
                dictConfirmDownloadMessage = "辞書「%s」をダウンロードしますか？ 約%s",
                dictBtnDownloadAll = "すべてダウンロード",
                dictBtnExportAll = "すべてエクスポート",
                dictBtnImport = "インポート",
                dictImportSelectLanguage = "言語を選択",
                dictOpDeleting = "削除中…",
                dictOpImporting = "インポート中…",
                dictOpExporting = "エクスポート中…",
                dictOpError = "エラー",
                dictImportSuccess = "辞書のインポートが完了しました",
                dictImportInvalidFile = "無効な辞書ファイルです",
                dictExportSuccess = "エクスポートが完了しました",
            )
            "zh" -> DictionaryStrings(
                dictSectionTitle = "词典",
                dictSectionHint = "下载离线词典用于翻译和查询。",
                dictInstalledLabel = "已安装",
                dictTotalSizeLabel = "总大小",
                dictLangEnglish = "英语",
                dictLangFrench = "法语",
                dictLangItalian = "意大利语",
                dictLangJapanese = "日语",
                dictLangKorean = "韩语",
                dictLangPolish = "波兰语",
                dictLangPortuguese = "葡萄牙语",
                dictLangRussian = "俄语",
                dictLangTurkish = "土耳其语",
                dictLangChinese = "中文",
                dictStatusBundled = "内置",
                dictStatusInstalled = "已安装",
                dictStatusNotInstalled = "未安装",
                dictBtnDownload = "下载",
                dictBtnDelete = "删除",
                dictBtnExport = "导出",
                dictConfirmDownloadTitle = "下载词典？",
                dictConfirmDownloadMessage = "下载词典「%s」？约%s",
                dictBtnDownloadAll = "全部下载",
                dictBtnExportAll = "全部导出",
                dictBtnImport = "导入",
                dictImportSelectLanguage = "选择语言",
                dictOpDeleting = "删除中…",
                dictOpImporting = "导入中…",
                dictOpExporting = "导出中…",
                dictOpError = "错误",
                dictImportSuccess = "词典导入成功",
                dictImportInvalidFile = "无效的词典文件",
                dictExportSuccess = "导出完成",
            )
            "ko" -> DictionaryStrings(
                dictSectionTitle = "사전",
                dictSectionHint = "번역 및 조회를 위한 오프라인 사전을 다운로드합니다.",
                dictInstalledLabel = "설치됨",
                dictTotalSizeLabel = "총 크기",
                dictLangEnglish = "영어",
                dictLangFrench = "프랑스어",
                dictLangItalian = "이탈리아어",
                dictLangJapanese = "일본어",
                dictLangKorean = "한국어",
                dictLangPolish = "폴란드어",
                dictLangPortuguese = "포르투갈어",
                dictLangRussian = "러시아어",
                dictLangTurkish = "터키어",
                dictLangChinese = "중국어",
                dictStatusBundled = "번들 포함",
                dictStatusInstalled = "설치됨",
                dictStatusNotInstalled = "미설치",
                dictBtnDownload = "다운로드",
                dictBtnDelete = "삭제",
                dictBtnExport = "내보내기",
                dictConfirmDownloadTitle = "사전을 다운로드하시겠습니까?",
                dictConfirmDownloadMessage = "사전 '%s'을(를) 다운로드하시겠습니까? 약 %s",
                dictBtnDownloadAll = "모두 다운로드",
                dictBtnExportAll = "모두 내보내기",
                dictBtnImport = "가져오기",
                dictImportSelectLanguage = "언어 선택",
                dictOpDeleting = "삭제 중…",
                dictOpImporting = "가져오는 중…",
                dictOpExporting = "내보내는 중…",
                dictOpError = "오류",
                dictImportSuccess = "사전 가져오기 완료",
                dictImportInvalidFile = "유효하지 않은 사전 파일",
                dictExportSuccess = "내보내기 완료",
            )
            else -> DictionaryStrings(
                dictSectionTitle = "Словари",
                dictSectionHint = "Скачать оффлайн-словари для перевода и поиска.",
                dictInstalledLabel = "Установлено",
                dictTotalSizeLabel = "Общий размер",
                dictLangEnglish = "Английский",
                dictLangFrench = "Французский",
                dictLangItalian = "Итальянский",
                dictLangJapanese = "Японский",
                dictLangKorean = "Корейский",
                dictLangPolish = "Польский",
                dictLangPortuguese = "Португальский",
                dictLangRussian = "Русский",
                dictLangTurkish = "Турецкий",
                dictLangChinese = "Китайский",
                dictStatusBundled = "В комплекте",
                dictStatusInstalled = "Установлено",
                dictStatusNotInstalled = "Не установлено",
                dictBtnDownload = "Скачать",
                dictBtnDelete = "Удалить",
                dictBtnExport = "Экспорт",
                dictConfirmDownloadTitle = "Скачать словарь?",
                dictConfirmDownloadMessage = "Скачать словарь «%s»? ~%s",
                dictBtnDownloadAll = "Скачать все",
                dictBtnExportAll = "Экспорт всех",
                dictBtnImport = "Импорт",
                dictImportSelectLanguage = "Выберите язык",
                dictOpDeleting = "Удаление…",
                dictOpImporting = "Импорт…",
                dictOpExporting = "Экспорт…",
                dictOpError = "Ошибка",
                dictImportSuccess = "Словарь успешно импортирован",
                dictImportInvalidFile = "Недопустимый файл словаря",
                dictExportSuccess = "Экспорт завершён",
            )
        }
    }
}
