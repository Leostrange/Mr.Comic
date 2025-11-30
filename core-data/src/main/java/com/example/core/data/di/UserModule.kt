package com.example.core.data.di

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.preferencesDataStore
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import javax.inject.Qualifier
import javax.inject.Singleton

private val Context.userDataStore: DataStore<Preferences> by preferencesDataStore(name = "user_profile")

@Qualifier
@Retention(AnnotationRetention.BINARY)
annotation class UserPreferences

@Module
@InstallIn(SingletonComponent::class)
object UserModule {

    @Provides
    @Singleton
    @UserPreferences
    fun provideUserDataStore(@ApplicationContext context: Context): DataStore<Preferences> {
        return context.userDataStore
    }
}
