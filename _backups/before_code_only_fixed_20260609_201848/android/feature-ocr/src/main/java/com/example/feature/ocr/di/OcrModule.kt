package com.example.feature.ocr.di

import com.example.core.domain.translation.ComicTextDetector
import com.example.core.domain.translation.ComicTranslationEngine
import com.example.core.domain.translation.DictionaryEngine
import com.example.core.domain.translation.LanguageDetector
import com.example.core.domain.translation.OfflineTranslationEngine
import com.example.core.domain.translation.OnlineTranslationEngine
import com.example.feature.ocr.data.BubbleReplacementPreviewPlanner
import com.example.feature.ocr.data.DefaultComicTranslationEngine
import com.example.feature.ocr.data.MlKitComicTextDetector
import com.example.feature.ocr.data.MlKitLanguageDetector
import com.example.feature.ocr.data.MlKitOfflineTranslationEngine
import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class OcrBindingsModule {

    @Binds
    abstract fun bindComicTextDetector(
        impl: MlKitComicTextDetector
    ): ComicTextDetector

    @Binds
    abstract fun bindLanguageDetector(
        impl: MlKitLanguageDetector
    ): LanguageDetector

    @Binds
    abstract fun bindOfflineTranslationEngine(
        impl: MlKitOfflineTranslationEngine
    ): OfflineTranslationEngine
}

@Module
@InstallIn(SingletonComponent::class)
object OcrProvidersModule {
    @Provides
    @Singleton
    fun provideComicTranslationEngine(
        offlineTranslationEngine: OfflineTranslationEngine,
        onlineTranslationEngine: OnlineTranslationEngine,
        dictionaryEngine: DictionaryEngine,
        bubbleReplacementPreviewPlanner: BubbleReplacementPreviewPlanner
    ): ComicTranslationEngine = DefaultComicTranslationEngine(
        offlineTranslationEngine = offlineTranslationEngine,
        onlineTranslationEngine = onlineTranslationEngine,
        dictionaryEngine = dictionaryEngine,
        bubbleReplacementPreviewPlanner = bubbleReplacementPreviewPlanner
    )
}
