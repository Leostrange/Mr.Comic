package com.example.feature.ocr.di

import com.example.feature.ocr.data.BubbleDetectorImpl
import com.example.feature.ocr.data.OcrEngineImpl
import com.example.feature.ocr.domain.BubbleDetector
import com.example.feature.ocr.domain.OcrEngine
import dagger.Binds
import dagger.Module
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
abstract class OcrModule {

    @Binds
    @Singleton
    abstract fun bindOcrEngine(
        ocrEngineImpl: OcrEngineImpl
    ): OcrEngine

    @Binds
    @Singleton
    abstract fun bindBubbleDetector(
        bubbleDetectorImpl: BubbleDetectorImpl
    ): BubbleDetector
}
