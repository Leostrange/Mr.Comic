package io.leostrange.mrcomic.core.data.db

import androidx.room.*
import io.leostrange.mrcomic.core.data.db.entity.ComicEntity
import kotlinx.coroutines.flow.Flow

@Dao
interface ComicDao {

    @Query("SELECT * FROM comics ORDER BY addedDate DESC")
    fun getAllComics(): Flow<List<ComicEntity>>

    @Query("""
        SELECT * FROM comics
        WHERE LOWER(title)     LIKE '%' || LOWER(:query) || '%'
           OR LOWER(series)    LIKE '%' || LOWER(:query) || '%'
           OR LOWER(author)    LIKE '%' || LOWER(:query) || '%'
           OR LOWER(genre)     LIKE '%' || LOWER(:query) || '%'
           OR LOWER(publisher) LIKE '%' || LOWER(:query) || '%'
           OR LOWER(folderId)  LIKE '%' || LOWER(:query) || '%'
           OR LOWER(tags)      LIKE '%' || LOWER(:query) || '%'
        ORDER BY addedDate DESC
    """)
    fun searchComics(query: String): Flow<List<ComicEntity>>

    @Query("SELECT * FROM comics WHERE id = :id LIMIT 1")
    suspend fun getComicById(id: String): ComicEntity?

    @Query("SELECT * FROM comics WHERE path = :path LIMIT 1")
    suspend fun getComicByPath(path: String): ComicEntity?

    @Query("SELECT path FROM comics")
    suspend fun getAllPaths(): List<String>

    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insertComic(comic: ComicEntity)

    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insertComics(comics: List<ComicEntity>)

    @Update
    suspend fun updateComic(comic: ComicEntity)

    @Query("DELETE FROM comics WHERE id = :id")
    suspend fun deleteComic(id: String)

    @Query("""
        UPDATE comics
        SET currentPage = :currentPage,
            readingProgress = :progress,
            lastReadDate = :lastReadDate,
            pageCount = :pageCount,
            readerLocatorPosition = CASE
                WHEN :characterOffset IS NOT NULL THEN :characterOffset
                ELSE readerLocatorPosition
            END
        WHERE id = :id
    """)
    suspend fun updateProgress(id: String, currentPage: Int, progress: Float, lastReadDate: Long, pageCount: Int, characterOffset: Int?)

    @Query("UPDATE comics SET readerPositionJson = :positionJson, lastReadDate = :lastReadDate WHERE id = :id")
    suspend fun updateReaderPosition(id: String, positionJson: String?, lastReadDate: Long)

    @Query("SELECT readerPositionJson FROM comics WHERE id = :id LIMIT 1")
    suspend fun getReaderPositionJson(id: String): String?
}
