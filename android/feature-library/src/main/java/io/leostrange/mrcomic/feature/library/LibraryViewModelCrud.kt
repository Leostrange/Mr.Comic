package io.leostrange.mrcomic.feature.library

import android.net.Uri
import android.util.Log
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.model.Comic
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

// Phase: Comic/Quote CRUD extracted from LibraryViewModel (extension functions).

fun LibraryViewModel.deleteQuote(id: String) = runCrud(
    tag = "LibraryViewModel",
    uiState = _uiState,
    action = { quoteRepository.deleteQuote(id) },
    ru = "Не удалось удалить цитату",
    en = "Failed to delete quote",
    ja = "引用を削除できませんでした",
    zh = "无法删除摘录",
    ko = "문구를 삭제할 수 없습니다",
)

fun LibraryViewModel.addComicFromUri(uri: Uri) {
    viewModelScope.launch {
        _uiState.update { it.copy(isLoading = true) }
        runCatching { importRepository.addComic(uri) }
            .onFailure { e ->
                Log.e("LibraryViewModel", "Failed to add comic", e)
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось добавить комикс",
                            en = "Failed to add comic",
                            ja = "コミックを追加できませんでした",
                            zh = "无法添加漫画",
                            ko = "코믹을 추가할 수 없습니다",
                            cause = e,
                        )
                    )
                }
            }
            .also { _uiState.update { it.copy(isLoading = false) } }
    }
}

fun LibraryViewModel.addComicsFromDirectory(treeUri: Uri) {
    viewModelScope.launch {
        _uiState.update { it.copy(isLoading = true) }
        runCatching {
            importRepository.addComicsFromDirectory(treeUri)
            if (_uiState.value.groupByMode == GroupByMode.FOLDER) {
                openFolder(null)
            }
        }
            .onFailure { e ->
                Log.e("LibraryViewModel", "Failed to add directory", e)
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Ошибка сканирования папки",
                            en = "Folder scan failed",
                            ja = "フォルダのスキャンに失敗しました",
                            zh = "文件夹扫描失败",
                            ko = "폴더 스캔 실패",
                            cause = e,
                        )
                    )
                }
            }
            .also { _uiState.update { it.copy(isLoading = false) } }
    }
}

fun LibraryViewModel.deleteComic(comicId: String) = runCrud(
    tag = "LibraryViewModel",
    uiState = _uiState,
    action = {
        libraryRepository.deleteComic(comicId)
        readerCheckpointStore.removeComicCheckpoints(comicId)
    },
    ru = "Не удалось удалить",
    en = "Failed to delete",
    ja = "削除に失敗しました",
    zh = "删除失败",
    ko = "삭제에 실패했습니다",
)

fun LibraryViewModel.deleteFolder(folderPath: String) = runCrud(
    tag = "LibraryViewModel",
    uiState = _uiState,
    action = {
        val normalizedPath = normalizeFolderId(folderPath) ?: return@runCrud
        val matchingComics = rawComics.filter { comic ->
            val comicFolder = normalizeFolderId(comic.folderId) ?: return@filter false
            comicFolder == normalizedPath || comicFolder.startsWith("$normalizedPath/")
        }
        matchingComics.forEach { comic ->
            libraryRepository.deleteComic(comic.id)
            readerCheckpointStore.removeComicCheckpoints(comic.id)
        }
        if (_uiState.value.currentFolderPath == normalizedPath) {
            openFolder(normalizedPath.parentFolderPath())
        }
    },
    ru = "Не удалось удалить папку",
    en = "Failed to delete folder",
    ja = "フォルダの削除に失敗しました",
    zh = "删除文件夹失败",
    ko = "폴더 삭제에 실패했습니다",
)

fun LibraryViewModel.toggleBookmark(comicId: String) = runCrud(
    tag = "LibraryViewModel",
    uiState = _uiState,
    action = { libraryRepository.toggleBookmark(comicId) },
    ru = "Не удалось изменить закладку",
    en = "Failed to update bookmark",
    ja = "しおりの更新に失敗しました",
    zh = "更新书签失败",
    ko = "북마크 변경에 실패했습니다",
)

fun LibraryViewModel.updateComicMeta(
    comicId: String,
    title: String,
    tags: String,
    libraryShelf: String,
) = runCrud(
    tag = "LibraryViewModel",
    uiState = _uiState,
    action = { libraryRepository.updateComicMeta(comicId, title, tags, libraryShelf) },
    ru = "Не удалось сохранить изменения",
    en = "Failed to save changes",
    ja = "変更を保存できませんでした",
    zh = "保存更改失败",
    ko = "변경 사항을 저장하지 못했습니다",
)

fun LibraryViewModel.markCompleted(comicId: String, completed: Boolean) = runCrud(
    tag = "LibraryViewModel",
    uiState = _uiState,
    action = { libraryRepository.markCompleted(comicId, completed) },
    ru = "Не удалось изменить статус",
    en = "Failed to update status",
    ja = "ステータスの更新に失敗しました",
    zh = "更新状态失败",
    ko = "상태를 변경하지 못했습니다",
)

suspend fun LibraryViewModel.getComicById(id: String): Comic? = libraryRepository.getComicById(id)

fun LibraryViewModel.clearError() = _uiState.update { it.copy(error = null) }
