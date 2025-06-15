package com.example.mrcomic.theme.data.db

import androidx.room.*
import com.example.mrcomic.theme.data.model.Comment
import kotlinx.coroutines.flow.Flow

/**
 * Data Access Object для работы с комментариями в локальной базе данных
 */
@Dao
interface CommentDao {
    @Query("SELECT * FROM comments WHERE themeId = :themeId AND parentId IS NULL ORDER BY createdAt DESC")
    fun getCommentsByTheme(themeId: String): Flow<List<Comment>>
    
    @Query("SELECT * FROM comments WHERE parentId = :parentId ORDER BY createdAt ASC")
    fun getRepliesByParentId(parentId: String): Flow<List<Comment>>
    
    @Query("SELECT * FROM comments WHERE userId = :userId ORDER BY createdAt DESC")
    fun getCommentsByUser(userId: String): Flow<List<Comment>>
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertComment(comment: Comment)
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertComments(comments: List<Comment>)
    
    @Update
    suspend fun updateComment(comment: Comment)
    
    @Delete
    suspend fun deleteComment(comment: Comment)
    
    @Query("DELETE FROM comments WHERE themeId = :themeId")
    suspend fun deleteCommentsByTheme(themeId: String)
    
    @Query("DELETE FROM comments WHERE userId = :userId")
    suspend fun deleteCommentsByUser(userId: String)
    
    @Query("DELETE FROM comments")
    suspend fun deleteAllComments()
}
