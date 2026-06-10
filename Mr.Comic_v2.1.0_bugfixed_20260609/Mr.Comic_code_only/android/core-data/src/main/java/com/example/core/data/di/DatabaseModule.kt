package com.example.core.data.di

import android.content.Context
import androidx.room.Room
import com.example.core.data.db.AppDatabase
import com.example.core.data.db.AppDatabaseMigrations
import com.example.core.data.db.AudiobookDao
import com.example.core.data.db.EpubManifestCacheDao
import com.example.core.data.db.EpubStructureCacheDao
import com.example.core.data.db.QuoteDao
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
    fun provideAppDatabase(@ApplicationContext context: Context): AppDatabase =
        Room.databaseBuilder(context, AppDatabase::class.java, "comics_db")
            .addMigrations(
                AppDatabaseMigrations.MIGRATION_5_6,
                AppDatabaseMigrations.MIGRATION_4_5,
                AppDatabaseMigrations.MIGRATION_1_2,
                AppDatabaseMigrations.MIGRATION_2_3,
                AppDatabaseMigrations.MIGRATION_3_4
            )
            .fallbackToDestructiveMigration(dropAllTables = true)
            .build()

    @Provides
    @Singleton
    fun provideQuoteDao(appDatabase: AppDatabase): QuoteDao = appDatabase.quoteDao()

    @Provides
    @Singleton
    fun provideAudiobookDao(db: AppDatabase): AudiobookDao = db.audiobookDao()

    @Provides
    @Singleton
    fun provideEpubStructureCacheDao(db: AppDatabase): EpubStructureCacheDao = db.epubStructureCacheDao()

    @Provides
    @Singleton
    fun provideEpubManifestCacheDao(db: AppDatabase): EpubManifestCacheDao = db.epubManifestCacheDao()
}
