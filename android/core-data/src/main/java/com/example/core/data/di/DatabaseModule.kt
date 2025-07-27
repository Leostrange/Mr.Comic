package com.example.core.data.di

import android.content.Context
import androidx.room.Room
import com.example.core.data.database.AppDatabase
import com.example.core.data.database.ComicDao
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
        ).build()
    }

    @Provides
    fun provideComicDao(appDatabase: AppDatabase): ComicDao {
        return appDatabase.comicDao()
    }
}