# CBZ/ZIP EACCES Permission Denied Fix

## Problem Summary

Users were experiencing "Permission denied" (EACCES) errors when opening CBZ and ZIP files:
```
Ошибка открытия: Архив CBZ повреждён или не поддерживается… 
open failed: EACCES (Permission denied)
```

## Root Causes

1. **Incorrect File Permissions**: `CbzReader.kt` was calling `setReadable()` and `setWritable(false)` on temp files BEFORE writing to them, preventing the write operation from succeeding.

2. **Double Copying**: Files were being copied twice - once in `CbzReader`, then again in `StreamingExtractor`, causing unnecessary I/O and potential permission issues.

3. **Unnecessary Permission Restrictions**: The code was trying to restrict permissions on files in the app's own cache directory, which is not needed and can cause issues.

## Changes Made

### 1. CbzReader.kt (Line 81)

**Before:**
```kotlin
tempFile = File.createTempFile("cbz_", ".cbz", context.cacheDir).apply {
    setReadable(true, false)
    setWritable(false, false)  // This prevents writing!
}
```

**After:**
```kotlin
tempFile = File.createTempFile("cbz_", ".cbz", context.cacheDir)
```

**Why**: Removed the permission restrictions that were preventing writes. For files in the app's cache directory, no special permissions are needed - the app has full access by default.

### 2. StreamingExtractor.kt (Lines 72-107)

**Before:** Always copied file:// URIs to a new temp file, even if already in cache.

**After:** Detects if a file:// URI is already in the cache directory and uses it directly:

```kotlin
val tempArchiveFile = when (uri.scheme) {
    "file" -> {
        val src = File(uri.path ?: ...)
        // If file is already in cache, use it directly to avoid double copying
        if (src.absolutePath.startsWith(context.cacheDir.absolutePath)) {
            android.util.Log.d(TAG, "File already in cache, using directly: ${src.absolutePath}")
            src
        } else {
            // Copy external file to cache
            val tempFile = File.createTempFile("temp_archive_", extension, cacheDir)
            src.inputStream().use { input ->
                tempFile.outputStream().use { output ->
                    input.copyTo(output)
                }
            }
            tempFile
        }
    }
    "content" -> {
        // Copy content:// URI to temp file (unchanged)
        ...
    }
}
```

**Why**: Eliminates redundant I/O operations and potential permission issues from double-copying. When `CbzReader` passes a file:// URI from cache, `StreamingExtractor` now reuses it instead of copying again.

## Comparison with Working Code

The fix brings `CbzReader` in line with other working implementations:

- **CbrReader.kt** (line 101): `tempFile = File.createTempFile("cbr_", ".cbr", context.cacheDir)`
- **CoverExtractor.kt** (line 43): `val tempFile = File.createTempFile("comic", ".${extension}")`

Both create temp files without any permission restrictions and work correctly.

## How It Works Now

1. User selects a CBZ file via SAF (Storage Access Framework)
2. App receives a `content://` URI
3. `CbzReader` calls `contentResolver.openInputStream(uri)` - works with SAF permissions
4. `CbzReader` copies stream to temp file in cache with normal permissions
5. `CbzReader` passes temp file URI to `StreamingExtractor`
6. `StreamingExtractor` detects file is already in cache and uses it directly
7. `ZipFile` opens the temp file successfully with no permission errors

## Testing

- CBZ files now open without EACCES errors
- ZIP files now open without EACCES errors  
- Content:// URIs from SAF are properly handled
- File:// URIs continue to work
- No regression in existing functionality
- Cleanup still works properly (temp files deleted)

## Files Modified

- `android/core-reader/src/main/java/com/example/core/reader/data/CbzReader.kt`
- `android/core-reader/src/main/java/com/example/core/reader/streaming/StreamingExtractor.kt`
