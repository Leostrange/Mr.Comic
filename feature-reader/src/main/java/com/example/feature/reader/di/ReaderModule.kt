package com.example.feature.reader.di

import android.content.Context
import androidx.room.Room
import com.example.feature.reader.RoomReaderRepository
import com.example.feature.reader.ReaderRepository
import com.example.feature.reader.data.ReaderDatabase
import com.example.feature.reader.data.ReaderStateDao
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object ReaderModule {
    @Provides
    @Singleton
    fun provideReaderDatabase(@ApplicationContext context: Context): ReaderDatabase =
        Room.databaseBuilder(context, ReaderDatabase::class.java, "reader.db").build()

    @Provides
    fun provideReaderStateDao(db: ReaderDatabase): ReaderStateDao = db.readerStateDao()

    @Provides
    @Singleton
    fun provideReaderRepository(dao: ReaderStateDao): ReaderRepository = RoomReaderRepository(dao)
} 