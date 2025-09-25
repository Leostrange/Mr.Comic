package com.example.feature.cbr.di

import android.content.Context
import com.example.feature.cbr.CbrReaderImpl
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object FeatureCbrModule {

    @Provides
    @Singleton
    fun provideCbrReader(
        @ApplicationContext context: Context
    ): CbrReaderImpl = CbrReaderImpl(context)
}