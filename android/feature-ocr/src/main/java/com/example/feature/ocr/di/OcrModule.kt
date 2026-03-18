package com.example.feature.ocr.di

import com.example.core.domain.translation.ComicTextDetector
import com.example.core.domain.translation.ComicTranslationEngine
import com.example.core.domain.translation.LanguageDetector
import com.example.core.domain.translation.OfflineTranslationEngine
import com.example.feature.ocr.data.DefaultComicTranslationEngine
import com.example.feature.ocr.data.MlKitComicTextDetector
import com.example.feature.ocr.data.MlKitLanguageDetector
import com.example.feature.ocr.data.MlKitOfflineTranslationEngine
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
abstract class OcrModule {

    @Binds
    abstract fun bindComicTextDetector(
        impl: MlKitComicTextDetector
    ): ComicTextDetector

    @Binds
    abstract fun bindComicTranslationEngine(
        impl: DefaultComicTranslationEngine
    ): ComicTranslationEngine

    @Binds
    abstract fun bindLanguageDetector(
        impl: MlKitLanguageDetector
    ): LanguageDetector

    @Binds
    abstract fun bindOfflineTranslationEngine(
        impl: MlKitOfflineTranslationEngine
    ): OfflineTranslationEngine
}
