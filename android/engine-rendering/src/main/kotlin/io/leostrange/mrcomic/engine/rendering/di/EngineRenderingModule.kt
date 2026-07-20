package io.leostrange.mrcomic.engine.rendering.di

import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.rendering.pool.BitmapPool
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
