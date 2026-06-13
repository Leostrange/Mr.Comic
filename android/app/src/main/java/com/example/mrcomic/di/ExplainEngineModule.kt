package com.example.mrcomic.di

import android.content.Context
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.domain.translation.ExplainProviderSupplier
import com.example.core.domain.translation.LlmExplainEngine
import com.example.mrcomic.translation.OpenRouterExplainEngine
import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import kotlinx.coroutines.flow.first
import javax.inject.Named

@Module
@InstallIn(SingletonComponent::class)
abstract class ExplainEngineModule {

    @Binds
    @Named("online_explain_engine")
    abstract fun bindOnlineExplainEngine(
        impl: OpenRouterExplainEngine
    ): LlmExplainEngine

    companion object {

        @Provides
        fun provideExplainProviderSupplier(
            @ApplicationContext context: Context
        ): ExplainProviderSupplier {
            val preferences = UserPreferences(context.dataStore)
            return ExplainProviderSupplier {
                preferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_PROVIDER, "LOCAL")
                    .first()
                    .trim()
                    .uppercase()
                    .ifBlank { "LOCAL" }
            }
        }
    }
}
