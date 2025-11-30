package com.example.core.data.database.dao

import androidx.room.*
import com.example.core.model.Folder
import kotlinx.coroutines.flow.Flow

/**
 * DAO для работы с папками
 */
@Dao
interface FolderDao {
    
    @Query("SELECT * FROM folders ORDER BY name ASC")
    fun getAllFolders(): Flow<List<Folder>>
    
    @Query("SELECT * FROM folders WHERE parentId = :parentId ORDER BY name ASC")
    fun getFoldersByParent(parentId: String?): Flow<List<Folder>>
    
    @Query("SELECT * FROM folders WHERE id = :id")
    suspend fun getById(id: String): Folder?
    
    @Query("SELECT * FROM folders WHERE path = :path")
    suspend fun getByPath(path: String): Folder?
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(folder: Folder)
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertAll(folders: List<Folder>)
    
    @Update
    suspend fun update(folder: Folder)
    
    @Delete
    suspend fun delete(folder: Folder)
    
    @Query("DELETE FROM folders WHERE id = :id")
    suspend fun deleteById(id: String)
    
    @Query("UPDATE folders SET comicCount = :count WHERE id = :folderId")
    suspend fun updateComicCount(folderId: String, count: Int)
}
