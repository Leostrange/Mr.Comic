package com.example.core.data.di

import com.example.core.data.repository.ComicRepository
import com.example.core.data.repository.ComicRepositoryImpl
import com.example.core.data.repository.CoverExtractor
import com.example.core.data.repository.CoverExtractorImpl
import com.example.core.data.repository.SettingsRepository
import com.example.core.data.repository.SettingsRepositoryImpl
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
abstract class DataModule {

    @Binds
    abstract fun bindComicRepository(impl: ComicRepositoryImpl): ComicRepository

    @Binds
    abstract fun bindCoverExtractor(impl: CoverExtractorImpl): CoverExtractor

    @Binds
    abstract fun bindSettingsRepository(impl: SettingsRepositoryImpl): SettingsRepository
}