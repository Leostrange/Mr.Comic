package com.example.engine.formats.di

import com.example.engine.formats.djvu.DjvuBackend
import com.example.engine.formats.djvu.UnavailableDjvuBackend
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
object EngineFormatsModule {

    @Provides
    fun provideDjvuBackend(
        backend: UnavailableDjvuBackend
    ): DjvuBackend = backend
}
