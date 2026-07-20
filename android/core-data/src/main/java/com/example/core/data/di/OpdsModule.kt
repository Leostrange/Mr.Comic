package com.example.core.data.di

import com.example.core.data.opds.OpdsNetworkClient
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
