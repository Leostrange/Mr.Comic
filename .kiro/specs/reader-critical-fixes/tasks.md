# Implementation Plan

- [x] 1. Fix brightness slider dragging and padding








  - Add explicit `pointerInput` modifier to Slider to prevent gesture conflicts
  - Increase horizontal padding from 8dp to 24dp for better edge clearance
  - Ensure slider has minimum 48dp touch target size
  - Test dragging in both portrait and landscape orientations
  - _Requirements: 1.1, 1.2, 1.3, 1.4, 1.5, 9.1, 9.2, 9.3, 9.5_

- [x] 2. Implement correct scale mode mapping




  - Create `getContentScale()` function that maps scale mode strings to ContentScale enums
  - Implement FIT_WIDTH mode using ContentScale.FillWidth
  - Implement FIT_HEIGHT mode using ContentScale.FillHeight
  - Implement FIT_SCREEN mode using ContentScale.Fit
  - Implement ORIGINAL_SIZE mode using ContentScale.None
  - Implement SMART_FIT mode with aspect ratio comparison logic
  - Update ReaderScreen to use new scale mode mapping
  - Force recomposition when scale mode changes
  - _Requirements: 2.1, 2.2, 2.3, 2.4, 2.5, 2.6_

- [x] 3. Fix reset zoom functionality




  - Implement `resetZoom()` function in ReaderViewModel
  - Reset currentZoomScale to 1.0f
  - Reset offsetX and offsetY to 0f
  - Reset zoomCenter to Offset.Zero
  - Reapply current scale mode after reset
  - Update UI state to trigger recomposition
  - Verify Reset Zoom button calls the function correctly
  - _Requirements: 3.1, 3.2, 3.3, 3.4_


- [x] 4. Implement webtoon auto-loading



  - Add `onLoadPage: (Int) -> Unit` parameter to WebtoonReader composable
  - Implement LaunchedEffect with snapshotFlow to monitor visible items
  - Load pages that are visible but not yet loaded
  - Preload 2 pages ahead and behind visible range
  - Add distinctUntilChanged to prevent redundant loads
  - Handle rapid scrolling without overwhelming system
  - Update ReaderScreen to pass onLoadPage callback
  - Test auto-loading during scrolling
  - _Requirements: 4.1, 4.2, 4.3, 4.4, 4.5_

- [x] 5. Implement thumbnail pre-caching


  - Enhance ThumbnailLoader with priority queue for background loading
  - Start thumbnail generation on book open
  - Prioritize thumbnails near current reading position
  - Implement background coroutine for thumbnail generation
  - Add throttling (50ms delay) to avoid overwhelming system
  - Cache thumbnails at 150x200dp maximum dimension
  - Store thumbnails in BitmapCache
  - Update ThumbnailPanel to display cached thumbnails immediately
  - _Requirements: 5.1, 5.2, 5.3, 5.4, 5.5_


- [x] 6. Enhance image quality rendering



  - Update renderPage() to use FilterQuality.High
  - Implement calculateInSampleSize() for optimal bitmap decoding
  - Adjust sample size based on zoom level (higher resolution when zoomed)
  - Use Bitmap.Config.ARGB_8888 for better color quality
  - Set inScaled = false to prevent automatic scaling
  - Test image sharpness at various zoom levels
  - Monitor memory usage during high-quality rendering
  - _Requirements: 6.1, 6.2, 6.3, 6.4, 6.5_

- [x] 7. Implement reading progress persistence


  - Add debounced save logic in loadPage() function
  - Implement 2-second delay before saving progress
  - Cancel previous save job when new page is loaded
  - Save progress in onCleared() when ViewModel is destroyed
  - Restore last saved page on book open
  - Update SaveReadingProgressUseCase to include timestamp
  - Test progress persistence across app restarts
  - _Requirements: 7.1, 7.2, 7.3, 7.4, 7.5_


- [x] 8. Implement bookmark functionality


  - Create Bookmark data model with comicId, pageIndex, timestamp
  - Implement bookmarkCurrentPage() function in ReaderViewModel
  - Add toggle logic (add if not bookmarked, remove if bookmarked)
  - Show toast notification on bookmark add/remove
  - Update UI state with bookmarked pages set
  - Add visual indicator for bookmarked pages in ThumbnailPanel
  - Implement bookmark list view (optional)
  - Test bookmark persistence across sessions
  - _Requirements: 8.1, 8.2, 8.3, 8.4, 8.5_

- [x] 9. Add scrim layer gesture prevention


  - Ensure scrim layer prevents tap-through to page navigation zones
  - Set scrim z-index below panels but above content
  - Add pointerInput to scrim to consume all gestures
  - Test that brightness slider works when top panel is open
  - Verify page navigation zones are blocked when panels open
  - _Requirements: 1.5, 9.4_


- [x] 10. Integration and testing

  - Test all fixes in both portrait and landscape orientations
  - Verify brightness slider works smoothly in all scenarios
  - Test all 5 scale modes with various image aspect ratios
  - Verify reset zoom works correctly
  - Test webtoon auto-loading with rapid scrolling
  - Verify thumbnails load instantly in thumbnail panel
  - Test image quality at various zoom levels
  - Verify reading progress persists correctly
  - Test bookmark add/remove functionality
  - Monitor memory usage and performance
  - _Requirements: All_
