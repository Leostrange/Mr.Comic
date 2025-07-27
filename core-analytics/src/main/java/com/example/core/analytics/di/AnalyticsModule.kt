package com.example.core.analytics.di

import com.example.core.analytics.AnalyticsTracker
import com.example.core.analytics.LocalAnalyticsTracker
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class AnalyticsModule {

    @Binds
    @Singleton
    abstract fun bindAnalyticsTracker(
        localAnalyticsTracker: LocalAnalyticsTracker
    ): AnalyticsTracker
}