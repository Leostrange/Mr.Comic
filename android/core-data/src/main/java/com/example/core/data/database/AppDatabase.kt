package com.example.core.data.database

import androidx.room.Database
import androidx.room.RoomDatabase
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

@Database(
    entities = [ComicEntity::class, BookmarkEntity::class],
    version = 5,
    exportSchema = false
)
abstract class AppDatabase : RoomDatabase() {
    abstract fun comicDao(): ComicDao

    companion object {
        val MIGRATION_3_4 = object : Migration(3, 4) {
            override fun migrate(db: SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE comics ADD COLUMN currentPage INTEGER NOT NULL DEFAULT 0")
                db.execSQL("ALTER TABLE comics ADD COLUMN totalPages INTEGER NOT NULL DEFAULT 0")
            }
        }

        val MIGRATION_4_5 = object : Migration(4, 5) {
            override fun migrate(db: SupportSQLiteDatabase) {
                db.execSQL(
                    "UPDATE comics SET currentPage = CASE WHEN currentPage < 0 THEN 0 ELSE currentPage END"
                )
                db.execSQL(
                    "UPDATE comics SET totalPages = CASE WHEN totalPages < 0 THEN 0 ELSE totalPages END"
                )
            }
        }
    }
}