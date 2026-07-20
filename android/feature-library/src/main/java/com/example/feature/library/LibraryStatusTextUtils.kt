package com.example.feature.library

/**
 * Library empty-state text and navigation resolution logic.
 *
 * Extracted from LibraryScreen to reduce its size.
 * Pure functions with no composable dependencies.
 */

internal data class LibraryStatusEmptyStateText(
    val title: String,
    val message: String,
    val action: String
)


internal fun resolveLibraryNavigateUpAction(
    showMrComicProgress: Boolean,
    contentSection: LibraryContentSection,
    groupByMode: GroupByMode,
    currentFolderPath: String?,
    statusFilter: LibraryStatusFilter,
    formatFilter: LibraryFormatFilter
): LibraryNavigateUpAction = when {
    showMrComicProgress -> LibraryNavigateUpAction.DISMISS_PROGRESS
    contentSection != LibraryContentSection.FILES -> LibraryNavigateUpAction.SHOW_FILES_SECTION
    statusFilter != LibraryStatusFilter.ALL -> LibraryNavigateUpAction.SHOW_ALL_FILES
    formatFilter != LibraryFormatFilter.ALL -> LibraryNavigateUpAction.CLEAR_FORMAT_FILTER
    groupByMode == GroupByMode.FOLDER && currentFolderPath != null -> LibraryNavigateUpAction.EXIT_FOLDER
    else -> LibraryNavigateUpAction.NONE
}

internal fun libraryStatusEmptyStateText(
    statusFilter: LibraryStatusFilter,
    language: String
): LibraryStatusEmptyStateText {
    val action = when (language) {
        "en" -> "Show all"
        "ja" -> "すべて表示"
        "zh" -> "显示全部"
        "ko" -> "전체 보기"
        else -> "Показать все"
    }
    return when (statusFilter) {
        LibraryStatusFilter.COMPLETED -> when (language) {
            "en" -> LibraryStatusEmptyStateText(
                title = "Nothing completed yet",
                message = "Finished books will appear here.",
                action = action
            )
            "ja" -> LibraryStatusEmptyStateText(
                title = "完読した本はまだありません",
                message = "最後まで読んだ本がここに表示されます。",
                action = action
            )
            "zh" -> LibraryStatusEmptyStateText(
                title = "还没有读完的书",
                message = "读完的书会显示在这里。",
                action = action
            )
            "ko" -> LibraryStatusEmptyStateText(
                title = "아직 다 읽은 책이 없습니다",
                message = "완독한 책이 여기에 표시됩니다.",
                action = action
            )
            else -> LibraryStatusEmptyStateText(
                title = "Пока ничего не прочитано",
                message = "Когда книга будет закрыта до конца, она появится здесь.",
                action = action
            )
        }
        LibraryStatusFilter.IN_PROGRESS -> when (language) {
            "en" -> LibraryStatusEmptyStateText(
                title = "Nothing in progress",
                message = "Books you start reading will appear here.",
                action = action
            )
            "ja" -> LibraryStatusEmptyStateText(
                title = "読書中の本はありません",
                message = "読み始めた本がここに表示されます。",
                action = action
            )
            "zh" -> LibraryStatusEmptyStateText(
                title = "没有正在阅读的书",
                message = "开始阅读后，书会显示在这里。",
                action = action
            )
            "ko" -> LibraryStatusEmptyStateText(
                title = "읽는 중인 책이 없습니다",
                message = "읽기 시작한 책이 여기에 표시됩니다.",
                action = action
            )
            else -> LibraryStatusEmptyStateText(
                title = "Сейчас ничего не читается",
                message = "Начните книгу, и она появится в этом разделе.",
                action = action
            )
        }
        LibraryStatusFilter.BOOKMARKED -> when (language) {
            "en" -> LibraryStatusEmptyStateText(
                title = "No favorites yet",
                message = "Favorite books will appear here.",
                action = action
            )
            "ja" -> LibraryStatusEmptyStateText(
                title = "お気に入りはまだありません",
                message = "お気に入りにした本がここに表示されます。",
                action = action
            )
            "zh" -> LibraryStatusEmptyStateText(
                title = "还没有收藏",
                message = "收藏的书会显示在这里。",
                action = action
            )
            "ko" -> LibraryStatusEmptyStateText(
                title = "아직 즐겨찾기가 없습니다",
                message = "즐겨찾기한 책이 여기에 표시됩니다.",
                action = action
            )
            else -> LibraryStatusEmptyStateText(
                title = "Пока нет избранного",
                message = "Добавьте книгу в избранное, чтобы быстро вернуться к ней.",
                action = action
            )
        }
        LibraryStatusFilter.ALL -> when (language) {
            "en" -> LibraryStatusEmptyStateText(
                title = "Nothing here yet",
                message = "Clear filters to return to the full library.",
                action = action
            )
            "ja" -> LibraryStatusEmptyStateText(
                title = "ここにはまだありません",
                message = "フィルターを解除してライブラリ全体に戻ります。",
                action = action
            )
            "zh" -> LibraryStatusEmptyStateText(
                title = "这里还没有内容",
                message = "清除筛选以返回完整书库。",
                action = action
            )
            "ko" -> LibraryStatusEmptyStateText(
                title = "아직 항목이 없습니다",
                message = "필터를 해제해 전체 라이브러리로 돌아갑니다.",
                action = action
            )
            else -> LibraryStatusEmptyStateText(
                title = "Здесь пока пусто",
                message = "Сбросьте фильтр, чтобы увидеть всю библиотеку.",
                action = action
            )
        }
    }
}
