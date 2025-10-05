# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

**Mr.Comic** is a customizable Android comic reader application built with modern architecture patterns. It supports CBZ, CBR, and PDF comic formats with extensive customization options and offline OCR/translation capabilities.

## Essential Development Commands

### Build Commands
```bash
# Build debug APK
./gradlew :android:app:assembleDebug

# Build release APK  
./gradlew :android:app:assembleRelease

# Build both variants
./gradlew assembleDebug assembleRelease

# Clean build
./gradlew clean

# Full clean and build
./gradlew clean :android:app:assembleDebug
```

### Testing Commands
```bash
# Run all unit tests
./gradlew test

# Run tests for specific module
./gradlew :android:core-data:test

# Run tests with continuous execution (don't stop on first failure)
./gradlew test --continue

# Run tests with build cache for performance
./gradlew test --build-cache
```

### Code Quality & Analysis
```bash
# Run Android lint
./gradlew lint

# Run Detekt static analysis
./gradlew detekt

# Generate lint reports
./gradlew lintDebug lintRelease

# Detekt with auto-correct (use carefully)
./gradlew detekt --auto-correct
```

### Project Structure Commands
```bash
# Show project module structure
./gradlew checkStructure

# List all available modules
./gradlew modules

# Dependency analysis
./gradlew dependencyUpdates
```

### Development & Debugging
```bash
# Install debug APK directly to connected device
./gradlew :android:app:installDebug

# Run app with detailed logging (use Android Studio or adb logcat)
adb logcat | grep "MrComic\|LibraryScreen\|ReaderViewModel\|BookReaderFactory"
```

## Architecture Overview

### Modular Clean Architecture
The project follows a feature-based modular architecture with clear separation of concerns:

**Core Modules:**
- `core-data` - Data layer with repositories, database (Room), and data sources
- `core-domain` - Business logic and use cases
- `core-model` - Domain models and data classes  
- `core-reader` - Comic reading engine (CBZ/CBR/PDF support)
- `core-ui` - Shared UI components and themes
- `core-analytics` - Analytics and crash reporting

**Feature Modules:**
- `feature-library` - Comic library management and scanning
- `feature-reader` - Comic reading interface and controls
- `feature-settings` - App configuration and preferences
- `feature-themes` - Theme system and customization
- `feature-onboarding` - First-run experience
- `feature-ocr` - OCR text extraction capabilities
- `feature-translate` - Translation functionality

### Key Architectural Components

#### Comic Reading Flow
1. **LibraryScreen** → Displays comics, handles storage permissions
2. **Navigation** → Passes comic URI to ReaderScreen via SavedStateHandle
3. **ReaderViewModel** → Opens comic via BookReaderFactory
4. **BookReader** → Format-specific readers (CbzReader, CbrReader, PdfReader)

#### Data Flow Pattern
- **Repository Pattern** - `ComicRepository` manages comic data and metadata
- **ViewModel + Compose** - State management with Jetpack Compose UI
- **Hilt DI** - Dependency injection across modules
- **Room Database** - Local storage for comics metadata and progress

#### Reader Engine Architecture
- **BookReaderFactory** - Detects format and creates appropriate reader
- **Format-specific readers** - Handle ZIP (CBZ), RAR (CBR), and PDF extraction
- **Memory optimization** - Efficient bitmap handling to prevent OOM crashes
- **Background processing** - File scanning and image extraction off main thread

## Development Guidelines

### Code Generation & AI Rules

#### Clean Architecture Adherence
- Always generate code starting from domain layer
- Then implement data layer interfaces and repositories
- Finally implement presentation layer (ViewModels, UI)
- Use dependency injection with Hilt throughout

#### Testing Standards
- Use MockK for mocking in unit tests
- Use assertk for assertions
- Use runBlockingTest for coroutine testing
- All auto-generated tests require manual review before commit

#### Security & Privacy
- Never expose API keys or secrets in generated code
- All AI requests limited to public project files
- Exclude build/, .gradle/, and sensitive config files

### Module Dependencies
```
android:app
├── android:feature-* (all feature modules)
├── android:core-* (all core modules)
└── android:shared

feature modules depend on:
├── core-ui (shared components)
├── core-model (data models)
├── core-domain (business logic)
└── core-data (repositories)
```

### Key Entry Points
- `ComicApplication.kt` - Application class with Hilt setup
- `MainActivity.kt` - Main activity with theme support and deep link handling
- `LibraryScreen.kt` - Comic library interface
- `ReaderScreen.kt` - Comic reading interface
- `BookReaderFactory.kt` - Format detection and reader instantiation

## Testing Strategy

### Test File Locations
Place test comics in device Downloads folder:
- `test.cbz` (ZIP with images)
- `test.cbr` (RAR with images) 
- `test.pdf` (PDF file)

### Debug Logging
Comics opening flow includes extensive logging:
```
LibraryScreen: Storage permission granted, scanning for comics...
ComicRepository: Found X comic files
BookReaderFactory: Creating reader for URI...
ReaderViewModel: Book opened successfully. Page count: X
```

### CI/CD Integration
- GitHub Actions pipeline builds APK on Android SDK 34
- Automated testing with `./gradlew test --continue`
- Lint analysis with `./gradlew lint --continue`
- Artifacts retention: Debug APK (7 days), Release APK (30 days)

## Performance Considerations

- **Memory Management** - Comics auto-cached, efficient bitmap handling
- **File Processing** - Background scanning with progress tracking
- **Build Performance** - Use `--build-cache` flag for faster builds
- **Module Compilation** - Parallel builds enabled in gradle.properties

## Troubleshooting Common Issues

### Build Issues
- Ensure Android SDK API 34 installed
- Run `./gradlew clean` before build if issues persist
- Check `gradle/libs.versions.toml` for dependency versions

### Comics Not Opening
- Verify storage permissions granted
- Check supported formats (CBZ/CBR/PDF only)
- Verify files are not corrupted
- Check logs for reader creation errors

### Development Environment
- **Android Studio** - Hedgehog | 2023.1.1 or newer
- **JDK** - Version 17 (Temurin distribution)
- **Android SDK** - API 34
- **Gradle** - 8.13
- **Kotlin** - 1.9.25

## File Structure Notes

### Key Directories
- `android/` - Main Android application modules
- `dictionaries/` - Translation and OCR language files
- `docs/` - Technical documentation and guides
- `gradle/` - Gradle version catalog and wrapper
- `.cursor/rules/` - AI development rules and guidelines

### Exclusions for AI Tools
- Exclude: `build/`, `.gradle/`, `android-sdk/`, `*.apk`, `*.jar`
- Include: All Kotlin source files, build scripts, documentation