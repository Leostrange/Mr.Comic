package com.example.core.data.repository

import android.content.Context
import android.net.Uri
import com.example.core.data.database.dao.FolderDao
import com.example.core.model.Folder
import com.example.core.model.StorageType
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Репозиторий для работы с папками
 * Предоставляет методы для управления иерархической структурой папок
 */
@Singleton
class FolderRepository @Inject constructor(
    private val folderDao: FolderDao,
    @ApplicationContext private val context: Context
) {
    
    /**
     * Получить все папки
     */
    fun getAllFolders(): Flow<List<Folder>> {
        return folderDao.getAllFolders()
    }
    
    /**
     * Получить дочерние папки
     */
    fun getFoldersByParent(parentId: String?): Flow<List<Folder>> {
        return folderDao.getFoldersByParent(parentId)
    }
    
    /**
     * Получить корневые папки (без родителя)
     */
    fun getRootFolders(): Flow<List<Folder>> {
        return folderDao.getFoldersByParent(null)
    }
    
    /**
     * Получить папку по ID
     */
    suspend fun getFolderById(id: String): Folder? {
        return folderDao.getById(id)
    }
    
    /**
     * Получить папку по пути
     */
    suspend fun getFolderByPath(path: String): Folder? {
        return folderDao.getByPath(path)
    }
    
    /**
     * Добавить папку
     */
    suspend fun addFolder(folder: Folder) {
        folderDao.insert(folder)
    }
    
    /**
     * Добавить несколько папок
     */
    suspend fun addFolders(folders: List<Folder>) {
        folderDao.insertAll(folders)
    }
    
    /**
     * Обновить папку
     */
    suspend fun updateFolder(folder: Folder) {
        folderDao.update(folder)
    }
    
    /**
     * Удалить папку
     */
    suspend fun deleteFolder(folder: Folder) {
        folderDao.delete(folder)
    }
    
    /**
     * Удалить папку по ID
     */
    suspend fun deleteFolderById(id: String) {
        folderDao.deleteById(id)
    }
    
    /**
     * Обновить количество комиксов в папке
     */
    suspend fun updateComicCount(folderId: String, count: Int) {
        folderDao.updateComicCount(folderId, count)
    }
    
    /**
     * Создать или обновить папку
     * Если папка с таким путем существует, обновляет её, иначе создает новую
     */
    suspend fun createOrUpdateFolder(path: String, name: String, parentId: String? = null): Folder {
        val existingFolder = folderDao.getByPath(path)
        
        return if (existingFolder != null) {
            val updatedFolder = existingFolder.copy(
                name = name,
                parentId = parentId
            )
            folderDao.update(updatedFolder)
            updatedFolder
        } else {
            val newFolder = Folder(
                name = name,
                path = path,
                parentId = parentId,
                comicCount = 0
            )
            folderDao.insert(newFolder)
            newFolder
        }
    }
    
    /**
     * Получить путь к папке с учетом иерархии
     */
    suspend fun getFolderHierarchy(folderId: String): List<Folder> {
        val hierarchy = mutableListOf<Folder>()
        var currentFolder = folderDao.getById(folderId)
        
        while (currentFolder != null) {
            hierarchy.add(0, currentFolder)
            currentFolder = currentFolder.parentId?.let { folderDao.getById(it) }
        }
        
        return hierarchy
    }
    
    suspend fun saveFolderFromTreeUri(
        treeUri: Uri,
        displayName: String,
        storageType: StorageType
    ): Folder {
        val existingFolder = folderDao.getByTreeUri(treeUri.toString())
        
        return if (existingFolder != null) {
            val updatedFolder = existingFolder.copy(
                displayName = displayName,
                storageType = storageType
            )
            folderDao.update(updatedFolder)
            updatedFolder
        } else {
            val newFolder = Folder(
                name = displayName,
                path = treeUri.toString(),
                treeUri = treeUri.toString(),
                displayName = displayName,
                storageType = storageType,
                comicCount = 0
            )
            folderDao.insert(newFolder)
            newFolder
        }
    }
    
    suspend fun checkFolderPermissions(): Map<Folder, Boolean> {
        val folders = folderDao.getAllFoldersSync()
        val persistedUris = context.contentResolver.persistedUriPermissions.map { it.uri.toString() }.toSet()
        
        return folders.filter { it.treeUri != null }.associateWith { folder ->
            folder.treeUri in persistedUris
        }
    }
    
    suspend fun getFoldersNeedingPermission(): List<Folder> {
        val folders = folderDao.getAllFoldersSync()
        val persistedUris = context.contentResolver.persistedUriPermissions.map { it.uri.toString() }.toSet()
        
        return folders.filter { folder ->
            folder.treeUri != null && folder.treeUri !in persistedUris
        }
    }
    
    suspend fun getFolderByTreeUri(treeUri: String): Folder? {
        return folderDao.getByTreeUri(treeUri)
    }
}
