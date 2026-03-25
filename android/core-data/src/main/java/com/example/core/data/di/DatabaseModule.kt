package com.example.core.data.di

import android.content.Context
import androidx.room.Room
import com.example.core.data.db.AppDatabase
import com.example.core.data.db.AppDatabaseMigrations
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
            .addMigrations(AppDatabaseMigrations.MIGRATION_1_2)
            .fallbackToDestructiveMigration(dropAllTables = true)
            .build()

    @Provides
    @Singleton
    fun provideQuoteDao(appDatabase: AppDatabase): QuoteDao = appDatabase.quoteDao()
}
