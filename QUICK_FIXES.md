# Quick Fixes for Top 5 Issues

This document provides ready-to-apply fixes for the 5 most critical issues found in the error scan.

---

## Fix #1: Add Logging to Silent Catch Block

**File:** `android/app/src/main/java/com/example/mrcomic/navigation/AppNavigation.kt`  
**Line:** 207

**Current Code:**
```kotlin
} catch (_: Exception) {}
```

**Fixed Code:**
```kotlin
} catch (e: Exception) {
    android.util.Log.w("AppNavHost", "Could not take persistable permission for folder: ${e.message}", e)
}
```

---

## Fix #2: Update Deprecated Lifecycle API

**File:** `android/core-reader/src/main/java/com/example/core/reader/utils/MemoryManager.kt`  
**Lines:** 1-20, 207-218

**Changes Needed:**

1. Update imports:
```kotlin
// Remove:
import androidx.lifecycle.LifecycleObserver
import androidx.lifecycle.OnLifecycleEvent

// Add:
import androidx.lifecycle.DefaultLifecycleObserver
import androidx.lifecycle.LifecycleOwner
```

2. Update class declaration:
```kotlin
class MemoryManager private constructor() : DefaultLifecycleObserver {
```

3. Replace annotated methods:
```kotlin
// Remove @OnLifecycleEvent annotations and replace with:
override fun onStop(owner: LifecycleOwner) {
    isAppInBackground = true
    android.util.Log.d(TAG, "App backgrounded, clearing cache")
    clearCache()
}

override fun onStart(owner: LifecycleOwner) {
    isAppInBackground = false
    android.util.Log.d(TAG, "App foregrounded")
}
```

---

## Fix #3: Remove Unsafe Bitmap Recycling

**File:** `android/feature-reader/src/main/java/com/example/feature/reader/ui/PagePreloader.kt`  
**Lines:** 82-98, 111-113

**Option A - Simple Fix (Remove recycling):**
```kotlin
private fun cleanupCache(currentPage: Int) {
    val currentCache = _preloadedPages.value
    
    if (currentCache.size > maxCacheSize) {
        val pagesToKeep = currentCache.filter { (pageIndex, _) ->
            kotlin.math.abs(pageIndex - currentPage) <= preloadRange
        }
        
        // Let GC handle bitmap cleanup - remove manual recycle calls
        _preloadedPages.value = pagesToKeep
    }
}

fun clearCache() {
    // Remove bitmap.recycle() calls - let GC handle it
    _preloadedPages.value = emptyMap()
    currentPreloadJob?.cancel()
}
```

**Option B - Better Fix (Use WeakReference):**
```kotlin
import java.lang.ref.WeakReference

class PagePreloader(
    private val scope: CoroutineScope,
    private val pageLoader: suspend (Int) -> Bitmap?
) {
    private val _preloadedPages = MutableStateFlow<Map<Int, WeakReference<Bitmap>>>(emptyMap())
    val preloadedPages: StateFlow<Map<Int, WeakReference<Bitmap>>> = _preloadedPages.asStateFlow()
    
    // ... rest of implementation with WeakReference wrapper
}
```

---

## Fix #4: Add Logging to Silent Error Handler

**File:** `android/feature-reader/src/main/java/com/example/feature/reader/ui/PagePreloader.kt`  
**Lines:** 46-48

**Current Code:**
```kotlin
} catch (e: Exception) {
    // Ignore errors during preload
}
```

**Fixed Code:**
```kotlin
} catch (e: Exception) {
    android.util.Log.w("PagePreloader", "Failed to preload page $pageIndex: ${e.message}")
}
```

---

## Fix #5: TODO for Future Work

**Issue:** Missing ViewModel properties  
**File:** `android/feature-reader/src/main/java/com/example/feature/reader/ui/ReaderScreen.kt`

This requires more extensive changes. Create a tracking issue:

**Steps:**
1. Add to SettingsRepository:
   - `imageQuality: Flow<String>`
   - `imageCacheSize: Flow<Int>`
   - `imageCompressionLevel: Flow<Int>`
   - `soundVolume: Flow<Float>`
   - `vibrationIntensity: Flow<Float>`
   - `notificationProgress: Flow<Boolean>`
   - `navigationKeyboardShortcuts: Flow<Boolean>`

2. Add to ReaderViewModel as StateFlow properties

3. Update ReaderScreen to use ViewModel properties instead of hardcoded values

4. Add settings UI for these properties in SettingsScreen

**Priority:** Can be done incrementally in future PRs

---

## Testing Recommendations

After applying fixes:

1. **Test #1:** Try adding a folder, check logs for permission errors
2. **Test #2:** Verify memory manager lifecycle callbacks work (no crashes)
3. **Test #3:** Open comic with many pages, verify no bitmap recycling crashes
4. **Test #4:** Check logs during page preload to see failures
5. **Test #5:** Verify all reader settings still work

---

## Impact Assessment

| Fix | Risk | Effort | Impact |
|-----|------|--------|--------|
| #1 - Logging | Low | 1 min | High - Better debugging |
| #2 - Lifecycle API | Low | 5 min | High - Future-proof |
| #3 - Bitmap recycling | Medium | 10 min | High - Prevent crashes |
| #4 - Preload logging | Low | 1 min | Medium - Better debugging |
| #5 - ViewModel props | Medium | 2-3 hours | Medium - Better architecture |

**Total Time for Fixes #1-4:** ~15 minutes  
**Total Time Including #5:** ~3 hours
