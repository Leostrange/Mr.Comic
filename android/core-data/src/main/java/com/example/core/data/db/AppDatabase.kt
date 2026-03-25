package com.example.core.data.db

import androidx.room.Database
import androidx.room.RoomDatabase
import androidx.room.TypeConverters
import com.example.core.model.Comic
import com.example.core.model.Converters
import com.example.core.model.SavedQuote

@Database(
    entities = [Comic::class, SavedQuote::class],
    version = 2,
    exportSchema = false
)
@TypeConverters(Converters::class)
abstract class AppDatabase : RoomDatabase() {
    abstract fun comicDao(): ComicDao
    abstract fun quoteDao(): QuoteDao
}
