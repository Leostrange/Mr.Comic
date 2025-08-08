package com.example.mrcomic.di

import android.content.Context
import com.example.mrcomic.data.network.MrComicApiService
import com.google.gson.Gson
import com.google.gson.GsonBuilder
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.android.qualifiers.ApplicationContext
import dagger.hilt.components.SingletonComponent
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.util.concurrent.TimeUnit
import javax.inject.Singleton
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import android.net.Uri
import com.example.mrcomic.di.Resource
import com.example.mrcomic.data.network.dto.OcrResponseDto
import com.example.mrcomic.data.network.dto.TranslationRequestDto
import com.example.mrcomic.data.network.dto.TranslationResponseDto

// Условный BuildConfig для базового URL. В реальном проекте он будет генерироваться Gradle.
object FakeBuildConfig {
    const val DEBUG = true
    const val BASE_API_URL = "http://10.0.2.2:3000/api/"
}

interface OcrTranslationRepository {
    fun processImageOcr(
        imageUri: Uri,
        regionsJson: String? = null,
        languagesJson: String? = null,
        ocrParamsJson: String? = null
    ): Flow<Resource<OcrResponseDto>>

    fun translateText(request: TranslationRequestDto): Flow<Resource<TranslationResponseDto>>
}

class OcrTranslationRepositoryImpl(
    private val api: MrComicApiService,
    private val context: Context,
    private val gson: Gson
) : OcrTranslationRepository {
    override fun processImageOcr(
        imageUri: Uri,
        regionsJson: String?,
        languagesJson: String?,
        ocrParamsJson: String?
    ): Flow<Resource<OcrResponseDto>> = flow {
        emit(Resource.Loading())
        emit(Resource.Error("OCR not implemented in app module"))
    }

    override fun translateText(request: TranslationRequestDto): Flow<Resource<TranslationResponseDto>> = flow {
        emit(Resource.Loading())
        emit(Resource.Error("Translate not implemented in app module"))
    }
}

@Module
@InstallIn(SingletonComponent::class)
object AppModule {

    @Provides
    @Singleton
    fun provideBaseUrl(): String = FakeBuildConfig.BASE_API_URL

    @Provides
    @Singleton
    fun provideGson(): Gson = GsonBuilder().create()

    @Provides
    @Singleton
    fun provideHttpLoggingInterceptor(): HttpLoggingInterceptor {
        val loggingInterceptor = HttpLoggingInterceptor()
        loggingInterceptor.level = if (FakeBuildConfig.DEBUG) {
            HttpLoggingInterceptor.Level.BODY
        } else {
            HttpLoggingInterceptor.Level.NONE
        }
        return loggingInterceptor
    }

    @Provides
    @Singleton
    fun provideOkHttpClient(loggingInterceptor: HttpLoggingInterceptor): OkHttpClient =
        OkHttpClient.Builder()
            .addInterceptor(loggingInterceptor)
            .connectTimeout(30, TimeUnit.SECONDS)
            .readTimeout(30, TimeUnit.SECONDS)
            .writeTimeout(30, TimeUnit.SECONDS)
            .build()

    @Provides
    @Singleton
    fun provideRetrofit(baseUrl: String, okHttpClient: OkHttpClient, gson: Gson): Retrofit =
        Retrofit.Builder()
            .baseUrl(baseUrl)
            .client(okHttpClient)
            .addConverterFactory(GsonConverterFactory.create(gson))
            .build()

    @Provides
    @Singleton
    fun provideMrComicApiService(retrofit: Retrofit): MrComicApiService =
        retrofit.create(MrComicApiService::class.java)

    @Provides
    @Singleton
    fun provideOcrTranslationRepository(
        mrComicApiService: MrComicApiService,
        @ApplicationContext context: Context,
        gson: Gson
    ): OcrTranslationRepository = OcrTranslationRepositoryImpl(mrComicApiService, context, gson)
}
