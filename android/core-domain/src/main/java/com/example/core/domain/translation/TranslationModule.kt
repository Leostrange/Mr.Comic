package com.example.core.domain.translation

import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Named

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
    @Named("local_explain_engine")
    abstract fun bindLocalLlmExplainEngine(
        impl: SafeLlmExplainEngine
    ): LlmExplainEngine

    @Binds
    abstract fun bindLlmExplainEngine(
        impl: DelegatingLlmExplainEngine
    ): LlmExplainEngine

}
