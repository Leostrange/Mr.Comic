package com.example.core.data.di

import android.content.Context
import com.example.core.data.repository.LocalResourcesRepository
import com.example.core.data.repository.LocalResourcesRepositoryImpl
import com.example.core.data.repository.SettingsRepository
import com.example.core.data.repository.SettingsRepositoryImpl
import com.example.core.data.repository.UserRepository
import com.example.core.data.repository.UserRepositoryImpl
import com.example.core.data.repository.WhisperRepository
import com.example.core.data.repository.WhisperRepositoryImpl
import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class DataModule {

    // Закомментировано - используем DatabaseModule для предоставления репозиториев
    // @Binds
    // abstract fun bindComicRepository(impl: ComicRepositoryImpl): ComicRepository

    // @Binds
    // abstract fun bindCoverExtractor(impl: CoverExtractorImpl): CoverExtractor

    @Binds
    abstract fun bindSettingsRepository(impl: SettingsRepositoryImpl): SettingsRepository

    @Binds
    abstract fun bindUserRepository(impl: UserRepositoryImpl): UserRepository

    @Binds
    abstract fun bindWhisperRepository(impl: WhisperRepositoryImpl): WhisperRepository
}

@Module
@InstallIn(SingletonComponent::class)
object DataProvidersModule {

	@Provides
	@Singleton
	fun provideLocalResourcesRepository(@ApplicationContext context: Context): LocalResourcesRepository {
		return LocalResourcesRepositoryImpl(context)
	}
}
