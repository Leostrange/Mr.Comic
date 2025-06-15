package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.mrcomic.data.ThemeMode
import com.example.mrcomic.data.ThemeSettings
import com.example.mrcomic.viewmodel.SettingsViewModel
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.res.stringResource

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ThemeSettingsScreen(viewModel: SettingsViewModel) {
    val themeSettings by viewModel.themeSettings.collectAsState()
    var selectedTheme by remember { mutableStateOf(themeSettings.themeMode) }
    var dynamicColors by remember { mutableStateOf(themeSettings.dynamicColors) }
    var customColor by remember { mutableStateOf(themeSettings.primaryColor ?: "") }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(
            stringResource(R.string.theme_settings),
            style = MaterialTheme.typography.headlineMedium,
            modifier = Modifier.semantics { contentDescription = stringResource(R.string.theme_settings) }
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(stringResource(R.string.theme_mode))
        RadioGroup(
            options = ThemeMode.values().map { stringResource(it.labelRes) },
            selectedOption = stringResource(selectedTheme.labelRes),
            onOptionSelected = { selected ->
                selectedTheme = ThemeMode.values().first { stringResource(it.labelRes) == selected }
            }
        )
        Spacer(modifier = Modifier.height(8.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(stringResource(R.string.dynamic_colors))
            Switch(
                checked = dynamicColors,
                onCheckedChange = { dynamicColors = it },
                modifier = Modifier.semantics { contentDescription = stringResource(R.string.dynamic_colors) }
            )
        }
        Spacer(modifier = Modifier.height(8.dp))
        if (!dynamicColors) {
            TextField(
                value = customColor,
                onValueChange = { customColor = it },
                label = { Text(stringResource(R.string.custom_color_hex)) },
                modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.custom_color_hex) }
            )
        }
        Spacer(modifier = Modifier.height(16.dp))
        Button(
            onClick = {
                viewModel.saveThemeSettings(
                    ThemeSettings(
                        themeMode = selectedTheme,
                        dynamicColors = dynamicColors,
                        primaryColor = if (dynamicColors) null else customColor
                    )
                )
            },
            modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.save) }
        ) {
            Text(stringResource(R.string.save))
        }
    }
}

@Composable
fun RadioGroup(
    options: List<String>,
    selectedOption: String,
    onOptionSelected: (String) -> Unit
) {
    Column {
        options.forEach { option ->
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(8.dp)
                    .semantics { contentDescription = option }
            ) {
                RadioButton(
                    selected = selectedOption == option,
                    onClick = { onOptionSelected(option) },
                    modifier = Modifier.semantics { contentDescription = option }
                )
                Text(option, modifier = Modifier.padding(start = 8.dp))
            }
        }
    }
} 