package io.leostrange.mrcomic.core.data.db

import androidx.sqlite.db.SupportSQLiteDatabase
import androidx.sqlite.db.SupportSQLiteOpenHelper
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35])
class QuoteLocationMigrationTest {

    @Test
    fun migration10to11_addsNullableCharacterOffsetAndKeepsRows() {
        val db = openV10Database()
        db.execSQL("INSERT INTO saved_quotes (id, comicId, page, text) VALUES ('q1', 'c1', 3, 'hello')")

        AppDatabaseMigrations.MIGRATION_10_11.migrate(db)
        // Re-running must be a no-op (partially migrated installs).
        AppDatabaseMigrations.MIGRATION_10_11.migrate(db)

        db.query("SELECT page, characterOffset FROM saved_quotes WHERE id = 'q1'").use { cursor ->
            assertTrue(cursor.moveToFirst())
            assertEquals(3, cursor.getInt(0))
            assertTrue(cursor.isNull(1))
        }
        assertEquals(10, AppDatabaseMigrations.MIGRATION_10_11.startVersion)
        assertEquals(11, AppDatabaseMigrations.MIGRATION_10_11.endVersion)
    }

    private fun openV10Database(): SupportSQLiteDatabase {
        val callback = object : SupportSQLiteOpenHelper.Callback(10) {
            override fun onCreate(db: SupportSQLiteDatabase) {
                db.execSQL(
                    "CREATE TABLE saved_quotes (id TEXT NOT NULL PRIMARY KEY, comicId TEXT NOT NULL, " +
                        "page INTEGER NOT NULL, text TEXT NOT NULL)"
                )
            }

            override fun onUpgrade(db: SupportSQLiteDatabase, oldVersion: Int, newVersion: Int) = Unit
        }
        val configuration = SupportSQLiteOpenHelper.Configuration.builder(RuntimeEnvironment.getApplication())
            .name(null)
            .callback(callback)
            .build()
        return FrameworkSQLiteOpenHelperFactory().create(configuration).writableDatabase
    }
}
