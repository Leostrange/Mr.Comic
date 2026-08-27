package io.leostrange.mrcomic.core.data.db

import androidx.room.Database
import androidx.room.RoomDatabase
import androidx.room.TypeConverters
import io.leostrange.mrcomic.core.data.db.entity.ComicEntity
import io.leostrange.mrcomic.core.data.db.entity.Converters
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.data.db.entity.TextHighlight
import io.leostrange.mrcomic.core.data.db.entity.TranslationCacheEntry

@Database(
    entities = [
        ComicEntity::class,
        SavedQuote::class,
        AudiobookEntity::class,
        EpubStructureCacheEntity::class,
        EpubManifestCacheEntity::class,
        TextHighlight::class,
        TranslationCacheEntry::class
    ],
    version = 14,
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
