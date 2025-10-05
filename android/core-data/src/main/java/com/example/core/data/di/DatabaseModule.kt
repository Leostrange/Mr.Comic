package com.example.core.data.di

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.room.Room
import com.example.core.data.database.AppDatabase
import com.example.core.data.database.ComicDatabase
import com.example.core.data.database.dao.BookmarkDao
import com.example.core.data.database.dao.ComicDao
import com.example.core.data.database.dao.FolderDao
import com.example.core.data.database.dao.ReadingSessionDao
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.data.repository.BookmarkRepository
import com.example.core.data.repository.ComicRepository
import com.example.core.data.repository.FolderRepository
import com.example.core.data.repository.ReadingSessionRepository
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object DatabaseModule {

    @Provides
    @Singleton
    fun provideAppDatabase(@ApplicationContext context: Context): AppDatabase {
        return Room.databaseBuilder(
            context,
            AppDatabase::class.java,
            "mr_comic_database"
        ).addMigrations(AppDatabase.MIGRATION_3_4, AppDatabase.MIGRATION_4_5)
            .build()
    }

    @Provides
    @Singleton
    fun provideComicDatabase(@ApplicationContext context: Context): ComicDatabase {
        return Room.databaseBuilder(
            context,
            ComicDatabase::class.java,
            ComicDatabase.DATABASE_NAME
        )
            .fallbackToDestructiveMigration() // Для начальной разработки
            .build()
    }

    @Provides
    fun provideComicDao(comicDatabase: ComicDatabase): ComicDao {
        return comicDatabase.comicDao()
    }

    @Provides
    fun provideFolderDao(comicDatabase: ComicDatabase): FolderDao {
        return comicDatabase.folderDao()
    }

    @Provides
    fun provideBookmarkDao(comicDatabase: ComicDatabase): BookmarkDao {
        return comicDatabase.bookmarkDao()
    }

    @Provides
    fun provideReadingSessionDao(comicDatabase: ComicDatabase): ReadingSessionDao {
        return comicDatabase.readingSessionDao()
    }

    @Provides
    @Singleton
    fun provideDataStore(@ApplicationContext context: Context): DataStore<Preferences> {
        return context.dataStore
    }

    @Provides
    @Singleton
    fun provideUserPreferences(dataStore: DataStore<Preferences>): UserPreferences {
        return UserPreferences(dataStore)
    }

    // Репозитории
    @Provides
    @Singleton
    fun provideComicRepository(comicDao: ComicDao): ComicRepository {
        return ComicRepository(comicDao)
    }

    @Provides
    @Singleton
    fun provideFolderRepository(folderDao: FolderDao): FolderRepository {
        return FolderRepository(folderDao)
    }

    @Provides
    @Singleton
    fun provideBookmarkRepository(bookmarkDao: BookmarkDao): BookmarkRepository {
        return BookmarkRepository(bookmarkDao)
    }

    @Provides
    @Singleton
    fun provideReadingSessionRepository(readingSessionDao: ReadingSessionDao): ReadingSessionRepository {
        return ReadingSessionRepository(readingSessionDao)
    }
}
