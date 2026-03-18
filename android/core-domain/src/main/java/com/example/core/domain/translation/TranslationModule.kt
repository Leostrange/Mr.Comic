package com.example.core.domain.translation

import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
abstract class TranslationModule {

    @Binds
    abstract fun bindDictionaryEngine(
        impl: RoomDictionaryEngine
    ): DictionaryEngine

    @Binds
    abstract fun bindLookupRouter(
        impl: DefaultLookupRouter
    ): LookupRouter

    @Binds
    abstract fun bindLlmExplainEngine(
        impl: SafeLlmExplainEngine
    ): LlmExplainEngine

    @Binds
    abstract fun bindOnlineTranslationEngine(
        impl: SafeOnlineTranslationEngine
    ): OnlineTranslationEngine
}
