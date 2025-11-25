package com.example.core.data.scanner

import android.content.Context
import android.net.Uri
import android.provider.DocumentsContract
import android.provider.OpenableColumns
import androidx.documentfile.provider.DocumentFile
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.flow.flowOn
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class DocumentTreeScanner @Inject constructor(
    @ApplicationContext private val context: Context
) {
    
    companion object {
        private const val TAG = "DocumentTreeScanner"
        private val COMIC_EXTENSIONS = setOf("cbz", "cbr", "pdf", "zip", "rar")
    }
    
    fun scanDocumentTree(
        treeUri: Uri,
        settings: ScanSettings = ScanSettings()
    ): Flow<ScanProgress> = flow {
        try {
            emit(ScanProgress(status = ScanStatus.PREPARING))
            
            val documentFile = DocumentFile.fromTreeUri(context, treeUri)
            if (documentFile == null || !documentFile.isDirectory) {
                emit(
                    ScanProgress(
                        status = ScanStatus.FAILED,
                        error = "Invalid tree URI or not a directory"
                    )
                )
                return@flow
            }
            
            val allFiles = mutableListOf<DocumentFile>()
            collectDocumentFiles(documentFile, allFiles, settings.scanSubfolders)
            
            val totalFiles = allFiles.size
            var processedFiles = 0
            var foundComics = 0
            
            emit(
                ScanProgress(
                    status = ScanStatus.SCANNING,
                    totalFiles = totalFiles
                )
            )
            
            for (file in allFiles) {
                processedFiles++
                
                if (isComicFile(file, settings)) {
                    foundComics++
                }
                
                if (processedFiles % 10 == 0 || processedFiles == totalFiles) {
                    emit(
                        ScanProgress(
                            currentFile = file.name ?: "Unknown",
                            processedFiles = processedFiles,
                            totalFiles = totalFiles,
                            foundComics = foundComics,
                            status = ScanStatus.SCANNING
                        )
                    )
                }
            }
            
            emit(
                ScanProgress(
                    processedFiles = processedFiles,
                    totalFiles = totalFiles,
                    foundComics = foundComics,
                    status = ScanStatus.COMPLETED
                )
            )
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error scanning document tree", e)
            emit(
                ScanProgress(
                    status = ScanStatus.FAILED,
                    error = e.message ?: "Unknown error"
                )
            )
        }
    }.flowOn(Dispatchers.IO)
    
    suspend fun findComicFiles(
        treeUri: Uri,
        settings: ScanSettings = ScanSettings()
    ): List<Comic> = withContext(Dispatchers.IO) {
        try {
            val documentFile = DocumentFile.fromTreeUri(context, treeUri)
            if (documentFile == null || !documentFile.isDirectory) {
                return@withContext emptyList()
            }
            
            val allFiles = mutableListOf<DocumentFile>()
            collectDocumentFiles(documentFile, allFiles, settings.scanSubfolders)
            
            val comics = mutableListOf<Comic>()
            for (file in allFiles) {
                if (isComicFile(file, settings)) {
                    val comic = createComicFromDocumentFile(file)
                    if (comic != null) {
                        comics.add(comic)
                    }
                }
            }
            
            comics
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error finding comic files", e)
            emptyList()
        }
    }
    
    private fun collectDocumentFiles(
        directory: DocumentFile,
        result: MutableList<DocumentFile>,
        recursive: Boolean
    ) {
        try {
            val files = directory.listFiles()
            for (file in files) {
                when {
                    file.isFile -> result.add(file)
                    file.isDirectory && recursive -> collectDocumentFiles(file, result, recursive)
                }
            }
        } catch (e: SecurityException) {
            android.util.Log.w(TAG, "Access denied to directory: ${directory.uri}")
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error collecting files from: ${directory.uri}", e)
        }
    }
    
    private fun isComicFile(file: DocumentFile, settings: ScanSettings): Boolean {
        if (!file.isFile) return false
        
        val name = file.name ?: return false
        val extension = name.substringAfterLast('.', "").lowercase()
        
        return when (extension) {
            "cbz", "zip" -> settings.cbzMode != ScanMode.NEVER
            "cbr", "rar" -> settings.cbrMode != ScanMode.NEVER
            "pdf" -> settings.pdfMode != ScanMode.NEVER
            else -> false
        }
    }
    
    private fun createComicFromDocumentFile(file: DocumentFile): Comic? {
        try {
            val uri = file.uri
            val name = file.name ?: return null
            val size = file.length()
            val extension = name.substringAfterLast('.', "").lowercase()
            
            val format = when (extension) {
                "cbz", "zip" -> ComicFormat.CBZ
                "cbr", "rar" -> ComicFormat.CBR
                "pdf" -> ComicFormat.PDF
                else -> ComicFormat.UNKNOWN
            }
            
            if (format == ComicFormat.UNKNOWN) return null
            
            return Comic(
                id = java.util.UUID.randomUUID().toString(),
                title = name.substringBeforeLast('.'),
                path = uri.toString(),
                format = format,
                pageCount = 0,
                fileSize = size,
                addedDate = System.currentTimeMillis(),
                lastReadDate = null,
                readingProgress = 0f,
                isBookmarked = false,
                coverPath = null,
                folderId = null
            )
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error creating comic from document file", e)
            return null
        }
    }
    
    fun getDisplayName(treeUri: Uri): String? {
        try {
            context.contentResolver.query(
                treeUri,
                arrayOf(OpenableColumns.DISPLAY_NAME),
                null,
                null,
                null
            )?.use { cursor ->
                if (cursor.moveToFirst()) {
                    val nameIndex = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    if (nameIndex != -1) {
                        return cursor.getString(nameIndex)
                    }
                }
            }
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Error getting display name", e)
        }
        return null
    }
    
    fun determineStorageType(treeUri: Uri): com.example.core.model.StorageType {
        val uriString = treeUri.toString()
        return when {
            uriString.contains("primary") -> com.example.core.model.StorageType.INTERNAL
            uriString.contains("removable") || uriString.contains("sdcard") -> com.example.core.model.StorageType.REMOVABLE
            else -> com.example.core.model.StorageType.EXTERNAL
        }
    }
}
