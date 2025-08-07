package com.example.feature.library

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.domain.usecase.AddComicUseCase
import com.example.core.domain.usecase.DeleteComicUseCase
import com.example.core.data.repository.ComicRepository
import com.example.core.model.Comic
import com.example.core.model.SortOrder
import com.example.core.domain.util.Result
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.flow.receiveAsFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject
import com.mrcomic.shared.logging.Log

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

sealed class LibraryEvent {
    data class ShowSnackbar(val message: String, val actionLabel: String?, val duration: Long) : LibraryEvent()
    object HideSnackbar : LibraryEvent()
}

@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val comicRepository: ComicRepository,
    private val addComicUseCase: AddComicUseCase,
    private val deleteComicUseCase: DeleteComicUseCase
) : ViewModel() {
    private val _uiState = MutableStateFlow(LibraryUiState())
    val uiState: StateFlow<LibraryUiState> = _uiState.asStateFlow()

    private val _events = Channel<LibraryEvent>()
    val events = _events.receiveAsFlow()

    init {
        // No need to load comics here, as it will be triggered by onPermissionsGranted
    }

    fun loadComics() {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true, error = null) }
            try {
                comicRepository.getComics(_uiState.value.sortOrder, _uiState.value.searchQuery).collectLatest { comics ->
                    _uiState.update { it.copy(isLoading = false, comics = comics) }
                }
            } catch (e: Exception) {
                Log.e("LibraryViewModel", "Failed to load comics", e)
                _uiState.update { it.copy(isLoading = false, error = e.message ?: "Неизвестная ошибка") }
            }
        }
    }

    fun addComic(title: String, author: String, coverPath: String) {
        viewModelScope.launch {
            when (val result = addComicUseCase(Comic(title = title, author = author, filePath = coverPath))) {
                is Result.Success -> Unit
                is Result.Error -> {
                    Log.e("LibraryViewModel", "Failed to add comic", result.exception)
                    _uiState.update { it.copy(error = result.exception.message ?: "Ошибка добавления") }
                }
            }
        }
    }

    fun onDeleteRequest() {
        _uiState.update {
            it.copy(
                pendingDeletionIds = it.selectedComicIds,
                inSelectionMode = false,
                selectedComicIds = emptySet()
            )
        }
        viewModelScope.launch {
            _events.send(LibraryEvent.ShowSnackbar(
                message = "${_uiState.value.pendingDeletionIds.size} item(s) will be deleted",
                actionLabel = "Undo",
                duration = 5000L // 5 seconds
            ))
        }
    }

    fun onUndoDelete() {
        _uiState.update { it.copy(pendingDeletionIds = emptySet()) }
        viewModelScope.launch { _events.send(LibraryEvent.HideSnackbar) }
    }

    fun onDeletionTimeout() {
        viewModelScope.launch {
            when (val result = deleteComicUseCase(_uiState.value.pendingDeletionIds)) {
                is Result.Success -> _uiState.update { it.copy(pendingDeletionIds = emptySet()) }
                is Result.Error -> {
                    Log.e("LibraryViewModel", "Failed to delete comics", result.exception)
                    _uiState.update { it.copy(error = result.exception.message ?: "Ошибка удаления") }
                }
            }
        }
    }

    fun onSortOrderChange(sortOrder: SortOrder) {
        _uiState.update { it.copy(sortOrder = sortOrder) }
        loadComics()
    }

    fun onSearchQueryChange(query: String) {
        _uiState.update { it.copy(searchQuery = query) }
        loadComics()
    }

    fun onToggleSearch() {
        _uiState.update { it.copy(isSearchActive = !it.isSearchActive) }
        if (!_uiState.value.isSearchActive) {
            _uiState.update { it.copy(searchQuery = "") }
            loadComics()
        }
    }

    fun onPermissionsGranted() {
        _uiState.update { it.copy(hasStoragePermission = true) }
        loadComics()
    }

    fun onPermissionRequest() {
        if (_uiState.value.hasStoragePermission) {
            loadComics()
        }
    }

    fun onEnterSelectionMode(comicId: String) {
        _uiState.update { it.copy(inSelectionMode = true, selectedComicIds = setOf(comicId)) }
    }

    fun onComicSelected(comicId: String) {
        _uiState.update { currentState ->
            val currentSelection = currentState.selectedComicIds.toMutableSet()
            if (currentSelection.contains(comicId)) {
                currentSelection.remove(comicId)
            } else {
                currentSelection.add(comicId)
            }
            val inSelectionMode = currentSelection.isNotEmpty()
            currentState.copy(selectedComicIds = currentSelection, inSelectionMode = inSelectionMode)
        }
    }

    fun onClearSelection() {
        _uiState.update { it.copy(inSelectionMode = false, selectedComicIds = emptySet()) }
    }

    fun onAddComicClick() {
        _uiState.update { it.copy(showAddComicDialog = true) }
    }

    fun onDismissAddComicDialog() {
        _uiState.update { it.copy(showAddComicDialog = false) }
    }

    fun onConfirmAddComicDialog(title: String, author: String, coverPath: String) {
        addComic(title, author, coverPath)
        _uiState.update { it.copy(showAddComicDialog = false) }
    }
}


