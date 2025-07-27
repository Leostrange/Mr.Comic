package com.example.core.ui.components

import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MrComicTopBar(title: String) {
    TopAppBar(
        title = { Text(text = title) }
    )
} 