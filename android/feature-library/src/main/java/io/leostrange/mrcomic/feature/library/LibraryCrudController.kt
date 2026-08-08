package io.leostrange.mrcomic.feature.library

import android.net.Uri
import android.util.Log
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpointRepository
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Comic/quote CRUD and import operations for the library.
 *
 * Extracted from [LibraryViewModel] as a delegate controller with explicit
 * dependencies (Reader controller pattern). The ViewModel stays the single
 * owner of state and lifecycle; this controller only needs a scope, the UI
 * state flow and repository adapters.
 */
internal class LibraryCrudController(
    private val libraryRepository: LibraryRepository,
    private val importRepository: ImportRepository,
    private val quoteRepository: QuoteRepository,
    private val readerCheckpointStore: ReaderCheckpointRepository,
    private val scope: CoroutineScope,
    private val uiState: MutableStateFlow<LibraryUiState>,
    private val rawComics: () -> List<Comic>,
    private val openFolder: (String?) -> Unit
) {

    fun deleteQuote(id: String) = runCrud(
        action = { quoteRepository.deleteQuote(id) },
        ru = "Не удалось удалить цитату",
        en = "Failed to delete quote",
        ja = "引用を削除できませんでした",
        zh = "无法删除摘录",
        ko = "문구를 삭제할 수 없습니다",
    )

    fun addComicFromUri(uri: Uri) {
        scope.launch {
            uiState.update { it.copy(isLoading = true) }
            runCatching { importRepository.addComic(uri) }
                .onFailure { e ->
                    Log.e("LibraryViewModel", "Failed to add comic", e)
                    uiState.update {
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
                .also { uiState.update { it.copy(isLoading = false) } }
        }
    }

    fun addComicsFromDirectory(treeUri: Uri) {
        scope.launch {
            uiState.update { it.copy(isLoading = true) }
            runCatching {
                importRepository.addComicsFromDirectory(treeUri)
                if (uiState.value.groupByMode == GroupByMode.FOLDER) {
                    openFolder(null)
                }
            }
                .onFailure { e ->
                    Log.e("LibraryViewModel", "Failed to add directory", e)
                    uiState.update {
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
                .also { uiState.update { it.copy(isLoading = false) } }
        }
    }

    fun deleteComic(comicId: String) = runCrud(
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

    fun deleteFolder(folderPath: String) = runCrud(
        action = {
            val normalizedPath = normalizeFolderId(folderPath) ?: return@runCrud
            val matchingComics = rawComics().filter { comic ->
                val comicFolder = normalizeFolderId(comic.folderId) ?: return@filter false
                comicFolder == normalizedPath || comicFolder.startsWith("$normalizedPath/")
            }
            matchingComics.forEach { comic ->
                libraryRepository.deleteComic(comic.id)
                readerCheckpointStore.removeComicCheckpoints(comic.id)
            }
            if (uiState.value.currentFolderPath == normalizedPath) {
                openFolder(normalizedPath.parentFolderPath())
            }
        },
        ru = "Не удалось удалить папку",
        en = "Failed to delete folder",
        ja = "フォルダの削除に失敗しました",
        zh = "删除文件夹失败",
        ko = "폴더 삭제에 실패했습니다",
    )

    fun toggleBookmark(comicId: String) = runCrud(
        action = { libraryRepository.toggleBookmark(comicId) },
        ru = "Не удалось изменить закладку",
        en = "Failed to update bookmark",
        ja = "しおりの更新に失敗しました",
        zh = "更新书签失败",
        ko = "북마크 변경에 실패했습니다",
    )

    fun updateComicMeta(
        comicId: String,
        title: String,
        tags: String,
        libraryShelf: String,
    ) = runCrud(
        action = { libraryRepository.updateComicMeta(comicId, title, tags, libraryShelf) },
        ru = "Не удалось сохранить изменения",
        en = "Failed to save changes",
        ja = "変更を保存できませんでした",
        zh = "保存更改失败",
        ko = "변경 사항을 저장하지 못했습니다",
    )

    fun markCompleted(comicId: String, completed: Boolean) = runCrud(
        action = { libraryRepository.markCompleted(comicId, completed) },
        ru = "Не удалось изменить статус",
        en = "Failed to update status",
        ja = "ステータスの更新に失敗しました",
        zh = "更新状态失败",
        ko = "상태를 변경하지 못했습니다",
    )

    suspend fun getComicById(id: String): Comic? = libraryRepository.getComicById(id)

    fun clearError() = uiState.update { it.copy(error = null) }

    private fun runCrud(
        action: suspend () -> Unit,
        ru: String,
        en: String,
        ja: String,
        zh: String,
        ko: String,
    ) {
        scope.launch {
            try {
                action()
            } catch (e: Exception) {
                Log.e("LibraryViewModel", en, e)
                uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = ru,
                            en = en,
                            ja = ja,
                            zh = zh,
                            ko = ko,
                            cause = e,
                        )
                    )
                }
            }
        }
    }
}
