package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.example.mrcomic.data.LocalizationManager
import com.example.mrcomic.R
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics

@Composable
fun LanguageSettingsScreen() {
    val context = LocalContext.current
    val languages = listOf(
        stringResource(R.string.lang_en) to "en",
        stringResource(R.string.lang_ru) to "ru",
        stringResource(R.string.lang_es) to "es"
    )
    var selectedLanguage by remember { mutableStateOf(LocalizationManager.getCurrentLanguage(context)) }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(
            stringResource(R.string.language_settings),
            style = MaterialTheme.typography.headlineMedium,
            modifier = Modifier.semantics { contentDescription = stringResource(R.string.language_settings) }
        )
        Spacer(modifier = Modifier.height(16.dp))
        languages.forEach { (name, code) ->
            Row(
                verticalAlignment = Alignment.CenterVertically,
                modifier = Modifier.fillMaxWidth().semantics { contentDescription = name }
            ) {
                RadioButton(
                    selected = selectedLanguage == code,
                    onClick = {
                        selectedLanguage = code
                        LocalizationManager.setLocale(context, code)
                        // Для применения локали может потребоваться перезапуск Activity
                    },
                    modifier = Modifier.semantics { contentDescription = name }
                )
                Text(name, modifier = Modifier.padding(start = 8.dp))
            }
        }
    }
} 