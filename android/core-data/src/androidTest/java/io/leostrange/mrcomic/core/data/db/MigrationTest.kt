package io.leostrange.mrcomic.core.data.db

import androidx.room.migration.Migration
import androidx.room.testing.MigrationTestHelper
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith

/**
 * Room migration tests.
 *
 * Verifies that each migration preserves data and schema correctness.
 * Uses MigrationTestHelper to create databases at old versions and
 * run migrations forward.
 */
@RunWith(AndroidJUnit4::class)
class MigrationTest {

    @get:Rule
    val helper = MigrationTestHelper(
        InstrumentationRegistry.getInstrumentation(),
        AppDatabase::class.java
    )

    @Test
    fun migrate8To9() {
        // Create DB at version 8
        helper.createDatabase("test-db", 8).apply {
            execSQL("""
                INSERT INTO comics (id, title, path, format, currentPage, totalPages)
                VALUES ('1', 'Test Comic', '/test.cbz', 'CBZ', 0, 10)
            """)
            close()
        }

        // Migrate to version 9
        val db = helper.runMigrationsAndValidate(
            "test-db", 9, true,
            AppDatabaseMigrations.MIGRATION_8_9
        )

        // Verify data survived
        val cursor = db.query("SELECT * FROM comics WHERE id = '1'")
        assert(cursor.moveToFirst()) { "Row should exist after migration" }
        assert(cursor.getString(cursor.getColumnIndexOrThrow("title")) == "Test Comic") { "Title should be preserved" }
        cursor.close()
        db.close()
    }

    @Test
    fun migrate7To8() {
        helper.createDatabase("test-db", 7).apply {
            execSQL("""
                INSERT INTO comics (id, title, path, format, currentPage, totalPages)
                VALUES ('1', 'Test', '/test.epub', 'EPUB', 5, 100)
            """)
            close()
        }

        val db = helper.runMigrationsAndValidate(
            "test-db", 8, true,
            AppDatabaseMigrations.MIGRATION_7_8
        )

        val cursor = db.query("SELECT * FROM comics WHERE id = '1'")
        assert(cursor.moveToFirst()) { "Row should exist" }
        cursor.close()
        db.close()
    }

    @Test
    fun migrateAll() {
        // Test full migration path from version 1 to latest
        helper.createDatabase("test-db", 1).apply {
            execSQL("""
                INSERT INTO comics (id, title, path, format, currentPage, totalPages)
                VALUES ('1', 'Full Migration Test', '/test.cbz', 'CBZ', 0, 10)
            """)
            close()
        }

        val db = helper.runMigrationsAndValidate(
            "test-db", 9, true,
            AppDatabaseMigrations.MIGRATION_1_2,
            AppDatabaseMigrations.MIGRATION_2_3,
            AppDatabaseMigrations.MIGRATION_3_4,
            AppDatabaseMigrations.MIGRATION_4_5,
            AppDatabaseMigrations.MIGRATION_5_6,
            AppDatabaseMigrations.MIGRATION_6_7,
            AppDatabaseMigrations.MIGRATION_7_8,
            AppDatabaseMigrations.MIGRATION_8_9
        )

        val cursor = db.query("SELECT * FROM comics WHERE id = '1'")
        assert(cursor.moveToFirst()) { "Row should survive full migration" }
        cursor.close()
        db.close()
    }
}
