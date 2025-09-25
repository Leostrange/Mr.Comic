package com.example.feature.library.ui

import android.content.Context
import android.content.Intent
import android.net.Uri
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.repository.ComicRepository
import com.example.core.data.repository.SettingsRepository
import com.example.core.model.Comic
import com.example.core.model.SortOrder
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import java.io.File
import javax.inject.Inject

private const val TAG = "LibraryViewModel"

@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val comicRepository: ComicRepository,
    private val settingsRepository: SettingsRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(LibraryUiState())
    val uiState = _uiState.asStateFlow()

    // Настройки библиотеки
    val libraryViewMode = settingsRepository.libraryViewMode
    val librarySortOrder = settingsRepository.librarySortOrder

    init {
        observeComics()
        // Применяем настройки при инициализации
        viewModelScope.launch {
            libraryViewMode.collectLatest { mode ->
                _uiState.update { it.copy(viewMode = mode) }
            }
        }
        viewModelScope.launch {
            librarySortOrder.collectLatest { order ->
                _uiState.update { it.copy(sortOrder = order) }
            }
        }
    }

    /**
     * Добавляет папку библиотеки (SAF tree URI), сохраняет разрешение и пересканирует библиотеку.
     */
    fun addLibraryFolder(context: Context, treeUri: Uri) {
        viewModelScope.launch(Dispatchers.IO) {
            try {
                // Захватываем permissions на дерево документов
                // Используем только READ_PERMISSION, так как PERSISTABLE не поддерживается всеми провайдерами
                val flags = Intent.FLAG_GRANT_READ_URI_PERMISSION
                try {
                    context.contentResolver.takePersistableUriPermission(treeUri, flags)
                } catch (e: SecurityException) {
                    // Некоторые провайдеры не поддерживают persistable permissions
                    // Но мы можем работать с временными правами, если они уже есть
                    android.util.Log.w(TAG, "Persistable permissions not supported: ${e.message}")
                }

                settingsRepository.addLibraryFolder(treeUri.toString())
                // Триггер пересканирования
                comicRepository.rescanLibrary()
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Error adding library folder", e)
                _uiState.update { it.copy(error = "Не удалось добавить папку: ${e.message}") }
            }
        }
    }

    /**
     * Импорт одного файла через SAF (из диалога OpenDocument) в библиотеку.
     * Не открывает чтение, только добавляет и пересканирует список.
     */
    fun importComicUri(context: Context, uri: Uri) {
        viewModelScope.launch(Dispatchers.IO) {
            try {
                // Для одиночных файлов persistable-права не требуются, достаточно временного READ
                // Некоторые провайдеры ругаются на флаг PERSISTABLE (0x40): "Requested flags 0x41, but only 0x3 are allowed"
                // Поэтому здесь не вызываем takePersistableUriPermission вообще.

                comicRepository.importComicFromUri(uri)
                // Обновим список
                comicRepository.rescanLibrary()
            } catch (e: Exception) {
                _uiState.update { it.copy(error = e.message ?: "Failed to import comic") }
            }
        }
    }

    private fun observeComics() {
        viewModelScope.launch {
            _uiState
                .map { it.sortOrder to it.searchQuery }
                .distinctUntilChanged()
                .collectLatest { (sortOrder, query) ->
                    comicRepository.getComics(sortOrder, query).collectLatest { comics ->
                        _uiState.update { currentState ->
                            val visibleComics = comics.filter { comic ->
                                comic.filePath !in currentState.pendingDeletionIds
                            }

                            currentState.copy(
                                isLoading = false,
                                comics = comics,
                                totalComicsCount = comics.size,
                                visibleComicsCount = visibleComics.size,
                                folderGroups = comics.groupBy { extractFolderName(it.filePath) }.toSortedMap(String.CASE_INSENSITIVE_ORDER)
                            )
                        }
                    }
                }
        }
    }

    fun onPermissionsGranted() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                comicRepository.refreshComicsIfEmpty()
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        error = e.message ?: "An unknown error occurred"
                    )
                }
            }
        }
    }

    fun onSearchQueryChange(query: String) {
        _uiState.update { it.copy(searchQuery = query) }
    }

    fun onSearchActiveChange(isActive: Boolean) {
        _uiState.update { currentState ->
            currentState.copy(
                isSearchActive = isActive,
                searchQuery = if (!isActive) currentState.searchQuery.trim() else currentState.searchQuery
            )
        }
    }

    fun onSortOrderChange(sortOrder: SortOrder) {
        viewModelScope.launch {
            settingsRepository.setLibrarySortOrder(sortOrder)
        }
        _uiState.update { it.copy(sortOrder = sortOrder) }
    }

    fun onViewModeChange(viewMode: String) {
        viewModelScope.launch {
            settingsRepository.setLibraryViewMode(viewMode)
        }
        _uiState.update { it.copy(viewMode = viewMode) }
    }

    fun onTabSelected(tab: LibraryTab) {
        _uiState.update { it.copy(selectedTab = tab) }
    }

    fun refreshLibrary() {
        if (_uiState.value.isRefreshing || _uiState.value.selectedTab != LibraryTab.LIBRARY) return

        viewModelScope.launch {
            _uiState.update { it.copy(isRefreshing = true, error = null) }
            try {
                comicRepository.rescanLibrary()
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(error = e.message ?: "Failed to refresh library")
                }
            } finally {
                _uiState.update { it.copy(isRefreshing = false) }
            }
        }
    }

    fun onComicSelected(comicId: String) {
        _uiState.update { currentState ->
            val selectedIds = currentState.selectedComicIds.toMutableSet()
            if (selectedIds.contains(comicId)) {
                selectedIds.remove(comicId)
            } else {
                selectedIds.add(comicId)
            }
            val inSelectionMode = selectedIds.isNotEmpty()
            currentState.copy(
                selectedComicIds = selectedIds,
                inSelectionMode = inSelectionMode
            )
        }
    }

    fun onEnterSelectionMode(initialComicId: String) {
        _uiState.update {
            it.copy(inSelectionMode = true, selectedComicIds = setOf(initialComicId))
        }
    }

    fun onClearSelection() {
        _uiState.update { it.copy(inSelectionMode = false, selectedComicIds = emptySet()) }
    }

    fun onDeleteRequest() {
        val selectedIds = _uiState.value.selectedComicIds
        if (selectedIds.isEmpty()) return

        _uiState.update { currentState ->
            val newPendingDeletionIds = currentState.pendingDeletionIds + selectedIds
            val visibleComics = currentState.comics.filter { comic ->
                comic.filePath !in newPendingDeletionIds
            }
            
            currentState.copy(
                pendingDeletionIds = newPendingDeletionIds,
                inSelectionMode = false,
                selectedComicIds = emptySet(),
                visibleComicsCount = visibleComics.size
            )
        }
    }

    fun onUndoDelete() {
        _uiState.update { currentState ->
            currentState.copy(
                pendingDeletionIds = emptySet(),
                visibleComicsCount = currentState.comics.size
            )
        }
    }

    fun onDeletionTimeout() {
        viewModelScope.launch {
            comicRepository.deleteComics(_uiState.value.pendingDeletionIds)
            _uiState.update { it.copy(pendingDeletionIds = emptySet()) }
        }
    }

    fun addComic(title: String, author: String, coverPath: String, filePath: String) {
        viewModelScope.launch(Dispatchers.IO) {
            val newComic = Comic(
                title = title,
                author = author,
                coverPath = coverPath,
                filePath = filePath
            )
            comicRepository.addComic(newComic)
        }
    }
}

private fun extractFolderName(path: String): String {
    return runCatching {
        val uri = Uri.parse(path)
        when (uri.scheme) {
            "file" -> File(uri.path ?: "").parentFile?.name
            else -> uri.pathSegments.dropLast(1).lastOrNull()
        }?.takeIf { it.isNotBlank() }
    }.getOrNull() ?: "Без папки"
}