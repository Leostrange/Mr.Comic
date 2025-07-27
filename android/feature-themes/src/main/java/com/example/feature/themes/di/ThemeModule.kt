package com.example.feature.themes.di

import com.example.feature.themes.data.ThemeRepository
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object ThemeModule {

    @Singleton
    @Provides
    fun provideThemeRepository(): ThemeRepository {
        return ThemeRepository()
    }
}


