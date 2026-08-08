package io.leostrange.mrcomic.core.data.di

import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import io.leostrange.mrcomic.core.data.db.RoomTranslationCacheRepository
import io.leostrange.mrcomic.core.data.preferences.DataStoreProviderImpl
import io.leostrange.mrcomic.core.interfaces.preferences.DataStoreProvider
import io.leostrange.mrcomic.core.interfaces.translation.TranslationCacheRepository
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class DataStoreModule {
    @Binds
    @Singleton
    abstract fun bindDataStoreProvider(impl: DataStoreProviderImpl): DataStoreProvider

    @Binds
    @Singleton
    abstract fun bindTranslationCacheRepository(impl: RoomTranslationCacheRepository): TranslationCacheRepository
}
