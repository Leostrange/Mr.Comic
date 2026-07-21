package io.leostrange.mrcomic.core.data.di

import io.leostrange.mrcomic.core.data.repository.AudiobookRepository
import io.leostrange.mrcomic.core.data.repository.AudiobookRepositoryImpl
import com.google.gson.Gson
import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class AudiobookModule {

    @Binds
    @Singleton
    abstract fun bindAudiobookRepository(impl: AudiobookRepositoryImpl): AudiobookRepository

    companion object {
        @Provides
        @Singleton
        fun provideGson(): Gson = Gson()
    }
}
