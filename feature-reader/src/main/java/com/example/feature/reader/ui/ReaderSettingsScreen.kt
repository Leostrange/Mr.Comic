package com.example.feature.reader.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.compose.material3.CenterAlignedTopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.material3.ExperimentalMaterial3Api

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ReaderSettingsScreen(viewModel: ReaderSettingsViewModel = hiltViewModel()) {
    val lineSpacing by viewModel.lineSpacing.collectAsState()
    val font by viewModel.font.collectAsState()
    val background by viewModel.background.collectAsState()

    Scaffold(topBar = { 
        CenterAlignedTopAppBar(
            title = { androidx.compose.material3.Text("Reader Settings") },
            colors = TopAppBarDefaults.centerAlignedTopAppBarColors(
                containerColor = androidx.compose.material3.MaterialTheme.colorScheme.primaryContainer
            )
        )
    }) { padding ->
        Column(modifier = Modifier.padding(padding).padding(16.dp)) {
            Text("Line spacing: %.1f".format(lineSpacing))
            Slider(
                value = lineSpacing,
                onValueChange = viewModel::onLineSpacingChanged,
                valueRange = 1f..2f
            )

            FontDropdown(current = font, onSelected = viewModel::onFontSelected)
            BackgroundPicker(current = background, onSelected = viewModel::onBackgroundSelected)
        }
    }
}

@Composable
private fun FontDropdown(current: String, onSelected: (String) -> Unit) {
    var expanded by remember { mutableStateOf(false) }
    Row(modifier = Modifier
        .fillMaxWidth()
        .clickable { expanded = true }
        .padding(vertical = 16.dp)) {
        Text("Font: $current", modifier = Modifier.weight(1f))
        IconButton(onClick = { expanded = true }) {
            Icon(imageVector = Icons.Default.ArrowDropDown, contentDescription = null)
        }
        DropdownMenu(expanded = expanded, onDismissRequest = { expanded = false }) {
            listOf("Sans", "Serif", "Monospace").forEach { font ->
                DropdownMenuItem(text = { Text(font) }, onClick = {
                    onSelected(font)
                    expanded = false
                })
            }
        }
    }
}

@Composable
private fun BackgroundPicker(current: Long, onSelected: (Long) -> Unit) {
    val options = listOf(0xFFFFFFFF, 0xFF000000, 0xFFF5E7C0)
    Column(modifier = Modifier.padding(vertical = 16.dp)) {
        Text("Background")
        Row(verticalAlignment = Alignment.CenterVertically) {
            options.forEach { colorLong ->
                val selected = colorLong == current
                val color = Color(colorLong)
                androidx.compose.foundation.layout.Box(
                    modifier = Modifier
                        .padding(end = 8.dp)
                        .size(if (selected) 40.dp else 32.dp)
                        .background(color)
                        .clickable { onSelected(colorLong) }
                )
            }
        }
    }
}
