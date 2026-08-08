package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.interfaces.translation.TranslationCacheRepository
import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Named
import javax.inject.Singleton

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

    companion object {
        @Provides
        fun provideTranslatorEngine(
            mlKitEngine: MlKitTranslatorEngine,
            cacheRepository: TranslationCacheRepository
        ): TranslatorEngine = CachingTranslatorEngine(mlKitEngine, cacheRepository)

        @Provides
        @Singleton
        fun provideTranslationEngineSelector(
            mlKitEngine: MlKitTranslatorEngine,
            cachingEngine: CachingTranslatorEngine
        ): TranslationEngineSelector = TranslationEngineSelector(mlKitEngine, cachingEngine)
    }
}
