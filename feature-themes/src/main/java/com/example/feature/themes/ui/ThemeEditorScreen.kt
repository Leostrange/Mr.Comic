package com.example.feature.themes.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ThemeEditorScreen(
    themeName: String?,
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    var primaryColor by remember { mutableStateOf("#000000") }
    var backgroundColor by remember { mutableStateOf("#FFFFFF") }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(text = themeName ?: "Theme Editor") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        }
    ) { padding ->
        Column(
            modifier = modifier
                .fillMaxSize()
                .padding(padding)
                .padding(16.dp)
        ) {
            OutlinedTextField(
                value = primaryColor,
                onValueChange = { primaryColor = it },
                label = { Text("Primary color") }
            )
            Spacer(Modifier.height(8.dp))
            OutlinedTextField(
                value = backgroundColor,
                onValueChange = { backgroundColor = it },
                label = { Text("Background color") }
            )
            Spacer(Modifier.height(16.dp))
            Button(onClick = { /* Save not implemented */ }) {
                Text("Save")
            }
        }
    }
}
