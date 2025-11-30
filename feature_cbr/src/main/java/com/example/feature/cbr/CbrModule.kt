package com.example.feature.cbr

import android.content.Context
import com.example.core.reader.data.CbrReader
import com.example.core.reader.domain.MediaReader
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Named
import javax.inject.Singleton

/**
 * Hilt модуль для CBR функциональности
 * Предоставляет CBR reader как опциональный компонент
 */
@Module
@InstallIn(SingletonComponent::class)
object CbrModule {
    
    @Provides
    @Singleton
    @Named("cbr_reader")
    fun provideCbrReader(@ApplicationContext context: Context): MediaReader {
        return CbrReader(context)
    }
    
    @Provides
    @Singleton
    fun provideCbrFeatureManager(@ApplicationContext context: Context): CbrFeatureManager {
        return CbrFeatureManager(context)
    }
}
