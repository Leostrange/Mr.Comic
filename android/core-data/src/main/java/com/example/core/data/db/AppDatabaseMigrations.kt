package com.example.core.data.db

import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

object AppDatabaseMigrations {
    val MIGRATION_3_4 = object : Migration(3, 4) {
        override fun migrate(db: SupportSQLiteDatabase) {
            db.execSQL("ALTER TABLE comics ADD COLUMN libraryShelf TEXT NOT NULL DEFAULT ''")
        }
    }

    val MIGRATION_2_3 = object : Migration(2, 3) {
        override fun migrate(db: SupportSQLiteDatabase) {
            db.execSQL("""
                CREATE TABLE IF NOT EXISTS audiobooks (
                    id TEXT NOT NULL PRIMARY KEY,
                    title TEXT NOT NULL,
                    coverUri TEXT,
                    sourcePath TEXT NOT NULL,
                    sourceIsFolder INTEGER NOT NULL DEFAULT 0,
                    chaptersJson TEXT NOT NULL DEFAULT '[]',
                    lastChapterIndex INTEGER NOT NULL DEFAULT 0,
                    lastPositionMs INTEGER NOT NULL DEFAULT 0,
                    speed REAL NOT NULL DEFAULT 1.0,
                    addedAt INTEGER NOT NULL
                )
            """.trimIndent())
        }
    }

    val MIGRATION_1_2 = object : Migration(1, 2) {
        override fun migrate(db: SupportSQLiteDatabase) {
            db.execSQL(
                """
                CREATE TABLE IF NOT EXISTS `saved_quotes` (
                    `id` TEXT NOT NULL,
                    `comicId` TEXT NOT NULL,
                    `comicTitle` TEXT NOT NULL,
                    `comicPath` TEXT NOT NULL,
                    `page` INTEGER NOT NULL,
                    `text` TEXT NOT NULL,
                    `translatedText` TEXT,
                    `sourceLanguage` TEXT,
                    `targetLanguage` TEXT,
                    `createdAt` INTEGER NOT NULL,
                    `updatedAt` INTEGER NOT NULL,
                    `contentHash` TEXT NOT NULL,
                    PRIMARY KEY(`id`)
                )
                """.trimIndent()
            )
            db.execSQL("CREATE INDEX IF NOT EXISTS `index_saved_quotes_comicId` ON `saved_quotes` (`comicId`)")
            db.execSQL("CREATE INDEX IF NOT EXISTS `index_saved_quotes_createdAt` ON `saved_quotes` (`createdAt`)")
            db.execSQL(
                "CREATE UNIQUE INDEX IF NOT EXISTS `index_saved_quotes_comicId_page_contentHash` " +
                    "ON `saved_quotes` (`comicId`, `page`, `contentHash`)"
            )
        }
    }
}
