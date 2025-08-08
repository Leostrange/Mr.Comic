package com.example.feature.reader.data

import androidx.room.Database
import androidx.room.RoomDatabase
 
@Database(entities = [ReaderStateEntity::class], version = 1, exportSchema = false)
abstract class ReaderDatabase : RoomDatabase() {
    abstract fun readerStateDao(): ReaderStateDao
} 