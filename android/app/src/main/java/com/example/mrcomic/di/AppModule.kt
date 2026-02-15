package com.example.mrcomic.di

import android.content.Context
import com.example.core.ui.theme.ThemePreferencesRepository
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

/**
 * Application-level dependency container.
 *
 * Legacy networking and OCR wiring has been removed in favour of the
 * modernised core/data modules. The only app-scoped dependency we still
 * expose from here is the [ThemePreferencesRepository] used by
 * [com.example.mrcomic.MainActivity].
 */
@Module
@InstallIn(SingletonComponent::class)
object AppModule {

    @Provides
    @Singleton
    fun provideThemePreferencesRepository(
        @ApplicationContext context: Context
    ): ThemePreferencesRepository = ThemePreferencesRepository(context)
}
