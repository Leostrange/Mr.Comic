package com.example.engine.formats.di

// FormatFactory is provided via @Inject constructor — no manual @Provides needed.
// Keeping the module shell so the package exists for future bindings.
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent

@Module
@InstallIn(SingletonComponent::class)
object EngineFormatsModule
