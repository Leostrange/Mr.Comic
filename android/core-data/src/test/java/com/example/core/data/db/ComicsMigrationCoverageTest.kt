package com.example.core.data.db

import com.example.core.model.Comic
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Regression guard for the P0 data-loss bug: columns were added to the [Comic] entity over time
 * without a corresponding `ALTER TABLE comics` migration, so upgrading users hit Room schema
 * validation failure and the destructive fallback wiped their library.
 *
 * These are pure-JVM assertions (no Android runtime, Java reflection only). The actual on-device
 * migration run must still be verified with an emulator / MigrationTestHelper — not available in
 * this environment.
 */
class ComicsMigrationCoverageTest {

    /** Columns present since the very first CREATE TABLE (v1) — never need an ADD COLUMN. */
    private val baseColumnsSinceV1 = setOf("id", "title", "path")

    private fun comicColumns(): Set<String> =
        Comic::class.java.declaredFields
            .filterNot { it.isSynthetic }
            .map { it.name }
            .filterNot { it == "Companion" || it.startsWith("\$") }
            .toSet()

    @Test
    fun everyComicColumnIsCoveredByMigration8to9() {
        val entityColumns = comicColumns()
        val migrated = AppDatabaseMigrations.COMICS_EXPECTED_COLUMNS_V9.keys

        val uncovered = entityColumns - baseColumnsSinceV1 - migrated
        assertTrue(
            "Comic entity has columns not covered by MIGRATION_8_9 (add them to " +
                "COMICS_EXPECTED_COLUMNS_V9 and bump the DB version): $uncovered",
            uncovered.isEmpty()
        )
    }

    @Test
    fun migrationMapHasNoStaleColumns() {
        val entityColumns = comicColumns()
        val migrated = AppDatabaseMigrations.COMICS_EXPECTED_COLUMNS_V9.keys
        val stale = migrated - entityColumns
        assertTrue(
            "MIGRATION_8_9 references columns that no longer exist on the Comic entity: $stale",
            stale.isEmpty()
        )
    }

    @Test
    fun notNullColumnsDeclareDefaults() {
        // SQLite requires a DEFAULT for NOT NULL columns added via ALTER TABLE; otherwise the
        // migration throws at runtime on any existing row. Assert the DDL keeps that invariant.
        AppDatabaseMigrations.COMICS_EXPECTED_COLUMNS_V9.forEach { (column, ddl) ->
            val upper = ddl.uppercase()
            if (upper.contains("NOT NULL")) {
                assertTrue(
                    "NOT NULL column `$column` must declare a DEFAULT for ADD COLUMN: $ddl",
                    upper.contains("DEFAULT")
                )
            }
        }
    }

    @Test
    fun versionConstantsAreConsistent() {
        // Cheap tripwire: the migration object must target 8 -> 9.
        assertEquals(8, AppDatabaseMigrations.MIGRATION_8_9.startVersion)
        assertEquals(9, AppDatabaseMigrations.MIGRATION_8_9.endVersion)
    }
}
