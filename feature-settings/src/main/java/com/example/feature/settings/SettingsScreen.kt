package com.example.feature.settings

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ExposedDropdownMenuBox
import androidx.compose.material3.ExposedDropdownMenuDefaults
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen() {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(text = "Настройки", modifier = Modifier.padding(bottom = 16.dp))

        // Управление темами
        var expandedTheme by remember { mutableStateOf(false) }
        val themes = listOf("Светлая", "Темная", "Системная")
        var selectedThemeText by remember { mutableStateOf(themes[0]) }

        ExposedDropdownMenuBox(
            expanded = expandedTheme,
            onExpandedChange = {
                expandedTheme = !expandedTheme
            }
        ) {
            TextField(
                value = selectedThemeText,
                onValueChange = {},
                readOnly = true,
                label = { Text("Тема") },
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedTheme) },
                modifier = Modifier.menuAnchor()
            )

            ExposedDropdownMenu(
                expanded = expandedTheme,
                onDismissRequest = { expandedTheme = false }
            ) {
                themes.forEach { item ->
                    DropdownMenuItem(
                        text = { Text(text = item) },
                        onClick = {
                            selectedThemeText = item
                            expandedTheme = false
                        }
                    )
                }
            }
        }

        // Выбор режимов чтения по умолчанию
        var expandedReadingMode by remember { mutableStateOf(false) }
        val readingModes = listOf("Постранично", "Вебтун")
        var selectedReadingModeText by remember { mutableStateOf(readingModes[0]) }

        ExposedDropdownMenuBox(
            expanded = expandedReadingMode,
            onExpandedChange = {
                expandedReadingMode = !expandedReadingMode
            },
            modifier = Modifier.padding(top = 16.dp)
        ) {
            TextField(
                value = selectedReadingModeText,
                onValueChange = {},
                readOnly = true,
                label = { Text("Режим чтения по умолчанию") },
                trailingIcon = { ExposedDropdownMenuDefaults.TrailingIcon(expanded = expandedReadingMode) },
                modifier = Modifier.menuAnchor()
            )

            ExposedDropdownMenu(
                expanded = expandedReadingMode,
                onDismissRequest = { expandedReadingMode = false }
            ) {
                readingModes.forEach { item ->
                    DropdownMenuItem(
                        text = { Text(text = item) },
                        onClick = {
                            selectedReadingModeText = item
                            expandedReadingMode = false
                        }
                    )
                }
            }
        }
    }
}


