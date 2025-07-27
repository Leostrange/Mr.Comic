package com.example.mrcomic.ui.screens.add_comic

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import com.example.core.ui.components.MrComicTopAppBar

@Composable
fun AddComicScreen(
    onComicAdded: () -> Unit,
    onNavigateUp: () -> Unit
) {
    Scaffold(topBar = { MrComicTopAppBar(title = "Add Comic") }) { paddingValues ->
        Box(
            modifier = Modifier.fillMaxSize().padding(paddingValues),
            contentAlignment = Alignment.Center
        ) {
            Text("Add Comic Screen (Placeholder)")
        }
    }
}