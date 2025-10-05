# Design Document

## Overview

This design document outlines the technical approach for fixing compilation errors and implementing functional improvements in the Mr.Comic Android application. The solution addresses module dependency issues, interface conflicts, CBZ/CBR file handling, UI/UX improvements, theming system fixes, and backup functionality.

The design follows a phased approach:
1. **Phase 1**: Fix compilation errors and restore core-reader module
2. **Phase 2**: Improve CBZ/CBR file format support
3. **Phase 3**: Enhance reader UI with smooth scrolling, zoom, and gestures
4. **Phase 4**: Fix dark theme implementation
5. **Phase 5**: Improve reader toolbars and navigation
6. **Phase 6**: Fix splash screen
7. **Phase 7**: Implement backup and restore functionality

## Architecture

### Module Structure

The Mr.Comic application follows a modular architecture:

```
android/
├── app/                    # Main application module
├── core/                   # Core utilities and plugins
├── core-analytics/         # Analytics module
├── core-data/             # Data layer (repositories, data sources)
├── core-domain/           # Domain layer (use cases, business logic)
├── core-model/            # Data models and entities
├── core-reader/           # File format readers (CBZ, CBR, PDF, EPUB)
├── core-ui/               # UI components and theming
├── feature-library/       # Library screen feature
├── feature-ocr/           # OCR functionality
├── feature-onboarding/    # Onboarding screens
├── feature-reader/        # Comic reader screen
├── feature-settings/      # Settings screen
├── feature-themes/        # Theme management
├── feature-translate/     # Translation feature
├── feature_cbr/           # Legacy CBR support (disabled)
└── shared/                # Shared utilities
```

### Current Issues

1. **core-reader module** is functional but core-data has it commented out in dependencies
2. **MediaReader interface** is properly defined, but implementations (CbzReader, CbrReader) need verification
3. **BookReader interface** exists but may conflict with MediaReader usage
4. **Theme system** exists but has issues with toolbar theming
5. **Splash screen** needs fullscreen configuration
6. **Backup system** needs implementation

## Components and Interfaces

### Phase 1: Module Dependencies and Compilation Fixes

#### 1.1 Restore core-reader Module Dependencies

**Component**: Build Configuration Files

**Changes Required**:
- `android/core-data/build.gradle.kts`: Uncomment `implementation(project(":android:core-reader"))`
- Verify all modules that need core-reader have proper dependencies

**Rationale**: The core-reader module is already implemented and working, but core-data cannot use it due to commented dependency.

#### 1.2 Verify Interface Consistency

**Component**: MediaReader and BookReader Interfaces

**Current State**:
- `MediaReader` interface is well-defined with:
  - `suspend fun open(context: Context, uri: Uri): Result<MediaMetadata>`
  - `fun getPageCount(): Int?`
  - `suspend fun renderPage(pageIndex: Int, maxWidth: Int, maxHeight: Int, scale: Float): Result<Bitmap>`
  - `fun getMetadata(): MediaMetadata?`
  - `suspend fun close()`
  - `fun isOpen(): Boolean`

- `BookReader` interface has similar methods but different signatures:
  - `suspend fun open(uri: Uri): Int`
  - `fun renderPage(pageIndex: Int): Bitmap?`
  - `fun getPageCount(): Int`
  - `fun close()`

**Design Decision**: 
- Keep MediaReader as the primary interface (it's more modern with Result types and better error handling)
- Deprecate or adapt BookReader to delegate to MediaReader
- Ensure all readers (CbzReader, CbrReader, PdfReader) implement MediaReader correctly

#### 1.3 Fix Import Statements

**Component**: CoverExtractor and other files

**Current State**: CoverExtractor.kt doesn't import core-reader classes but implements its own extraction logic

**Design Decision**: Keep CoverExtractor independent for now, as it only needs cover images, not full reader functionality

### Phase 2: CBZ/CBR File Format Support

#### 2.1 CBZ Reader Enhancement

**Component**: `CbzReader` class

**Current Implementation Analysis**:
- Uses `StreamingExtractor` for efficient memory usage
- Implements `LruCache` for bitmap caching
- Has proper error handling with Result types
- Uses temporary files for content access

**Issues to Fix**:
1. File opening may fail silently
2. Need better error messages for users
3. Verify streaming extraction works correctly

**Design Changes**:
- Add more detailed logging for debugging
- Improve error messages (already has Russian error messages)
- Verify StreamingExtractor implementation
- Add validation for corrupted archives

#### 2.2 CBR Reader Enhancement

**Component**: `CbrReader` class

**Current Implementation Analysis**:
- Uses JunRAR library for RAR archive support
- Implements natural order sorting for pages
- Has bitmap caching with LruCache
- Uses temporary files for JunRAR compatibility

**Issues to Fix**:
1. Cover extraction may not work (CoverExtractor has separate implementation)
2. File opening needs verification
3. Natural order sorting needs testing

**Design Changes**:
- Ensure JunRAR library is properly configured
- Verify temporary file creation and cleanup
- Test natural order comparator with various filename patterns
- Add better error handling for corrupted RAR files

#### 2.3 Cover Extraction Integration

**Component**: `CoverExtractor` class

**Current State**: Has separate implementations for CBZ and CBR cover extraction

**Design Decision**: Keep CoverExtractor separate but ensure it uses the same libraries (zip4j, junrar) as the readers for consistency

### Phase 3: Reader UI Enhancements

#### 3.1 Smooth Scrolling Implementation

**Component**: Reader Screen Composable

**Design Approach**:
- Use `LazyColumn` or `HorizontalPager` with proper `flingBehavior`
- Implement smooth scroll animations with `animateScrollToItem`
- Add page snap behavior for better UX
- Use `rememberPagerState` for state management

**Technical Details**:
```kotlin
val pagerState = rememberPagerState(pageCount = { pageCount })
HorizontalPager(
    state = pagerState,
    beyondBoundsPageCount = 1, // Preload adjacent pages
    pageSpacing = 0.dp
) { page ->
    // Page content
}
```

#### 3.2 Double-Tap Zoom Implementation

**Component**: Zoomable Image Component

**Design Approach**:
- Use `Modifier.pointerInput` for gesture detection
- Implement `detectTapGestures` with `onDoubleTap` callback
- Toggle between fit-width and fit-height modes
- Animate zoom transitions with `animateFloatAsState`

**State Management**:
```kotlin
enum class ZoomMode {
    FIT_WIDTH,
    FIT_HEIGHT,
    FIT_SCREEN,
    CUSTOM
}

var currentZoomMode by remember { mutableStateOf(ZoomMode.FIT_SCREEN) }
```

#### 3.3 Pinch Zoom Implementation

**Component**: Zoomable Image Component

**Design Approach**:
- Use `Modifier.transformable` for pinch-to-zoom
- Implement `TransformableState` for scale and pan
- Set min/max zoom limits (e.g., 0.5x to 5x)
- Handle pan boundaries to prevent over-scrolling

**Technical Details**:
```kotlin
val transformableState = rememberTransformableState { zoomChange, panChange, _ ->
    scale = (scale * zoomChange).coerceIn(0.5f, 5f)
    offset = offset + panChange
}

Modifier.transformable(state = transformableState)
```

**Note**: The project has `telephoto.zoomable` library commented out in dependencies. We'll implement custom zoom or re-enable this library.

### Phase 4: Dark Theme Fixes

#### 4.1 Theme System Analysis

**Current Implementation**:
- `MrComicTheme` in core-ui supports multiple theme modes (SYSTEM, LIGHT, DARK, DYNAMIC)
- Has `SystemBarsTheme` component for system UI theming
- Supports AMOLED dark mode and sepia mode

**Issues**:
1. Toolbar doesn't respect dark theme properly
2. Theme changes may not apply to all components
3. System bars may not update correctly

**Design Solution**:

**4.1.1 System Bars Theming**

Create or verify `SystemBarsTheme` composable:
```kotlin
@Composable
fun SystemBarsTheme(
    darkTheme: Boolean,
    statusBarColor: Color,
    navigationBarColor: Color
) {
    val view = LocalView.current
    if (!view.isInEditMode) {
        SideEffect {
            val window = (view.context as Activity).window
            window.statusBarColor = statusBarColor.toArgb()
            window.navigationBarColor = navigationBarColor.toArgb()
            
            WindowCompat.getInsetsController(window, view).apply {
                isAppearanceLightStatusBars = !darkTheme
                isAppearanceLightNavigationBars = !darkTheme
            }
        }
    }
}
```

**4.1.2 Toolbar Theming**

Ensure all toolbars use MaterialTheme colors:
```kotlin
TopAppBar(
    colors = TopAppBarDefaults.topAppBarColors(
        containerColor = MaterialTheme.colorScheme.surface,
        titleContentColor = MaterialTheme.colorScheme.onSurface,
        actionIconContentColor = MaterialTheme.colorScheme.onSurface
    )
)
```

**4.1.3 Theme Persistence**

Ensure theme preference is properly saved and loaded:
- Use DataStore for theme preference storage
- Apply theme in MainActivity before setContent
- Observe theme changes and recompose

### Phase 5: Reader Toolbar Improvements

#### 5.1 Toolbar Size and Transparency

**Component**: Reader Screen Top and Bottom Bars

**Design Changes**:
- Reduce toolbar height from default (64dp) to 48dp
- Apply semi-transparent background (alpha = 0.7f)
- Use blur effect if API level supports it (Android 12+)

**Implementation**:
```kotlin
TopAppBar(
    modifier = Modifier
        .height(48.dp)
        .background(
            MaterialTheme.colorScheme.surface.copy(alpha = 0.7f)
        ),
    colors = TopAppBarDefaults.topAppBarColors(
        containerColor = Color.Transparent
    )
)
```

#### 5.2 Side Panel Navigation

**Component**: Table of Contents Drawer

**Design Approach**:
- Use `ModalNavigationDrawer` or `ModalBottomSheet`
- Keep comic visible in background with scrim overlay
- Show page thumbnails or page numbers
- Allow quick navigation to any page

**Implementation**:
```kotlin
val drawerState = rememberDrawerState(DrawerValue.Closed)

ModalNavigationDrawer(
    drawerState = drawerState,
    drawerContent = {
        // Table of contents
        LazyColumn {
            items(pageCount) { index ->
                PageThumbnailItem(
                    pageIndex = index,
                    onClick = { navigateToPage(index) }
                )
            }
        }
    },
    scrimColor = Color.Black.copy(alpha = 0.5f)
) {
    // Reader content
}
```

#### 5.3 Toolbar Toggle

**Design**: Tap anywhere on screen to toggle toolbar visibility

**Implementation**:
```kotlin
var toolbarsVisible by remember { mutableStateOf(true) }

Box(
    modifier = Modifier
        .fillMaxSize()
        .pointerInput(Unit) {
            detectTapGestures(
                onTap = { toolbarsVisible = !toolbarsVisible }
            )
        }
) {
    // Comic content
    
    AnimatedVisibility(
        visible = toolbarsVisible,
        enter = fadeIn() + slideInVertically { -it },
        exit = fadeOut() + slideOutVertically { -it }
    ) {
        TopAppBar(...)
    }
    
    AnimatedVisibility(
        visible = toolbarsVisible,
        enter = fadeIn() + slideInVertically { it },
        exit = fadeOut() + slideOutVertically { it }
    ) {
        BottomAppBar(...)
    }
}
```

### Phase 6: Fullscreen Splash Screen

#### 6.1 Splash Screen Configuration

**Component**: AndroidManifest.xml and SplashActivity

**Current Issue**: White system toolbar visible over splash video

**Design Solution**:

**6.1.1 Manifest Configuration**
```xml
<activity
    android:name=".SplashActivity"
    android:theme="@style/Theme.MrComic.Splash"
    android:exported="true">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>
```

**6.1.2 Splash Theme**
```xml
<style name="Theme.MrComic.Splash" parent="Theme.SplashScreen">
    <item name="windowSplashScreenBackground">@color/splash_background</item>
    <item name="windowSplashScreenAnimatedIcon">@drawable/splash_logo</item>
    <item name="postSplashScreenTheme">@style/Theme.MrComic</item>
    <item name="android:windowFullscreen">true</item>
    <item name="android:windowLayoutInDisplayCutoutMode">shortEdges</item>
</style>
```

**6.1.3 Activity Configuration**
```kotlin
class SplashActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // Hide system bars
        WindowCompat.setDecorFitsSystemWindows(window, false)
        window.insetsController?.apply {
            hide(WindowInsets.Type.systemBars())
            systemBarsBehavior = WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
        }
        
        setContent {
            SplashScreen()
        }
    }
}
```

### Phase 7: Backup and Restore Functionality

#### 7.1 Backup Architecture

**Components**:
- `BackupManager`: Orchestrates backup operations
- `LocalBackupProvider`: Handles local file system backups
- `GoogleDriveBackupProvider`: Handles Google Drive backups
- `OneDriveBackupProvider`: Handles Microsoft OneDrive backups

**Data to Backup**:
- Reading progress (current page for each comic)
- Bookmarks
- User preferences (theme, reading mode, etc.)
- Library metadata (favorites, collections)

#### 7.2 Backup Data Model

```kotlin
data class BackupData(
    val version: Int,
    val timestamp: Long,
    val readingProgress: List<ReadingProgress>,
    val bookmarks: List<Bookmark>,
    val preferences: Map<String, String>,
    val libraryMetadata: LibraryMetadata
)

data class ReadingProgress(
    val comicUri: String,
    val currentPage: Int,
    val totalPages: Int,
    val lastReadTimestamp: Long
)
```

#### 7.3 Backup Storage

**Local Backup**:
- Store in app-specific directory: `Android/data/com.example.mrcomic/files/backups/`
- Use JSON format with GSON serialization
- Compress with GZIP for smaller file size
- Filename format: `mrcomic_backup_YYYYMMDD_HHMMSS.json.gz`

**Cloud Backup**:
- Use OAuth 2.0 for authentication
- Store in app-specific folder in cloud storage
- Encrypt sensitive data before upload
- Support automatic backup scheduling

#### 7.4 Backup UI Design

**Storage Settings Screen**:
```
┌─────────────────────────────────┐
│ Storage & Backup                │
├─────────────────────────────────┤
│                                 │
│ Local Backup                    │
│ ┌─────────────────────────────┐ │
│ │ Create Backup               │ │
│ └─────────────────────────────┘ │
│ ┌─────────────────────────────┐ │
│ │ Restore from Backup         │ │
│ └─────────────────────────────┘ │
│                                 │
│ Cloud Backup                    │
│ ┌─────────────────────────────┐ │
│ │ 🔵 Google Drive             │ │
│ │ Not connected               │ │
│ └─────────────────────────────┘ │
│ ┌─────────────────────────────┐ │
│ │ 🔷 Microsoft OneDrive       │ │
│ │ Not connected               │ │
│ └─────────────────────────────┘ │
│                                 │
│ Automatic Backup                │
│ ○ Disabled                      │
│ ○ Daily                         │
│ ○ Weekly                        │
│                                 │
└─────────────────────────────────┘
```

#### 7.5 Backup Implementation

**BackupManager Interface**:
```kotlin
interface BackupManager {
    suspend fun createBackup(destination: BackupDestination): Result<BackupInfo>
    suspend fun restoreBackup(source: BackupSource): Result<Unit>
    suspend fun listBackups(destination: BackupDestination): Result<List<BackupInfo>>
    suspend fun deleteBackup(backupInfo: BackupInfo): Result<Unit>
}

sealed class BackupDestination {
    object Local : BackupDestination()
    data class GoogleDrive(val accountEmail: String) : BackupDestination()
    data class OneDrive(val accountEmail: String) : BackupDestination()
}
```

**Repository Integration**:
- `ReadingProgressRepository`: Provides reading progress data
- `PreferencesRepository`: Provides user preferences
- `LibraryRepository`: Provides library metadata

## Data Models

### Existing Models (No Changes)

- `MediaMetadata`: Already well-defined
- `MediaType`: Enum for file types
- `MediaReader`: Interface for readers

### New Models for Backup

```kotlin
data class BackupInfo(
    val id: String,
    val filename: String,
    val timestamp: Long,
    val size: Long,
    val destination: BackupDestination,
    val version: Int
)

data class BackupProgress(
    val stage: BackupStage,
    val progress: Float,
    val message: String
)

enum class BackupStage {
    PREPARING,
    COLLECTING_DATA,
    COMPRESSING,
    UPLOADING,
    COMPLETE,
    ERROR
}
```

## Error Handling

### Compilation Errors

**Strategy**: Fix errors in dependency order
1. Fix core-reader dependencies first
2. Then fix modules that depend on core-reader
3. Verify with `./gradlew build`

### Runtime Errors

**CBZ/CBR Reading Errors**:
- Catch `UnsupportedFormatException` for corrupted archives
- Show user-friendly error messages in Russian
- Log detailed errors for debugging
- Provide fallback behavior (show error icon instead of crash)

**Theme Errors**:
- Catch theme application errors gracefully
- Fall back to system theme if custom theme fails
- Log errors for debugging

**Backup Errors**:
- Handle network errors for cloud backups
- Handle storage permission errors
- Handle corrupted backup files
- Show clear error messages to users

## Testing Strategy

### Unit Tests

**Priority 1: Core Functionality**
- Test MediaReader implementations (CbzReader, CbrReader)
- Test BackupManager backup/restore operations
- Test theme configuration logic

**Priority 2: UI Components**
- Test zoom gesture handling
- Test toolbar visibility toggle
- Test page navigation

### Integration Tests

**Priority 1: File Reading**
- Test opening real CBZ files
- Test opening real CBR files
- Test page rendering with various image formats

**Priority 2: Backup System**
- Test local backup creation and restoration
- Test cloud backup authentication
- Test backup data integrity

### Manual Testing

**Priority 1: Visual Testing**
- Verify dark theme applies to all screens
- Verify toolbar transparency and size
- Verify splash screen is fullscreen
- Verify smooth scrolling and zoom

**Priority 2: Functional Testing**
- Test CBZ/CBR file opening from file picker
- Test reading progress persistence
- Test backup and restore workflow

## Build and Deployment

### Build Configuration

**Gradle Tasks**:
- `./gradlew clean` - Clean build artifacts
- `./gradlew :android:core-reader:build` - Build core-reader module
- `./gradlew :android:core-data:build` - Build core-data module
- `./gradlew :android:app:assembleDebug` - Build debug APK
- `./gradlew :android:app:assembleRelease` - Build release APK

**Build Order**:
1. Build core modules first (core-model, core-reader, core-domain, core-data)
2. Build feature modules (feature-reader, feature-library, etc.)
3. Build app module last

### APK Output

**Debug APK**: `android/app/build/outputs/apk/debug/app-debug.apk`
**Release APK**: `android/app/build/outputs/apk/release/app-release.apk`

### Signing Configuration

Use existing `debug.keystore` for debug builds.
For release builds, configure signing in `android/app/build.gradle.kts`:

```kotlin
signingConfigs {
    create("release") {
        storeFile = file("../debug.keystore")
        storePassword = "android"
        keyAlias = "androiddebugkey"
        keyPassword = "android"
    }
}
```

## Dependencies

### Required Libraries

**Already in Project**:
- `junrar` - CBR/RAR support
- `zip4j` - CBZ/ZIP support
- `pdfium-android` - PDF support
- `androidx.compose.*` - UI framework
- `androidx.room` - Database
- `androidx.datastore` - Preferences storage
- `hilt` - Dependency injection

**To Add or Re-enable**:
- `telephoto-zoomable` - For zoom functionality (currently commented out)
- Google Drive API - For Google Drive backup
- Microsoft Graph API - For OneDrive backup

### Library Versions

Check `gradle/libs.versions.toml` for current versions and update if needed.

## Performance Considerations

### Memory Management

**Bitmap Caching**:
- Use LruCache with 1/8 of available memory
- Recycle bitmaps when no longer needed
- Use RGB_565 format for lower memory usage

**Page Preloading**:
- Preload adjacent pages (beyondBoundsPageCount = 1)
- Cancel preloading when user navigates away
- Clear cache when memory is low

### File I/O

**Streaming Extraction**:
- Use StreamingExtractor for CBZ files
- Extract files on-demand, not all at once
- Clean up temporary files promptly

**Background Processing**:
- Use coroutines with Dispatchers.IO for file operations
- Show loading indicators for long operations
- Allow cancellation of long operations

## Security Considerations

### Cloud Backup

**Authentication**:
- Use OAuth 2.0 for cloud service authentication
- Store tokens securely with EncryptedSharedPreferences
- Implement token refresh logic

**Data Encryption**:
- Encrypt backup data before uploading to cloud
- Use AES-256 encryption
- Store encryption keys securely

### File Access

**Permissions**:
- Request storage permissions at runtime
- Use scoped storage (Android 10+)
- Handle permission denial gracefully

## Accessibility

### Screen Reader Support

- Add content descriptions to all interactive elements
- Use semantic properties for Compose components
- Test with TalkBack

### Visual Accessibility

- Ensure sufficient color contrast (WCAG AA)
- Support system font size scaling
- Provide alternative text for images

## Localization

### Current Language Support

- Russian (primary language based on error messages)
- English (fallback)

### Localization Strategy

- Use string resources for all user-facing text
- Support RTL languages if needed
- Test with different locales

## Migration Strategy

### Phased Rollout

**Phase 1** (Critical): Fix compilation errors
- Restore core-reader dependencies
- Fix interface conflicts
- Verify build succeeds

**Phase 2** (High Priority): Fix CBZ/CBR support
- Verify CbzReader works correctly
- Verify CbrReader works correctly
- Test with real comic files

**Phase 3** (High Priority): Fix dark theme
- Fix toolbar theming
- Fix system bars theming
- Test theme persistence

**Phase 4** (Medium Priority): Improve reader UI
- Implement smooth scrolling
- Implement zoom functionality
- Improve toolbar UX

**Phase 5** (Medium Priority): Fix splash screen
- Configure fullscreen splash
- Test on different devices

**Phase 6** (Low Priority): Implement backup
- Implement local backup
- Implement cloud backup
- Test backup/restore workflow

### Backward Compatibility

- Maintain compatibility with existing user data
- Migrate old preferences to new format if needed
- Test upgrade path from previous versions

## Monitoring and Logging

### Logging Strategy

**Debug Logging**:
- Use `android.util.Log.d()` for debug information
- Log file operations (open, read, close)
- Log theme changes
- Log backup operations

**Error Logging**:
- Use `android.util.Log.e()` for errors
- Include stack traces for exceptions
- Log user-facing error messages

**Performance Logging**:
- Log page render times
- Log file open times
- Log backup operation times

### Analytics

**Events to Track**:
- App launches
- Comic file opens (by format)
- Theme changes
- Backup operations
- Errors and crashes

## Future Enhancements

### Potential Features

1. **Cloud Library Sync**: Sync library across devices
2. **Reading Statistics**: Track reading time, pages read, etc.
3. **Social Features**: Share reading progress, recommendations
4. **Advanced Reader Features**: Bookmarks, annotations, highlights
5. **Format Support**: Add support for more formats (EPUB, MOBI, etc.)
6. **Performance**: Implement more aggressive caching and preloading

### Technical Debt

1. **Deprecate BookReader**: Fully migrate to MediaReader interface
2. **Remove feature_cbr**: Consolidate CBR support in core-reader
3. **Refactor Theme System**: Simplify theme configuration
4. **Improve Error Handling**: Use sealed classes for error types
5. **Add Comprehensive Tests**: Increase test coverage to 80%+

## Conclusion

This design provides a comprehensive approach to fixing the Mr.Comic application's compilation errors and implementing requested features. The phased approach ensures critical issues are addressed first, while maintaining code quality and user experience throughout the development process.
