package com.example.core.data.repository

import com.example.core.data.database.dao.ComicDao
import com.example.core.data.database.dao.FolderDao
import com.example.core.model.Folder
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.first
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Репозиторий для работы с папками
 * Предоставляет методы для управления иерархической структурой папок
 */
@Singleton
class FolderRepository @Inject constructor(
    private val folderDao: FolderDao,
    private val comicDao: ComicDao
) {
    
    companion object {
        const val MISC_FOLDER_NAME = "Разное"
        const val MISC_FOLDER_ID = "misc_folder_id"
    }
    
    /**
     * Получить все папки включая виртуальную папку "Разное"
     */
    fun getAllFoldersWithMisc(): Flow<List<Folder>> {
        return combine(
            folderDao.getAllFolders(),
            comicDao.getSingleComics()
        ) { realFolders, singleComics ->
            val miscFolder = Folder(
                id = MISC_FOLDER_ID,
                name = MISC_FOLDER_NAME,
                path = "",
                parentId = null,
                comicCount = singleComics.size
            )
            realFolders + miscFolder
        }
    }
    
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
     * Удалить папку и переместить комиксы в Misc
     */
    suspend fun deleteFolder(folder: Folder) {
        reassignFolderComicsToMisc(folder.id)
        folderDao.delete(folder)
    }

    /**
     * Удалить папку по ID и переместить комиксы в Misc
     */
    suspend fun deleteFolderById(id: String) {
        reassignFolderComicsToMisc(id)
        folderDao.deleteById(id)
    }

    /**
     * Переместить комиксы папки в Misc при удалении папки
     */
    private suspend fun reassignFolderComicsToMisc(folderId: String) {
        val comics = comicDao.getComicsByFolder(folderId).first()
        val updatedComics = comics.map { comic ->
            comic.copy(
                folderId = null,
                displayGroup = MISC_FOLDER_NAME,
                isSingle = true
            )
        }
        if (updatedComics.isNotEmpty()) {
            comicDao.insertAll(updatedComics)
        }
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
}
