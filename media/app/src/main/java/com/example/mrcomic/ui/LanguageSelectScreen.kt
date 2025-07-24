
package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.feature.ocr.ui.TranslateOcrViewModel
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LanguageSelectScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier,
    viewModel: TranslateOcrViewModel = hiltViewModel()
) {
    val currentLanguage by viewModel.targetLanguage.collectAsState()
    val languages = listOf("en", "es", "fr", "de", "ru")
    val flags = mapOf(
        "en" to "\uD83C\uDDEC\uD83C\uDDE7",
        "es" to "\uD83C\uDDEA\uD83C\uDDF8",
        "fr" to "\uD83C\uDDEB\uD83C\uDDF7",
        "de" to "\uD83C\uDDE9\uD83C\uDDEA",
        "ru" to "\uD83C\uDDF7\uD83C\uDDFA"
    )

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Select Language") },
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
            ) {
                languages.forEach { lang ->
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable {
                                viewModel.onLanguageSelected(lang)
                                onNavigateBack()
                            }
                            .padding(16.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(text = "${flags[lang] ?: ""} ${lang.uppercase()}", modifier = Modifier.weight(1f))
                        if (lang == currentLanguage) {
                            Icon(Icons.Default.Check, contentDescription = null)
                        }
                    }
                }
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun LanguageSelectScreenVerticalPreview() {
    MrComicTheme {
        LanguageSelectScreen(onNavigateBack = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun LanguageSelectScreenHorizontalPreview() {
    MrComicTheme {
        LanguageSelectScreen(onNavigateBack = {})
    }
}


