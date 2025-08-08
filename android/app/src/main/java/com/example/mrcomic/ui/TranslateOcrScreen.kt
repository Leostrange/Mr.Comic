
package com.example.mrcomic.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.tooling.preview.Preview
import com.example.mrcomic.data.OcrTranslationRepository
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.mrcomic.data.network.dto.TextToTranslateDto
import com.example.mrcomic.data.network.dto.TranslationParametersDto
import com.example.mrcomic.ui.theme.MrComicTheme

// Additional Compose runtime and Material3 imports
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Divider
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.IconButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.TopAppBar

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TranslateOcrScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier,
    viewModel: TranslateViewModel = hiltViewModel(),
    initialTextToTranslate: String? = null // Может приходить из OcrCropScreen через навигацию
) {
    val uiState by viewModel.uiState.collectAsState()
    var textToTranslate by remember { mutableStateOf(initialTextToTranslate ?: "") }
    var sourceLang by remember { mutableStateOf("auto") } // По умолчанию автоопределение
    var targetLang by remember { mutableStateOf("rus") } // По умолчанию русский

    LaunchedEffect(initialTextToTranslate) {
        initialTextToTranslate?.let {
            textToTranslate = it
            viewModel.setOriginalText(it)
        }
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Translate Text") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        },
        content = { paddingValues ->
            Column(
                modifier = modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(16.dp)
                    .verticalScroll(rememberScrollState()),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                OutlinedTextField(
                    value = textToTranslate,
                    onValueChange = { textToTranslate = it; viewModel.setOriginalText(it) },
                    label = { Text("Text to Translate") },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(150.dp)
                )

                Spacer(modifier = Modifier.height(16.dp))

                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                    OutlinedTextField(
                        value = sourceLang,
                        onValueChange = { sourceLang = it },
                        label = { Text("Source Lang (e.g., auto, eng)") },
                        modifier = Modifier.weight(1f).padding(end = 8.dp)
                    )
                    OutlinedTextField(
                        value = targetLang,
                        onValueChange = { targetLang = it },
                        label = { Text("Target Lang (e.g., rus)") },
                        modifier = Modifier.weight(1f).padding(start = 8.dp)
                    )
                }
                // TODO: Добавить DropdownMenu для выбора языков из списка поддерживаемых

                Spacer(modifier = Modifier.height(16.dp))

                Button(
                    onClick = {
                        if (textToTranslate.isNotBlank() && targetLang.isNotBlank()) {
                            viewModel.performTranslation(
                                textsToTranslate = listOf(TextToTranslateDto(text = textToTranslate)),
                                sourceLanguage = sourceLang.ifBlank { "auto" },
                                targetLanguage = targetLang,
                                translationParams = TranslationParametersDto(domain = "comic") // Пример параметра
                            )
                        }
                    },
                    enabled = !uiState.isLoading && textToTranslate.isNotBlank() && targetLang.isNotBlank()
                ) {
                    Text("Translate")
                }

                Spacer(modifier = Modifier.height(16.dp))

                if (uiState.isLoading) {
                    CircularProgressIndicator(modifier = Modifier.padding(16.dp))
                }

                uiState.error?.let { error ->
                    Text(
                        text = "Error: $error",
                        color = MaterialTheme.colorScheme.error,
                        modifier = Modifier.padding(vertical = 8.dp)
                    )
                }

                uiState.translationResponse?.let { response ->
                    if (response.success) {
                        Text("Translation Results:", style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(top = 16.dp))
                        response.results?.forEach { result ->
                            Column(modifier = Modifier.padding(vertical = 8.dp)) {
                                Text("Original: ${result.originalText}")
                                Text("Translated: ${result.translatedText ?: "N/A"}")
                                result.detectedSourceLanguage?.let { Text("Detected Source: $it") }
                                result.engineUsed?.let { Text("Engine: $it") }
                            }
                            Divider()
                        }
                         if (response.results.isNullOrEmpty()){
                             Text("No translation available or an error occurred in results.")
                        }
                    } else {
                        Text(
                            text = "Translation API Error: ${response.error?.message ?: "Unknown API error"}",
                            color = MaterialTheme.colorScheme.error,
                            modifier = Modifier.padding(vertical = 8.dp)
                        )
                    }
                }
            }
        }
    )
}


@Preview(showBackground = true, name = "TranslateOcrScreen - Light")
@Composable
fun TranslateOcrScreenPreview() {
    MrComicTheme {
        val mockViewModel = TranslateViewModel(OcrTranslationRepository(FakeApiServiceTranslate(), LocalContext.current, GsonTranslate()))
        TranslateOcrScreen(onNavigateBack = {}, viewModel = mockViewModel, initialTextToTranslate = "Hello world")
    }
}

// Заглушки для превью
private class FakeApiServiceTranslate : com.example.mrcomic.data.network.MrComicApiService {
    override suspend fun processImageOcr(
        image: okhttp3.MultipartBody.Part,
        regions: okhttp3.RequestBody?,
        languages: okhttp3.RequestBody?,
        ocrParams: okhttp3.RequestBody?
    ): retrofit2.Response<com.example.mrcomic.data.network.dto.OcrResponseDto> {
        throw NotImplementedError()
    }

    override suspend fun translateText(
        request: com.example.mrcomic.data.network.dto.TranslationRequestDto
    ): retrofit2.Response<com.example.mrcomic.data.network.dto.TranslationResponseDto> {
        val mockResults = request.texts.map {
            com.example.mrcomic.data.network.dto.TranslatedTextDto(
                id = it.id,
                originalText = it.text,
                translatedText = "[RU] Preview translation for: ${it.text}",
                detectedSourceLanguage = request.sourceLanguage.takeIf { it != "auto" } ?: "en",
                engineUsed = request.translationParams?.engine ?: "preview_engine"
            )
        }
        val mockDto = com.example.mrcomic.data.network.dto.TranslationResponseDto(
            success = true,
            processingTimeMs = 120,
            results = mockResults,
            error = null
        )
        return retrofit2.Response.success(mockDto)
    }
}
private class GsonTranslate : com.google.gson.Gson()
}


