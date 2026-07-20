package io.leostrange.mrcomic.di

import android.content.Context
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.domain.translation.ExplainProviderSupplier
import io.leostrange.mrcomic.core.domain.translation.LlmExplainEngine
import io.leostrange.mrcomic.translation.LlmPoweredExplainEngine
import io.leostrange.mrcomic.translation.OpenRouterExplainEngine
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
        impl: LlmPoweredExplainEngine
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
