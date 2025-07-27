
package com.example.mrcomic.ui

import android.net.Uri
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.Image
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
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import coil.compose.rememberAsyncImagePainter
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun OcrCropScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier,
    viewModel: OcrViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val context = LocalContext.current

    val imagePickerLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.GetContent()
    ) { uri: Uri? ->
        viewModel.setSelectedImageUri(uri)
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("OCR Image") },
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
                    .verticalScroll(rememberScrollState()), // Для прокрутки если контент большой
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Button(onClick = { imagePickerLauncher.launch("image/*") }) {
                    Text("Select Image for OCR")
                }

                Spacer(modifier = Modifier.height(16.dp))

                uiState.selectedImageUri?.let { uri ->
                    Image(
                        painter = rememberAsyncImagePainter(uri),
                        contentDescription = "Selected image for OCR",
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(max = 300.dp) // Ограничим высоту для превью
                            .padding(vertical = 8.dp),
                        contentScale = ContentScale.Fit
                    )

                    // TODO: Добавить UI для выделения регионов (если необходимо)
                    // Сейчас регионы, языки и параметры можно передавать как JSON строки, если есть откуда их взять
                    // Например, из TextField или предопределенных настроек.
                    // val regionsJson = "{ \"x\": 0, ... }" (пример)

                    Button(
                        onClick = { viewModel.performOcr(uri /*, regionsJson = regionsJson, ... */) },
                        enabled = !uiState.isLoading
                    ) {
                        Text("Recognize Text")
                    }
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

                uiState.ocrResponse?.let { response ->
                    if (response.success) {
                        Text("OCR Results:", style = MaterialTheme.typography.titleMedium, modifier = Modifier.padding(top = 16.dp))
                        response.results?.forEach { result ->
                            Column(modifier = Modifier.padding(vertical = 8.dp)) {
                                Text("Text: ${result.text}")
                                result.confidence?.let { Text("Confidence: %.2f".format(it)) }
                                result.language?.let { Text("Language: $it") }
                                result.bbox?.let { Text("BBox: [${it.x},${it.y},${it.width},${it.height}]") }
                                // Можно добавить отображение result.words, если нужно
                            }
                            Divider()
                        }
                        if (response.results.isNullOrEmpty()){
                             Text("No text found or an error occurred in results.")
                        }
                    } else {
                         Text(
                            text = "OCR API Error: ${response.error?.message ?: "Unknown API error"}",
                            color = MaterialTheme.colorScheme.error,
                            modifier = Modifier.padding(vertical = 8.dp)
                        )
                    }
                }
            }
        }
    )
}

@Preview(showBackground = true, name = "OcrCropScreen - Light")
@Composable
fun OcrCropScreenPreview() {
    MrComicTheme {
        // Создаем мок ViewModel для превью, если он не может быть получен через hiltViewModel() в превью
        // или передаем uiState напрямую для разных сценариев превью
        val mockViewModel = OcrViewModel(OcrTranslationRepository(FakeApiService(), LocalContext.current, Gson())) // Заглушка
        OcrCropScreen(onNavigateBack = {}, viewModel = mockViewModel)
    }
}

// Заглушка ApiService для превью
private class FakeApiService : com.example.mrcomic.data.network.MrComicApiService {
    override suspend fun processImageOcr(
        image: okhttp3.MultipartBody.Part,
        regions: okhttp3.RequestBody?,
        languages: okhttp3.RequestBody?,
        ocrParams: okhttp3.RequestBody?
    ): retrofit2.Response<com.example.mrcomic.data.network.dto.OcrResponseDto> {
        // Возвращаем моковый успешный ответ для превью
        val mockDto = com.example.mrcomic.data.network.dto.OcrResponseDto(
            success = true,
            processingTimeMs = 100,
            results = listOf(
                com.example.mrcomic.data.network.dto.OcrResultDto(
                    regionId = "preview_region",
                    text = "Sample OCR text from preview",
                    confidence = 0.9f,
                    language = "eng",
                    bbox = com.example.mrcomic.data.network.dto.BoundingBoxDto(10,10,100,20),
                    words = emptyList()
                )
            ),
            error = null
        )
        return retrofit2.Response.success(mockDto)
    }

    override suspend fun translateText(
        request: com.example.mrcomic.data.network.dto.TranslationRequestDto
    ): retrofit2.Response<com.example.mrcomic.data.network.dto.TranslationResponseDto> {
        // Не используется в этом превью
        throw NotImplementedError()
    }
}
// Заглушка Gson для превью (если она нужна в FakeApiService или где-то еще)
private class Gson : com.google.gson.Gson()
}


