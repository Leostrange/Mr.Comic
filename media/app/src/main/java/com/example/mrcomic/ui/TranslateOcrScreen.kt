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
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.sp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun TranslateOcrScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Переводы и OCR") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Назад")
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
            ) {
                Text("Переводы и OCR", fontSize = 20.sp, fontWeight = FontWeight.Bold)
                Spacer(Modifier.height(8.dp))
                Text("OCR движок")
                DropdownMenuBox(items = listOf("Tesseract", "MLKit"))
                Spacer(Modifier.height(8.dp))
                Text("Поставщики перевода")
                Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                    Text("• Google Translate API")
                    Text("• DeepL API")
                    Text("• OpenAI Whisper")
                    Button(onClick = {}) { Text("Добавить API ключ") }
                }
                Spacer(Modifier.height(8.dp))
                Text("Оффлайн модели")
                Row(horizontalArrangement = Arrangement.SpaceBetween) {
                    Text("Whisper")
                    Button(onClick = {}) { Text("Скачать") }
                }
            }
        }
    )
}

@Composable
fun DropdownMenuBox(items: List<String>) {
    var expanded by remember { mutableStateOf(false) }
    var selected by remember { mutableStateOf(items.first()) }
    Box {
        Button(onClick = { expanded = true }) { Text(selected) }
        DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            items.forEach { DropdownMenuItem(onClick = { selected = it expanded = false }) { Text(it) } }
        }
    }
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun TranslateOcrScreenVerticalPreview() {
    MrComicTheme {
        TranslateOcrScreen(onNavigateBack = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun TranslateOcrScreenHorizontalPreview() {
    MrComicTheme {
        TranslateOcrScreen(onNavigateBack = {})
    }
}


