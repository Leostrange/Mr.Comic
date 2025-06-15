package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.mrcomic.data.ColorFilterType
import com.example.mrcomic.data.PageTransition
import com.example.mrcomic.data.ReaderSettings
import com.example.mrcomic.viewmodel.SettingsViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ReaderSettingsScreen(viewModel: SettingsViewModel) {
    val readerSettings by viewModel.readerSettings.collectAsState()
    var fontSize by remember { mutableStateOf(readerSettings.fontSize) }
    var fontStyle by remember { mutableStateOf(readerSettings.fontStyle) }
    var brightness by remember { mutableStateOf(readerSettings.brightness) }
    var colorFilter by remember { mutableStateOf(readerSettings.colorFilter) }
    var pageTransition by remember { mutableStateOf(readerSettings.pageTransition) }
    var pageMargin by remember { mutableStateOf(readerSettings.pageMargin) }
    var columns by remember { mutableStateOf(readerSettings.columns) }
    var customCss by remember { mutableStateOf(readerSettings.customCss) }
    var soundEnabled by remember { mutableStateOf(readerSettings.soundEnabled) }
    var soundType by remember { mutableStateOf(readerSettings.soundType) }
    var vibrationEnabled by remember { mutableStateOf(readerSettings.vibrationEnabled) }
    var vibrationPattern by remember { mutableStateOf(readerSettings.vibrationPattern) }
    var powerSavingMode by remember { mutableStateOf(readerSettings.powerSavingMode) }
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text("Настройки ридера", style = MaterialTheme.typography.headlineMedium)
        Spacer(modifier = Modifier.height(16.dp))
        Text("Размер шрифта")
        Slider(
            value = fontSize.toFloat(),
            onValueChange = { fontSize = it.toInt() },
            valueRange = 12f..24f,
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text("Стиль шрифта")
        RadioGroup(
            options = listOf("Roboto", "Serif", "Sans"),
            selectedOption = fontStyle,
            onOptionSelected = { fontStyle = it }
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text("Яркость")
        Slider(
            value = brightness,
            onValueChange = { brightness = it },
            valueRange = 0.5f..1f,
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text("Цветовой фильтр")
        RadioGroup(
            options = ColorFilterType.values().map { it.name },
            selectedOption = colorFilter.name,
            onOptionSelected = { colorFilter = ColorFilterType.valueOf(it) }
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text("Анимация перехода страниц")
        RadioGroup(
            options = PageTransition.values().map { it.name },
            selectedOption = pageTransition.name,
            onOptionSelected = { pageTransition = PageTransition.valueOf(it) }
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text("Отступы страниц (dp)")
        Slider(
            value = pageMargin.toFloat(),
            onValueChange = { pageMargin = it.toInt() },
            valueRange = 0f..64f,
            steps = 12,
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text("Колонки (только EPUB)")
        Slider(
            value = columns.toFloat(),
            onValueChange = { columns = it.toInt() },
            valueRange = 1f..4f,
            steps = 2,
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text("Пользовательский CSS")
        OutlinedTextField(
            value = customCss,
            onValueChange = { customCss = it },
            modifier = Modifier
                .fillMaxWidth()
                .height(120.dp),
            placeholder = { Text("body { color: red; }") },
            maxLines = 6
        )
        Spacer(modifier = Modifier.height(8.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text("Звук перелистывания")
            Switch(
                checked = soundEnabled,
                onCheckedChange = { soundEnabled = it }
            )
        }
        if (soundEnabled) {
            Text("Тип звука")
            RadioGroup(
                options = ReaderSoundType.values().map { it.name },
                selectedOption = soundType.name,
                onOptionSelected = { soundType = ReaderSoundType.valueOf(it) }
            )
        }
        Spacer(modifier = Modifier.height(8.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text("Вибрация")
            Switch(
                checked = vibrationEnabled,
                onCheckedChange = { vibrationEnabled = it }
            )
        }
        if (vibrationEnabled) {
            Text("Тип вибрации")
            RadioGroup(
                options = ReaderVibrationPattern.values().map { it.name },
                selectedOption = vibrationPattern.name,
                onOptionSelected = { vibrationPattern = ReaderVibrationPattern.valueOf(it) }
            )
        }
        Spacer(modifier = Modifier.height(8.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text("Энергосберегающий режим")
            Switch(
                checked = powerSavingMode,
                onCheckedChange = { powerSavingMode = it }
            )
        }
        Spacer(modifier = Modifier.height(16.dp))
        Button(
            onClick = {
                viewModel.saveReaderSettings(
                    ReaderSettings(
                        fontSize = fontSize,
                        fontStyle = fontStyle,
                        brightness = brightness,
                        colorFilter = colorFilter,
                        pageTransition = pageTransition,
                        pageMargin = pageMargin,
                        columns = columns,
                        customCss = customCss,
                        soundEnabled = soundEnabled,
                        soundType = soundType,
                        vibrationEnabled = vibrationEnabled,
                        vibrationPattern = vibrationPattern,
                        powerSavingMode = powerSavingMode
                    )
                )
            },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text("Сохранить")
        }
    }
} 