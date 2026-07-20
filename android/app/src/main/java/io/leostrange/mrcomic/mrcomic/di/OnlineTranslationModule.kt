package io.leostrange.mrcomic.di

import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.translation.OpenRouterOnlineTranslationEngine
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
abstract class OnlineTranslationModule {

    @Binds
    abstract fun bindOnlineTranslationEngine(
        impl: OpenRouterOnlineTranslationEngine
    ): OnlineTranslationEngine
}
