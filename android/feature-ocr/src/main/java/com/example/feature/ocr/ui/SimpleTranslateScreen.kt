package com.example.feature.ocr.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.core.ui.components.MrComicCard
import com.example.core.ui.components.MrComicTextField

/**
 * Simplified translation screen without complex dependencies
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SimpleTranslateScreen(
    modifier: Modifier = Modifier
) {
    var inputText by remember { mutableStateOf("") }
    var outputText by remember { mutableStateOf("") }
    
    Column(
        modifier = modifier.fillMaxSize()
    ) {
        TopAppBar(
            title = {
                Text(
                    text = "Translation",
                    style = MaterialTheme.typography.headlineMedium
                )
            }
        )
        
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Text(
                text = "Text Translation",
                style = MaterialTheme.typography.headlineSmall,
                color = MaterialTheme.colorScheme.onSurface
            )
            
            MrComicCard {
                Column(
                    verticalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    MrComicTextField(
                        value = inputText,
                        onValueChange = { inputText = it },
                        label = "Enter text to translate",
                        placeholder = "Type text here...",
                        singleLine = false,
                        maxLines = 4
                    )
                    
                    if (outputText.isNotBlank()) {
                        MrComicTextField(
                            value = outputText,
                            onValueChange = { },
                            label = "Translation",
                            readOnly = true,
                            singleLine = false,
                            maxLines = 4
                        )
                    }
                }
            }
            
            Text(
                text = "OCR features coming soon...",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}
