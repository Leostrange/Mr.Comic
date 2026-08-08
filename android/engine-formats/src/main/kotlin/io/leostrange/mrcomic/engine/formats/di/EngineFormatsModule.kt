package io.leostrange.mrcomic.engine.formats.di

import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import io.leostrange.mrcomic.engine.api.FormatProvider
import io.leostrange.mrcomic.engine.api.ReaderFactory
import io.leostrange.mrcomic.engine.api.SectionPaginator
import io.leostrange.mrcomic.engine.formats.FormatProviderImpl
import io.leostrange.mrcomic.engine.formats.base.FormatFactory
import io.leostrange.mrcomic.engine.formats.djvu.DjvuBackend
import io.leostrange.mrcomic.engine.formats.djvu.StructuredDjvuBackend
import io.leostrange.mrcomic.engine.formats.text.pagination.DocumentTextPaginator
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

    @Binds
    abstract fun bindReaderFactory(impl: FormatFactory): ReaderFactory
}

@Module
@InstallIn(SingletonComponent::class)
object EngineFormatsProvidesModule {
    @Provides
    fun provideSectionPaginator(): SectionPaginator = DocumentTextPaginator()
}
