# Implementation Plan

- [x] 1. Set up core gesture handling infrastructure





  - [x] 1.1 Implement GestureHandler class with touch event detection


    - Create GestureHandler with onTouchStart, onTouchMove, onTouchEnd methods
    - Implement gesture zone registration system with priority handling
    - Add tap detection logic (< 200ms duration, < 10px movement)
    - Add swipe detection with direction calculation
    - Add pinch detection using multi-touch distance calculation
    - _Requirements: 1.1, 1.2, 3.1, 3.2_
  - [x] 1.2 Create GestureZone interface and zone management

    - Define GestureZone interface with id, bounds, priority, and handler
    - Implement zone registration and unregistration methods
    - Add priority-based zone matching (controls > panels > navigation)
    - _Requirements: 1.1, 1.2, 4.3, 5.3_
  - [x] 1.3 Write unit tests for gesture detection


    - Test tap detection with mock touch events
    - Test swipe detection with various directions
    - Test pinch detection with multi-touch scenarios
    - Test gesture zone priority handling
    - _Requirements: 1.1, 1.2, 3.1, 3.2_

- [x] 2. Implement PanelManager for side panel positioning



  - [x] 2.1 Create PanelManager class with state management


    - Implement openPanel method with left/right positioning
    - Implement closePanel method with state cleanup
    - Add isPanelOpen and getCurrentPanelPosition getters
    - Track panel state (open/closed, position)
    - _Requirements: 1.1, 1.2, 1.3, 1.4_
  - [x] 2.2 Add corner tap zone detection


    - Define corner zones (top 15% height, outer 15% width)
    - Register corner zones with GestureHandler
    - Map top-right corner to right panel
    - Map top-left corner to left panel
    - _Requirements: 1.1, 1.2_
  - [x] 2.3 Implement instant panel animations


    - Apply CSS transforms for positioning without delays
    - Remove artificial animation delays
    - Ensure panel appears within 100ms of tap
    - _Requirements: 2.1, 2.3_
  - [x] 2.4 Add tap-outside-to-close functionality


    - Detect taps outside open panel bounds
    - Close panel within 100ms of outside tap
    - Prevent event propagation to page navigation
    - _Requirements: 2.2, 2.4_
  - [x] 2.5 Write unit tests for PanelManager


    - Test panel opening with correct positioning
    - Test panel closing
    - Test state transitions
    - Test corner zone detection
    - _Requirements: 1.1, 1.2, 1.3, 1.4, 2.1, 2.2_

- [x] 3. Implement ZoomController for pinch-to-zoom



  - [x] 3.1 Create ZoomController class


    - Implement handlePinch method with scale calculation
    - Implement resetZoom method
    - Add getCurrentZoom getter
    - Implement setZoomLimits with min/max clamping
    - _Requirements: 3.1, 3.2, 3.4_
  - [x] 3.2 Add pinch gesture processing


    - Calculate scale from initial and current touch distances
    - Apply CSS transform: scale() with transform-origin at pinch center
    - Clamp zoom between 1.0x and 4.0x
    - _Requirements: 3.1, 3.2, 3.4_
  - [x] 3.3 Implement mode-specific zoom behavior

    - Reset zoom on page change in Pages Mode
    - Persist zoom during scroll in Webtoon Mode
    - Maintain zoom level until user resets or navigates
    - _Requirements: 3.1, 3.2, 3.3_
  - [x] 3.4 Write unit tests for ZoomController


    - Test zoom calculations with various pinch distances
    - Test zoom limits (min/max clamping)
    - Test zoom reset functionality
    - _Requirements: 3.1, 3.2, 3.3, 3.4_

- [x] 4. Fix touch event propagation for controls



  - [x] 4.1 Add event.stopPropagation() to brightness slider


    - Wrap brightness slider in container with touch handlers
    - Call event.stopPropagation() on touchstart, touchmove, touchend
    - Verify no page navigation occurs during brightness adjustment
    - Test in both Pages and Webtoon modes
    - _Requirements: 4.1, 4.2, 4.3, 4.4_
  - [x] 4.2 Add event.stopPropagation() to scale mode controls

    - Wrap scale mode buttons/dropdown in container with touch handlers
    - Call event.stopPropagation() on all touch events
    - Verify no page navigation during scale mode changes
    - _Requirements: 5.1, 5.3_
  - [x] 4.3 Add event.stopPropagation() to orientation controls

    - Wrap orientation buttons in container with touch handlers
    - Call event.stopPropagation() on all touch events
    - Verify no page navigation during orientation changes
    - _Requirements: 5.2, 5.3_
  - [x] 4.4 Register control zones with GestureHandler

    - Register brightness slider zone with high priority
    - Register settings controls zone with high priority
    - Ensure control zones prevent navigation gesture detection
    - _Requirements: 4.3, 5.3_
  - [x] 4.5 Write integration tests for control event handling


    - Test brightness slider in both modes (verify no navigation)
    - Test scale mode changes (verify no navigation)
    - Test orientation changes (verify no navigation)
    - _Requirements: 4.1, 4.2, 5.1, 5.2_

- [x] 5. Implement ImagePreloader for efficient loading



  - [x] 5.1 Create ImagePreloader class with loading queue


    - Implement preloadRange method for batch loading
    - Implement preloadVisible method for current viewport
    - Implement cancelPending method to stop unnecessary loads
    - Add getLoadedImages method returning Map of loaded images
    - Create priority queue (visible > near > far)
    - _Requirements: 7.1, 7.2, 7.3_
  - [x] 5.2 Implement Pages Mode preloading strategy


    - Preload current page + next 2 pages + previous 1 page
    - Cancel pending loads on page navigation
    - Update preload range on page change
    - _Requirements: 7.1, 7.2_
  - [x] 5.3 Implement Webtoon Mode preloading strategy


    - Load first 5 pages on component mount
    - Implement IntersectionObserver for scroll-based loading
    - Trigger preload for next 3 pages when within 2 viewport heights
    - Continue loading as user scrolls without requiring taps
    - _Requirements: 7.1, 7.2, 7.3_
  - [x] 5.4 Add loading indicators and error handling

    - Display loading indicator for pages being fetched
    - Show placeholder with retry button on load failure
    - Log errors without blocking other page loads
    - _Requirements: 7.4_
  - [x] 5.5 Implement image caching with LRU eviction


    - Cache loaded images in memory using Map
    - Implement LRU eviction for comics with > 50 pages
    - Set memory limit to prevent excessive usage
    - _Requirements: 7.1, 7.2, 8.4_
  - [x] 5.6 Write unit tests for ImagePreloader


    - Test loading queue and priority logic
    - Test preload range calculations
    - Test LRU cache eviction
    - Test error handling
    - _Requirements: 7.1, 7.2, 7.3_

- [x] 6. Implement ThumbnailLoader for side panel


  - [x] 6.1 Create ThumbnailLoader class


    - Implement loadThumbnails method for batch loading
    - Implement prioritizeRange method for current page area
    - Implement clearCache method
    - Generate thumbnails at 150px width
    - _Requirements: 8.1, 8.2_
  - [x] 6.2 Add thumbnail loading on panel open

    - Trigger thumbnail loading when side panel opens
    - Load thumbnails in batches of 10
    - Prioritize current page ± 5 pages
    - _Requirements: 8.1, 8.2_
  - [x] 6.3 Implement lazy loading for thumbnail list

    - Use IntersectionObserver for thumbnail list items
    - Load thumbnails as they become visible in panel
    - Display thumbnails within 500ms of panel opening
    - _Requirements: 8.3_
  - [x] 6.4 Add thumbnail caching

    - Cache thumbnails in memory
    - Persist thumbnails in IndexedDB for reuse
    - Avoid reloading when panel is reopened
    - _Requirements: 8.4_
  - [x] 6.5 Write unit tests for ThumbnailLoader


    - Test batch loading logic
    - Test prioritization algorithm
    - Test cache functionality
    - _Requirements: 8.1, 8.2, 8.3, 8.4_

- [x] 7. Optimize performance and responsiveness



  - [x] 7.1 Implement requestAnimationFrame for animations


    - Use requestAnimationFrame for panel animations
    - Use requestAnimationFrame for zoom transforms
    - Monitor frame timestamps to detect performance issues
    - _Requirements: 6.2_
  - [x] 7.2 Offload image processing from main thread

    - Move image loading to background where possible
    - Ensure UI thread is not blocked by image operations
    - _Requirements: 6.3_
  - [x] 7.3 Add hardware acceleration hints

    - Apply will-change CSS property to animated elements
    - Use transform3d for GPU acceleration
    - Enable hardware acceleration for zoom and panel animations
    - _Requirements: 6.4_
  - [x] 7.4 Implement performance monitoring

    - Track frame rate during animations
    - Reduce preload count if memory pressure detected
    - Disable animations if frame rate drops below 30fps
    - Log performance warnings in development mode
    - _Requirements: 6.1, 6.2_
  - [x] 7.5 Write performance tests


    - Test frame rate during panel animations
    - Test touch response time
    - Test memory usage with large comics
    - _Requirements: 6.1, 6.2, 6.3, 6.4_

- [x] 8. Integrate all components into Reader



  - [x] 8.1 Wire up GestureHandler to Reader component


    - Initialize GestureHandler on Reader mount
    - Attach touch event listeners to reader container
    - Connect gesture callbacks to appropriate handlers
    - _Requirements: 1.1, 1.2, 3.1, 3.2_
  - [x] 8.2 Wire up PanelManager to Reader component

    - Initialize PanelManager with panel state
    - Connect corner tap gestures to panel open/close
    - Update panel rendering based on PanelManager state
    - _Requirements: 1.1, 1.2, 1.3, 1.4, 2.1, 2.2_
  - [x] 8.3 Wire up ZoomController to Reader component

    - Initialize ZoomController with zoom limits
    - Connect pinch gestures to zoom handler
    - Apply zoom transforms to page images
    - Handle zoom reset on mode/page changes
    - _Requirements: 3.1, 3.2, 3.3, 3.4_
  - [x] 8.4 Wire up ImagePreloader to Reader component

    - Initialize ImagePreloader with page count
    - Trigger preloading based on current page/scroll position
    - Update rendered images from preloader cache
    - Handle mode-specific preloading strategies
    - _Requirements: 7.1, 7.2, 7.3, 7.4_
  - [x] 8.5 Wire up ThumbnailLoader to side panel

    - Initialize ThumbnailLoader on panel open
    - Render thumbnails from loader cache
    - Handle thumbnail click navigation
    - _Requirements: 8.1, 8.2, 8.3, 8.4_
  - [x] 8.6 Connect settings controls with event propagation fixes

    - Apply stopPropagation fixes to all control handlers
    - Verify brightness slider works without navigation
    - Verify scale/orientation changes work without navigation
    - _Requirements: 4.1, 4.2, 4.3, 4.4, 5.1, 5.2, 5.3_
  - [x] 8.7 Write integration tests for complete Reader


    - Test end-to-end user flows in Pages mode
    - Test end-to-end user flows in Webtoon mode
    - Test all gesture interactions
    - Test all control interactions
    - _Requirements: All requirements_

- [ ] 9. Fix panel closing behavior
  - [x] 9.1 Remove close buttons from all panels


    - Remove IconButton with Close icon from TopSettingsPanel
    - Remove IconButton with Close icon from PageListPanel
    - Remove IconButton with Close icon from ThumbnailPanel
    - _Requirements: 9.1, 9.2_
  - [x] 9.2 Fix scrim layer z-index and tap handling


    - Ensure scrim has z-index between panels (100) and content (1)
    - Add pointerInput with detectTapGestures to scrim Box
    - Close all panels on scrim tap
    - Prevent scrim tap from propagating to page navigation
    - _Requirements: 9.1, 9.3, 9.4_
  - [x] 9.3 Make scrim visible when panels open

    - Set scrim background to Color.Black.copy(alpha = 0.3f)
    - Ensure scrim covers entire screen
    - Show scrim only when any panel is open
    - _Requirements: 9.1, 9.3_

- [ ] 10. Fix Reset Zoom button behavior
  - [x] 10.1 Separate zoom level from scale mode in state


    - Add separate zoomLevel field to ReaderUiState
    - Keep scaleMode field independent
    - Update zoom transforms to use zoomLevel only
    - _Requirements: 10.1, 10.2, 10.3_
  - [x] 10.2 Fix onResetZoom to only reset zoom

    - Modify ViewModel.resetZoom() to set zoomLevel = 1.0f
    - Do NOT modify scaleMode in resetZoom()
    - Preserve current scaleMode value
    - _Requirements: 10.1, 10.2, 10.3, 10.4_
  - [x] 10.3 Verify Reset Zoom button behavior

    - Test that Reset Zoom sets zoom to 1.0x
    - Test that current scale mode is preserved
    - Test in all scale modes (Width, Height, Fit, Fill)
    - _Requirements: 10.1, 10.2, 10.3, 10.4_

- [ ] 11. Fix control event propagation
  - [x] 11.1 Wrap all controls with event-consuming modifiers


    - Add Modifier.pointerInput to brightness Slider
    - Add Modifier.pointerInput to all FilterChip buttons
    - Add Modifier.pointerInput to Reset Zoom Button
    - Use detectTapGestures with empty onTap to consume events
    - _Requirements: 4.1, 4.2, 5.1, 5.2_
  - [x] 11.2 Fix ReaderTapZones to respect panel state

    - Check panelsOpen before handling any tap
    - Return early from all tap handlers if panels are open
    - Ensure control taps don't reach ReaderTapZones
    - _Requirements: 4.3, 5.3, 9.4_
  - [x] 11.3 Test control interactions in both modes


    - Test brightness slider in Pages mode (no page change)
    - Test brightness slider in Webtoon mode (no scroll)
    - Test all buttons don't trigger navigation
    - _Requirements: 4.1, 4.2, 5.1, 5.2_

- [ ] 12. Add smooth page transitions
  - [x] 12.1 Configure AnimatedContent for smooth slides


    - Set slideInHorizontally/slideOutHorizontally animations
    - Set animation duration to 300ms
    - Add easing function for smooth motion
    - _Requirements: None (UX improvement)_
  - [x] 12.2 Implement page preloading for transitions


    - Preload next 2 pages in Pages mode
    - Preload previous 1 page in Pages mode
    - Show loading indicator if next page not ready
    - _Requirements: 7.1, 7.2_
  - [x] 12.3 Add crossfade fallback

    - Use fadeIn/fadeOut if slide animation causes issues
    - Ensure smooth transition in all cases
    - _Requirements: None (UX improvement)_

- [ ] 13. Fix panel open delay
  - [x] 13.1 Reduce animation duration


    - Set panel animation duration to 100ms maximum
    - Remove any artificial delays in LaunchedEffect
    - Use immediate state updates with remember
    - _Requirements: 12.1, 12.2, 12.3, 12.4_
  - [x] 13.2 Consider instant positioning

    - Evaluate using Modifier.offset instead of AnimatedVisibility
    - Test instant panel appearance vs. fast animation
    - Choose approach with best UX
    - _Requirements: 12.1, 12.2_
  - [x] 13.3 Ensure synchronous state updates

    - Update panel visibility state immediately on tap
    - Don't wait for coroutines or effects
    - Provide visual feedback within 16ms
    - _Requirements: 12.3, 12.4_

- [ ] 14. Fix scale mode buttons
  - [x] 14.1 Verify ContentScale mapping


    - Ensure "width" maps to ContentScale.FillWidth
    - Ensure "height" maps to ContentScale.FillHeight
    - Ensure "fit" maps to ContentScale.Fit
    - Ensure "fill" maps to ContentScale.Crop
    - _Requirements: 11.1, 11.2, 11.3, 11.4_
  - [x] 14.2 Fix onScaleModeChange propagation


    - Verify onScaleModeChange updates ViewModel
    - Verify ViewModel updates settingsRepository
    - Verify state flows back to UI
    - _Requirements: 11.1, 11.2, 11.3, 11.4_
  - [x] 14.3 Test each scale mode individually

    - Test Width mode scales to screen width
    - Test Height mode scales to screen height
    - Test Fit mode shows entire image
    - Test Fill mode fills screen with cropping
    - Add logging to track scale mode changes
    - _Requirements: 11.1, 11.2, 11.3, 11.4_

- [ ] 15. Fix brightness slider in Pages mode
  - [x] 15.1 Apply same touch handling in both modes

    - Ensure TopSettingsPanel slider has pointerInput
    - Verify stopPropagation works in Pages mode
    - Check if readerGestures modifier interferes
    - _Requirements: 4.1, 4.2, 4.3, 4.4_
  - [x] 15.2 Add explicit panel check in gesture handler

    - Modify readerGestures to check if panels are open
    - Ignore all gestures when panels are open
    - Only handle gestures when panels are closed
    - _Requirements: 4.3, 5.3_

- [ ] 16. Optimize UI performance
  - [x] 16.1 Move image decoding to background thread


    - Use Dispatchers.IO for all image loading
    - Decode bitmaps off main thread
    - Update UI only when bitmap ready
    - _Requirements: 15.1, 15.2, 15.3, 15.4_
  - [x] 16.2 Reduce recompositions

    - Use remember for stable values
    - Use derivedStateOf for computed values
    - Add keys to LazyColumn items
    - _Requirements: 15.2_
  - [x] 16.3 Apply hardware acceleration

    - Add Modifier.graphicsLayer to animated elements
    - Use graphicsLayer for zoom transforms
    - Enable hardware acceleration for panels
    - _Requirements: 15.4_
  - [x] 16.4 Implement frame rate monitoring

    - Track frame times during animations
    - Log performance warnings if < 30fps
    - Adapt quality based on performance
    - _Requirements: 15.2_
  - [x] 16.5 Cache bitmaps aggressively

    - Increase bitmap cache size
    - Avoid re-decoding same images
    - Implement smart eviction policy
    - _Requirements: 15.3_

- [ ] 17. Fix Webtoon mode image loading
  - [x] 17.1 Implement scroll-based preloading

    - Add LaunchedEffect monitoring scroll state
    - Calculate visible range from scroll position
    - Preload images within 2 viewport heights
    - _Requirements: 13.1, 13.2, 13.3_
  - [x] 17.2 Load first pages on mount

    - Load first 5 pages immediately when opening comic
    - Don't wait for scroll events
    - Show loading indicators for initial pages
    - _Requirements: 13.2_
  - [x] 17.3 Ensure LazyColumn triggers loading

    - Add image loading logic to LazyColumn item composition
    - Load image when item becomes visible
    - Use LazyListState to detect visibility
    - _Requirements: 13.1, 13.3_
  - [x] 17.4 Fix transparent gaps between pages

    - Set LazyColumn verticalArrangement to spacedBy(0.dp)
    - Apply background color to each page item
    - Remove padding between items
    - Ensure images fill containers completely
    - _Requirements: 13.2_

- [ ] 18. Implement separate thumbnail pipeline
  - [x] 18.1 Create thumbnail generation system

    - Generate thumbnails at 150px width
    - Maintain aspect ratio
    - Use lower quality for faster generation
    - _Requirements: 8.1, 8.2_
  - [x] 18.2 Trigger loading on panel open

    - Add LaunchedEffect(showPanel) to start loading
    - Load thumbnails in batches of 10
    - Prioritize current page ± 5 pages
    - _Requirements: 8.1, 8.2, 8.3_

  - [ ] 18.3 Implement thumbnail caching
    - Cache thumbnails separately from full images
    - Use memory cache for quick access
    - Consider disk cache for persistence
    - _Requirements: 8.4_

- [ ] 19. Fix PDF/CBR loading performance
  - [x] 19.1 Preload first pages before display

    - Load first 3 pages before showing reader
    - Show loading screen until ready
    - Provide progress indicator
    - _Requirements: 14.1, 14.2_

  - [ ] 19.2 Implement render caching
    - Cache rendered PDF pages in memory
    - Avoid re-rendering on navigation
    - Use background thread for rendering
    - _Requirements: 14.2, 14.4_
  - [x] 19.3 Add progressive rendering

    - Show low-resolution preview first
    - Render high-resolution in background
    - Swap when high-res ready
    - _Requirements: 14.2_
  - [x] 19.4 Implement render queue with priority


    - Prioritize current page
    - Queue adjacent pages
    - Cancel far pages when navigating
    - _Requirements: 14.1, 14.2, 14.3_
