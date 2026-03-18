package com.example.feature.onboarding

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.ui.theme.ReadingPreset
import com.example.core.ui.theme.style

@Composable
fun OnboardingScreen(
    onOnboardingComplete: () -> Unit,
    viewModel: OnboardingViewModel = hiltViewModel()
) {
    var selectedPreset by remember { mutableStateOf(ReadingPreset.PAPER) }
    val scrollState = rememberScrollState()

    Scaffold(
        bottomBar = {
            Surface(shadowElevation = 6.dp, tonalElevation = 2.dp) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .navigationBarsPadding()
                        .padding(horizontal = 24.dp, vertical = 16.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    TextButton(
                        onClick = {
                            viewModel.completeOnboarding(selectedPreset, onOnboardingComplete)
                        }
                    ) {
                        Text("Пропустить")
                    }
                    Button(
                        onClick = {
                            viewModel.completeOnboarding(selectedPreset, onOnboardingComplete)
                        },
                        contentPadding = PaddingValues(horizontal = 22.dp, vertical = 12.dp)
                    ) {
                        Text("Начать")
                    }
                }
            }
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .verticalScroll(scrollState)
                .padding(horizontal = 24.dp, vertical = 20.dp),
            verticalArrangement = Arrangement.spacedBy(20.dp)
        ) {
            WelcomeHero()
            WelcomeHighlights()
            Text(
                text = "Стиль чтения",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            PresetChoiceList(
                selectedPreset = selectedPreset,
                onPresetSelected = { selectedPreset = it }
            )
        }
    }
}

@Composable
private fun WelcomeHero() {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(32.dp),
        color = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.52f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(24.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp)
        ) {
            Surface(
                shape = CircleShape,
                color = MaterialTheme.colorScheme.primary.copy(alpha = 0.12f)
            ) {
                androidx.compose.material3.Icon(
                    Icons.AutoMirrored.Filled.MenuBook,
                    contentDescription = null,
                    modifier = Modifier.padding(16.dp).size(28.dp),
                    tint = MaterialTheme.colorScheme.primary
                )
            }
            Text(
                text = "Mr.Comic",
                style = MaterialTheme.typography.headlineMedium,
                fontWeight = FontWeight.SemiBold
            )
            Text(
                text = "Спокойный старт: добавляете локальные файлы, выбираете стиль чтения и дальше интерфейс не мешает.",
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun WelcomeHighlights() {
    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        WelcomeFeatureRow(
            icon = Icons.Default.FolderOpen,
            title = "Локальная библиотека",
            description = "Файл или папка добавляются из библиотеки без обязательного облака."
        )
        WelcomeFeatureRow(
            icon = Icons.AutoMirrored.Filled.MenuBook,
            title = "Continue только для читаемого",
            description = "Экран «Продолжить» показывает только те тайтлы, которые действительно в процессе."
        )
        WelcomeFeatureRow(
            icon = Icons.Default.Translate,
            title = "OCR по необходимости",
            description = "Перевод запускается из ридера, когда нужен, а не занимает главное место в интерфейсе."
        )
    }
}

@Composable
private fun WelcomeFeatureRow(
    icon: ImageVector,
    title: String,
    description: String
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(22.dp),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.22f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Surface(
                shape = CircleShape,
                color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.9f)
            ) {
                androidx.compose.material3.Icon(
                    icon,
                    contentDescription = null,
                    modifier = Modifier.padding(10.dp).size(18.dp),
                    tint = MaterialTheme.colorScheme.onSecondaryContainer
                )
            }
            Column(modifier = Modifier.weight(1f)) {
                Text(title, style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.SemiBold)
                Spacer(Modifier.height(2.dp))
                Text(
                    text = description,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun PresetChoiceList(
    selectedPreset: ReadingPreset,
    onPresetSelected: (ReadingPreset) -> Unit
) {
    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        PresetChoiceCard(
            preset = ReadingPreset.PAPER,
            title = "Paper",
            description = "Светлый лист и мягкий контраст для длинного чтения.",
            isSelected = selectedPreset == ReadingPreset.PAPER,
            onClick = { onPresetSelected(ReadingPreset.PAPER) }
        )
        PresetChoiceCard(
            preset = ReadingPreset.NIGHT_INK,
            title = "Night Ink",
            description = "Тёмный ридер и приглушённая яркость для вечерних сессий.",
            isSelected = selectedPreset == ReadingPreset.NIGHT_INK,
            onClick = { onPresetSelected(ReadingPreset.NIGHT_INK) }
        )
        PresetChoiceCard(
            preset = ReadingPreset.EINK,
            title = "E-Ink",
            description = "Высокий контраст и минимум лишнего для e-ink и спокойного чтения.",
            isSelected = selectedPreset == ReadingPreset.EINK,
            onClick = { onPresetSelected(ReadingPreset.EINK) }
        )
    }
}

@Composable
private fun PresetChoiceCard(
    preset: ReadingPreset,
    title: String,
    description: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    val style = preset.style()
    val background = style.backgroundColor?.let { Color(it.toInt()) } ?: MaterialTheme.colorScheme.surface
    val primary = style.primaryColor?.let { Color(it.toInt()) } ?: MaterialTheme.colorScheme.primary
    val secondary = style.secondaryColor?.let { Color(it.toInt()) } ?: MaterialTheme.colorScheme.secondary

    Surface(
        modifier = Modifier
            .fillMaxWidth()
            .border(
                width = if (isSelected) 2.dp else 1.dp,
                color = if (isSelected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.outlineVariant,
                shape = RoundedCornerShape(24.dp)
            )
            .clickable(onClick = onClick),
        shape = RoundedCornerShape(24.dp),
        color = MaterialTheme.colorScheme.surface
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(title, style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.SemiBold)
                Text(
                    text = description,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                listOf(primary, secondary, background).forEach { swatch ->
                    Box(
                        modifier = Modifier
                            .size(14.dp)
                            .background(swatch, CircleShape)
                            .border(1.dp, Color.Black.copy(alpha = 0.08f), CircleShape)
                    )
                }
            }
        }
    }
}
