package io.leostrange.mrcomic.di

// ThemePreferencesRepository и AppIconManager имеют @Inject constructor,
// поэтому Hilt внедряет их автоматически — явный @Provides не нужен.
// Этот модуль оставлен как точка расширения для будущих биндингов.
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
object AppModule
