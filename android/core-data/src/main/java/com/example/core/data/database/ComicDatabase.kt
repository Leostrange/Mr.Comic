package com.example.core.data.database

import androidx.room.Database
import androidx.room.RoomDatabase
import androidx.room.TypeConverters
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase
import com.example.core.data.database.dao.BookmarkDao
import com.example.core.data.database.dao.ComicDao
import com.example.core.data.database.dao.FolderDao
import com.example.core.data.database.dao.ReadingSessionDao
import com.example.core.model.Bookmark
import com.example.core.model.Comic
import com.example.core.model.Converters
import com.example.core.model.Folder
import com.example.core.model.ReadingSession

/**
 * Главная база данных приложения Mr.Comic
 */
@Database(
    entities = [
        Comic::class,
        Folder::class,
        Bookmark::class,
        ReadingSession::class
    ],
    version = 2,
    exportSchema = true
)
@TypeConverters(Converters::class)
abstract class ComicDatabase : RoomDatabase() {
    
    abstract fun comicDao(): ComicDao
    abstract fun folderDao(): FolderDao
    abstract fun bookmarkDao(): BookmarkDao
    abstract fun readingSessionDao(): ReadingSessionDao
    
    companion object {
        const val DATABASE_NAME = "mr_comic_database"
        
        val MIGRATION_1_2 = object : Migration(1, 2) {
            override fun migrate(db: SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE comics ADD COLUMN displayGroup TEXT DEFAULT NULL")
                db.execSQL("ALTER TABLE comics ADD COLUMN isSingle INTEGER NOT NULL DEFAULT 0")
                db.execSQL("CREATE INDEX IF NOT EXISTS index_comics_displayGroup ON comics(displayGroup)")
                db.execSQL("CREATE INDEX IF NOT EXISTS index_comics_isSingle ON comics(isSingle)")
            }
        }
    }
}
