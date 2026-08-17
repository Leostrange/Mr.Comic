package io.leostrange.mrcomic.core.domain.analytics

import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
abstract class ReadingAnalyticsModule {

    @Binds
    abstract fun bindReadingAnalyticsTracker(
        impl: LogcatReadingAnalyticsTracker
    ): ReadingAnalyticsTracker
}
