package com.example.mrcomic.icons

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.ui.theme.MrComicTheme
import kotlinx.coroutines.launch

/**
 * Экран настроек иконки приложения
 * Позволяет выбрать одну из 7 доступных иконок
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AppIconSettingsScreen(
    onBackClick: () -> Unit = {},
    viewModel: AppIconSettingsViewModel = hiltViewModel()
) {
    val currentIcon by viewModel.currentIcon.collectAsState(initial = "icon_1")
    val availableIcons = viewModel.getAvailableIcons()
    val isLoading by viewModel.isLoading.collectAsState(initial = false)
    val context = LocalContext.current
    val scope = rememberCoroutineScope()
    
    // Состояние для диалога подтверждения
    var showRestartDialog by remember { mutableStateOf(false) }
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { 
                    Text("Иконка приложения") 
                },
                navigationIcon = {
                    IconButton(onClick = onBackClick) {
                        Icon(
                            Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Назад"
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.surface
                )
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp)
        ) {
            // Информационная карточка
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.primaryContainer
                )
            ) {
                Column(
                    modifier = Modifier.padding(16.dp)
                ) {
                    Text(
                        text = "Персонализация",
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.Bold,
                        color = MaterialTheme.colorScheme.onPrimaryContainer
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "Выберите иконку приложения, которая больше всего подходит вашему стилю. Изменения применятся после перезапуска.",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onPrimaryContainer
                    )
                }
            }
            
            Spacer(modifier = Modifier.height(16.dp))
            
            // Список иконок
            LazyColumn(
                verticalArrangement = Arrangement.spacedBy(8.dp),
                modifier = Modifier.weight(1f)
            ) {
                items(availableIcons) { icon ->
                    AppIconItem(
                        icon = icon,
                        isSelected = icon.id == currentIcon,
                        isLoading = isLoading,
                        onClick = {
                            scope.launch {
                                val success = viewModel.changeIcon(icon.id)
                                if (success) {
                                    showRestartDialog = true
                                }
                            }
                        }
                    )
                }
            }
            
            // Нижняя информация
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.surfaceVariant
                )
            ) {
                Row(
                    modifier = Modifier.padding(16.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        Icons.Default.Info,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary
                    )
                    Spacer(modifier = Modifier.width(12.dp))
                    Text(
                        text = "После смены иконки рекомендуется перезапустить приложение для корректного отображения в лаунчере.",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        }
    }
    
    // Диалог подтверждения перезапуска
    if (showRestartDialog) {
        AlertDialog(
            onDismissRequest = { showRestartDialog = false },
            title = {
                Text("Иконка изменена!")
            },
            text = {
                Text("Иконка приложения была успешно изменена. Хотите перезапустить приложение для применения изменений?")
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        showRestartDialog = false
                        viewModel.restartApp()
                    }
                ) {
                    Text("Перезапустить")
                }
            },
            dismissButton = {
                TextButton(
                    onClick = { showRestartDialog = false }
                ) {
                    Text("Позже")
                }
            }
        )
    }
}

/**
 * Элемент списка иконок
 */
@Composable
private fun AppIconItem(
    icon: AppIcon,
    isSelected: Boolean,
    isLoading: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Card(
        modifier = modifier
            .fillMaxWidth()
            .clickable(enabled = !isLoading) { onClick() }
            .then(
                if (isSelected) {
                    Modifier.border(
                        2.dp,
                        MaterialTheme.colorScheme.primary,
                        RoundedCornerShape(12.dp)
                    )
                } else {
                    Modifier
                }
            ),
        colors = CardDefaults.cardColors(
            containerColor = if (isSelected) {
                MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.3f)
            } else {
                MaterialTheme.colorScheme.surface
            }
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Превью иконки (пока что плейсхолдер)
            Box(
                modifier = Modifier
                    .size(56.dp)
                    .clip(RoundedCornerShape(12.dp))
                    .background(
                        when (icon.id) {
                            "icon_1" -> Color(0xFF6366F1) // Классическая - синяя
                            "icon_2" -> Color(0xFF1F2937) // Тёмная - серая
                            "icon_3" -> Color(0xFFEF4444) // Яркая - красная
                            "icon_4" -> Color(0xFF10B981) // Минимализм - зелёная
                            "icon_5" -> Color(0xFFF59E0B) // Ретро - жёлтая
                            "icon_6" -> Color(0xFF8B5CF6) // Неон - фиолетовая
                            "icon_7" -> Color(0xFFD97706) // Премиум - золотая
                            else -> MaterialTheme.colorScheme.primary
                        }
                    ),
                contentAlignment = Alignment.Center
            ) {
                // Простая иконка приложения как плейсхолдер
                Icon(
                    Icons.Default.Apps,
                    contentDescription = null,
                    tint = Color.White,
                    modifier = Modifier.size(32.dp)
                )
            }
            
            Spacer(modifier = Modifier.width(16.dp))
            
            // Информация об иконке
            Column(
                modifier = Modifier.weight(1f)
            ) {
                Text(
                    text = icon.name,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                    color = if (isSelected) {
                        MaterialTheme.colorScheme.primary
                    } else {
                        MaterialTheme.colorScheme.onSurface
                    }
                )
                Text(
                    text = icon.description,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            
            // Индикатор выбора
            if (isSelected) {
                Icon(
                    Icons.Default.CheckCircle,
                    contentDescription = "Выбрано",
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.size(24.dp)
                )
            } else {
                Icon(
                    Icons.Default.RadioButtonUnchecked,
                    contentDescription = "Не выбрано",
                    tint = MaterialTheme.colorScheme.onSurfaceVariant,
                    modifier = Modifier.size(24.dp)
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun AppIconSettingsScreenPreview() {
    MrComicTheme {
        AppIconSettingsScreen()
    }
}
