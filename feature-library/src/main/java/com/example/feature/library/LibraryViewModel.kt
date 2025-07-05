package com.example.feature.library

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.domain.usecase.AddComicUseCase
import com.example.core.domain.usecase.DeleteComicUseCase
import com.example.core.data.repository.ComicRepository
import com.example.core.model.Comic
import com.example.core.model.SortOrder
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import javax.inject.Inject

data class LibraryUiState(
    val isLoading: Boolean = false,
    val comics: List<Comic> = emptyList(),
    val error: String? = null,
    val inSelectionMode: Boolean = false,
    val selectedComicIds: Set<String> = emptySet(),
    val pendingDeletionIds: Set<String> = emptySet(),
    val isSearchActive: Boolean = false,
    val searchQuery: String = "",
    val showAddComicDialog: Boolean = false,
    val hasStoragePermission: Boolean = false,
    val sortOrder: SortOrder = SortOrder.DATE_ADDED_DESC
)

@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val comicRepository: ComicRepository,
    private val addComicUseCase: AddComicUseCase,
    private val deleteComicUseCase: DeleteComicUseCase
) : ViewModel() {
    private val _uiState = MutableStateFlow(LibraryUiState())
    val uiState: StateFlow<LibraryUiState> = _uiState.asStateFlow()

    init {
        // No need to load comics here, as it will be triggered by onPermissionsGranted
    }

    fun loadComics() {
        viewModelScope.launch {
            _uiState.value = _uiState.value.copy(isLoading = true, error = null)
            try {
                comicRepository.getComics(_uiState.value.sortOrder, _uiState.value.searchQuery).collectLatest { comics ->
                    _uiState.value = _uiState.value.copy(isLoading = false, comics = comics)
                }
            } catch (e: Exception) {
                _uiState.value = _uiState.value.copy(isLoading = false, error = e.message ?: "Неизвестная ошибка")
            }
        }
    }

    fun addComic(title: String, author: String, coverPath: String) {
        viewModelScope.launch {
            try {
                addComicUseCase(Comic(title = title, author = author, filePath = coverPath))
            } catch (e: Exception) {
                _uiState.value = _uiState.value.copy(error = e.message ?: "Ошибка добавления")
            }
        }
    }

    fun onDeleteRequest() {
        _uiState.value = _uiState.value.copy(pendingDeletionIds = _uiState.value.selectedComicIds)
        _uiState.value = _uiState.value.copy(inSelectionMode = false, selectedComicIds = emptySet())
    }

    fun onUndoDelete() {
        _uiState.value = _uiState.value.copy(pendingDeletionIds = emptySet())
    }

    fun onDeletionTimeout() {
        viewModelScope.launch {
            deleteComicUseCase(_uiState.value.pendingDeletionIds)
            _uiState.value = _uiState.value.copy(pendingDeletionIds = emptySet())
        }
    }

    fun onSortOrderChange(sortOrder: SortOrder) {
        _uiState.value = _uiState.value.copy(sortOrder = sortOrder)
        loadComics()
    }

    fun onSearchQueryChange(query: String) {
        _uiState.value = _uiState.value.copy(searchQuery = query)
        loadComics()
    }

    fun onToggleSearch() {
        _uiState.value = _uiState.value.copy(isSearchActive = !_uiState.value.isSearchActive)
        if (!_uiState.value.isSearchActive) {
            _uiState.value = _uiState.value.copy(searchQuery = "")
            loadComics()
        }
    }

    fun onPermissionsGranted() {
        _uiState.value = _uiState.value.copy(hasStoragePermission = true)
        loadComics()
    }

    fun onPermissionRequest() {
        if (_uiState.value.hasStoragePermission) {
            loadComics()
        }
    }

    fun onEnterSelectionMode(comicId: String) {
        _uiState.value = _uiState.value.copy(inSelectionMode = true, selectedComicIds = setOf(comicId))
    }

    fun onComicSelected(comicId: String) {
        val currentSelection = _uiState.value.selectedComicIds.toMutableSet()
        if (currentSelection.contains(comicId)) {
            currentSelection.remove(comicId)
        } else {
            currentSelection.add(comicId)
        }
        _uiState.value = _uiState.value.copy(selectedComicIds = currentSelection)
        if (currentSelection.isEmpty()) {
            _uiState.value = _uiState.value.copy(inSelectionMode = false)
        }
    }

    fun onClearSelection() {
        _uiState.value = _uiState.value.copy(inSelectionMode = false, selectedComicIds = emptySet())
    }

    fun onAddComicClick() {
        _uiState.value = _uiState.value.copy(showAddComicDialog = true)
    }

    fun onDismissAddComicDialog() {
        _uiState.value = _uiState.value.copy(showAddComicDialog = false)
    }

    fun onConfirmAddComicDialog(title: String, author: String, coverPath: String) {
        addComic(title, author, coverPath)
        _uiState.value = _uiState.value.copy(showAddComicDialog = false)
    }
}


