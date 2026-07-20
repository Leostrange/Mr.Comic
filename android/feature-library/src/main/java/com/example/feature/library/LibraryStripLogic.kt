package com.example.feature.library

import com.example.core.model.Audiobook
import com.example.core.model.Comic
import com.example.core.model.SortOrder
import com.example.feature.library.components.isGraphicVolumeFormat
import com.example.core.ui.locale.AppStrings

/**
 * Library strip sections, sort/filter logic, and label helpers.
 *
 * Extracted from LibraryScreen to reduce its size.
 * Pure functions with no composable dependencies.
 */

internal data class LibraryStripSectionData(
    val key: String,
    val title: String,
    val folders: List<LibraryFolderItem> = emptyList(),
    val comics: List<Comic> = emptyList(),
    val audiobooks: List<Audiobook> = emptyList()
)

internal fun nextLibraryViewMode(current: LibraryViewMode): LibraryViewMode = when (current) {
    LibraryViewMode.GRID -> LibraryViewMode.LIST
    LibraryViewMode.LIST -> LibraryViewMode.STRIPS
    LibraryViewMode.STRIPS -> LibraryViewMode.GRID
}

internal fun libraryFoldersStripLabel(language: String): String = when (language) {
    "en" -> "Folders"
    "ja" -> "フォルダ"
    "zh" -> "文件夹"
    "ko" -> "폴더"
    else -> "Папки"
}

internal fun libraryAudiobooksStripLabel(language: String): String = when (language) {
    "en" -> "Audiobooks"
    "ja" -> "オーディオブック"
    "zh" -> "有声书"
    "ko" -> "오디오북"
    else -> "Аудиокниги"
}

internal fun libraryGraphicStripLabel(language: String): String = when (language) {
    "en" -> "Comics"
    "ja" -> "コミック"
    "zh" -> "漫画"
    "ko" -> "코믹"
    else -> "Комиксы"
}

internal fun libraryBooksStripLabel(language: String): String = when (language) {
    "en" -> "Books"
    "ja" -> "本"
    "zh" -> "图书"
    "ko" -> "도서"
    else -> "Книги"
}

internal fun libraryViewAsStripsLabel(language: String): String = when (language) {
    "en" -> "View: shelves"
    "ja" -> "表示: 棚"
    "zh" -> "视图：书架"
    "ko" -> "보기: 선반"
    else -> "Вид: ленты"
}

internal fun libraryViewSectionLabel(language: String): String = when (language) {
    "en" -> "View mode"
    "ja" -> "表示モード"
    "zh" -> "视图模式"
    "ko" -> "보기 모드"
    else -> "Режим отображения"
}

internal fun libraryViewModeLabel(mode: LibraryViewMode, language: String): String = when (mode) {
    LibraryViewMode.GRID -> when (language) {
        "en" -> "Grid"
        "ja" -> "グリッド"
        "zh" -> "网格"
        "ko" -> "그리드"
        else -> "Сетка"
    }
    LibraryViewMode.LIST -> when (language) {
        "en" -> "List"
        "ja" -> "リスト"
        "zh" -> "列表"
        "ko" -> "목록"
        else -> "Список"
    }
    LibraryViewMode.STRIPS -> when (language) {
        "en" -> "Vertical strips"
        "ja" -> "縦リボン"
        "zh" -> "垂直条带"
        "ko" -> "세로 스트립"
        else -> "Вертикальная лента"
    }
}

internal fun libraryThumbnailSizeSectionLabel(language: String): String = when (language) {
    "en" -> "Thumbnail size"
    "ja" -> "サムネイルサイズ"
    "zh" -> "缩略图大小"
    "ko" -> "썸네일 크기"
    "ru" -> "Размер миниатюр"
    else -> "Thumbnail size"
}

internal fun libraryThumbnailSizeLabel(language: String, size: String): String = when (language) {
    "en" -> when (size) {
        "small" -> "Small"
        "large" -> "Large"
        else -> "Medium"
    }
    "ja" -> when (size) {
        "small" -> "小"
        "large" -> "大"
        else -> "中"
    }
    "zh" -> when (size) {
        "small" -> "小"
        "large" -> "大"
        else -> "中"
    }
    "ko" -> when (size) {
        "small" -> "작게"
        "large" -> "크게"
        else -> "보통"
    }
    "ru" -> when (size) {
        "small" -> "Меньше"
        "large" -> "Больше"
        else -> "Средний"
    }
    else -> when (size) {
        "small" -> "Small"
        "large" -> "Large"
        else -> "Medium"
    }
}

internal fun librarySortOptions(strings: AppStrings): List<Pair<SortOrder, String>> {
    val language = strings.languageCode
    return listOf(
        SortOrder.DATE_ADDED_DESC to librarySortLabel(language, "Added: newest", "Добавлены: новые"),
        SortOrder.DATE_ADDED_ASC to librarySortLabel(language, "Added: oldest", "Добавлены: старые"),
        SortOrder.DATE_READ_DESC to librarySortLabel(language, "Read: recent", "Читали: недавние"),
        SortOrder.DATE_READ_ASC to librarySortLabel(language, "Read: old first", "Читали: старые"),
        SortOrder.TITLE_ASC to librarySortLabel(language, "Title: A-Z", "Название: А-Я"),
        SortOrder.TITLE_DESC to librarySortLabel(language, "Title: Z-A", "Название: Я-А"),
        SortOrder.PROGRESS_DESC to librarySortLabel(language, "Progress: high first", "Прогресс: больше"),
        SortOrder.PROGRESS_ASC to librarySortLabel(language, "Progress: low first", "Прогресс: меньше"),
        SortOrder.FILE_SIZE_DESC to librarySortLabel(language, "File: large first", "Файл: больше"),
        SortOrder.FILE_SIZE_ASC to librarySortLabel(language, "File: small first", "Файл: меньше"),
        SortOrder.GENRE_ASC to librarySortLabel(language, "Genre: A-Z", "Жанр: А-Я"),
        SortOrder.GENRE_DESC to librarySortLabel(language, "Genre: Z-A", "Жанр: Я-А"),
        SortOrder.FOLDER_ASC to librarySortLabel(language, "Folder: A-Z", "Папка: А-Я"),
        SortOrder.FOLDER_DESC to librarySortLabel(language, "Folder: Z-A", "Папка: Я-А")
    )
}

internal fun librarySortLabel(language: String, english: String, russian: String): String = when (language) {
    "ru" -> russian
    else -> english
}

internal fun filterAndSortAudiobooks(
    audiobooks: List<Audiobook>,
    statusFilter: LibraryStatusFilter,
    sortOrder: SortOrder
): List<Audiobook> {
    val filtered = when (statusFilter) {
        LibraryStatusFilter.ALL -> audiobooks
        LibraryStatusFilter.BOOKMARKED -> emptyList()
        LibraryStatusFilter.IN_PROGRESS -> audiobooks.filter {
            it.lastPositionMs > 0L || it.lastChapterIndex > 0
        }
        LibraryStatusFilter.COMPLETED -> emptyList()
    }
    return when (sortOrder) {
        SortOrder.TITLE_ASC -> filtered.sortedBy { it.title.lowercase() }
        SortOrder.TITLE_DESC -> filtered.sortedByDescending { it.title.lowercase() }
        SortOrder.DATE_ADDED_ASC -> filtered.sortedBy { it.addedAt }
        SortOrder.DATE_ADDED_DESC -> filtered.sortedByDescending { it.addedAt }
        // Audiobook currently has no last-listened timestamp, so keep date-read sort stable.
        SortOrder.DATE_READ_ASC -> filtered.sortedBy { it.title.lowercase() }
        SortOrder.DATE_READ_DESC -> filtered.sortedByDescending { it.title.lowercase() }
        SortOrder.PROGRESS_ASC -> filtered.sortedWith(
            compareBy<Audiobook> { it.lastChapterIndex }.thenBy { it.lastPositionMs }
        )
        SortOrder.PROGRESS_DESC -> filtered.sortedWith(
            compareByDescending<Audiobook> { it.lastChapterIndex }.thenByDescending { it.lastPositionMs }
        )
        else -> filtered
    }
}

internal fun buildLibraryStripSections(
    items: List<LibraryDisplayItem>,
    appLanguage: String,
    audiobooks: List<Audiobook> = emptyList()
): List<LibraryStripSectionData> {
    val folders = items.filterIsInstance<LibraryFolderItem>()
    val comics = items.filterIsInstance<LibraryComicItem>().map { it.comic }
    val graphics = comics.filter { it.isGraphicVolumeFormat() }
    val books = comics.filterNot { it.isGraphicVolumeFormat() }
    return buildList {
        if (folders.isNotEmpty()) {
            add(
                LibraryStripSectionData(
                    key = "folders",
                    title = libraryFoldersStripLabel(appLanguage),
                    folders = folders
                )
            )
        }
        if (graphics.isNotEmpty()) {
            add(
                LibraryStripSectionData(
                    key = "graphics",
                    title = libraryGraphicStripLabel(appLanguage),
                    comics = graphics
                )
            )
        }
        if (books.isNotEmpty()) {
            add(
                LibraryStripSectionData(
                    key = "books",
                    title = libraryBooksStripLabel(appLanguage),
                    comics = books
                )
            )
        }
        if (audiobooks.isNotEmpty()) {
            add(
                LibraryStripSectionData(
                    key = "audiobooks",
                    title = libraryAudiobooksStripLabel(appLanguage),
                    audiobooks = audiobooks
                )
            )
        }
    }
}

