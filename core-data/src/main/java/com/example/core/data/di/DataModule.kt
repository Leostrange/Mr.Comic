package com.example.core.data.di

import com.example.core.data.repository.ComicRepository
import com.example.core.data.repository.ComicRepositoryImpl
import com.example.core.data.repository.CoverExtractor
import com.example.core.data.repository.CoverExtractorImpl
import com.example.core.data.repository.SettingsRepository
import com.example.core.data.repository.SettingsRepositoryImpl
import com.example.core.data.repository.UserRepository
import com.example.core.data.repository.UserRepositoryImpl
import com.example.core.data.repository.WhisperRepository
import com.example.core.data.repository.WhisperRepositoryImpl
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

    @Binds
    abstract fun bindUserRepository(impl: UserRepositoryImpl): UserRepository

    @Binds
    abstract fun bindWhisperRepository(impl: WhisperRepositoryImpl): WhisperRepository
}
