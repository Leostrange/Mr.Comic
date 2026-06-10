package com.example.mrcomic.di

import com.example.core.domain.translation.OnlineTranslationEngine
import com.example.mrcomic.translation.OpenRouterOnlineTranslationEngine
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
