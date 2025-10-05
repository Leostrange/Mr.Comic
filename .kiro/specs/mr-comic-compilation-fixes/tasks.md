# Implementation Plan

- [x] 1. Fix core-reader module dependencies and compilation errors


  - Uncomment core-reader dependency in android/core-data/build.gradle.kts
  - Verify all modules that reference core-reader have proper dependencies declared
  - Run gradle sync to ensure dependencies resolve correctly
  - _Requirements: 1.1, 1.2, 1.3, 1.4, 2.1, 2.2, 2.3, 2.4, 2.5_

- [x] 2. Verify and test CBZ file reading functionality


  - Review CbzReader implementation for any issues
  - Verify StreamingExtractor is working correctly
  - Test opening CBZ files and rendering pages
  - Verify cover extraction works for CBZ files
  - Add error handling for corrupted CBZ archives
  - _Requirements: 4.1, 4.2, 4.6_

- [x] 3. Verify and test CBR file reading functionality


  - Review CbrReader implementation for any issues
  - Verify JunRAR library integration is correct
  - Test opening CBR files and rendering pages
  - Verify cover extraction works for CBR files
  - Test natural order sorting with various filename patterns
  - Add error handling for corrupted CBR archives
  - _Requirements: 4.3, 4.4, 4.6_

- [x] 4. Fix dark theme implementation for toolbars


  - Create or verify SystemBarsTheme composable in core-ui
  - Update TopAppBar components to use MaterialTheme colors consistently
  - Ensure WindowInsetsController properly sets light/dark status bars
  - Test theme changes apply to all UI components including toolbars
  - Verify theme persistence across app restarts
  - _Requirements: 6.1, 6.2, 6.3, 6.4, 6.5, 6.6_

- [x] 5. Implement smooth scrolling in reader


  - Replace current page navigation with HorizontalPager
  - Configure pagerState with proper beyondBoundsPageCount for preloading
  - Implement smooth scroll animations
  - Add page snap behavior
  - Test scrolling performance with large comic files
  - _Requirements: 5.1_

- [x] 6. Implement double-tap zoom functionality


  - Create ZoomMode enum (FIT_WIDTH, FIT_HEIGHT, FIT_SCREEN, CUSTOM)
  - Implement detectTapGestures with onDoubleTap callback
  - Add logic to toggle between fit-width and fit-height on double-tap
  - Animate zoom transitions smoothly
  - Test double-tap behavior on various screen sizes
  - _Requirements: 5.2_

- [x] 7. Implement pinch-to-zoom functionality


  - Re-enable telephoto-zoomable library or implement custom zoom
  - Create TransformableState for scale and pan management
  - Set min/max zoom limits (0.5x to 5x)
  - Implement pan boundaries to prevent over-scrolling
  - Test pinch zoom with various gestures
  - _Requirements: 5.3, 5.4, 5.5_

- [x] 8. Improve reader toolbar UI

  - Reduce toolbar height from 64dp to 48dp
  - Apply semi-transparent background (alpha = 0.7f) to toolbars
  - Implement toolbar visibility toggle on screen tap
  - Add fade and slide animations for toolbar show/hide
  - Test toolbar behavior in reading mode
  - _Requirements: 7.1, 7.2, 7.3, 7.4_

- [x] 9. Implement side panel table of contents

  - Create ModalNavigationDrawer for table of contents
  - Display page thumbnails or page numbers in drawer
  - Implement quick navigation to any page
  - Keep comic visible in background with scrim overlay
  - Connect hamburger button to open drawer
  - _Requirements: 7.5, 7.6_

- [x] 10. Fix fullscreen splash screen


  - Update AndroidManifest.xml with fullscreen splash theme
  - Create Theme.MrComic.Splash style with windowFullscreen and windowLayoutInDisplayCutoutMode
  - Configure SplashActivity to hide system bars
  - Use WindowInsetsController to hide status and navigation bars
  - Test splash screen on devices with notches and different screen sizes
  - _Requirements: 8.1, 8.2, 8.3, 8.4_

- [x] 11. Implement local backup functionality


  - Create BackupManager interface with createBackup and restoreBackup methods
  - Implement LocalBackupProvider for file system backups
  - Create BackupData model with reading progress, bookmarks, and preferences
  - Implement GSON serialization and GZIP compression
  - Store backups in app-specific directory with timestamped filenames
  - _Requirements: 9.1, 9.2, 9.5, 9.6_

- [x] 12. Implement backup UI in settings



  - Redesign Storage section with structured layout
  - Add "Create Backup" button with progress indicator
  - Add "Restore from Backup" button with file picker
  - Display list of available backups with timestamps and sizes
  - Add delete backup functionality
  - _Requirements: 9.1_

- [x] 13. Implement Google Drive backup integration


  - Add Google Drive API dependencies
  - Implement OAuth 2.0 authentication flow
  - Create GoogleDriveBackupProvider
  - Implement upload backup to Google Drive
  - Implement download backup from Google Drive
  - Add account connection UI in settings
  - _Requirements: 9.3_

- [x] 14. Implement Microsoft OneDrive backup integration


  - Add Microsoft Graph API dependencies
  - Implement OAuth 2.0 authentication flow
  - Create OneDriveBackupProvider
  - Implement upload backup to OneDrive
  - Implement download backup from OneDrive
  - Add account connection UI in settings
  - _Requirements: 9.4_

- [x] 15. Implement automatic backup scheduling



  - Add backup frequency options (Disabled, Daily, Weekly)
  - Implement WorkManager for scheduled backups
  - Create BackupWorker to perform automatic backups
  - Add UI controls for backup scheduling in settings
  - Test automatic backup triggers correctly
  - _Requirements: 9.7_

- [x] 16. Build and test debug APK





  - Run ./gradlew clean to clear build artifacts
  - Build core modules in order (core-model, core-reader, core-domain, core-data)
  - Build feature modules (feature-reader, feature-library, etc.)
  - Build app module with ./gradlew :android:app:assembleDebug
  - Verify APK is generated in android/app/build/outputs/apk/debug/
  - Install APK on test device and verify app launches
  - _Requirements: 10.1, 10.2, 10.3_

- [x] 17. Perform comprehensive testing


  - Test CBZ file opening and page rendering
  - Test CBR file opening and page rendering
  - Test dark theme on all screens
  - Test smooth scrolling and zoom in reader
  - Test toolbar visibility toggle
  - Test table of contents navigation
  - Test splash screen fullscreen display
  - Test local backup creation and restoration
  - Test cloud backup if implemented
  - _Requirements: 10.4_

- [x] 18. Run diagnostics and fix any remaining issues


  - Run getDiagnostics on all modified files
  - Fix any compilation errors or warnings
  - Verify no critical errors remain
  - Run final build to ensure everything compiles
  - _Requirements: 10.5_

- [x] 19. Build release APK



  - Configure signing for release build
  - Run ./gradlew :android:app:assembleRelease
  - Verify release APK is generated
  - Test release APK on multiple devices
  - Document any known issues or limitations
  - _Requirements: 10.1, 10.2, 10.3, 10.4_
