package com.example.core.reader.di

import android.content.Context
import com.example.core.reader.data.cache.BitmapCache
import com.example.core.reader.data.cache.ThumbnailCache
import com.example.core.reader.data.CbrToCbzConverter
import com.example.core.reader.domain.BookReaderFactory
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object CoreReaderModule {

    @Provides
    @Singleton
    fun provideCbrToCbzConverter(
        @ApplicationContext context: Context
    ): CbrToCbzConverter = CbrToCbzConverter(context)

    @Provides
    @Singleton
    fun provideBookReaderFactory(
        @ApplicationContext context: Context,
        bitmapCache: BitmapCache,
        thumbnailCache: ThumbnailCache,
        cbrToCbzConverter: CbrToCbzConverter
    ): BookReaderFactory = BookReaderFactory(context, bitmapCache, thumbnailCache, cbrToCbzConverter)
}

