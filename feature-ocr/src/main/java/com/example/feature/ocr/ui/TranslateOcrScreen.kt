package com.example.feature.ocr.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.feature.ocr.ui.TranslateOcrViewModel

@Composable
fun TranslateOcrContent(
    recognizedText: String,
    currentLanguage: String,
    onLanguageChanged: (String) -> Unit,
    onTranslate: (String, String) -> Unit,
    translatedText: String?,
    isLoading: Boolean
) {
    var textToTranslate by remember { mutableStateOf(recognizedText) }
    var targetLanguage by remember { mutableStateOf(currentLanguage) }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text("Распознанный текст:")
        Spacer(modifier = Modifier.height(8.dp))
        TextField(
            value = textToTranslate,
            onValueChange = { textToTranslate = it },
            modifier = Modifier.fillMaxWidth(),
            readOnly = true
        )

        Spacer(modifier = Modifier.height(16.dp))

    Text("Целевой язык")
    Spacer(modifier = Modifier.height(8.dp))
    var expanded by remember { mutableStateOf(false) }
    val languages = listOf("en", "es", "fr", "de", "ru")
    Box {
        TextField(
            value = targetLanguage,
            onValueChange = {},
            readOnly = true,
            modifier = Modifier
                .fillMaxWidth()
                .clickable { expanded = true }
        )
        DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            languages.forEach { lang ->
                DropdownMenuItem(
                    text = { Text(lang.uppercase()) },
                    onClick = {
                        targetLanguage = lang
                        onLanguageChanged(lang)
                        expanded = false
                    }
                )
            }
        }
    }

        Spacer(modifier = Modifier.height(16.dp))

        Button(
            onClick = { onTranslate(textToTranslate, targetLanguage) },
            modifier = Modifier.fillMaxWidth(),
            enabled = !isLoading
        ) {
            if (isLoading) {
                CircularProgressIndicator(modifier = Modifier.size(24.dp))
            } else {
                Text("Перевести")
            }
        }

        Spacer(modifier = Modifier.height(16.dp))

        translatedText?.let {
            Text("Переведенный текст:")
            Spacer(modifier = Modifier.height(8.dp))
            TextField(
                value = it,
                onValueChange = {},
                modifier = Modifier.fillMaxWidth(),
                readOnly = true
            )
        }
    }
}



@Composable
fun TranslateOcrScreen(
    recognizedText: String,
    onTranslate: (String, String) -> Unit,
    translatedText: String?,
    isLoading: Boolean,
    viewModel: TranslateOcrViewModel = hiltViewModel()
) {
    val language by viewModel.targetLanguage.collectAsState()

    TranslateOcrContent(
        recognizedText = recognizedText,
        currentLanguage = language,
        onLanguageChanged = viewModel::onLanguageSelected,
        onTranslate = onTranslate,
        translatedText = translatedText,
        isLoading = isLoading
    )
}
