package com.example.feature.library

import android.net.Uri
import android.provider.DocumentsContract
import androidx.documentfile.provider.DocumentFile
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.cover.CoverService
import com.example.core.data.repository.ComicRepository
import com.example.core.data.repository.FolderRepository
import com.example.core.data.scanner.LibraryScanManager
import com.example.core.model.Comic
import com.example.core.model.Folder
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject

/**
 * ViewModel для экрана библиотеки
 */
@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val comicRepository: ComicRepository,
    private val folderRepository: FolderRepository,
    private val coverService: CoverService,
    private val scanManager: LibraryScanManager,
    @dagger.hilt.android.qualifiers.ApplicationContext private val context: android.content.Context
) : ViewModel() {
    
    private val _uiState = MutableStateFlow(LibraryUiState())
    val uiState: StateFlow<LibraryUiState> = _uiState.asStateFlow()
    
    private val _events = MutableSharedFlow<LibraryEvent>()
    val events: SharedFlow<LibraryEvent> = _events.asSharedFlow()
    
    private val supportedExtensions = Regex(".*\\.(cbz|cbr|pdf|zip|rar)$", RegexOption.IGNORE_CASE)
    private val folderCoverCache = mutableMapOf<String, String?>()
    
    init {
        android.util.Log.d("LibraryViewModel", "🚀🚀🚀 LIBRARY VIEW MODEL INITIALIZED 🚀🚀🚀")
        android.util.Log.d("LibraryViewModel", "🚀 Context: $context")
        android.util.Log.d("LibraryViewModel", "🚀 ComicRepository: $comicRepository")
        android.util.Log.d("LibraryViewModel", "🚀 Starting loadComics, loadFolders, cleanupInaccessibleComics...")
        loadComics()
        loadFolders()
        cleanupInaccessibleComics()
    }
    
    /**
     * Очистить комиксы, к которым нет доступа
     * Это происходит после переустановки приложения, когда persistable permissions теряются
     */
    private fun cleanupInaccessibleComics() {
        viewModelScope.launch {
            try {
                val allComics = comicRepository.getAllComics().first()
                android.util.Log.d("LibraryViewModel", "🧹 Checking ${allComics.size} comics for accessibility...")
                
                // Получаем список всех persisted URIs
                val persistedUris = context.contentResolver.persistedUriPermissions.map { it.uri }
                android.util.Log.d("LibraryViewModel", "📋 Current persisted URIs: ${persistedUris.size}")
                
                var removedCount = 0
                val comicUris = allComics.map { android.net.Uri.parse(it.path) }.toSet()
                
                allComics.forEach { comic ->
                    // Проверяем, можем ли мы получить доступ к файлу
                    if (comic.path.startsWith("content://")) {
                        val uri = android.net.Uri.parse(comic.path)
                        try {
                            // Пытаемся открыть input stream
                            context.contentResolver.openInputStream(uri)?.use {
                                // Файл доступен, все ок
                            }
                        } catch (e: SecurityException) {
                            // Нет доступа - удаляем из базы
                            android.util.Log.w("LibraryViewModel", "🗑️ Removing inaccessible comic: ${comic.title}")
                            comicRepository.deleteComicById(comic.id)
                            removedCount++
                        } catch (e: Exception) {
                            android.util.Log.w("LibraryViewModel", "⚠️ Error checking comic: ${comic.title}", e)
                        }
                    }
                }
                
                // Освобождаем permissions для файлов, которых больше нет в библиотеке
                cleanupUnusedPermissions(comicUris)
                
                if (removedCount > 0) {
                    android.util.Log.d("LibraryViewModel", "✅ Removed $removedCount inaccessible comics")
                    // Перезагружаем список
                    loadComics()
                }
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error cleaning up inaccessible comics", e)
            }
        }
    }
    
    /**
     * Освободить permissions для файлов, которых нет в библиотеке
     */
    private fun cleanupUnusedPermissions(comicUris: Set<Uri>) {
        try {
            val persistedPermissions = context.contentResolver.persistedUriPermissions
            var releasedCount = 0
            
            persistedPermissions.forEach { permission ->
                val uri = permission.uri
                val isUsed = comicUris.any { comicUri ->
                    urisMatch(comicUri, uri) || uriCoversDocument(uri, comicUri)
                }
                
                if (!isUsed) {
                    try {
                        context.contentResolver.releasePersistableUriPermission(
                            uri,
                            android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                        )
                        releasedCount++
                        android.util.Log.d("LibraryViewModel", "🗑️ Released permission for unused URI: $uri")
                    } catch (e: Exception) {
                        android.util.Log.w("LibraryViewModel", "Failed to release permission for $uri", e)
                    }
                }
            }
            
            if (releasedCount > 0) {
                android.util.Log.d("LibraryViewModel", "✅ Released $releasedCount unused permissions")
            }
        } catch (e: Exception) {
            android.util.Log.e("LibraryViewModel", "Error cleaning up unused permissions", e)
        }
    }
    
    private fun resolveBreadcrumb(folder: Folder): List<Folder> {
        val foldersById = _uiState.value.folders.associateBy { it.id }
        val chain = mutableListOf<Folder>()
        var current: Folder? = folder
        while (current != null) {
            chain.add(0, current)
            current = current.parentId?.let { foldersById[it] }
        }
        return chain
    }
    
    /**
     * Загрузить комиксы
     */
    private fun loadComics() {
        android.util.Log.d("LibraryViewModel", "📚 loadComics() called")
        viewModelScope.launch {
            android.util.Log.d("LibraryViewModel", "📚 Setting isLoading = true")
            _uiState.update { it.copy(isLoading = true) }
            
            try {
                android.util.Log.d("LibraryViewModel", "📚 Calling comicRepository.getAllComics()...")
                comicRepository.getAllComics()
                    .catch { e ->
                        android.util.Log.e("LibraryViewModel", "❌ Error in getAllComics flow", e)
                        _uiState.update {
                            it.copy(
                                isLoading = false,
                                error = e.message ?: "Failed to load comics"
                            )
                        }
                    }
                    .collect { comics ->
                        android.util.Log.d("LibraryViewModel", "📚 Received ${comics.size} comics from repository")
                        val sortedComics = sortComics(comics, _uiState.value.sortOrder)
                        
                        if (_uiState.value.selectedFolder == null) {
                            sortedComics.forEach { comic ->
                                val folderId = comic.folderId
                                val coverPath = comic.coverPath
                                if (folderId != null && coverPath != null && !folderCoverCache.containsKey(folderId)) {
                                    folderCoverCache[folderId] = coverPath
                                }
                            }
                        }
                        
                        _uiState.update {
                            it.copy(
                                comics = sortedComics,
                                isLoading = false,
                                error = null,
                                folderCoverPaths = folderCoverCache.toMap()
                            )
                        }
                        android.util.Log.d("LibraryViewModel", "✅ Comics loaded successfully: ${sortedComics.size} comics")
                    }
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "❌ Exception in loadComics", e)
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        error = e.message ?: "Unknown error"
                    )
                }
            }
        }
    }
    
    /**
     * Загрузить папки
     */
    private fun loadFolders() {
        viewModelScope.launch {
            try {
                folderRepository.getAllFolders()
                    .catch { e ->
                        android.util.Log.e("LibraryViewModel", "Error loading folders", e)
                    }
                    .collect { folders ->
                        val validIds = folders.map { it.id }.toSet()
                        folderCoverCache.keys.retainAll(validIds)
                        val breadcrumbIds = _uiState.value.folderBreadcrumb.map { it.id }
                        val updatedBreadcrumb = breadcrumbIds.mapNotNull { id ->
                            folders.firstOrNull { it.id == id }
                        }
                        val selectedId = _uiState.value.selectedFolder?.id
                        val updatedSelected = selectedId?.let { id ->
                            folders.firstOrNull { it.id == id }
                        }
                        _uiState.update { 
                            it.copy(
                                folders = folders,
                                selectedFolder = updatedSelected,
                                folderBreadcrumb = updatedBreadcrumb,
                                folderCoverPaths = folderCoverCache.toMap()
                            )
                        }
                    }
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error loading folders", e)
            }
        }
    }
    
    /**
     * Изменить режим отображения
     */
    fun setViewMode(viewMode: ViewMode) {
        val previousState = _uiState.value
        _uiState.update { state ->
            val base = state.copy(viewMode = viewMode)
            if (viewMode != ViewMode.FOLDER) {
                base.copy(
                    selectedFolder = null,
                    folderBreadcrumb = emptyList()
                )
            } else {
                base
            }
        }
        
        if (viewMode != ViewMode.FOLDER && previousState.selectedFolder != null) {
            loadComics()
        } else if (viewMode == ViewMode.FOLDER && previousState.selectedFolder != null) {
            loadComicsFromFolder(previousState.selectedFolder.id)
        }
    }
    
    /**
     * Изменить порядок сортировки
     */
    fun setSortOrder(sortOrder: SortOrder) {
        _uiState.update { state ->
            val sortedComics = sortComics(state.comics, sortOrder)
            state.copy(
                sortOrder = sortOrder,
                comics = sortedComics
            )
        }
    }
    
    /**
     * Установить поисковый запрос с debouncing
     */
    fun setSearchQuery(query: String) {
        _uiState.update { it.copy(searchQuery = query) }
        
        // Debouncing: ждем 300ms перед поиском
        viewModelScope.launch {
            kotlinx.coroutines.delay(300)
            if (_uiState.value.searchQuery == query) {
                if (query.isBlank()) {
                    loadComics()
                } else {
                    searchComics(query)
                }
            }
        }
    }
    
    /**
     * Переключить состояние поиска
     */
    fun toggleSearch() {
        _uiState.update { it.copy(isSearchExpanded = !it.isSearchExpanded) }
    }
    
    /**
     * Установить фильтры
     */
    fun setFilters(filters: com.example.feature.library.search.SearchFilters) {
        _uiState.update { it.copy(filters = filters) }
        applyFilters()
    }
    
    /**
     * Применить фильтры
     */
    private fun applyFilters() {
        viewModelScope.launch {
            try {
                val filters = _uiState.value.filters
                val query = _uiState.value.searchQuery
                
                // Получаем все комиксы
                val allComics = if (query.isNotBlank()) {
                    comicRepository.searchComics(query).first()
                } else {
                    comicRepository.getAllComics().first()
                }
                
                // Применяем фильтры
                val filteredComics = allComics.filter { comic ->
                    // Фильтр по формату
                    val formatMatch = filters.formats.isEmpty() || comic.format in filters.formats
                    
                    // Фильтр по папке
                    val folderMatch = filters.folderId == null || comic.folderId == filters.folderId
                    
                    // Фильтр по дате
                    val dateMatch = filters.dateRange == null || 
                        (comic.addedDate >= filters.dateRange.start && 
                         comic.addedDate <= filters.dateRange.end)
                    
                    // Фильтр по статусу чтения
                    val readStatusMatch = when (filters.readStatus) {
                        com.example.feature.library.search.ReadStatus.ALL -> true
                        com.example.feature.library.search.ReadStatus.UNREAD -> comic.readingProgress == 0f
                        com.example.feature.library.search.ReadStatus.READING -> 
                            comic.readingProgress > 0f && comic.readingProgress < 1f
                        com.example.feature.library.search.ReadStatus.COMPLETED -> comic.readingProgress >= 1f
                    }
                    
                    // Фильтр по закладкам
                    val bookmarkMatch = !filters.bookmarkedOnly || comic.isBookmarked
                    
                    formatMatch && folderMatch && dateMatch && readStatusMatch && bookmarkMatch
                }
                
                val sortedComics = sortComics(filteredComics, _uiState.value.sortOrder)
                _uiState.update { it.copy(comics = sortedComics) }
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error applying filters", e)
            }
        }
    }
    
    /**
     * Поиск комиксов
     */
    private fun searchComics(query: String) {
        viewModelScope.launch {
            try {
                comicRepository.searchComics(query)
                    .catch { e ->
                        android.util.Log.e("LibraryViewModel", "Error searching comics", e)
                    }
                    .collect { comics ->
                        val sortedComics = sortComics(comics, _uiState.value.sortOrder)
                        _uiState.update { it.copy(comics = sortedComics) }
                    }
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error searching comics", e)
            }
        }
    }
    
    /**
     * Выбрать папку
     */
    fun selectFolder(folder: Folder?) {
        if (folder == null) {
            _uiState.update { it.copy(selectedFolder = null, folderBreadcrumb = emptyList()) }
            loadComics()
        } else {
            val breadcrumb = resolveBreadcrumb(folder)
            _uiState.update { it.copy(selectedFolder = folder, folderBreadcrumb = breadcrumb) }
            loadComicsFromFolder(folder.id)
        }
    }
    
    fun exitFolder() {
        val currentBreadcrumb = _uiState.value.folderBreadcrumb
        if (currentBreadcrumb.isEmpty()) {
            _uiState.update { it.copy(selectedFolder = null) }
            loadComics()
            return
        }
        
        val newBreadcrumb = currentBreadcrumb.dropLast(1)
        val newSelection = newBreadcrumb.lastOrNull()
        _uiState.update { it.copy(selectedFolder = newSelection, folderBreadcrumb = newBreadcrumb) }
        if (newSelection == null) {
            loadComics()
        } else {
            loadComicsFromFolder(newSelection.id)
        }
    }
    
    /**
     * Загрузить комиксы из папки
     */
    private fun loadComicsFromFolder(folderId: String) {
        viewModelScope.launch {
            try {
                comicRepository.getComicsByFolder(folderId)
                    .catch { e ->
                        android.util.Log.e("LibraryViewModel", "Error loading folder comics", e)
                    }
                    .collect { comics ->
                        val sortedComics = sortComics(comics, _uiState.value.sortOrder)
                        _uiState.update { 
                            it.copy(
                                comics = sortedComics,
                                folderCoverPaths = folderCoverCache.toMap()
                            ) 
                        }
                    }
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error loading folder comics", e)
            }
        }
    }
    
    /**
     * Обновить библиотеку
     */
    fun refresh() {
        loadComics()
        loadFolders()
    }
    
    /**
     * Обработать событие
     */
    fun onEvent(event: LibraryEvent) {
        viewModelScope.launch {
            _events.emit(event)
        }
    }
    
    /**
     * Сортировать комиксы
     */
    private fun sortComics(comics: List<Comic>, sortOrder: SortOrder): List<Comic> {
        return when (sortOrder) {
            SortOrder.TITLE_ASC -> comics.sortedBy { it.title.lowercase() }
            SortOrder.TITLE_DESC -> comics.sortedByDescending { it.title.lowercase() }
            SortOrder.DATE_ADDED_ASC -> comics.sortedBy { it.addedDate }
            SortOrder.DATE_ADDED_DESC -> comics.sortedByDescending { it.addedDate }
            SortOrder.DATE_READ_DESC -> comics.sortedByDescending { it.lastReadDate ?: 0 }
            SortOrder.SIZE_ASC -> comics.sortedBy { it.fileSize }
            SortOrder.SIZE_DESC -> comics.sortedByDescending { it.fileSize }
        }
    }
    
    /**
     * Предзагрузить обложки
     */
    fun preloadCovers(comicIds: List<String>) {
        viewModelScope.launch {
            coverService.preloadCovers(comicIds)
        }
    }
    
    /**
     * Добавить комикс из URI файла
     */
    fun addComicFromUri(uri: Uri, folderId: String? = null) {
        viewModelScope.launch {
            try {
                _uiState.update { it.copy(isLoading = true, error = null) }
                importComic(uri, folderId)
                loadComics()
                _uiState.update { it.copy(isLoading = false) }
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "❌ Error adding comic", e)
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        error = "Ошибка добавления комикса: ${e.message}"
                    )
                }
            }
        }
    }
    
    private suspend fun importComic(
        uri: Uri,
        folderId: String?,
        generateCover: Boolean = true
    ): Boolean = withContext(Dispatchers.IO) {
        android.util.Log.d("LibraryViewModel", "🔥 Importing comic from URI: $uri")
        
        // Получаем информацию о файле через ContentResolver
        val cursor = context.contentResolver.query(
            uri,
            arrayOf(
                android.provider.OpenableColumns.DISPLAY_NAME,
                android.provider.OpenableColumns.SIZE
            ),
            null,
            null,
            null
        )
        
        var fileName = "Unknown"
        var fileSize = 0L
        
        cursor?.use {
            if (it.moveToFirst()) {
                val nameIndex = it.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
                val sizeIndex = it.getColumnIndex(android.provider.OpenableColumns.SIZE)
                
                if (nameIndex != -1) {
                    fileName = it.getString(nameIndex) ?: "Unknown"
                }
                if (sizeIndex != -1) {
                    fileSize = it.getLong(sizeIndex)
                }
            }
        }
        
        val extension = fileName.substringAfterLast('.', "").lowercase()
        
        val format = when (extension) {
            "cbz", "zip" -> com.example.core.model.ComicFormat.CBZ
            "cbr", "rar" -> com.example.core.model.ComicFormat.CBR
            "pdf" -> com.example.core.model.ComicFormat.PDF
            else -> com.example.core.model.ComicFormat.CBZ
        }
        
        val comicId = java.util.UUID.randomUUID().toString()
        val normalizedUri = Uri.parse(uri.toString())
        
        val comic = Comic(
            id = comicId,
            title = fileName.substringBeforeLast('.'),
            path = normalizedUri.toString(),
            format = format,
            pageCount = 0,
            fileSize = fileSize,
            addedDate = System.currentTimeMillis(),
            lastReadDate = null,
            readingProgress = 0f,
            isBookmarked = false,
            coverPath = null,
            folderId = folderId
        )
        
        comicRepository.addComic(comic)
        android.util.Log.d("LibraryViewModel", "✅ Comic added: ${comic.title}")
        
        if (generateCover) {
            runCatching { coverService.getCover(comicId) }
                .onFailure { android.util.Log.e("LibraryViewModel", "❌ Error generating cover", it) }
        }
        
        true
    }
    
    private suspend fun importDirectory(root: DocumentFile): FolderImportStats {
        val stats = FolderImportStats()
        
        suspend fun traverseDirectory(dir: DocumentFile, parentFolderId: String?): Int {
            val folder = folderRepository.createOrUpdateFolder(
                path = dir.uri.toString(),
                name = dir.name ?: "Folder",
                parentId = parentFolderId
            )
            
            var localCount = 0
            dir.listFiles().forEach { file ->
                when {
                    file.isDirectory -> {
                        localCount += traverseDirectory(file, folder.id)
                    }
                    file.isFile && file.name?.let { supportedExtensions.matches(it) } == true -> {
                        val result = runCatching { importComic(file.uri, folder.id) }
                        if (result.getOrDefault(false)) {
                            localCount++
                            stats.added++
                            android.util.Log.d("LibraryViewModel", "Added from folder '${folder.name}': ${file.name}")
                        } else {
                            stats.errors++
                            result.exceptionOrNull()?.let {
                                android.util.Log.e("LibraryViewModel", "Failed to add: ${file.name}", it)
                            }
                        }
                    }
                }
            }
            
            folderRepository.updateComicCount(folder.id, localCount)
            return localCount
        }
        
        traverseDirectory(root, null)
        return stats
    }
    
    /**
     * Добавить комиксы из директории
     */
    fun addComicsFromDirectory(uri: Uri) {
        viewModelScope.launch {
            try {
                _uiState.update { it.copy(isLoading = true, error = null) }
                
                val stats = withContext(Dispatchers.IO) {
                    val root = DocumentFile.fromTreeUri(context, uri)
                        ?: throw IllegalStateException("Не удалось открыть папку")
                    if (!root.isDirectory) {
                        throw IllegalStateException("Выбранный элемент не является папкой")
                    }
                    importDirectory(root)
                }
                
                loadComics()
                loadFolders()
                
                val message = if (stats.errors > 0) {
                    "Добавлено: ${stats.added}, ошибок: ${stats.errors}"
                } else {
                    null
                }
                
                _uiState.update { it.copy(isLoading = false, error = message) }
                android.util.Log.d("LibraryViewModel", "Scan complete: added=${stats.added}, errors=${stats.errors}")
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error scanning directory", e)
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        error = "Ошибка сканирования папки: ${e.message}"
                    )
                }
            }
        }
    }
    
    /**
     * Удалить комикс из библиотеки (только из БД, файл остается)
     */
    fun deleteComic(comicId: String) {
        viewModelScope.launch {
            try {
                // Получаем комикс перед удалением для освобождения permission
                val comic = comicRepository.getComicById(comicId)
                
                // Удаляем только из базы данных
                comicRepository.deleteComicById(comicId)
                
                android.util.Log.d("LibraryViewModel", "Deleted comic: $comicId")
                
                // Освобождаем permission для удаленного файла
                comic?.let {
                    if (it.path.startsWith("content://")) {
                        try {
                            val uri = android.net.Uri.parse(it.path)
                            context.contentResolver.releasePersistableUriPermission(
                                uri,
                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                            )
                            android.util.Log.d("LibraryViewModel", "✅ Released permission for deleted comic")
                        } catch (e: Exception) {
                            android.util.Log.w("LibraryViewModel", "Could not release permission", e)
                        }
                    }
                }
                
                // Обновляем список комиксов
                loadComics()
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error deleting comic", e)
                _uiState.update {
                    it.copy(error = "Ошибка удаления комикса: ${e.message}")
                }
            }
        }
    }
    
    /**
     * Получить комикс по ID
     */
    suspend fun getComicById(comicId: String): Comic? {
        return try {
            comicRepository.getComicById(comicId)
        } catch (e: Exception) {
            android.util.Log.e("LibraryViewModel", "Error getting comic by ID", e)
            null
        }
    }
    
    private fun urisMatch(first: Uri, second: Uri): Boolean {
        val firstRaw = first.toString()
        val secondRaw = second.toString()
        val firstDecoded = Uri.decode(firstRaw)
        val secondDecoded = Uri.decode(secondRaw)
        return firstRaw == secondRaw ||
            firstDecoded == secondRaw ||
            firstRaw == secondDecoded ||
            firstDecoded == secondDecoded
    }
    
    private fun uriCoversDocument(possibleTree: Uri, target: Uri): Boolean {
        return try {
            if (!DocumentsContract.isTreeUri(possibleTree) || !DocumentsContract.isDocumentUri(context, target)) {
                false
            } else {
                val treeId = DocumentsContract.getTreeDocumentId(possibleTree)
                val targetId = DocumentsContract.getDocumentId(target)
                targetId.startsWith(treeId)
            }
        } catch (e: Exception) {
            false
        }
    }
}

private data class FolderImportStats(
    var added: Int = 0,
    var errors: Int = 0
)
