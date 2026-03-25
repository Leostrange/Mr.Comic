package com.example.core.data.db

import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

object AppDatabaseMigrations {
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
