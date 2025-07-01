package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScreen(modifier: Modifier = Modifier) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Mr. Comic") }
            )
        },
        content = { paddingValues ->
            Column(
                modifier = modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(16.dp)
            ) {
                Text("Welcome to Mr. Comic!", style = MaterialTheme.typography.headlineMedium)
                Spacer(modifier = Modifier.height(16.dp))
                // Placeholder for content based on mockups
                Text("This is a placeholder for the main screen content.")
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun MainScreenVerticalPreview() {
    MrComicTheme {
        MainScreen()
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun MainScreenHorizontalPreview() {
    MrComicTheme {
        MainScreen()
    }
}


