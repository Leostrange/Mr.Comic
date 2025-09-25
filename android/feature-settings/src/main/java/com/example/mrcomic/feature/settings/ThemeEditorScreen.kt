package com.example.mrcomic.feature.settings

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.clickable
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.ui.theme.*
import kotlinx.coroutines.flow.collectLatest
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack

/**
 * Экран редактора тем с пресетами
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ThemeEditorScreen(
    onNavigateBack: () -> Unit,
    viewModel: ThemeEditorViewModel = hiltViewModel()
) {
    val themeConfig by viewModel.themeConfig.collectAsState(
        initial = com.example.core.ui.theme.ThemeConfig()
    )
    val readerThemeConfig by viewModel.readerThemeConfig.collectAsState(
        initial = com.example.core.ui.theme.ReaderThemeConfig()
    )

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Редактор тем") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(
                            imageVector = Icons.Default.ArrowBack,
                            contentDescription = "Назад"
                        )
                    }
                }
            )
        }
    ) { paddingValues ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Пресеты тем
            item {
                Text(
                    text = "Пресеты тем",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }

            item {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                    )
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // Системная тема
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { viewModel.setThemeMode(ThemeMode.SYSTEM) },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Системная", style = MaterialTheme.typography.bodyLarge)
                            RadioButton(
                                selected = themeConfig.themeMode == ThemeMode.SYSTEM,
                                onClick = { viewModel.setThemeMode(ThemeMode.SYSTEM) }
                            )
                        }

                        // Светлая тема
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { viewModel.setThemeMode(ThemeMode.LIGHT) },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Светлая", style = MaterialTheme.typography.bodyLarge)
                            RadioButton(
                                selected = themeConfig.themeMode == ThemeMode.LIGHT,
                                onClick = { viewModel.setThemeMode(ThemeMode.LIGHT) }
                            )
                        }

                        // Тёмная тема
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { viewModel.setThemeMode(ThemeMode.DARK) },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Тёмная", style = MaterialTheme.typography.bodyLarge)
                            RadioButton(
                                selected = themeConfig.themeMode == ThemeMode.DARK,
                                onClick = { viewModel.setThemeMode(ThemeMode.DARK) }
                            )
                        }
                    }
                }
            }

            // Специальные пресеты
            item {
                Text(
                    text = "Специальные темы",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }

            item {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                    )
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // Сепия
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { viewModel.setReaderThemeMode(ReaderThemeMode.SEPIA) },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Сепия (для чтения)", style = MaterialTheme.typography.bodyLarge)
                            RadioButton(
                                selected = readerThemeConfig.themeMode == ReaderThemeMode.SEPIA,
                                onClick = { viewModel.setReaderThemeMode(ReaderThemeMode.SEPIA) }
                            )
                        }

                        // AMOLED
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { viewModel.setReaderThemeMode(ReaderThemeMode.BLACK) },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("AMOLED (чёрный)", style = MaterialTheme.typography.bodyLarge)
                            RadioButton(
                                selected = readerThemeConfig.themeMode == ReaderThemeMode.BLACK,
                                onClick = { viewModel.setReaderThemeMode(ReaderThemeMode.BLACK) }
                            )
                        }

                        // Manga
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { viewModel.setReaderThemeMode(ReaderThemeMode.DARK) },
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Manga (тёмная)", style = MaterialTheme.typography.bodyLarge)
                            RadioButton(
                                selected = readerThemeConfig.themeMode == ReaderThemeMode.DARK,
                                onClick = { viewModel.setReaderThemeMode(ReaderThemeMode.DARK) }
                            )
                        }
                    }
                }
            }

            // Настройки Material You
            item {
                Text(
                    text = "Material You",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }

            item {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                    )
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Динамические цвета", style = MaterialTheme.typography.bodyLarge)
                            Switch(
                                checked = themeConfig.useDynamicColor,
                                onCheckedChange = { viewModel.setUseDynamicColor(it) }
                            )
                        }

                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("Чёрная тёмная тема", style = MaterialTheme.typography.bodyLarge)
                            Switch(
                                checked = themeConfig.useAmoledDark,
                                onCheckedChange = { viewModel.setUseAmoledDark(it) }
                            )
                        }
                    }
                }
            }

            // Предпросмотр
            item {
                Text(
                    text = "Предпросмотр",
                    style = MaterialTheme.typography.titleMedium,
                    color = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }

            item {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                    )
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // Предпросмотр цветов
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Surface(
                                color = MaterialTheme.colorScheme.primary,
                                shape = MaterialTheme.shapes.medium,
                                modifier = Modifier.weight(1f).height(40.dp)
                            ) {}
                            Surface(
                                color = MaterialTheme.colorScheme.secondary,
                                shape = MaterialTheme.shapes.medium,
                                modifier = Modifier.weight(1f).height(40.dp)
                            ) {}
                            Surface(
                                color = MaterialTheme.colorScheme.tertiary,
                                shape = MaterialTheme.shapes.medium,
                                modifier = Modifier.weight(1f).height(40.dp)
                            ) {}
                        }

                        Text(
                            text = "Выберите пресет выше, чтобы увидеть изменения",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.align(Alignment.CenterHorizontally)
                        )
                    }
                }
            }
        }
    }
}
