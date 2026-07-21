package io.leostrange.mrcomic.core.data.di

import io.leostrange.mrcomic.core.data.opds.OpdsNetworkClient
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object OpdsModule {

    @Provides
    @Singleton
    fun provideOpdsNetworkClient(): OpdsNetworkClient = OpdsNetworkClient()
}
