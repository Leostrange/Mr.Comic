package com.example.core.reader.di

import android.content.Context
import com.example.core.reader.cache.BitmapCache
import com.example.core.reader.cache.DiskBitmapCache
import com.example.core.reader.cache.TieredBitmapCache
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

    // New optimized memory cache (from /cache/ package)
    @Provides
    @Singleton
    fun provideBitmapCache(): BitmapCache = BitmapCache()

    // New disk cache for persistent storage
    @Provides
    @Singleton
    fun provideDiskBitmapCache(
        @ApplicationContext context: Context
    ): DiskBitmapCache = DiskBitmapCache(context)

    // Two-tier cache (Memory + Disk)
    @Provides
    @Singleton
    fun provideTieredBitmapCache(
        memoryCache: BitmapCache,
        diskCache: DiskBitmapCache
    ): TieredBitmapCache = TieredBitmapCache(memoryCache, diskCache)

    @Provides
    @Singleton
    fun provideBookReaderFactory(
        @ApplicationContext context: Context,
        bitmapCache: com.example.core.reader.data.cache.BitmapCache, // Keep old for compatibility
        thumbnailCache: ThumbnailCache,
        cbrToCbzConverter: CbrToCbzConverter
    ): BookReaderFactory = BookReaderFactory(context, bitmapCache, thumbnailCache, cbrToCbzConverter)
}

