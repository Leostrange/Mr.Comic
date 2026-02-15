package com.example.feature.translate.di

import com.example.feature.translate.domain.MLKitTranslationService
import com.example.feature.translate.domain.TranslateEngine
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

/**
 * Hilt module providing translation services
 */
@Module
@InstallIn(SingletonComponent::class)
abstract class TranslateModule {

    /**
     * Provide ML Kit translation service as the default TranslateEngine implementation
     */
    @Binds
    @Singleton
    abstract fun bindTranslateEngine(
        mlKitTranslationService: MLKitTranslationService
    ): TranslateEngine
}
