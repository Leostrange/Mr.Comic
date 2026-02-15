package com.example.feature.ocr.ui

import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import com.example.core.model.TextRegion

enum class OcrScreen {
    CAPTURE, TRANSLATE, RESULTS
}

@Composable
fun OcrFlowScreen(
    onFinish: () -> Unit,
    modifier: Modifier = Modifier
) {
    var currentScreen by remember { mutableStateOf(OcrScreen.CAPTURE) }
    var capturedRegions by remember { mutableStateOf<List<TextRegion>>(emptyList()) }
    var translatedRegions by remember { mutableStateOf<List<TranslatedRegion>>(emptyList()) }

    when (currentScreen) {
        OcrScreen.CAPTURE -> {
            OcrCropScreen(
                onImageCaptured = { regions ->
                    capturedRegions = regions
                    currentScreen = OcrScreen.TRANSLATE
                },
                onNavigateBack = onFinish,
                modifier = modifier
            )
        }
        OcrScreen.TRANSLATE -> {
            TranslateOcrScreen(
                textRegions = capturedRegions,
                onTranslationsReady = { translations ->
                    translatedRegions = translations
                    currentScreen = OcrScreen.RESULTS
                },
                onNavigateBack = { currentScreen = OcrScreen.CAPTURE },
                modifier = modifier
            )
        }
        OcrScreen.RESULTS -> {
            TranslationScreen(
                translatedRegions = translatedRegions,
                onNavigateBack = { currentScreen = OcrScreen.TRANSLATE },
                modifier = modifier
            )
        }
    }
}