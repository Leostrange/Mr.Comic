package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import io.leostrange.mrcomic.core.ui.library.LibraryBackdropLayer

@Composable
internal fun LibraryBackground(
    backgroundStyle: String,
    backgroundImageUri: String?,
    backdropStrength: Float,
    backgroundBlur: Float,
    backgroundVeil: Float
) {
    LibraryBackdropLayer(
        backgroundStyle = backgroundStyle,
        backgroundImageUri = backgroundImageUri,
        colorScheme = MaterialTheme.colorScheme,
        backdropStrength = backdropStrength,
        backgroundBlur = backgroundBlur,
        imageVeil = backgroundVeil,
        modifier = Modifier.fillMaxSize()
    )
}
