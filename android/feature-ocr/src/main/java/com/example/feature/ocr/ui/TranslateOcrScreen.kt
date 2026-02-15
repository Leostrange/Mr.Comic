package com.example.feature.ocr.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.Alignment
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.TextRegion

data class TranslatedRegion(
    val original: TextRegion,
    val translatedText: String
)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TranslateOcrScreen(
    textRegions: List<TextRegion>,
    onTranslationsReady: (List<TranslatedRegion>) -> Unit,
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val viewModel: TranslateOcrViewModel = hiltViewModel()
    // Simplified: just show targets without translation for now
    var translatedRegions by remember { mutableStateOf(textRegions.map { TranslatedRegion(it, it.text) }) }
    var isTranslating by remember { mutableStateOf(false) }

    Column(modifier = modifier.fillMaxSize()) {
        TopAppBar(
            title = { Text("Translate OCR Results") },
            navigationIcon = {
                IconButton(onClick = onNavigateBack) {
                    // Back icon
                }
            }
        )

        if (isTranslating) {
            CircularProgressIndicator(modifier = Modifier.align(Alignment.CenterHorizontally))
        } else {
            LazyColumn(modifier = Modifier.weight(1f)) {
                itemsIndexed(translatedRegions) { index, translated ->
                    Card(modifier = Modifier.padding(8.dp)) {
                        Column(modifier = Modifier.padding(16.dp)) {
                            Text("Original: ${translated.original.text}")
                            OutlinedTextField(
                                value = translated.translatedText,
                                onValueChange = { newText ->
                                    translatedRegions = translatedRegions.toMutableList().also {
                                        it[index] = translated.copy(translatedText = newText)
                                    }
                                },
                                label = { Text("Translation") },
                                modifier = Modifier.fillMaxWidth()
                            )
                        }
                    }
                }
            }

            Button(
                onClick = { onTranslationsReady(translatedRegions) },
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                enabled = translatedRegions.isNotEmpty()
            ) {
                Text("Save and View Results")
            }
        }
    }
}