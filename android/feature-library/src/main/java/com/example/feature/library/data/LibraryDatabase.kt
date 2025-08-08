package com.example.feature.library.data

import androidx.room.Database
import androidx.room.RoomDatabase

@Database(entities = [ComicEntity::class], version = 1, exportSchema = false)
abstract class LibraryDatabase : RoomDatabase() {
    abstract fun comicDao(): ComicDao
} 