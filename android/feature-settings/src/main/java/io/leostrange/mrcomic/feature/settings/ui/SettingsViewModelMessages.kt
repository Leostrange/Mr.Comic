// Phase T (2026-08-04):
// 12 i18n message helpers extracted from SettingsViewModel.kt
// as extension functions. formatSize promoted to internal in main class.
// Zero field promotion — only use uiState (public val).
// Module: feature-settings

package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.model.repository.BackupRepository

internal fun SettingsViewModel.settingsLanguage(): String = uiState.value.appLanguage

internal fun SettingsViewModel.settingsCacheClearedMessage(bytes: Long): String = when (settingsLanguage()) {
        "en" -> "Cache cleared (${formatSize(bytes)})"
        "ja" -> "キャッシュを削除しました (${formatSize(bytes)})"
        "zh" -> "缓存已清理（${formatSize(bytes)}）"
        "ko" -> "캐시를 정리했습니다 (${formatSize(bytes)})"
        else -> "Кэш очищен (${formatSize(bytes)})"
    }

internal fun SettingsViewModel.settingsCacheAlreadyEmptyMessage(): String = when (settingsLanguage()) {
        "en" -> "Cache is already empty"
        "ja" -> "キャッシュはすでに空です"
        "zh" -> "缓存已经是空的"
        "ko" -> "캐시가 이미 비어 있습니다"
        else -> "Кэш уже пуст"
    }

internal fun SettingsViewModel.settingsExportSuccessMessage(comicCount: Int): String = when (settingsLanguage()) {
        "en" -> "Exported: $comicCount books/comics and all settings"
        "ja" -> "エクスポート完了: 書籍/コミック $comicCount 件とすべての設定"
        "zh" -> "已导出：$comicCount 本书/漫画以及全部设置"
        "ko" -> "내보냈습니다: 책/코믹 ${comicCount}개와 모든 설정"
        else -> "Экспортировано: $comicCount книг/комиксов и все настройки"
    }

internal fun SettingsViewModel.settingsExportFailedMessage(detail: String?): String = when (settingsLanguage()) {
        "en" -> "Export failed: ${detail ?: "unknown error"}"
        "ja" -> "エクスポートに失敗しました: ${detail ?: "不明なエラー"}"
        "zh" -> "导出失败：${detail ?: "未知错误"}"
        "ko" -> "내보내기에 실패했습니다: ${detail ?: "알 수 없는 오류"}"
        else -> "Ошибка экспорта: ${detail ?: "неизвестная ошибка"}"
    }

internal fun SettingsViewModel.settingsImportReadFailedMessage(): String = when (settingsLanguage()) {
        "en" -> "Failed to read the file"
        "ja" -> "ファイルを読み込めませんでした"
        "zh" -> "无法读取文件"
        "ko" -> "파일을 읽을 수 없습니다"
        else -> "Не удалось прочитать файл"
    }

internal fun SettingsViewModel.settingsImportSummaryMessage(
        restored: Int,
        updated: Int,
        skipped: Int,
        restoredSettings: Int,
        restoredQuotes: Int,
        updatedQuotes: Int,
        unresolvedAccess: Int
    ): String = when (settingsLanguage()) {
        "en" -> buildString {
            append("Imported into library: $restored, updated: $updated, skipped: $skipped, settings restored: $restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append(", quotes: +$restoredQuotes / updated $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append(". $unresolvedAccess files still need access rebinding through the source folder.")
            }
        }
        "ja" -> buildString {
            append("ライブラリに取り込み: $restored、更新: $updated、スキップ: $skipped、復元した設定: $restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append("、引用: +$restoredQuotes / 更新 $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append("。さらに $unresolvedAccess 件は元フォルダからのアクセス再関連付けが必要です。")
            }
        }
        "zh" -> buildString {
            append("已导入到书库：$restored，已更新：$updated，已跳过：$skipped，已恢复设置：$restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append("，摘录：+$restoredQuotes / 更新 $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append("。还有 $unresolvedAccess 个文件需要通过源文件夹重新绑定访问权限。")
            }
        }
        "ko" -> buildString {
            append("라이브러리에 가져옴: $restored, 업데이트: $updated, 건너뜀: $skipped, 복원된 설정: $restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append(", 문구: +$restoredQuotes / 업데이트 $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append(". 추가로 ${unresolvedAccess}개 파일은 원본 폴더를 통해 접근 권한 재연결이 필요합니다.")
            }
        }
        else -> buildString {
            append("Импортировано в библиотеку: $restored, обновлено: $updated, пропущено: $skipped, настроек восстановлено: $restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append(", цитат: +$restoredQuotes / обновлено $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append(". Ещё $unresolvedAccess файлов требуют перепривязки доступа через исходную папку.")
            }
        }
    }

internal fun SettingsViewModel.settingsImportFailedMessage(detail: String?): String = when (settingsLanguage()) {
        "en" -> "Import failed: ${detail ?: "unknown error"}"
        "ja" -> "インポートに失敗しました: ${detail ?: "不明なエラー"}"
        "zh" -> "导入失败：${detail ?: "未知错误"}"
        "ko" -> "가져오기에 실패했습니다: ${detail ?: "알 수 없는 오류"}"
        else -> "Ошибка импорта: ${detail ?: "неизвестная ошибка"}"
    }

internal fun SettingsViewModel.settingsImportFailureMessage(error: Throwable): String {
        val detail = error.message?.takeIf { it.isNotBlank() } ?: error.localizedMessage
        return if (detail == SETTINGS_IMPORT_REJECTION_MESSAGE) {
            SETTINGS_IMPORT_REJECTION_MESSAGE
        } else {
            settingsImportFailedMessage(detail)
        }
    }

internal fun SettingsViewModel.settingsRepairSummaryMessage(
        result: BackupRepository.RepairLibraryAccessResult
    ): String = when (settingsLanguage()) {
        "en" -> when {
            result.repaired > 0 -> buildString {
                append("Rebound: ${result.repaired}")
                if (result.alreadyReadable > 0) append(", already OK: ${result.alreadyReadable}")
                if (result.missing > 0) append(", not found in selected folder: ${result.missing}")
                if (result.skipped > 0) append(", not related to this folder: ${result.skipped}")
            }
            result.alreadyReadable > 0 -> "No new problems were found in the selected folder. Already accessible: ${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "Nothing could be rebound. If some books still do not open, choose a different source folder."
            else -> "Failed to match books with the selected folder."
        }
        "ja" -> when {
            result.repaired > 0 -> buildString {
                append("再関連付け: ${result.repaired}")
                if (result.alreadyReadable > 0) append("、すでに利用可能: ${result.alreadyReadable}")
                if (result.missing > 0) append("、選択フォルダ内で未検出: ${result.missing}")
                if (result.skipped > 0) append("、このフォルダに属さない: ${result.skipped}")
            }
            result.alreadyReadable > 0 -> "選択したフォルダでは新しい問題は見つかりませんでした。すでに利用可能: ${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "再関連付けできませんでした。まだ開けない本がある場合は、別の元フォルダを選んでください。"
            else -> "選択したフォルダと本を対応付けできませんでした。"
        }
        "zh" -> when {
            result.repaired > 0 -> buildString {
                append("已重新绑定：${result.repaired}")
                if (result.alreadyReadable > 0) append("，已正常：${result.alreadyReadable}")
                if (result.missing > 0) append("，在所选文件夹中未找到：${result.missing}")
                if (result.skipped > 0) append("，与此文件夹无关：${result.skipped}")
            }
            result.alreadyReadable > 0 -> "在所选文件夹中没有发现新的问题。已可访问：${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "无法重新绑定。如果仍有书籍打不开，请选择其他源文件夹。"
            else -> "无法将书籍与所选文件夹匹配。"
        }
        "ko" -> when {
            result.repaired > 0 -> buildString {
                append("재연결됨: ${result.repaired}")
                if (result.alreadyReadable > 0) append(", 이미 정상: ${result.alreadyReadable}")
                if (result.missing > 0) append(", 선택한 폴더에서 찾지 못함: ${result.missing}")
                if (result.skipped > 0) append(", 이 폴더와 무관함: ${result.skipped}")
            }
            result.alreadyReadable > 0 -> "선택한 폴더에서 새로운 문제는 발견되지 않았습니다. 이미 접근 가능: ${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "재연결할 수 없었습니다. 여전히 열리지 않는 책이 있다면 다른 원본 폴더를 선택하세요."
            else -> "선택한 폴더와 책을 매칭할 수 없습니다."
        }
        else -> when {
            result.repaired > 0 -> buildString {
                append("Перепривязано: ${result.repaired}")
                if (result.alreadyReadable > 0) append(", уже в порядке: ${result.alreadyReadable}")
                if (result.missing > 0) append(", не найдены в выбранной папке: ${result.missing}")
                if (result.skipped > 0) append(", не относятся к этой папке: ${result.skipped}")
            }
            result.alreadyReadable > 0 -> "В выбранной папке новых проблем не найдено. Уже доступны: ${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "Ничего не удалось перепривязать. Если часть книг всё ещё не открывается, выберите другую исходную папку."
            else -> "Не удалось сопоставить книги с выбранной папкой."
        }
    }

internal fun SettingsViewModel.settingsRepairFailedMessage(detail: String?): String = when (settingsLanguage()) {
        "en" -> "Access rebind failed: ${detail ?: "unknown error"}"
        "ja" -> "アクセス再関連付けに失敗しました: ${detail ?: "不明なエラー"}"
        "zh" -> "重新绑定访问权限失败：${detail ?: "未知错误"}"
        "ko" -> "접근 권한 재연결에 실패했습니다: ${detail ?: "알 수 없는 오류"}"
        else -> "Ошибка перепривязки доступа: ${detail ?: "неизвестная ошибка"}"
    }

internal fun SettingsViewModel.settingsUntitledLabel(): String = when (settingsLanguage()) {
        "en" -> "Untitled"
        "ja" -> "無題"
        "zh" -> "未命名"
        "ko" -> "제목 없음"
        else -> "Без названия"
    }
