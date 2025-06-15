package com.example.mrcomic.theme.data.db

import androidx.room.Database
import androidx.room.RoomDatabase
import androidx.room.TypeConverters
import com.example.mrcomic.theme.data.model.*
import com.example.mrcomic.data.FailedImport
import com.example.mrcomic.data.ComicFts
import com.example.mrcomic.data.ComicFtsDao
import com.example.mrcomic.data.ReadingStats
import com.example.mrcomic.data.ReadingStatsDao

/**
 * База данных Room для локального хранения данных
 */
@Database(
    entities = [
        Theme::class,
        User::class,
        Rating::class,
        Comment::class,
        Download::class,
        FailedImport::class,
        ComicFts::class,
        ReadingStats::class
    ],
    version = 1,
    exportSchema = false
)
@TypeConverters(Converters::class)
abstract class ThemeDatabase : RoomDatabase() {
    abstract fun themeDao(): ThemeDao
    abstract fun userDao(): UserDao
    abstract fun ratingDao(): RatingDao
    abstract fun commentDao(): CommentDao
     abstract fun comicFtsDao(): ComicFtsDao
    abstract fun readingStatsDao(): ReadingStatsDao
}

