package io.leostrange.mrcomic.engine.formats.di

import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import io.leostrange.mrcomic.engine.api.FormatProvider
import io.leostrange.mrcomic.engine.formats.FormatProviderImpl
import io.leostrange.mrcomic.engine.formats.djvu.DjvuBackend
import io.leostrange.mrcomic.engine.formats.djvu.StructuredDjvuBackend
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class EngineFormatsModule {
    @Binds
    @Singleton
    abstract fun bindFormatProvider(impl: FormatProviderImpl): FormatProvider

    @Binds
    @Singleton
    abstract fun bindDjvuBackend(impl: StructuredDjvuBackend): DjvuBackend
}
