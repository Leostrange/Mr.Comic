package com.example.mrcomic.data

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import com.mrcomic.theme.data.model.Comic
import com.example.mrcomic.data.model.ComicDao

@Database(entities = [Comic::class], version = 1, exportSchema = false)
abstract class AppDatabase : RoomDatabase() {
    abstract fun comicDao(): ComicDao

    companion object {
        @Volatile
        private var INSTANCE: AppDatabase? = null

        fun getDatabase(context: Context): AppDatabase {
            return INSTANCE ?: synchronized(this) {
                val instance = Room.databaseBuilder(
                    context.applicationContext,
                    AppDatabase::class.java,
                    "comic_database"
                ).build()
                INSTANCE = instance
                instance
            }
        }
    }
}

