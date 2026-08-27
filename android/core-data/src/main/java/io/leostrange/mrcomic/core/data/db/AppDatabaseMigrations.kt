package io.leostrange.mrcomic.core.data.db

import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

object AppDatabaseMigrations {
    /** 13→14: Remove the retired online-catalog storage. */
    val MIGRATION_13_14 = object : Migration(13, 14) {
        override fun migrate(db: SupportSQLiteDatabase) {
            db.execSQL("DROP TABLE IF EXISTS `opds_catalogs`")
        }
    }

    /**
     * Columns of the `comics` table that were added to the [io.leostrange.mrcomic.core.model.Comic]
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
        // Structured reading position (TEXT-01); nullable so existing rows keep legacy null.
        "readerPositionJson" to "TEXT",
        // Defensive: these were introduced earlier but are cheap to reconcile idempotently.
        "libraryShelf" to "TEXT NOT NULL DEFAULT ''",
        "format" to "TEXT NOT NULL DEFAULT 'UNKNOWN'"
    )

    val MIGRATION_9_10 = object : Migration(9, 10) {
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
            // TEXT-01: structured reading position blob (nullable — legacy rows keep null).
            if ("readerPositionJson" !in existing) {
                db.execSQL("ALTER TABLE `comics` ADD COLUMN `readerPositionJson` TEXT")
            }
        }
    }

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

    /** 11→12: BUG-CANDIDATE-01 — Add structured position columns to saved_quotes. */
    val MIGRATION_11_12 = object : Migration(11, 12) {
        override fun migrate(db: SupportSQLiteDatabase) {
            val existing = HashSet<String>()
            db.query("PRAGMA table_info(`saved_quotes`)").use { cursor ->
                val nameIndex = cursor.getColumnIndex("name")
                if (nameIndex >= 0) {
                    while (cursor.moveToNext()) {
                        existing.add(cursor.getString(nameIndex))
                    }
                }
            }
            if ("positionJson" !in existing) {
                db.execSQL("ALTER TABLE `saved_quotes` ADD COLUMN `positionJson` TEXT")
            }
            if ("characterOffset" !in existing) {
                db.execSQL("ALTER TABLE `saved_quotes` ADD COLUMN `characterOffset` INTEGER")
            }
            if ("domAnchor" !in existing) {
                db.execSQL("ALTER TABLE `saved_quotes` ADD COLUMN `domAnchor` TEXT")
            }
        }
    }

    /** 12→13: Add username and password columns to opds_catalogs for Basic auth. */
    val MIGRATION_12_13 = object : Migration(12, 13) {
        override fun migrate(db: SupportSQLiteDatabase) {
            val existing = HashSet<String>()
            db.query("PRAGMA table_info(`opds_catalogs`)").use { cursor ->
                val nameIndex = cursor.getColumnIndex("name")
                if (nameIndex >= 0) {
                    while (cursor.moveToNext()) {
                        existing.add(cursor.getString(nameIndex))
                    }
                }
            }
            if ("username" !in existing) {
                db.execSQL("ALTER TABLE `opds_catalogs` ADD COLUMN `username` TEXT NOT NULL DEFAULT ''")
            }
            if ("password" !in existing) {
                db.execSQL("ALTER TABLE `opds_catalogs` ADD COLUMN `password` TEXT NOT NULL DEFAULT ''")
            }
        }
    }

    /** 10→11: Add opds_catalogs table and seed default catalog sources. */
    val MIGRATION_10_11 = object : Migration(10, 11) {
        override fun migrate(db: SupportSQLiteDatabase) {
            db.execSQL(
                """
                CREATE TABLE IF NOT EXISTS `opds_catalogs` (
                    `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
                    `name` TEXT NOT NULL,
                    `url` TEXT NOT NULL,
                    `description` TEXT NOT NULL DEFAULT '',
                    `isSearchable` INTEGER NOT NULL DEFAULT 0,
                    `isDefault` INTEGER NOT NULL DEFAULT 0,
                    `sortOrder` INTEGER NOT NULL DEFAULT 0
                )
                """.trimIndent()
            )
            // Seed default catalogs
            val defaults = listOf(
                Triple("Project Gutenberg", "https://www.gutenberg.org/ebooks.opds/", "Free eBooks (public domain)"),
                Triple("Feedbooks", "https://catalog.feedbooks.com/catalog/public_domain", "Public domain books"),
                Triple("ManyBooks", "https://manybooks.net/opds", "Free eBooks collection"),
                Triple("Internet Archive", "https://archive.org/advancedsearch.php?q=&fl[]=identifier&fl[]=title&fl[]=creator&sort[]=downloads+desc&mediatype=texts&output=opds", "Archive.org books & comics"),
                Triple("Standard Ebooks", "https://standardebooks.org/opds", "Beautifully formatted free classics"),
            )
            defaults.forEachIndexed { index, (name, url, desc) ->
                db.execSQL(
                    "INSERT INTO opds_catalogs (name, url, description, isSearchable, isDefault, sortOrder) " +
                        "VALUES ('$name', '$url', '$desc', 1, 1, $index)"
                )
            }
        }
    }
}
