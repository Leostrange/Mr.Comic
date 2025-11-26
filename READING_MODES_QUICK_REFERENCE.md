# Reading Modes Quick Reference Guide

**Last Updated:** 2024-11-26 (PR #120)  
**Status:** ✅ All modes working correctly

---

## Overview

MrComic supports two primary reading modes:

| Mode | Description | Best For |
|------|-------------|----------|
| **PAGE** | Single page with tap navigation | Comics, manga, single-page documents |
| **WEBTOON** | Continuous vertical scroll | Webtoons, long vertical strips |

---

## Mode Selection

### In Code

```kotlin
// ReaderUiState.kt
enum class ReadingMode {
    PAGE,      // Single page with tap/swipe navigation
    WEBTOON    // Continuous vertical scrolling
}

// Switch modes
viewModel.setReadingMode(ReadingMode.PAGE)
viewModel.setReadingMode(ReadingMode.WEBTOON)
```

### In UI

```kotlin
// TopSettingsPanel shows mode selector
FilterChip(
    selected = currentReadingMode == "page",
    onClick = { onReadingModeChange("page") },
    label = { Text("Page") }
)
FilterChip(
    selected = currentReadingMode == "webtoon",
    onClick = { onReadingModeChange("webtoon") },
    label = { Text("Webtoon") }
)
```

---

## PAGE Mode

### Implementation

**File:** `ReaderScreen.kt` - `PagedReaderWithGestures()`

**Features:**
- Single page display
- Smooth page transitions (250ms slide + 150ms fade)
- Tap zones for navigation
- Pinch-to-zoom support
- Pan when zoomed
- Multiple scale modes (WIDTH, HEIGHT, FIT, FILL)

### Gestures

| Gesture | Action | When |
|---------|--------|------|
| Tap left edge | Previous page | Not zoomed, no panels |
| Tap right edge | Next page | Not zoomed, no panels |
| Tap top-left corner | Open top panel | Always |
| Tap top-right corner | Open right panel | Always |
| Tap bottom-left corner | Open thumbnail panel | Always |
| Pinch | Zoom in/out | Always |
| Drag (zoomed) | Pan image | When zoomed |
| Double-tap | Toggle zoom | Always |

### Scale Modes

```kotlin
// ZoomMode enum
enum class ZoomMode {
    FIT_WIDTH,   // Fit width to screen (height may exceed)
    FIT_HEIGHT,  // Fit height to screen (width may exceed)
    FIT_SCREEN,  // Fit entire image (no cropping)
    FILL         // Fill screen (may crop)
}

// Calculations
FIT_WIDTH:  scale = screenWidth / imageWidth
FIT_HEIGHT: scale = screenHeight / imageHeight
FIT_SCREEN: scale = min(widthScale, heightScale)  // Smallest fits all
FILL:       scale = max(widthScale, heightScale)  // Largest fills screen
```

### Code Example

```kotlin
when (uiState.readingMode) {
    ReadingMode.PAGE -> PagedReaderWithGestures(
        uiState = uiState,
        screenSize = screenSize,
        onNextPage = onNextPage,
        onPreviousPage = onPreviousPage,
        // ... other params
    )
    // ...
}
```

---

## WEBTOON Mode

### Implementation

**File:** `OptimizedWebtoonPageItem.kt` - `OptimizedWebtoonLazyColumn()`

**Features:**
- Continuous vertical scrolling
- Lazy loading (only visible pages rendered)
- Prefetch (2 pages ahead, 1 behind)
- Debounced loading (150ms)
- No zoom (native image size)
- No tap navigation (scroll only)

### Gestures

| Gesture | Action | When |
|---------|--------|------|
| Scroll | Navigate pages | Always |
| Tap top-left corner | Open top panel | Always |
| Tap top-right corner | Open right panel | Always |
| Tap bottom-left corner | Open thumbnail panel | Always |

**Note:** Left/right tap zones are disabled in Webtoon mode.

### Prefetch Logic

```kotlin
LaunchedEffect(listState, uiState.pageCount) {
    snapshotFlow { listState.layoutInfo.visibleItemsInfo }
        .debounce(150) // Avoid excessive loading
        .collect { visibleItems ->
            val firstVisible = visibleItems.first().index
            val lastVisible = visibleItems.last().index
            
            // Load 2 pages ahead, 1 behind
            for (i in (firstVisible - 1)..(lastVisible + 2)) {
                if (i in 0 until uiState.pageCount) {
                    if (!uiState.bitmaps.containsKey(i)) {
                        onLoadPage(i)
                    }
                }
            }
        }
}
```

### Code Example

```kotlin
when (uiState.readingMode) {
    ReadingMode.WEBTOON -> OptimizedWebtoonLazyColumn(
        uiState = uiState,
        onNextPage = onNextPage,
        onPreviousPage = onPreviousPage,
        onLoadPage = onLoadPage,
        // ... other params
    )
    // ...
}
```

---

## Zoom Controller

### Usage

```kotlin
// Create controller
val zoomController = rememberZoomController(
    imageSize = IntSize(bitmap.width, bitmap.height),
    screenSize = IntSize(screenWidth, screenHeight),
    scaleMode = "width",  // "width", "height", "fit", "fill"
    zoomSensitivity = 1.0f,
    panSensitivity = 1.0f
)

// Apply zoom
coroutineScope.launch {
    zoomController.applyPinchZoom(scale = 1.5f, focusPoint = Offset(x, y))
}

// Cycle modes
coroutineScope.launch {
    zoomController.cycleZoomMode() // WIDTH → HEIGHT → FIT → FILL → WIDTH
}

// Reset
coroutineScope.launch {
    zoomController.resetToBaseScale()
}

// Check state
val isAtBase = zoomController.isAtBaseScale()
val baseScale = zoomController.getBaseScale()
val currentScale = zoomController.scale.value
```

### Key Functions

| Function | Purpose | Returns |
|----------|---------|---------|
| `calculateFitWidthScale()` | Width scale | Float |
| `calculateFitHeightScale()` | Height scale | Float |
| `calculateFitScreenScale()` | Fit entire image | Float |
| `calculateFillScale()` | Fill screen | Float |
| `cycleZoomMode()` | Next mode | suspend |
| `setZoomMode()` | Specific mode | suspend |
| `applyPinchZoom()` | Pinch gesture | suspend |
| `applyPan()` | Pan gesture | suspend |
| `resetToBaseScale()` | Reset zoom | suspend |
| `isAtBaseScale()` | Check if at base | Boolean |
| `getBaseScale()` | Current mode scale | Float |

---

## Common Patterns

### Check if Zoomed

```kotlin
val isZoomed = scale > 1.0f + 0.001f  // Small epsilon for float comparison
```

### Check if Panels Open

```kotlin
val anyPanelOpen = showTopPanel || showRightPanel || showThumbnailPanel
```

### Gesture Routing

```kotlin
when (action) {
    is GestureAction.NextPage -> {
        if (!anyPanelOpen && !isZoomed) onNextPage()
    }
    is GestureAction.Zoom -> {
        if (!anyPanelOpen) {
            coroutineScope.launch {
                zoomController.applyPinchZoom(action.scale, action.focusPoint)
            }
        }
    }
    // ... other actions
}
```

### Sync Scale Mode from State

```kotlin
LaunchedEffect(uiState.scaleMode) {
    zoomController.updateScaleModeFromState(uiState.scaleMode)
}
```

---

## Performance Tips

### Webtoon Mode

✅ **Do:**
- Use stable keys in LazyColumn: `key = { "webtoon_page_$it" }`
- Debounce prefetch to avoid loading spikes
- Use `remember` for painters: `remember(bitmap) { BitmapPainter(...) }`
- Set `contentType` for item reuse

❌ **Don't:**
- Load all pages at once (use lazy loading)
- Skip debouncing on prefetch
- Recreate painters on recomposition

### Page Mode

✅ **Do:**
- Use `AnimatedContent` for smooth transitions
- Apply `graphicsLayer` for hardware acceleration
- Use `derivedStateOf` for computed values from Animatable

❌ **Don't:**
- Recreate ZoomController unnecessarily
- Skip LaunchedEffect for scale mode sync

---

## Debugging

### Enable Logging

```kotlin
// In gesture handler
Log.d("ReaderGestures", "Action: $action, zoomed: $isZoomed, panels: $anyPanelOpen")

// In ZoomController
Log.d("ZoomController", "Scale: ${scale.value}, Mode: $currentMode")

// In Webtoon prefetch
Log.d("WebtoonPrefetch", "Loading page $pageIndex")
```

### Common Issues

**Issue:** Tap zones not working
- **Check:** `navigationTapZonesEnabled` parameter
- **Check:** `panelsOpen` state
- **Check:** z-index layering

**Issue:** Zoom not working
- **Check:** ZoomController initialization
- **Check:** `isZoomed` check in gesture handler
- **Check:** Scale mode synchronization

**Issue:** Webtoon stuttering
- **Check:** Prefetch debounce delay
- **Check:** Number of prefetch pages
- **Check:** Memory pressure (reduce cache size)

---

## Testing

### Unit Tests

```bash
# Run zoom calculation tests
./gradlew :android:feature-reader:testDebugUnitTest --tests ReadingModesValidationTest
```

### Manual Testing

```kotlin
// Test checklist:
// 1. Webtoon: Scroll 20+ pages rapidly
// 2. Pages: Tap left/right zones
// 3. Zoom: Pinch in/out, double-tap
// 4. Panels: Tap corners
// 5. Mode switch: PAGE ↔ WEBTOON
```

---

## Architecture

```
ReaderScreen (Stateful)
├── ReaderViewModel (State Management)
│   ├── ReaderUiState (State)
│   └── Settings (Preferences)
│
└── ReaderScreenContent (Stateless)
    ├── PAGE Mode
    │   ├── PagedReaderWithGestures
    │   ├── ZoomController
    │   ├── readerGestures modifier
    │   └── ReaderTapZones
    │
    └── WEBTOON Mode
        ├── OptimizedWebtoonLazyColumn
        ├── LazyColumn (Compose)
        ├── OptimizedWebtoonPageItem
        └── ReaderTapZones (panels only)
```

---

## Files Reference

| File | Purpose |
|------|---------|
| `ReaderScreen.kt` | Main reader UI |
| `ReaderUiState.kt` | State definition |
| `ReaderViewModel.kt` | State management |
| `ZoomController.kt` | Zoom logic |
| `OptimizedWebtoonPageItem.kt` | Webtoon mode |
| `ReaderTapZones.kt` | Tap zone detection |
| `TopSettingsPanel.kt` | Settings UI |

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| PR #120 | 2024-11-26 | Scale mode zoom calculations fixed |
| Current | 2024-11-26 | Validation complete |

---

**Maintained by:** MrComic Development Team  
**Last Validated:** 2024-11-26  
**Status:** ✅ Production Ready
