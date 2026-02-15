package com.example.feature.ocr.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.example.core.model.TranslationPair
import dagger.hilt.android.lifecycle.HiltViewModel
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class TranslationViewModel @Inject constructor() : ViewModel() {

    private val _savedTranslations = MutableStateFlow<List<TranslationPair>>(emptyList())
    val savedTranslations: StateFlow<List<TranslationPair>> = _savedTranslations.asStateFlow()

    fun saveTranslations(translatedRegions: List<TranslatedRegion>) {
        viewModelScope.launch {
            // Placeholder: save to database or repository
            // For now, just store in memory
            val translations = translatedRegions.map { translated ->
                TranslationPair(
                    id = translated.original.id,
                    originalText = translated.original.text,
                    translatedText = translated.translatedText,
                    sourceLanguage = translated.original.language,
                    targetLanguage = "en", // Assume
                    confidence = translated.original.confidence,
                    translationEngine = "ocr"
                )
            }
            _savedTranslations.value = translations
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TranslationScreen(
    translatedRegions: List<TranslatedRegion>,
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val viewModel: TranslationViewModel = viewModel()
    val savedTranslations by viewModel.savedTranslations.collectAsState()

    LaunchedEffect(translatedRegions) {
        if (translatedRegions.isNotEmpty()) {
            viewModel.saveTranslations(translatedRegions)
        }
    }

    Column(modifier = modifier.fillMaxSize()) {
        TopAppBar(
            title = { Text("Translation Results") },
            navigationIcon = {
                IconButton(onClick = onNavigateBack) {
                    Icon(
                        imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                        contentDescription = "Back"
                    )
                }
            }
        )

        LazyColumn(modifier = Modifier.weight(1f)) {
            items(savedTranslations) { translation ->
                Card(modifier = Modifier.padding(8.dp)) {
                    Column(modifier = Modifier.padding(16.dp)) {
                        Text("Original: ${translation.originalText}")
                        Text("Translated: ${translation.translatedText}")
                        Text("From ${translation.sourceLanguage} to ${translation.targetLanguage}")
                    }
                }
            }
        }

        Button(
            onClick = { /* TODO: Export or share */ },
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            Text("Export Results")
        }
    }
}