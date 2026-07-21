package io.leostrange.mrcomic.core.data.dictionary

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import java.io.File

@Database(
    entities = [
        DictionaryEntryEntity::class,
        DictionaryFormEntity::class,
        DictionarySenseEntity::class,
        DictionaryTranslationEntity::class,
        DictionaryReadingEntity::class,
        DictionaryExampleEntity::class,
    ],
    version = 1,
    exportSchema = true,
)
abstract class DictionaryDatabase : RoomDatabase() {
    abstract fun dictionaryDao(): DictionaryDao

    companion object {
        private val instances = mutableMapOf<String, DictionaryDatabase>()

        fun fromAsset(
            context: Context,
            assetPath: String = "databases/dictionary.db",
            databaseName: String = "dictionary_room_asset_v2.db",
        ): DictionaryDatabase {
            return synchronized(this) {
                instances[databaseName] ?: Room.databaseBuilder(
                    context.applicationContext,
                    DictionaryDatabase::class.java,
                    databaseName,
                )
                    .createFromAsset(assetPath)
                    .fallbackToDestructiveMigration(dropAllTables = true)
                    .build()
                    .also { instances[databaseName] = it }
            }
        }

        fun fromFile(
            context: Context,
            databaseFile: File,
            databaseName: String = databaseFile.name,
        ): DictionaryDatabase {
            return synchronized(this) {
                instances[databaseName] ?: Room.databaseBuilder(
                    context.applicationContext,
                    DictionaryDatabase::class.java,
                    databaseName,
                )
                    .createFromFile(databaseFile)
                    .fallbackToDestructiveMigration(dropAllTables = true)
                    .build()
                    .also { instances[databaseName] = it }
            }
        }
    }
}
