package com.example.feature.ocr.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun TranslateOcrScreen(recognizedText: String, onTranslate: (String, String) -> Unit, translatedText: String?, isLoading: Boolean) {
    var textToTranslate by remember { mutableStateOf(recognizedText) }
    var targetLanguage by remember { mutableStateOf("en") } // По умолчанию английский

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

        Text("Целевой язык (например, en, es, fr):")
        Spacer(modifier = Modifier.height(8.dp))
        TextField(
            value = targetLanguage,
            onValueChange = { targetLanguage = it },
            modifier = Modifier.fillMaxWidth()
        )

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


