# Design Document

## Overview

This design addresses critical bugs in the comic reader system affecting brightness control, scale modes, zoom functionality, webtoon page loading, thumbnail caching, image quality, and reading progress persistence. The solution focuses on fixing UI gesture conflicts, implementing proper ContentScale mapping, enhancing preloading logic, and improving bitmap rendering quality.

## Architecture

### Component Overview

```
ReaderScreen (UI Layer)
├── TopSettingsPanel (Brightness, Scale Mode, Orientation)
├── PagedReaderWithGestures (Page Mode)
├── WebtoonReader (Webtoon Mode)
├── ThumbnailPanel (Thumbnail Grid)
└── BrightnessOverlay (Screen Dimming)

ReaderViewModel (Business Logic)
├── Scale Mode Management
├── Zoom State Management
├── Page Loading & Preloading
├── Thumbnail Generation
├── Reading Progress Persistence
└── Bookmark Management

Core Services
├── BitmapCache (LRU Cache)
├── ThumbnailLoader (Background Loading)
├── PagePreloader (Predictive Loading)
└── BookmarkRepository (Persistence)
```

### Key Design Decisions

1. **Brightness Slider Fix**: Add explicit `pointerInput` modifier with higher z-index to prevent gesture conflicts
2. **Scale Mode Mapping**: Create proper ContentScale mapping for all 5 modes with correct aspect ratio handling
3. **Webtoon Auto-Loading**: Implement LaunchedEffect with snapshotFlow to monitor visible items and trigger loading
4. **Thumbnail Pre-caching**: Start background thumbnail generation on book open with priority queue
5. **Image Quality**: Use FilterQuality.High and proper inSampleSize calculation for sharp rendering
6. **Reading Progress**: Auto-save on page change with debouncing (2 second delay)

## Components and Interfaces

### 1. TopSettingsPanel Enhancement

**Purpose**: Fix brightness slider dragging and add proper padding

**Changes**:
```kotlin
// Add padding and prevent gesture conflicts
Slider(
    value = currentBrightness,
    onValueChange = onBrightnessChange,
    valueRange = 0.0f..1.0f,
    modifier = Modifier
        .fillMaxWidth()
        .padding(horizontal = 24.dp) // Increased from 8dp
        .pointerInput(Unit) {
            // Consume all gestures to prevent conflicts
            detectTapGestures { }
            detectDragGestures { _, _ -> }
        }
)
```

**Interface**:
- Input: `currentBrightness: Float`, `onBrightnessChange: (Float) -> Unit`
- Output: Brightness value changes propagated to ViewModel
- Side Effects: Prevents tap-through to underlying content

### 2. Scale Mode Implementation

**Purpose**: Implement correct ContentScale mapping for all modes

**Scale Mode Mapping**:
```kotlin
fun getContentScale(scaleMode: String, imageAspectRatio: Float, screenAspectRatio: Float): ContentScale {
    return when (scaleMode) {
        "fit_width" -> ContentScale.FillWidth
        "fit_height" -> ContentScale.FillHeight
        "fit_screen" -> ContentScale.Fit
        "original_size" -> ContentScale.None
        "smart_fit" -> {
            // Choose based on aspect ratio
            if (imageAspectRatio > screenAspectRatio) {
                ContentScale.FillWidth // Wide image
            } else {
                ContentScale.FillHeight // Tall image
            }
        }
        else -> ContentScale.FillWidth
    }
}
```

**Interface**:
- Input: `scaleMode: String`, `imageAspectRatio: Float`, `screenAspectRatio: Float`
- Output: `ContentScale` enum value
- Side Effects: Triggers recomposition of Image composable

### 3. Reset Zoom Functionality

**Purpose**: Implement working reset zoom button

**Implementation**:
```kotlin
fun resetZoom() {
    _uiState.update { state ->
        state.copy(
            currentZoomScale = 1.0f,
            offsetX = 0f,
            offsetY = 0f,
            zoomCenter = Offset.Zero
        )
    }
    // Reapply scale mode
    applyScaleMode(uiState.value.scaleMode)
}
```

**Interface**:
- Input: User tap on Reset Zoom button
- Output: Updated zoom state in UI
- Side Effects: Resets pan/zoom transformations

### 4. Webtoon Auto-Loading

**Purpose**: Automatically load pages as user scrolls in webtoon mode

**Implementation**:
```kotlin
@Composable
fun WebtoonReader(
    uiState: ReaderUiState,
    onLoadPage: (Int) -> Unit,
    onNextPage: () -> Unit,
    onPreviousPage: () -> Unit
) {
    val listState = rememberLazyListState()
    
    // Monitor visible items and load pages
    LaunchedEffect(listState) {
        snapshotFlow { 
            listState.layoutInfo.visibleItemsInfo.map { it.index }
        }
        .distinctUntilChanged()
        .collect { visibleIndices ->
            visibleIndices.forEach { pageIndex ->
                if (uiState.bitmaps[pageIndex] == null) {
                    onLoadPage(pageIndex)
                }
            }
            
            // Preload adjacent pages
            val firstVisible = visibleIndices.firstOrNull() ?: 0
            val lastVisible = visibleIndices.lastOrNull() ?: 0
            
            // Preload 2 pages ahead and behind
            for (i in (firstVisible - 2)..(lastVisible + 2)) {
                if (i in 0 until uiState.pageCount && uiState.bitmaps[i] == null) {
                    onLoadPage(i)
                }
            }
        }
    }
    
    LazyColumn(state = listState) {
        items(uiState.pageCount) { pageIndex ->
            val bitmap = uiState.bitmaps[pageIndex]
            if (bitmap != null) {
                Image(
                    bitmap = bitmap.asImageBitmap(),
                    contentDescription = "Page ${pageIndex + 1}",
                    modifier = Modifier.fillMaxWidth(),
                    contentScale = ContentScale.FillWidth,
                    filterQuality = FilterQuality.High
                )
            } else {
                // Loading placeholder
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(800.dp),
                    contentAlignment = Alignment.Center
                ) {
                    CircularProgressIndicator()
                }
            }
        }
    }
}
```

**Interface**:
- Input: `uiState: ReaderUiState`, `onLoadPage: (Int) -> Unit`
- Output: Automatic page loading requests
- Side Effects: Triggers page loading in ViewModel

### 5. Thumbnail Pre-caching

**Purpose**: Cache thumbnails in background for instant display

**Implementation**:
```kotlin
class ThumbnailLoader(
    private val totalPages: Int,
    private val thumbnailGenerator: suspend (Int) -> Bitmap?,
    private val scope: CoroutineScope
) {
    companion object {
        const val THUMBNAIL_WIDTH = 150
        const val THUMBNAIL_HEIGHT = 200
    }
    
    private val thumbnailCache = mutableMapOf<Int, Bitmap?>()
    private val loadingJobs = mutableMapOf<Int, Job>()
    private val priorityQueue = PriorityQueue<Int>(compareBy { 
        // Prioritize pages near current position
        abs(it - currentPriority)
    })
    private var currentPriority = 0
    
    fun prioritizeRange(centerPage: Int) {
        currentPriority = centerPage
        
        // Add pages to priority queue
        for (i in 0 until totalPages) {
            if (!thumbnailCache.containsKey(i)) {
                priorityQueue.offer(i)
            }
        }
        
        // Start loading thumbnails
        startBackgroundLoading()
    }
    
    private fun startBackgroundLoading() {
        scope.launch(Dispatchers.IO) {
            while (priorityQueue.isNotEmpty()) {
                val pageIndex = priorityQueue.poll() ?: break
                
                if (!thumbnailCache.containsKey(pageIndex)) {
                    val job = launch {
                        val thumbnail = thumbnailGenerator(pageIndex)
                        thumbnailCache[pageIndex] = thumbnail
                    }
                    loadingJobs[pageIndex] = job
                    job.join()
                }
                
                // Throttle to avoid overwhelming system
                delay(50)
            }
        }
    }
    
    fun getThumbnail(pageIndex: Int): Bitmap? {
        return thumbnailCache[pageIndex]
    }
    
    fun clearCache() {
        loadingJobs.values.forEach { it.cancel() }
        loadingJobs.clear()
        thumbnailCache.clear()
        priorityQueue.clear()
    }
}
```

**Interface**:
- Input: `pageIndex: Int`, `currentPriority: Int`
- Output: Cached `Bitmap?` for thumbnail
- Side Effects: Background coroutines loading thumbnails

### 6. Image Quality Enhancement

**Purpose**: Render images with high quality and sharpness

**Implementation**:
```kotlin
suspend fun renderPage(
    pageIndex: Int,
    maxWidth: Int,
    maxHeight: Int,
    scale: Float
): Result<Bitmap> {
    return withContext(Dispatchers.IO) {
        try {
            val imageData = getPageData(pageIndex)
            
            // Calculate optimal sample size
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
            }
            BitmapFactory.decodeByteArray(imageData, 0, imageData.size, options)
            
            val imageWidth = options.outWidth
            val imageHeight = options.outHeight
            
            // Calculate sample size based on zoom level
            val targetWidth = (maxWidth * scale).toInt()
            val targetHeight = (maxHeight * scale).toInt()
            
            val sampleSize = calculateInSampleSize(
                imageWidth, imageHeight,
                targetWidth, targetHeight
            )
            
            // Decode with optimal sample size
            val decodeOptions = BitmapFactory.Options().apply {
                inSampleSize = sampleSize
                inPreferredConfig = Bitmap.Config.ARGB_8888
                inScaled = false
            }
            
            val bitmap = BitmapFactory.decodeByteArray(
                imageData, 0, imageData.size, decodeOptions
            )
            
            Result.success(bitmap)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}

private fun calculateInSampleSize(
    width: Int, height: Int,
    reqWidth: Int, reqHeight: Int
): Int {
    var inSampleSize = 1
    
    if (height > reqHeight || width > reqWidth) {
        val halfHeight = height / 2
        val halfWidth = width / 2
        
        // Calculate the largest inSampleSize value that is a power of 2
        // and keeps both height and width larger than requested
        while ((halfHeight / inSampleSize) >= reqHeight &&
               (halfWidth / inSampleSize) >= reqWidth) {
            inSampleSize *= 2
        }
    }
    
    return inSampleSize
}
```

**Interface**:
- Input: `pageIndex: Int`, `maxWidth: Int`, `maxHeight: Int`, `scale: Float`
- Output: `Result<Bitmap>` with high-quality decoded image
- Side Effects: Memory allocation for bitmap

### 7. Reading Progress Persistence

**Purpose**: Auto-save reading position and restore on reopen

**Implementation**:
```kotlin
class ReaderViewModel {
    private var saveProgressJob: Job? = null
    
    fun loadPage(pageIndex: Int) {
        // ... existing loading logic ...
        
        // Update current page
        _uiState.update { it.copy(currentPageIndex = pageIndex) }
        
        // Debounced save
        saveProgressJob?.cancel()
        saveProgressJob = viewModelScope.launch {
            delay(2000) // Wait 2 seconds before saving
            saveCurrentProgress()
        }
    }
    
    fun saveCurrentProgress() {
        val comicId = currentComicId ?: return
        val currentPage = _uiState.value.currentPageIndex
        val totalPages = _uiState.value.pageCount
        
        viewModelScope.launch {
            saveReadingProgressUseCase(
                comicId = comicId,
                currentPage = currentPage,
                totalPages = totalPages,
                timestamp = System.currentTimeMillis()
            )
        }
    }
    
    override fun onCleared() {
        super.onCleared()
        // Save on ViewModel destruction
        saveCurrentProgress()
    }
}
```

**Interface**:
- Input: Page navigation events
- Output: Persisted reading progress in database
- Side Effects: Database write operations

### 8. Bookmark Management

**Purpose**: Allow users to bookmark pages for quick access

**Implementation**:
```kotlin
fun bookmarkCurrentPage() {
    val comicId = currentComicId ?: return
    val pageIndex = _uiState.value.currentPageIndex
    
    viewModelScope.launch {
        val existingBookmark = bookmarkRepository.getBookmark(comicId, pageIndex)
        
        if (existingBookmark != null) {
            // Remove bookmark
            bookmarkRepository.deleteBookmark(existingBookmark.id)
            showToast("Bookmark removed")
        } else {
            // Add bookmark
            val bookmark = Bookmark(
                comicId = comicId,
                pageIndex = pageIndex,
                timestamp = System.currentTimeMillis(),
                thumbnailUri = generateThumbnailUri(pageIndex)
            )
            bookmarkRepository.insertBookmark(bookmark)
            showToast("Page bookmarked")
        }
        
        // Update UI state
        updateBookmarkState()
    }
}

private suspend fun updateBookmarkState() {
    val comicId = currentComicId ?: return
    val bookmarks = bookmarkRepository.getBookmarksForComic(comicId)
    val bookmarkedPages = bookmarks.map { it.pageIndex }.toSet()
    
    _uiState.update { it.copy(bookmarkedPages = bookmarkedPages) }
}
```

**Interface**:
- Input: User tap on bookmark button
- Output: Bookmark added/removed from database
- Side Effects: Toast notification, UI state update

## Data Models

### ReadingProgress
```kotlin
data class ReadingProgress(
    val comicId: String,
    val currentPage: Int,
    val totalPages: Int,
    val timestamp: Long,
    val percentage: Float = (currentPage.toFloat() / totalPages) * 100
)
```

### Bookmark
```kotlin
data class Bookmark(
    val id: Long = 0,
    val comicId: String,
    val pageIndex: Int,
    val timestamp: Long,
    val thumbnailUri: String? = null,
    val note: String? = null
)
```

### ScaleMode
```kotlin
enum class ScaleMode {
    FIT_WIDTH,
    FIT_HEIGHT,
    FIT_SCREEN,
    ORIGINAL_SIZE,
    SMART_FIT;
    
    fun toContentScale(imageAspectRatio: Float, screenAspectRatio: Float): ContentScale {
        return when (this) {
            FIT_WIDTH -> ContentScale.FillWidth
            FIT_HEIGHT -> ContentScale.FillHeight
            FIT_SCREEN -> ContentScale.Fit
            ORIGINAL_SIZE -> ContentScale.None
            SMART_FIT -> if (imageAspectRatio > screenAspectRatio) {
                ContentScale.FillWidth
            } else {
                ContentScale.FillHeight
            }
        }
    }
}
```

## Error Handling

### Brightness Slider Conflicts
- **Error**: Slider not draggable in portrait mode
- **Handling**: Add explicit `pointerInput` modifier to consume gestures
- **Fallback**: Allow tap-to-set brightness as alternative

### Scale Mode Not Applied
- **Error**: ContentScale not updating when mode changes
- **Handling**: Force recomposition by updating state key
- **Fallback**: Reset zoom to trigger scale recalculation

### Webtoon Pages Not Loading
- **Error**: LaunchedEffect not triggering page loads
- **Handling**: Use `snapshotFlow` with `distinctUntilChanged` to monitor scroll
- **Fallback**: Manual tap zones for emergency page loading

### Thumbnail Generation Failure
- **Error**: Out of memory or decode failure
- **Handling**: Catch exceptions and use placeholder image
- **Fallback**: Load thumbnail on-demand when panel opened

### Image Quality Issues
- **Error**: Blurry or pixelated images
- **Handling**: Calculate proper inSampleSize based on zoom level
- **Fallback**: Decode at full resolution if memory allows

## Testing Strategy

### Unit Tests
1. **ScaleMode Mapping**: Test all 5 scale modes return correct ContentScale
2. **InSampleSize Calculation**: Test sample size calculation for various image sizes
3. **Reading Progress**: Test debounced save logic
4. **Bookmark Toggle**: Test add/remove bookmark logic

### Integration Tests
1. **Brightness Slider**: Test slider dragging in both orientations
2. **Reset Zoom**: Test zoom reset restores default view
3. **Webtoon Loading**: Test pages load automatically on scroll
4. **Thumbnail Cache**: Test thumbnails cached and retrieved correctly

### UI Tests
1. **Brightness Control**: Verify slider responds to drag gestures
2. **Scale Mode Switching**: Verify image scales correctly for each mode
3. **Webtoon Scrolling**: Verify smooth scrolling with auto-loading
4. **Thumbnail Panel**: Verify thumbnails display instantly

### Performance Tests
1. **Memory Usage**: Monitor memory during thumbnail caching
2. **Scroll Performance**: Measure FPS during webtoon scrolling
3. **Load Time**: Measure time to load and display pages
4. **Cache Hit Rate**: Monitor bitmap cache efficiency

## Implementation Notes

1. **Brightness Slider**: Must use `Modifier.pointerInput` with higher z-index than scrim
2. **Scale Modes**: Require image dimensions to calculate aspect ratio for smart fit
3. **Webtoon Loading**: Must handle rapid scrolling without overwhelming system
4. **Thumbnails**: Should be generated at 150x200dp max for memory efficiency
5. **Image Quality**: FilterQuality.High adds ~10% rendering overhead but worth it
6. **Progress Save**: 2-second debounce prevents excessive database writes
7. **Bookmarks**: Should show visual indicator in thumbnail panel
