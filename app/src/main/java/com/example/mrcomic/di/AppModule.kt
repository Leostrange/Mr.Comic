package com.example.mrcomic.di

import com.example.mrcomic.data.network.MrComicApiService
import com.google.gson.Gson
import com.google.gson.GsonBuilder
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.util.concurrent.TimeUnit
import javax.inject.Singleton

// Условный BuildConfig для базового URL. В реальном проекте он будет генерироваться Gradle.
object FakeBuildConfig {
    const val DEBUG = true // Или false, в зависимости от типа сборки
    const val BASE_API_URL = "http://10.0.2.2:3000/api/" // Для эмулятора Android, указывающего на localhost хост-машины
    // const val BASE_API_URL = "https://api.mrcomic.com/v1/" // Для продакшена
}


@Module
@InstallIn(SingletonComponent::class)
object AppModule { // Переименовано из NetworkModule

    @Provides
    @Singleton
    fun provideBaseUrl(): String {
        // В реальном приложении URL будет браться из BuildConfig или другого конфигурационного файла
        return FakeBuildConfig.BASE_API_URL
    }

    @Provides
    @Singleton
    fun provideGson(): Gson {
        return GsonBuilder()
            // .setDateFormat("yyyy-MM-dd'T'HH:mm:ssZ") // Если нужна специфичная обработка дат
            // .serializeNulls() // Если нужно отправлять null поля
            .create()
    }

    @Provides
    @Singleton
    fun provideHttpLoggingInterceptor(): HttpLoggingInterceptor {
        val loggingInterceptor = HttpLoggingInterceptor()
        loggingInterceptor.level = if (FakeBuildConfig.DEBUG) {
            HttpLoggingInterceptor.Level.BODY // Логировать всё в debug сборках
        } else {
            HttpLoggingInterceptor.Level.NONE // Не логировать в release
        }
        return loggingInterceptor
    }

    @Provides
    @Singleton
    fun provideOkHttpClient(loggingInterceptor: HttpLoggingInterceptor): OkHttpClient {
        return OkHttpClient.Builder()
            .addInterceptor(loggingInterceptor)
            .connectTimeout(30, TimeUnit.SECONDS)
            .readTimeout(30, TimeUnit.SECONDS)
            .writeTimeout(30, TimeUnit.SECONDS)
            .build()
    }

    @Provides
    @Singleton
    fun provideRetrofit(baseUrl: String, okHttpClient: OkHttpClient, gson: Gson): Retrofit {
        return Retrofit.Builder()
            .baseUrl(baseUrl)
            .client(okHttpClient)
            .addConverterFactory(GsonConverterFactory.create(gson))
            .build()
    }

    @Provides
    @Singleton
    fun provideMrComicApiService(retrofit: Retrofit): MrComicApiService {
        return retrofit.create(MrComicApiService::class.java)
    }

    @Provides
    @Singleton
    fun provideOcrTranslationRepository(
        mrComicApiService: MrComicApiService,
        @ApplicationContext context: Context,
        gson: Gson
    ): OcrTranslationRepository {
        return OcrTranslationRepository(mrComicApiService, context, gson)
    }
}
