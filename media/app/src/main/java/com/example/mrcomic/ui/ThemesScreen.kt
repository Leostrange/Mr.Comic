
package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ThemesScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Themes") },
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
            ) {
                Text("This is the Themes Screen.", style = MaterialTheme.typography.headlineMedium)
                Spacer(modifier = Modifier.height(16.dp))
                // Placeholder for theme selection options based on mockups
                Text("Theme selection options will go here.")
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun ThemesScreenVerticalPreview() {
    MrComicTheme {
        ThemesScreen(onNavigateBack = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun ThemesScreenHorizontalPreview() {
    MrComicTheme {
        ThemesScreen(onNavigateBack = {})
    }
}


