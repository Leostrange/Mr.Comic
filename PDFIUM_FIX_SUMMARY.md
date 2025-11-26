# PDF Page Loading Limit Fix

## Problem
PDF pages stopped loading after approximately page 12 due to Pdfium resource exhaustion from concurrent rendering requests.

## Root Cause
Multiple coroutines were making concurrent calls to `PdfReader.renderPage()` and `getThumbnail()`, which overwhelmed the underlying Pdfium library even though lower-level readers had Mutex protection. The data layer lacked serialization of operations.

## Solution
Added Mutex synchronization at the data layer (`core-reader/data/PdfReader.kt`) to serialize ALL PDF operations:

### Changes Made

1. **Added imports** for Mutex support:
   ```kotlin
   import kotlinx.coroutines.sync.Mutex
   import kotlinx.coroutines.sync.withLock
   ```

2. **Added private Mutex** to PdfReader class:
   ```kotlin
   private val pdfMutex = Mutex()
   ```

3. **Wrapped `renderPage()` method** with Mutex:
   - All rendering operations now execute within `pdfMutex.withLock { ... }`
   - Ensures only ONE rendering operation can execute at a time
   - Prevents Pdfium resource exhaustion

4. **Wrapped `getThumbnail()` method** with Mutex:
   - Thumbnail generation also serialized within `pdfMutex.withLock { ... }`
   - Prevents concurrent thumbnail loads from overwhelming Pdfium

## Multi-Layer Protection
This fix complements existing protections:

- **Data Layer** (PdfReader.kt): Mutex for all API calls ✅ NEW
- **OptimizedPdfiumReader.kt**: Mutex for renderPageBitmap() ✅
- **PdfiumReader.kt**: Mutex for Pdfium operations ✅
- **PagePreloader.kt**: MAX_CONCURRENT_PRELOADS_PDF = 1 ✅

## Expected Result
- Can scroll to page 50+ without blank pages
- No "PdfiumCore already closed" errors in logcat
- Proper serialization prevents resource exhaustion
- Stable PDF rendering for large documents

## Testing Recommendations
1. Open a PDF with 50+ pages
2. Scroll rapidly through pages
3. Jump to page 50+
4. Verify all pages render correctly
5. Check logcat for absence of Pdfium errors
