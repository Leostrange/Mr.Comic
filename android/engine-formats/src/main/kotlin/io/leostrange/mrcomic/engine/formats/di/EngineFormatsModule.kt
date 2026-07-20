package io.leostrange.mrcomic.engine.formats.di

import io.leostrange.mrcomic.engine.formats.djvu.DjvuBackend
import io.leostrange.mrcomic.engine.formats.djvu.StructuredDjvuBackend
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
object EngineFormatsModule {

    @Provides
    fun provideDjvuBackend(
        backend: StructuredDjvuBackend
    ): DjvuBackend = backend
}
