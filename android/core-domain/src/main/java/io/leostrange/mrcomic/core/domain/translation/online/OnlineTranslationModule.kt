package io.leostrange.mrcomic.core.domain.translation.online

import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object OnlineTranslationModule {

    @Provides
    @Singleton
    fun provideDeepLProvider(): DeepLTranslationProvider = DeepLTranslationProvider()

    @Provides
    @Singleton
    fun provideGoogleProvider(): GoogleTranslationProvider = GoogleTranslationProvider()

    @Provides
    @Singleton
    fun provideYandexProvider(): YandexTranslationProvider = YandexTranslationProvider()

    @Provides
    @Singleton
    fun provideMultiProviderEngine(
        deepL: DeepLTranslationProvider,
        google: GoogleTranslationProvider,
        yandex: YandexTranslationProvider,
        policy: OnlineTranslationPolicy
    ): MultiProviderTranslatorEngine = MultiProviderTranslatorEngine(deepL, google, yandex, policy)
}
