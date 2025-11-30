# Database Setup Documentation

## Overview
This document describes the database setup for Mr.Comic application, implementing Task 1 from the implementation plan.

## Implemented Components

### 1. Room Entities (core-model module)

#### Comic Entity
- **Location**: `android/core-model/src/main/java/com/example/core/model/Comic.kt`
- **Table**: `comics`
- **Indices**: title, addedDate, lastReadDate, folderId
- **Fields**:
  - id (PrimaryKey)
  - title, path, format, coverPath
  - pageCount, fileSize
  - addedDate, lastModified, lastReadDate
  - folderId (for folder organization)
  - readingProgress, isBookmarked
  - Metadata: tags, series, volume, issue, year, publisher, author, artist, genre, language

#### Folder Entity
- **Location**: `android/core-model/src/main/java/com/example/core/model/Folder.kt`
- **Table**: `folders`
- **Indices**: name, parentId
- **Fields**:
  - id (PrimaryKey)
  - name, path
  - parentId (for hierarchical structure)
  - comicCount

#### Bookmark Entity
- **Location**: `android/core-model/src/main/java/com/example/core/model/Bookmark.kt`
- **Table**: `bookmarks`
- **Indices**: comicId, createdAt
- **Foreign Key**: comicId → comics.id (CASCADE on delete)
- **Fields**:
  - id (PrimaryKey)
  - comicId, pageIndex
  - note (optional)
  - createdAt

#### ReadingSession Entity
- **Location**: `android/core-model/src/main/java/com/example/core/model/ReadingSession.kt`
- **Table**: `reading_sessions`
- **Indices**: lastReadAt
- **Foreign Key**: comicId → comics.id (CASCADE on delete)
- **Fields**:
  - comicId (PrimaryKey)
  - currentPage, totalPages
  - lastReadAt
  - readingSettings (JSON serialized)

#### Type Converters
- **Location**: `android/core-model/src/main/java/com/example/core/model/Converters.kt`
- Converts ComicFormat enum to/from String for Room storage

### 2. DAO Interfaces (core-data module)

#### ComicDao
- **Location**: `android/core-data/src/main/java/com/example/core/data/database/dao/ComicDao.kt`
- **Operations**:
  - getAllComics(): Flow<List<Comic>>
  - getComicsByFolder(folderId): Flow<List<Comic>>
  - searchComics(query): Flow<List<Comic>>
  - getById(id), getByPath(path)
  - insert, insertAll, update, delete
  - getComicsByFormat(format)
  - getRecentlyRead(limit)

#### FolderDao
- **Location**: `android/core-data/src/main/java/com/example/core/data/database/dao/FolderDao.kt`
- **Operations**:
  - getAllFolders(): Flow<List<Folder>>
  - getFoldersByParent(parentId): Flow<List<Folder>>
  - getById(id), getByPath(path)
  - insert, insertAll, update, delete
  - updateComicCount(folderId, count)

#### BookmarkDao
- **Location**: `android/core-data/src/main/java/com/example/core/data/database/dao/BookmarkDao.kt`
- **Operations**:
  - getAllBookmarks(): Flow<List<Bookmark>>
  - getBookmarksByComic(comicId): Flow<List<Bookmark>>
  - getById(id), getByComicAndPage(comicId, pageIndex)
  - insert, insertAll, update, delete
  - deleteByComic(comicId)
  - getCountByComic(comicId)

#### ReadingSessionDao
- **Location**: `android/core-data/src/main/java/com/example/core/data/database/dao/ReadingSessionDao.kt`
- **Operations**:
  - getAllSessions(): Flow<List<ReadingSession>>
  - getByComicId(comicId), observeByComicId(comicId)
  - getRecentSessions(limit)
  - insert, insertAll, update, delete
  - updateProgress(comicId, currentPage, timestamp)
  - deleteOlderThan(timestamp)

### 3. ComicDatabase

- **Location**: `android/core-data/src/main/java/com/example/core/data/database/ComicDatabase.kt`
- **Version**: 1
- **Export Schema**: true (schemas exported to `android/core-data/schemas/`)
- **Entities**: Comic, Folder, Bookmark, ReadingSession
- **Type Converters**: Converters class
- **DAOs**: comicDao(), folderDao(), bookmarkDao(), readingSessionDao()
- **Migrations**: Placeholder for future migrations (MIGRATION_1_2)

### 4. DataStore Preferences Schema

#### PreferencesKeys
- **Location**: `android/core-data/src/main/java/com/example/core/data/preferences/PreferencesKeys.kt`
- **Categories**:
  - **Theme Settings**: mode, colors, overlay alpha, blur, icons, fonts
  - **Library Settings**: view mode, sort order, grid columns
  - **Reading Settings**: orientation, mode, transitions, gestures, brightness
  - **Scan Settings**: format inclusion modes, auto-refresh
  - **OCR Settings**: enabled, language, engine, cache
  - **Translation Settings**: provider, languages, auto-translate, cache
  - **Translation Overlay**: colors, alpha, font settings
  - **Sync Settings**: provider, data types, interval, conflict resolution
  - **App Settings**: language, first launch, onboarding, version

#### UserPreferences
- **Location**: `android/core-data/src/main/java/com/example/core/data/preferences/UserPreferences.kt`
- **Features**:
  - Type-safe get/set operations
  - Flow-based reactive access
  - Error handling for IO exceptions
  - Clear and remove operations
  - Extension property for Context.dataStore

### 5. Dependency Injection

#### DatabaseModule
- **Location**: `android/core-data/src/main/java/com/example/core/data/di/DatabaseModule.kt`
- **Provides**:
  - ComicDatabase (Singleton)
  - All DAO instances (ComicDao, FolderDao, BookmarkDao, ReadingSessionDao)
  - DataStore<Preferences> (Singleton)
  - UserPreferences (Singleton)
- **Configuration**:
  - Database name: "mr_comic_database"
  - Fallback to destructive migration (for initial development)

## Build Configuration Updates

### core-model/build.gradle.kts
- Changed from kapt to KSP for Room annotation processing
- Added Room dependencies:
  - androidx.room:room-runtime:2.7.2
  - androidx.room:room-ktx:2.7.2
  - Room compiler via KSP

### core-data/build.gradle.kts
- Already configured with Room and DataStore dependencies
- Uses KSP for annotation processing

## Requirements Satisfied

✅ **Requirement 1.1**: Database models for Comic management  
✅ **Requirement 1.2**: Support for adding/removing comics  
✅ **Requirement 12.4**: State persistence with DataStore  

## Database Schema

```
comics
├── id (PK)
├── title (indexed)
├── path
├── format
├── coverPath
├── pageCount
├── fileSize
├── addedDate (indexed)
├── lastModified
├── folderId (indexed, FK to folders)
├── lastReadDate (indexed)
├── readingProgress
├── isBookmarked
└── metadata fields...

folders
├── id (PK)
├── name (indexed)
├── path
├── parentId (indexed)
└── comicCount

bookmarks
├── id (PK)
├── comicId (indexed, FK to comics, CASCADE)
├── pageIndex
├── note
└── createdAt (indexed)

reading_sessions
├── comicId (PK, FK to comics, CASCADE)
├── currentPage
├── totalPages
├── lastReadAt (indexed)
└── readingSettings (JSON)
```

## Usage Examples

### Accessing DAOs
```kotlin
@Inject
lateinit var comicDao: ComicDao

// Get all comics
comicDao.getAllComics().collect { comics ->
    // Handle comics list
}

// Search comics
comicDao.searchComics("batman").collect { results ->
    // Handle search results
}
```

### Using DataStore
```kotlin
@Inject
lateinit var userPreferences: UserPreferences

// Read preference
userPreferences.get(PreferencesKeys.THEME_MODE, "SYSTEM").collect { themeMode ->
    // Handle theme mode
}

// Write preference
userPreferences.set(PreferencesKeys.READING_MANGA_MODE, true)
```

## Next Steps

The database foundation is now ready for:
1. Repository implementations (Task 2)
2. File parsers integration (Task 3)
3. Library scanning and indexing (Task 4)
4. Cover caching system (Task 5)

## Notes

- Schema export is enabled for version control and migration tracking
- Foreign keys with CASCADE delete ensure data consistency
- All DAOs use Flow for reactive data access
- DataStore provides type-safe preference access
- Indices are strategically placed on frequently queried fields
