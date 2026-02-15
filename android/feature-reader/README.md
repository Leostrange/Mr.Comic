# Reader Feature - Architecture Documentation

## Overview

The Reader feature provides a comprehensive comic reading experience with advanced gesture support, panel management, and performance optimizations.

## Architecture

### Core Components

#### 1. ReaderScreen.kt
**Main UI composable** that orchestrates the entire reading experience.

**Key Features:**
- Gesture handling integration
- Panel management (top, side, bottom)
- Page indicator with pin functionality
- Thumbnail navigation

**Dependencies:**
- ReaderViewModel for state management
- Gesture system for touch interactions
- Panel components for UI controls

#### 2. ReaderViewModel.kt
**State management** and business logic for the reader.

**Key Responsibilities:**
- Page navigation and loading
- Settings management (brightness, orientation, zoom)
- Pin state persistence via ReadingSessionRepository
- Preloading coordination with PagePreloader

**State Management:**
```kotlin
data class ReaderUiState(
    val isLoading: Boolean,
    val error: String?,
    val pageCount: Int,
    val currentPageIndex: Int,
    val currentPageBitmap: Bitmap?,
    val bitmaps: Map<Int, Bitmap>,
    val readingMode: ReadingMode,
    val scaleMode: String,
    val isPinned: Boolean,
    val pinnedPage: Int?,
    val currentZoomScale: Float,
    val readerBrightness: Float
    // ... other fields
)
```

#### 3. Gesture System

**Components:**
- `GestureHandler.kt` - Core gesture logic
- `GestureDetector.kt` - Compose modifier for gesture detection
- `GestureAction.kt` - Sealed class for gesture actions

**Supported Gestures:**
- Single tap (left/center/right zones)
- Double tap (zoom cycling)
- Long press (panel activation)
- Pinch-to-zoom
- Swipe navigation

**Configuration:**
```kotlin
data class TapZoneConfig(
    val leftZoneRatio: Float = 0.25f,
    val rightZoneRatio: Float = 0.25f,
    val enabled: Boolean = true
)
```

#### 4. Panel System

**Components:**
- `TopSettingsPanel.kt` - Brightness and orientation controls
- `SideQuickPanel.kt` - Quick actions (bookmark, share, settings)
- `ThumbnailPanel.kt` - Page navigation with thumbnails
- `PageIndicator.kt` - Current page display with pin functionality

**Panel States:**
- `showTopPanel` - Settings panel visibility
- `showLeftPanel` / `showRightPanel` - Quick action panels
- `showBottomPanel` - Thumbnail panel visibility

#### 5. Preloading System

**PagePreloader Integration:**
- Background page loading for smooth navigation
- LRU cache management
- Thumbnail generation for navigation

**Usage:**
```kotlin
// In ReaderViewModel
pagePreloader.setCurrentReader(reader, uri, maxWidth, maxHeight, scale)
pagePreloader.preloadAroundPage(currentPage)
```

#### 6. Thumbnail System

**ThumbnailProvider.kt:**
- Lazy loading of page thumbnails
- Integration with PagePreloader cache
- Efficient memory management

**Usage:**
```kotlin
val thumbnailProvider = rememberThumbnailProvider()
val thumbnail = rememberThumbnail(pageIndex, thumbnailProvider)
```

## Data Flow

### 1. Book Opening
```
User selects file → ReaderViewModel.openBook() → 
PagePreloader.setCurrentReader() → 
Load initial page → Update UI state
```

### 2. Page Navigation
```
User gesture → GestureHandler → GestureAction → 
ReaderViewModel.loadPage() → 
PagePreloader.preloadAroundPage() → 
Update UI state
```

### 3. Panel Management
```
User long press → GestureAction.ShowPanel → 
Update panel visibility state → 
Panel component renders
```

### 4. Pin State Persistence
```
User toggles pin → ReaderViewModel.togglePin() → 
Update UI state → 
ReadingSessionRepository.saveProgressAndSettings()
```

## Performance Optimizations

### 1. Preloading
- **Range**: ±3 pages around current page
- **Background**: IO dispatcher for non-blocking loading
- **Cache**: LRU cache with configurable size limits

### 2. Thumbnail Management
- **Lazy loading**: Thumbnails loaded on-demand
- **Caching**: Separate cache for thumbnails vs full pages
- **Memory**: Automatic cleanup on component disposal

### 3. Gesture Optimization
- **Sensitivity**: Configurable gesture sensitivity
- **Zones**: Optimized tap zone calculations
- **Blocking**: Swipe blocking when zoomed

## Integration Points

### 1. Core Dependencies
- `core-reader` - Media reading capabilities
- `core-data` - Session persistence
- `core-analytics` - Usage tracking

### 2. Settings Integration
- `SettingsRepository` - User preferences
- Real-time settings updates
- Analytics tracking for setting changes

### 3. Navigation Integration
- URI-based book opening
- State restoration from navigation arguments
- Deep linking support

## Testing Strategy

### 1. Unit Tests
- `ReaderIntegrationTest.kt` - Smoke tests for core functionality
- State management testing
- Gesture logic validation

### 2. Integration Tests
- End-to-end reading flow
- Panel interaction testing
- Performance validation

### 3. UI Tests
- Gesture recognition testing
- Panel visibility testing
- Navigation flow validation

## Configuration

### 1. Gesture Settings
```kotlin
val gestureSensitivity: Float = 1.0f
val tapZoneLeftRatio: Float = 0.25f
val tapZoneRightRatio: Float = 0.25f
val tapZonesEnabled: Boolean = true
```

### 2. Preloading Settings
```kotlin
private const val PRELOAD_DISTANCE = 3
private const val THUMBNAIL_SIZE = 200
```

### 3. Performance Settings
```kotlin
val maxCacheSize: Int = 50
val thumbnailCacheSize: Int = 100
```

## Future Enhancements

### 1. Advanced Gestures
- Multi-touch gestures
- Custom gesture recognition
- Accessibility gesture support

### 2. Panel Customization
- User-configurable panel layouts
- Custom quick actions
- Panel animation preferences

### 3. Performance Improvements
- Predictive preloading
- Advanced caching strategies
- Memory optimization

## Troubleshooting

### Common Issues

1. **Gesture Not Responding**
   - Check gesture sensitivity settings
   - Verify tap zone configuration
   - Ensure UI is not blocked by other components

2. **Slow Page Loading**
   - Verify PagePreloader configuration
   - Check cache size limits
   - Monitor memory usage

3. **Panel Not Showing**
   - Check panel visibility state
   - Verify gesture recognition
   - Ensure proper gesture mapping

### Debug Information

Enable debug logging:
```kotlin
android.util.Log.d("ReaderScreen", "Gesture: $action")
android.util.Log.d("PagePreloader", "Preloading page: $pageIndex")
```

## Dependencies

```kotlin
implementation(project(":core-reader"))
implementation(project(":core-data"))
implementation(project(":core-analytics"))
```

## License

This feature is part of the Mr.Comic application and follows the project's licensing terms.
