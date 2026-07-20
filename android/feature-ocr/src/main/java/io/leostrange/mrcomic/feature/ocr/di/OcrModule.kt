package io.leostrange.mrcomic.feature.ocr.di

import io.leostrange.mrcomic.core.domain.translation.ComicTextDetector
import io.leostrange.mrcomic.core.domain.translation.ComicTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.LanguageDetector
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.feature.ocr.data.BubbleReplacementPreviewPlanner
import io.leostrange.mrcomic.feature.ocr.data.DefaultComicTranslationEngine
import io.leostrange.mrcomic.feature.ocr.data.MlKitComicTextDetector
import io.leostrange.mrcomic.feature.ocr.data.MlKitLanguageDetector
import io.leostrange.mrcomic.feature.ocr.data.MlKitOfflineTranslationEngine
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
