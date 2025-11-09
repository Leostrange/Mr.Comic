# Design Document

## Overview

This design addresses critical UI/UX bugs in the comic reader by fixing gesture handling, panel positioning, zoom functionality, touch event propagation, performance optimization, and image preloading. The solution focuses on proper event handling, component state management, and efficient image loading strategies.

## Architecture

### Component Structure

```
Reader Component
├── GestureHandler (touch/tap/pinch detection)
├── PanelManager (side panel positioning and visibility)
├── ZoomController (pinch-to-zoom logic)
├── ImagePreloader (progressive image loading)
├── SettingsPanel (brightness, scale, orientation controls)
└── ThumbnailLoader (side panel thumbnail management)
```

### Key Architectural Decisions

1. **Event Propagation Control**: Implement event.stopPropagation() on all interactive controls (sliders, buttons) to prevent touch events from triggering page navigation
2. **Separate Gesture Zones**: Define distinct touch zones for navigation vs. controls to avoid conflicts
3. **Lazy Loading with Viewport Detection**: Use intersection observers to trigger image loading based on scroll position
4. **State Management**: Centralize panel position, zoom level, and loading states to prevent inconsistencies
5. **Performance Optimization**: Use requestAnimationFrame for smooth animations and Web Workers for image processing where applicable

## Components and Interfaces

### 1. PanelManager

**Responsibility**: Manage side panel positioning, visibility, and animations

**Interface**:
```typescript
interface PanelManager {
  openPanel(position: 'left' | 'right'): void;
  closePanel(): void;
  isPanelOpen(): boolean;
  getCurrentPanelPosition(): 'left' | 'right' | null;
}
```

**Implementation Details**:
- Track panel state (open/closed, left/right position)
- Apply CSS transforms for instant positioning (no delays)
- Use corner tap zones (top 15% height, outer 15% width) to trigger panels
- Implement tap-outside-to-close with proper event handling

### 2. GestureHandler

**Responsibility**: Detect and route touch gestures (tap, swipe, pinch)

**Interface**:
```typescript
interface GestureHandler {
  onTouchStart(event: TouchEvent): void;
  onTouchMove(event: TouchEvent): void;
  onTouchEnd(event: TouchEvent): void;
  registerGestureZone(zone: GestureZone): void;
  unregisterGestureZone(zoneId: string): void;
}

interface GestureZone {
  id: string;
  bounds: DOMRect;
  priority: number;
  handler: (gesture: Gesture) => void;
}
```

**Implementation Details**:
- Prioritize gesture zones (controls > panels > navigation)
- Detect pinch gestures using multi-touch distance calculation
- Distinguish between tap (< 200ms, < 10px movement) and swipe
- Stop event propagation when control zones are touched

### 3. ZoomController

**Responsibility**: Handle pinch-to-zoom functionality for comic pages

**Interface**:
```typescript
interface ZoomController {
  handlePinch(scale: number, centerX: number, centerY: number): void;
  resetZoom(): void;
  getCurrentZoom(): number;
  setZoomLimits(min: number, max: number): void;
}
```

**Implementation Details**:
- Track initial touch distance and current distance to calculate scale
- Apply CSS transform: scale() with transform-origin at pinch center
- Clamp zoom between 1.0x and 4.0x
- Reset zoom on page change in Pages Mode
- Persist zoom in Webtoon Mode during scroll

### 4. ImagePreloader

**Responsibility**: Efficiently load images based on reading mode and scroll position

**Interface**:
```typescript
interface ImagePreloader {
  preloadRange(startIndex: number, count: number): void;
  preloadVisible(): void;
  cancelPending(): void;
  getLoadedImages(): Map<number, HTMLImageElement>;
}
```

**Implementation Details**:

**Pages Mode**:
- Preload current page + next 2 pages + previous 1 page
- Cancel pending loads when user navigates away

**Webtoon Mode**:
- Load first 5 pages on mount
- Use IntersectionObserver to detect when user scrolls near unloaded images
- Trigger preload for next 3 pages when within 2 viewport heights
- Implement virtual scrolling for large comics (> 50 pages)

**Common**:
- Use Image() constructor for preloading
- Implement loading queue with priority (visible > near > far)
- Cache loaded images in memory with LRU eviction for large comics

### 5. SettingsPanel

**Responsibility**: Render and handle brightness, scale mode, and orientation controls

**Interface**:
```typescript
interface SettingsPanel {
  onBrightnessChange(value: number): void;
  onScaleModeChange(mode: ScaleMode): void;
  onOrientationChange(orientation: Orientation): void;
}
```

**Implementation Details**:
- Wrap all controls in containers with touch event handlers
- Call event.stopPropagation() on touchstart, touchmove, touchend
- Apply brightness using CSS filter: brightness() on reader container
- Update scale mode without triggering page navigation
- Prevent touch events from bubbling to page navigation zones

### 6. ThumbnailLoader

**Responsibility**: Load and display page thumbnails in side panel

**Interface**:
```typescript
interface ThumbnailLoader {
  loadThumbnails(pageIndices: number[]): void;
  prioritizeRange(startIndex: number, endIndex: number): void;
  clearCache(): void;
}
```

**Implementation Details**:
- Generate thumbnails at 150px width (maintain aspect ratio)
- Load thumbnails in batches of 10
- Prioritize current page ± 5 pages
- Use lazy loading with IntersectionObserver for thumbnail list
- Cache thumbnails in memory and IndexedDB for persistence

## Data Models

### ReaderState

```typescript
interface ReaderState {
  mode: 'pages' | 'webtoon';
  currentPage: number;
  totalPages: number;
  zoomLevel: number;
  brightness: number;
  scaleMode: 'fit-width' | 'fit-height' | 'original' | 'fit-screen';
  orientation: 'auto' | 'portrait' | 'landscape';
  panelOpen: boolean;
  panelPosition: 'left' | 'right' | null;
  loadedPages: Set<number>;
  loadingPages: Set<number>;
}
```

### GestureState

```typescript
interface GestureState {
  touchStartTime: number;
  touchStartX: number;
  touchStartY: number;
  initialPinchDistance: number | null;
  currentPinchDistance: number | null;
  isInControlZone: boolean;
}
```

## Error Handling

### Image Loading Failures

- Display placeholder image with retry button
- Log error to console with page index
- Continue loading other pages (don't block entire comic)
- Show error count in UI if multiple pages fail

### Touch Event Conflicts

- Use try-catch around event.stopPropagation() calls
- Fallback to passive event listeners if active listeners cause scroll jank
- Log gesture conflicts in development mode

### Performance Degradation

- Monitor frame rate using requestAnimationFrame timestamps
- Reduce preload count if memory pressure detected
- Disable animations if frame rate drops below 30fps
- Show performance warning in dev tools

## Testing Strategy

### Unit Tests

- GestureHandler: Test tap/swipe/pinch detection with mock touch events
- ZoomController: Test zoom calculations and limits
- ImagePreloader: Test loading queue and priority logic
- PanelManager: Test panel positioning and state transitions

### Integration Tests

- Test brightness slider in both modes (verify no page navigation)
- Test scale mode changes (verify no page navigation)
- Test panel opening from corner taps (verify correct positioning)
- Test zoom in both modes (verify functionality works)
- Test image preloading in Webtoon mode (verify continuous loading)

### Manual Testing Checklist

- [ ] Tap top-right corner → right panel appears on right
- [ ] Tap top-left corner → left panel appears on left
- [ ] Tap outside panel → panel closes immediately
- [ ] Pinch-to-zoom in Pages mode → zoom works
- [ ] Pinch-to-zoom in Webtoon mode → zoom works
- [ ] Drag brightness slider in Webtoon → no page scroll
- [ ] Drag brightness slider in Pages → no page change
- [ ] Change scale mode → no page navigation
- [ ] Change orientation → no page navigation
- [ ] Scroll in Webtoon → pages load continuously
- [ ] Open side panel → thumbnails load
- [ ] UI feels responsive (no lag)

## Performance Targets

- Panel open/close: < 100ms
- Touch response: < 16ms (60fps)
- Image preload trigger: < 200ms after scroll stop
- Thumbnail load: < 500ms for visible thumbnails
- Frame rate: > 30fps during animations
- Memory usage: < 200MB for 100-page comic

## Critical Bug Fixes

### Issue 1: Panels Not Closing on Tap

**Problem**: Panels don't close when tapping outside them, only close buttons work

**Root Cause**: 
- Scrim layer exists but tap events are not properly handled
- ReaderTapZones has higher z-index and intercepts taps before scrim
- Panel close logic not triggered by scrim taps

**Solution**:
1. Remove close buttons from panels entirely
2. Ensure scrim layer has proper z-index (between panels and content)
3. Add pointerInput to scrim with detectTapGestures that closes all panels
4. Prevent scrim tap events from propagating to page navigation
5. Make scrim visible (semi-transparent overlay) when panels are open

### Issue 2: Reset Zoom Button Changes Scale Mode

**Problem**: Reset Zoom button switches scale mode from Fill to Width instead of just resetting zoom

**Root Cause**:
- onResetZoom callback incorrectly modifies scale mode
- Zoom reset logic conflated with scale mode logic

**Solution**:
1. Separate zoom level from scale mode in state management
2. onResetZoom should only set zoom level to 1.0x
3. Preserve current scale mode setting when resetting zoom
4. Update ViewModel.resetZoom() to only modify zoom, not scale mode

### Issue 3: Control Interactions Trigger Page Navigation

**Problem**: Tapping buttons and dragging brightness slider causes page navigation

**Root Cause**:
- Touch events from controls propagate to ReaderTapZones
- ReaderTapZones has high z-index and captures all touch events
- Controls don't properly consume touch events

**Solution**:
1. Wrap all controls (buttons, sliders) with Modifier.pointerInput that consumes events
2. Use detectTapGestures with onTap = { /* consume */ } to prevent propagation
3. Register control zones with GestureHandler at highest priority
4. Ensure ReaderTapZones checks if touch is within control bounds before handling

### Issue 4: No Smooth Page Transitions

**Problem**: Pages change instantly without smooth animations or preloading

**Root Cause**:
- AnimatedContent exists but may not be properly configured
- No preloading strategy for adjacent pages
- Images loaded synchronously on page change

**Solution**:
1. Ensure AnimatedContent uses slideInHorizontally/slideOutHorizontally
2. Set animation duration to 300ms for smooth transitions
3. Preload next 2 and previous 1 page in Pages mode
4. Show loading indicator during page transitions if image not ready
5. Use crossfade animation as fallback if slide animation causes issues

### Issue 5: Panel Open Delay

**Problem**: Panels open with noticeable delay, not instantly

**Root Cause**:
- Animation duration set too high (200ms+)
- LaunchedEffect delays in panel components
- State updates not immediate

**Solution**:
1. Reduce animation duration to 100ms maximum
2. Remove any artificial delays in LaunchedEffect
3. Use remember { } for immediate state updates
4. Consider using Modifier.offset instead of AnimatedVisibility for instant positioning
5. Ensure panel visibility state updates synchronously

### Issue 6: Height and Fit Buttons Not Working

**Problem**: Height and Fit scale mode buttons don't apply correct scaling

**Root Cause**:
- ContentScale mapping incorrect in ReaderScreenContent
- Scale mode state not properly propagated to Image composable
- Possible confusion between "fit" and "fill" modes

**Solution**:
1. Fix ContentScale mapping:
   - "width" → ContentScale.FillWidth
   - "height" → ContentScale.FillHeight  
   - "fit" → ContentScale.Fit (entire image visible)
   - "fill" → ContentScale.Crop (fill screen, crop if needed)
2. Ensure onScaleModeChange updates ViewModel state
3. Verify Image composable receives updated contentScale
4. Add logging to track scale mode changes

### Issue 7: Brightness Slider Issues in Pages Mode

**Problem**: In Webtoon mode brightness slider works, but in Pages mode it triggers page navigation

**Root Cause**:
- Different gesture handling between modes
- Pages mode uses readerGestures modifier that intercepts all touches
- Webtoon mode may have different touch handling

**Solution**:
1. Apply same touch event consumption strategy in both modes
2. Ensure TopSettingsPanel slider has Modifier.pointerInput that stops propagation
3. Check if readerGestures modifier respects control zones
4. Add explicit check in gesture handler to ignore touches on panels

### Issue 8: Interface Lag

**Problem**: UI feels sluggish and unresponsive

**Root Cause**:
- Image loading on main thread
- Too many recompositions
- Heavy animations
- No hardware acceleration

**Solution**:
1. Move image decoding to background thread using Dispatchers.IO
2. Use remember and derivedStateOf to reduce recompositions
3. Apply Modifier.graphicsLayer for hardware acceleration
4. Implement frame rate monitoring and adaptive quality
5. Use LazyColumn with key() for efficient list rendering
6. Cache bitmaps aggressively to avoid re-decoding

### Issue 9: Webtoon Mode Images Not Loading Beyond First Page

**Problem**: In Webtoon mode, only first page loads unless user taps navigation zones

**Root Cause**:
- LazyColumn not triggering image loads automatically
- Missing scroll listener for preloading
- Viewport detection not working

**Solution**:
1. Implement LaunchedEffect with scroll state monitoring
2. Add IntersectionObserver equivalent using LazyListState
3. Preload images when within 2 viewport heights of current position
4. Load first 5 pages immediately on mount
5. Ensure LazyColumn items trigger image loading in their composition

### Issue 10: Thumbnails Load Only After Scrolling Pages

**Problem**: Thumbnails in side panel don't load until user scrolls through pages

**Root Cause**:
- Thumbnail loading tied to main page loading
- No separate thumbnail generation
- Missing eager loading on panel open

**Solution**:
1. Implement separate thumbnail loading pipeline
2. Generate thumbnails at lower resolution (150px width)
3. Trigger thumbnail batch loading when panel opens
4. Use LaunchedEffect(showPanel) to start loading
5. Prioritize thumbnails near current page
6. Cache thumbnails separately from full-size images

### Issue 11: PDF/CBR Loading Delays

**Problem**: When opening PDF/CBR, pages load slowly with visible loading spinner

**Root Cause**:
- No preloading before showing first page
- Synchronous page rendering
- No render caching

**Solution**:
1. Preload first 3 pages before displaying reader
2. Show loading screen until first page ready
3. Cache rendered pages in memory
4. Use background thread for PDF rendering
5. Implement progressive rendering (show low-res first, then high-res)
6. Add render queue with priority for current and adjacent pages

### Issue 12: Transparent Gaps in Webtoon Mode

**Problem**: Transparent gaps visible between pages showing comic cover underneath

**Root Cause**:
- LazyColumn spacing configuration
- Background color not set on page items
- Possible padding/margin issues

**Solution**:
1. Set verticalArrangement = Arrangement.spacedBy(0.dp) in LazyColumn
2. Apply background color to each page item
3. Remove any padding between items
4. Ensure page images fill their containers completely
5. Set LazyColumn background to match reader background

### Issue 13: Scale Mode Not Working Correctly

**Problem**: Scale mode doesn't apply correct image scaling

**Root Cause**:
- ContentScale not properly applied to Image composable
- Possible conflict with zoom transformations
- State not updating correctly

**Solution**:
1. Verify contentScale parameter passed to Image composable
2. Ensure scale mode state updates trigger recomposition
3. Check if graphicsLayer transformations override contentScale
4. Add explicit size constraints based on scale mode
5. Test each scale mode individually with logging

## Updated Architecture Decisions

1. **Scrim-Based Panel Closing**: Use semi-transparent scrim overlay for closing panels instead of close buttons
2. **Separate Zoom and Scale**: Maintain zoom level and scale mode as independent state variables
3. **Event Consumption Hierarchy**: Controls > Panels > Navigation zones (by z-index and event handling)
4. **Aggressive Preloading**: Preload more pages (5 ahead in Webtoon, 3 in Pages) for smoother experience
5. **Instant Panel Response**: Use immediate state updates and minimal animations (< 100ms)
6. **Background Image Processing**: All image loading and decoding on background threads
7. **Separate Thumbnail Pipeline**: Independent thumbnail generation and caching system