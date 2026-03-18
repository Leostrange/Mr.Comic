package com.example.engine.rendering.di

import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.rendering.pool.BitmapPool
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
abstract class EngineRenderingModule {
    @Binds
    abstract fun bindBitmapAllocator(pool: BitmapPool): BitmapAllocator
}
