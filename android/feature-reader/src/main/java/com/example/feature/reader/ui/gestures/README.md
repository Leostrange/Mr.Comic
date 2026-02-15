# Gesture System Documentation

## Overview

The gesture system provides comprehensive touch interaction support for the comic reader, including:
- Single tap navigation with configurable zones
- Double tap for cyclic zoom (fit-width → fit-height → fit-screen)
- Long press for showing panels
- Pinch-to-zoom with smooth animations
- Swipe gestures for page navigation

## Components

### GestureHandler
Core logic for processing gestures and determining actions.

```kotlin
val gestureHandler = GestureHandler(
    screenSize = IntSize(1080, 1920),
    tapZoneConfig = TapZoneConfig(
        leftZoneRatio = 0.25f,  // 25% of screen width
        rightZoneRatio = 0.25f,  // 25% of screen width
        enabled = true
    )
)
```

### GestureDetector (Modifier)
Compose modifier for detecting gestures on any composable.

```kotlin
Modifier.readerGestures(
    screenSize = screenSize,
    tapZoneConfig = tapZoneConfig,
    gestureSensitivity = 1.0f,
    isZoomed = false,
    blockSwipeWhenZoomed = true,
    onGestureAction = { action ->
        when (action) {
            is GestureAction.NextPage -> navigateToNextPage()
            is GestureAction.PreviousPage -> navigateToPreviousPage()
            is GestureAction.ToggleUI -> toggleUIVisibility()
            is GestureAction.CycleZoom -> handleZoomCycle(action.position)
            // ... handle other actions
        }
    }
)
```

### ZoomController
Manages zoom state and transitions between zoom modes.

```kotlin
val zoomController = rememberZoomController(
    imageSize = IntSize(2000, 3000),
    screenSize = IntSize(1080, 1920)
)

// Cycle through zoom modes
coroutineScope.launch {
    zoomController.cycleZoomMode()
}

// Apply pinch zoom
coroutineScope.launch {
    zoomController.applyPinchZoom(
        zoomFactor = 1.2f,
        focusPoint = Offset(540f, 960f)
    )
}
```

### ZoomableComicPage
Complete page component with gesture support.

```kotlin
ZoomableComicPage(
    bitmap = pageBitmap,
    isLoading = false,
    errorMessage = null,
    tapZoneConfig = TapZoneConfig(),
    gestureSensitivity = 1.0f,
    blockSwipeWhenZoomed = true,
    onGestureAction = { action ->
        // Handle gesture actions
    },
    onZoomStateChanged = { scale ->
        // Track zoom state
    }
)
```

## Gesture Actions

### Navigation Actions
- `GestureAction.NextPage` - Navigate to next page
- `GestureAction.PreviousPage` - Navigate to previous page

### UI Actions
- `GestureAction.ToggleUI` - Show/hide UI controls
- `GestureAction.ShowTopPanel` - Show top settings panel
- `GestureAction.ShowLeftPanel` - Show left quick panel
- `GestureAction.ShowRightPanel` - Show right quick panel
- `GestureAction.ShowBottomPanel` - Show bottom thumbnail panel
- `GestureAction.HideUI` - Hide all UI elements

### Zoom Actions
- `GestureAction.CycleZoom(position)` - Cycle through zoom modes
- `GestureAction.Zoom(scale, focusPoint)` - Apply pinch zoom

## Tap Zones

The screen is divided into three zones for single tap navigation:

```
┌─────────────────────────────┐
│ LEFT  │   CENTER   │  RIGHT │
│  25%  │    50%     │   25%  │
│       │            │        │
│ Prev  │  Toggle    │  Next  │
│ Page  │    UI      │  Page  │
└─────────────────────────────┘
```

Configure zones:
```kotlin
TapZoneConfig(
    leftZoneRatio = 0.25f,   // Left zone width (25%)
    rightZoneRatio = 0.25f,  // Right zone width (25%)
    enabled = true           // Enable/disable tap zones
)
```

## Zoom Modes

### FIT_WIDTH
Scales image to fit screen width. Height may exceed screen.

### FIT_HEIGHT
Scales image to fit screen height. Width may exceed screen.

### FIT_SCREEN
Scales image to fit entirely on screen (letterbox/pillarbox).

### Cycle Order
Double tap cycles: FIT_WIDTH → FIT_HEIGHT → FIT_SCREEN → FIT_WIDTH

## Gesture Sensitivity

Adjust gesture sensitivity (0.5 - 2.0):
- Lower values = less sensitive (longer delays, larger thresholds)
- Higher values = more sensitive (shorter delays, smaller thresholds)

```kotlin
gestureSensitivity = 1.5f  // 50% more sensitive
```

Affects:
- Double tap detection window (300ms / sensitivity)
- Long press delay (500ms / sensitivity)
- Swipe threshold (50px / sensitivity)

## Integration Example

```kotlin
@Composable
fun ReaderScreen() {
    var showUI by remember { mutableStateOf(true) }
    var currentPage by remember { mutableStateOf(0) }
    val pagerState = rememberPagerState(pageCount = { totalPages })
    
    HorizontalPager(state = pagerState) { page ->
        ZoomableComicPage(
            bitmap = pages[page],
            isLoading = false,
            errorMessage = null,
            tapZoneConfig = TapZoneConfig(),
            gestureSensitivity = 1.0f,
            blockSwipeWhenZoomed = true,
            onGestureAction = { action ->
                when (action) {
                    is GestureAction.NextPage -> {
                        if (page < totalPages - 1) {
                            coroutineScope.launch {
                                pagerState.animateScrollToPage(page + 1)
                            }
                        }
                    }
                    is GestureAction.PreviousPage -> {
                        if (page > 0) {
                            coroutineScope.launch {
                                pagerState.animateScrollToPage(page - 1)
                            }
                        }
                    }
                    is GestureAction.ToggleUI -> {
                        showUI = !showUI
                    }
                    // Handle other actions...
                }
            },
            onZoomStateChanged = { scale ->
                // Update zoom state in ViewModel
            }
        )
    }
    
    // Show page indicator
    PageIndicator(
        currentPage = currentPage + 1,
        totalPages = totalPages,
        isPinned = false,
        visible = showUI,
        onPinToggle = { /* Toggle pin state */ },
        modifier = Modifier.align(Alignment.BottomEnd)
    )
}
```

## Requirements Mapping

This implementation satisfies the following requirements:

- **Requirement 3.2**: Single tap shows page indicator
- **Requirement 3.3**: Double tap cycles zoom (width → height → screen)
- **Requirement 4.1**: Long press center shows top panel
- **Requirement 4.2**: Long press left/right shows side panels
- **Requirement 4.4**: Configurable tap zones and sensitivity
- **Requirement 3.6**: Pin/Unpin page functionality

## Performance Considerations

1. **Gesture Detection**: Uses Compose's built-in gesture detectors for optimal performance
2. **Zoom Animations**: Smooth spring animations with configurable stiffness
3. **State Management**: Minimal recomposition with remember and derivedStateOf
4. **Memory**: Zoom controller reuses Animatable instances

## Testing

Test gesture detection:
```kotlin
@Test
fun testTapZoneDetection() {
    val handler = GestureHandler(
        screenSize = IntSize(1000, 1000),
        tapZoneConfig = TapZoneConfig()
    )
    
    // Test left zone
    val leftAction = handler.onTap(Offset(100f, 500f))
    assertEquals(GestureAction.PreviousPage, leftAction)
    
    // Test center zone
    val centerAction = handler.onTap(Offset(500f, 500f))
    assertEquals(GestureAction.ToggleUI, centerAction)
    
    // Test right zone
    val rightAction = handler.onTap(Offset(900f, 500f))
    assertEquals(GestureAction.NextPage, rightAction)
}
```
