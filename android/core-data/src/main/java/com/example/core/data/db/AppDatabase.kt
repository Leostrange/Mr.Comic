package com.example.core.data.db

import androidx.room.Database
import androidx.room.RoomDatabase
import androidx.room.TypeConverters
import com.example.core.model.Comic
import com.example.core.model.Converters
import com.example.core.model.SavedQuote
import com.example.core.model.TextHighlight
import com.example.core.model.TranslationCacheEntry

@Database(
    entities = [
        Comic::class,
        SavedQuote::class,
        AudiobookEntity::class,
        EpubStructureCacheEntity::class,
        EpubManifestCacheEntity::class,
        TextHighlight::class,
        TranslationCacheEntry::class
    ],
    version = 9,
    exportSchema = false
)
@TypeConverters(Converters::class)
abstract class AppDatabase : RoomDatabase() {
    abstract fun comicDao(): ComicDao
    abstract fun quoteDao(): QuoteDao
    abstract fun audiobookDao(): AudiobookDao
    abstract fun epubStructureCacheDao(): EpubStructureCacheDao
    abstract fun epubManifestCacheDao(): EpubManifestCacheDao
    abstract fun textHighlightDao(): TextHighlightDao
    abstract fun translationCacheDao(): TranslationCacheDao
}
