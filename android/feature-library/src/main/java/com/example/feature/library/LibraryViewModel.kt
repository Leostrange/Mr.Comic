package com.example.feature.library

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
import kotlinx.coroutines.flow.*
import kotlinx.coroutines.launch
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
    
    init {
        android.util.Log.d("LibraryViewModel", "LIBRARY VIEW MODEL INITIALIZED")
        android.util.Log.d("LibraryViewModel", "Context: $context")
        android.util.Log.d("LibraryViewModel", "ComicRepository: $comicRepository")
        android.util.Log.d("LibraryViewModel", "Starting loadComics, loadFolders, cleanupInaccessibleComics...")
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
                android.util.Log.d("LibraryViewModel", "Checking ${allComics.size} comics for accessibility...")
                
                // Получаем список всех persisted URIs
                val persistedUris = context.contentResolver.persistedUriPermissions.map { it.uri.toString() }.toSet()
                android.util.Log.d("LibraryViewModel", "Current persisted URIs: ${persistedUris.size}")
                
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
                            android.util.Log.w("LibraryViewModel", "Removing inaccessible comic: ${comic.title}")
                            comicRepository.deleteComicById(comic.id)
                            removedCount++
                        } catch (e: Exception) {
                            android.util.Log.w("LibraryViewModel", "Error checking comic: ${comic.title}", e)
                        }
                    }
                }
                
                // Освобождаем permissions для файлов, которых больше нет в библиотеке
                cleanupUnusedPermissions(comicUris)
                
                if (removedCount > 0) {
                    android.util.Log.d("LibraryViewModel", "Removed $removedCount inaccessible comics")
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
    private fun cleanupUnusedPermissions(comicUris: Set<android.net.Uri>) {
        try {
            val persistedPermissions = context.contentResolver.persistedUriPermissions
            var releasedCount = 0
            
            persistedPermissions.forEach { permission ->
                val uri = permission.uri
                
                // Проверяем, используется ли этот URI в библиотеке
                val isUsed = comicUris.any { comicUri ->
                    val comicUriString = comicUri.toString()
                    val permissionUriString = uri.toString()
                    val comicUriDecoded = android.net.Uri.decode(comicUriString)
                    val permissionUriDecoded = android.net.Uri.decode(permissionUriString)
                    
                    comicUriString == permissionUriString ||
                    comicUriDecoded == permissionUriString ||
                    comicUriString == permissionUriDecoded ||
                    comicUriDecoded == permissionUriDecoded
                }
                
                if (!isUsed) {
                    try {
                        context.contentResolver.releasePersistableUriPermission(
                            uri,
                            android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                        )
                        releasedCount++
                        android.util.Log.d("LibraryViewModel", "Released permission for unused URI: $uri")
                    } catch (e: Exception) {
                        android.util.Log.w("LibraryViewModel", "Failed to release permission for $uri", e)
                    }
                }
            }
            
            if (releasedCount > 0) {
                android.util.Log.d("LibraryViewModel", "Released $releasedCount unused permissions")
            }
        } catch (e: Exception) {
            android.util.Log.e("LibraryViewModel", "Error cleaning up unused permissions", e)
        }
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
                        _uiState.update {
                            it.copy(
                                comics = sortedComics,
                                isLoading = false,
                                error = null
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
                folderRepository.getAllFoldersWithMisc()
                    .catch { e ->
                        android.util.Log.e("LibraryViewModel", "Error loading folders", e)
                    }
                    .collect { folders ->
                        _uiState.update { it.copy(folders = folders) }
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
        _uiState.update { it.copy(viewMode = viewMode) }
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
                    val folderMatch = if (filters.folderId == null) {
                        true
                    } else if (filters.folderId == com.example.core.data.repository.FolderRepository.MISC_FOLDER_ID) {
                        comic.isSingle
                    } else {
                        comic.folderId == filters.folderId
                    }

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
        _uiState.update { it.copy(selectedFolder = folder) }

        if (folder == null) {
            loadComics()
        } else if (folder.id == com.example.core.data.repository.FolderRepository.MISC_FOLDER_ID) {
            loadMiscComics()
        } else {
            loadComicsFromFolder(folder.id)
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
                        _uiState.update { it.copy(comics = sortedComics) }
                    }
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error loading folder comics", e)
            }
        }
    }

    /**
     * Загрузить комиксы из папки "Разное"
     */
    private fun loadMiscComics() {
        viewModelScope.launch {
            try {
                comicRepository.getSingleComics()
                    .catch { e ->
                        android.util.Log.e("LibraryViewModel", "Error loading misc comics", e)
                    }
                    .collect { comics ->
                        val sortedComics = sortComics(comics, _uiState.value.sortOrder)
                        _uiState.update { it.copy(comics = sortedComics) }
                    }
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error loading misc comics", e)
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
    fun addComicFromUri(uri: android.net.Uri) {
        viewModelScope.launch {
            try {
                _uiState.update { it.copy(isLoading = true) }
                
                android.util.Log.d("LibraryViewModel", "🔥 Adding comic from URI: $uri")
                android.util.Log.d("LibraryViewModel", "🔥 URI scheme: ${uri.scheme}, authority: ${uri.authority}")
                
                // Проверяем, есть ли уже persistable permission
                // (он должен быть взят в file picker, не дублируем)
                if (uri.scheme == "content") {
                    val persistedUris = context.contentResolver.persistedUriPermissions
                    val hasPermission = persistedUris.any { 
                        it.uri.toString() == uri.toString() && it.isReadPermission 
                    }
                    
                    if (hasPermission) {
                        android.util.Log.d("LibraryViewModel", "✅ Persistable permission already exists")
                    } else {
                        android.util.Log.w("LibraryViewModel", "⚠️ No persistable permission found - file picker should have granted it")
                    }
                }
                
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
                
                android.util.Log.d("LibraryViewModel", "📄 File name: $fileName, size: $fileSize bytes")
                
                val extension = fileName.substringAfterLast('.', "").lowercase()
                
                // Определяем формат
                val format = when (extension) {
                    "cbz", "zip" -> com.example.core.model.ComicFormat.CBZ
                    "cbr", "rar" -> com.example.core.model.ComicFormat.CBR
                    "pdf" -> com.example.core.model.ComicFormat.PDF
                    else -> com.example.core.model.ComicFormat.CBZ
                }
                
                android.util.Log.d("LibraryViewModel", "📚 Format detected: $format")
                
                // Создаем комикс
                val comicId = java.util.UUID.randomUUID().toString()
                
                // 🔥 ВАЖНО: Нормализуем URI, чтобы избежать проблем с encoding
                // Используем decoded URI для consistency
                val normalizedUri = android.net.Uri.parse(uri.toString())
                val uriString = normalizedUri.toString()
                
                android.util.Log.d("LibraryViewModel", "💾 Saving URI: $uriString")
                
                val comic = Comic(
                    id = comicId,
                    title = fileName.substringBeforeLast('.'),
                    path = uriString,
                    format = format,
                    pageCount = 0, // Будет обновлено при первом открытии
                    fileSize = fileSize,
                    addedDate = System.currentTimeMillis(),
                    lastReadDate = null,
                    readingProgress = 0f,
                    isBookmarked = false,
                    coverPath = null,
                    folderId = null,
                    displayGroup = "Разное",
                    isSingle = true
                )
                
                // Добавляем в базу данных
                comicRepository.addComic(comic)
                
                android.util.Log.d("LibraryViewModel", "✅ Comic added to database: ${comic.title}")
                
                // Генерируем обложку в фоне
                viewModelScope.launch {
                    try {
                        android.util.Log.d("LibraryViewModel", "🎨 Generating cover for: ${comic.title}")
                        coverService.getCover(comicId)
                        android.util.Log.d("LibraryViewModel", "✅ Cover generated successfully")
                    } catch (e: Exception) {
                        android.util.Log.e("LibraryViewModel", "❌ Error generating cover", e)
                    }
                }
                
                // Обновляем список комиксов
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
    
    /**
     * Добавить комиксы из директории
     * Создает папку и связывает комиксы с ней
     */
    fun addComicsFromDirectory(uri: android.net.Uri) {
        viewModelScope.launch {
            try {
                _uiState.update { it.copy(isLoading = true) }
                
                android.util.Log.d("LibraryViewModel", "Adding comics from directory: $uri")
                
                // Получаем display name и storage type
                val documentTreeScanner = com.example.core.data.scanner.DocumentTreeScanner(context)
                val displayName = documentTreeScanner.getDisplayName(uri) ?: "Unknown Folder"
                val storageType = documentTreeScanner.determineStorageType(uri)
                
                android.util.Log.d("LibraryViewModel", "Folder name: $displayName, type: $storageType")
                
                // Создаем или обновляем папку
                val folder = folderRepository.saveFolderFromTreeUri(
                    treeUri = uri,
                    displayName = displayName,
                    storageType = storageType
                )
                
                android.util.Log.d("LibraryViewModel", "Folder saved with ID: ${folder.id}")
                
                // Сканируем комиксы в папке
                val settings = com.example.core.data.scanner.ScanSettings(
                    cbzMode = com.example.core.data.scanner.ScanMode.ALWAYS,
                    cbrMode = com.example.core.data.scanner.ScanMode.ALWAYS,
                    pdfMode = com.example.core.data.scanner.ScanMode.ALWAYS,
                    folderMode = com.example.core.data.scanner.ScanMode.ALWAYS,
                    scanSubfolders = true
                )
                
                val comics = documentTreeScanner.findComicFiles(uri, settings, folder.id)
                
                android.util.Log.d("LibraryViewModel", "Found ${comics.size} comics in folder")
                
                // Добавляем комиксы в репозиторий
                var addedCount = 0
                var skippedCount = 0
                
                for (comic in comics) {
                    try {
                        // Проверяем, не существует ли уже комикс с таким путем
                        val existing = comicRepository.getComicByPath(comic.path)
                        if (existing == null) {
                            comicRepository.addComic(comic)
                            addedCount++
                            android.util.Log.d("LibraryViewModel", "Added comic: ${comic.title}")
                        } else {
                            skippedCount++
                            android.util.Log.d("LibraryViewModel", "Skipped existing comic: ${comic.title}")
                        }
                    } catch (e: Exception) {
                        android.util.Log.e("LibraryViewModel", "Error adding comic: ${comic.title}", e)
                    }
                }
                
                // Обновляем количество комиксов в папке
                folderRepository.updateComicCount(folder.id, addedCount)
                
                android.util.Log.d("LibraryViewModel", "Folder scan complete: added=$addedCount, skipped=$skippedCount")
                
                _uiState.update { 
                    it.copy(
                        isLoading = false,
                        error = if (addedCount == 0 && comics.isEmpty()) {
                            "В папке не найдено комиксов"
                        } else if (addedCount == 0) {
                            "Все комиксы уже добавлены ($skippedCount)"
                        } else {
                            null
                        }
                    )
                }
                
                // Обновляем список комиксов и папок
                loadComics()
                loadFolders()
                
            } catch (e: Exception) {
                android.util.Log.e("LibraryViewModel", "Error adding comics from directory", e)
                _uiState.update {
                    it.copy(
                        isLoading = false,
                        error = "Ошибка добавления папки: ${e.message}"
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
}
