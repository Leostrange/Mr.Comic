package com.example.core.data.db

import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

object AppDatabaseMigrations {
    /**
     * Columns of the `comics` table that were added to the [com.example.core.model.Comic]
     * entity over time WITHOUT an accompanying `ALTER TABLE` migration (historically the only
     * migrated column was `libraryShelf` in 3→4). Users who installed an older build and upgraded
     * therefore have a physical `comics` table missing these columns; Room's schema validation then
     * failed and the destructive fallback wiped the whole library.
     *
     * [MIGRATION_8_9] adds any of these that are missing. Kept as a public map so a unit test can
     * assert every entity field is covered here (guards against future drift re-introducing the bug).
     *
     * DDL matches the SQLite affinity Room expects for each Kotlin type. NOT NULL columns get a
     * DEFAULT because SQLite requires one for `ADD COLUMN`; Room does not compare DB-level defaults
     * against the entity when the entity declares no `@ColumnInfo(defaultValue=...)`, so validation
     * still passes.
     */
    val COMICS_EXPECTED_COLUMNS_V9: Map<String, String> = linkedMapOf(
        "coverPath" to "TEXT",
        "treeUri" to "TEXT",
        "documentId" to "TEXT",
        "pageCount" to "INTEGER NOT NULL DEFAULT 0",
        "fileSize" to "INTEGER NOT NULL DEFAULT 0",
        "addedDate" to "INTEGER NOT NULL DEFAULT 0",
        "lastModified" to "INTEGER NOT NULL DEFAULT 0",
        "folderId" to "TEXT",
        "readerLocatorHref" to "TEXT",
        "readerLocatorProgression" to "REAL",
        "readerLocatorPosition" to "INTEGER",
        "readerLocatorTitle" to "TEXT",
        "readerLocatorFragment" to "TEXT",
        "lastReadDate" to "INTEGER",
        "readingProgress" to "REAL NOT NULL DEFAULT 0",
        "currentPage" to "INTEGER NOT NULL DEFAULT 0",
        "isBookmarked" to "INTEGER NOT NULL DEFAULT 0",
        "tags" to "TEXT NOT NULL DEFAULT ''",
        "series" to "TEXT",
        "volume" to "INTEGER",
        "issue" to "INTEGER",
        "year" to "INTEGER",
        "publisher" to "TEXT",
        "author" to "TEXT",
        "artist" to "TEXT",
        "genre" to "TEXT",
        "language" to "TEXT NOT NULL DEFAULT 'en'",
        "isCompleted" to "INTEGER NOT NULL DEFAULT 0",
        // Defensive: these were introduced earlier but are cheap to reconcile idempotently.
        "libraryShelf" to "TEXT NOT NULL DEFAULT ''",
        "format" to "TEXT NOT NULL DEFAULT 'UNKNOWN'"
    )

    val MIGRATION_8_9 = object : Migration(8, 9) {
        override fun migrate(db: SupportSQLiteDatabase) {
            val existing = HashSet<String>()
            db.query("PRAGMA table_info(`comics`)").use { cursor ->
                val nameIndex = cursor.getColumnIndex("name")
                if (nameIndex >= 0) {
                    while (cursor.moveToNext()) {
                        existing.add(cursor.getString(nameIndex))
                    }
                }
            }
            for ((column, ddl) in COMICS_EXPECTED_COLUMNS_V9) {
                if (column !in existing) {
                    db.execSQL("ALTER TABLE `comics` ADD COLUMN `$column` $ddl")
                }
            }
        }
    }

    val MIGRATION_7_8 = object : Migration(7, 8) {
        override fun migrate(db: SupportSQLiteDatabase) {
            db.execSQL(
                """
                CREATE TABLE IF NOT EXISTS translation_cache (
                    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
                    cacheKey TEXT NOT NULL,
                    sourceLang TEXT NOT NULL,
                    targetLang TEXT NOT NULL,
                    sourceTextPreview TEXT NOT NULL,
                    translatedText TEXT NOT NULL,
                    provider TEXT NOT NULL,
                    createdAt INTEGER NOT NULL,
                    lastUsedAt INTEGER NOT NULL,
                    hitCount INTEGER NOT NULL DEFAULT 1
                )
                """.trimIndent()
            )
            db.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS index_translation_cache_cacheKey ON translation_cache(cacheKey)")
            db.execSQL("CREATE INDEX IF NOT EXISTS index_translation_cache_lastUsedAt ON translation_cache(lastUsedAt)")
            db.execSQL("CREATE INDEX IF NOT EXISTS index_translation_cache_sourceLang_targetLang ON translation_cache(sourceLang, targetLang)")
        }
    }

    val MIGRATION_6_7 = object : Migration(6, 7) {
        override fun migrate(db: SupportSQLiteDatabase) {
            db.execSQL(
                """
                CREATE TABLE IF NOT EXISTS text_highlights (
                    id TEXT NOT NULL PRIMARY KEY,
                    comicId TEXT NOT NULL,
                    comicTitle TEXT NOT NULL,
                    page INTEGER NOT NULL,
                    text TEXT NOT NULL,
                    startOffset INTEGER NOT NULL,
                    endOffset INTEGER NOT NULL,
                    colorArgb INTEGER NOT NULL,
                    note TEXT,
                    createdAt INTEGER NOT NULL,
                    updatedAt INTEGER NOT NULL
                )
                """.trimIndent()
            )
            db.execSQL("CREATE INDEX IF NOT EXISTS index_text_highlights_comicId ON text_highlights(comicId)")
            db.execSQL("CREATE INDEX IF NOT EXISTS index_text_highlights_comicId_page ON text_highlights(comicId, page)")
            db.execSQL("CREATE INDEX IF NOT EXISTS index_text_highlights_createdAt ON text_highlights(createdAt)")
        }
    }

    val MIGRATION_5_6 = object : Migration(5, 6) {
        override fun migrate(db: SupportSQLiteDatabase) {
            db.execSQL(
                """
                CREATE TABLE IF NOT EXISTS epub_manifest_cache (
                    filePath TEXT NOT NULL PRIMARY KEY,
                    fileSize INTEGER NOT NULL,
                    lastModified INTEGER NOT NULL,
                    payloadJson TEXT NOT NULL,
                    updatedAt INTEGER NOT NULL
                )
                """.trimIndent()
            )
            db.execSQL(
                "CREATE INDEX IF NOT EXISTS index_epub_manifest_cache_updatedAt ON epub_manifest_cache(updatedAt)"
            )
        }
    }

    val MIGRATION_4_5 = object : Migration(4, 5) {
        override fun migrate(db: SupportSQLiteDatabase) {
            db.execSQL(
                """
                CREATE TABLE IF NOT EXISTS epub_structure_cache (
                    filePath TEXT NOT NULL PRIMARY KEY,
                    fileSize INTEGER NOT NULL,
                    lastModified INTEGER NOT NULL,
                    payloadJson TEXT NOT NULL,
                    updatedAt INTEGER NOT NULL
                )
                """.trimIndent()
            )
            db.execSQL(
                "CREATE INDEX IF NOT EXISTS index_epub_structure_cache_updatedAt ON epub_structure_cache(updatedAt)"
            )
        }
    }

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
