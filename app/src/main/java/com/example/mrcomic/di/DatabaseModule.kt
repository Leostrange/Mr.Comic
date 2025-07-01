package com.example.mrcomic.di

import android.content.Context
import android.app.Application
import com.example.mrcomic.data.AppDatabase
import com.example.mrcomic.data.ComicDao
import com.example.mrcomic.data.BookmarkDao
import com.example.mrcomic.data.ComicRepository
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
        return AppDatabase.getDatabase(context)
    }
    
    @Provides
    fun provideComicDao(database: AppDatabase): ComicDao {
        return database.comicDao()
    }
    
    @Provides
    fun provideBookmarkDao(appDatabase: AppDatabase): BookmarkDao {
        return appDatabase.bookmarkDao()
    }
    
    @Provides
    @Singleton
    fun provideComicRepository(
        comicDao: ComicDao,
        @ApplicationContext context: Context
    ): ComicRepository {
        return ComicRepository(comicDao, context as Application)
    }
} 