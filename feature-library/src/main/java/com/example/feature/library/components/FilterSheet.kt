package com.example.feature.library.components

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.core.model.ComicFormat
import com.example.feature.library.search.DateRange
import com.example.feature.library.search.ReadStatus
import com.example.feature.library.search.SearchFilters

/**
 * Bottom Sheet с фильтрами
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun FilterSheet(
    filters: SearchFilters,
    onFiltersChange: (SearchFilters) -> Unit,
    onDismiss: () -> Unit,
    modifier: Modifier = Modifier
) {
    var selectedFormats by remember { mutableStateOf(filters.formats) }
    var selectedReadStatus by remember { mutableStateOf(filters.readStatus) }
    var bookmarkedOnly by remember { mutableStateOf(filters.bookmarkedOnly) }
    var selectedDateRange by remember { mutableStateOf<DateRange?>(filters.dateRange) }
    
    ModalBottomSheet(
        onDismissRequest = onDismiss,
        modifier = modifier
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .verticalScroll(rememberScrollState())
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(24.dp)
        ) {
            // Заголовок
            Text(
                text = "Фильтры",
                style = MaterialTheme.typography.headlineSmall
            )
            
            // Форматы
            FilterSection(title = "Форматы") {
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    ComicFormat.values().filter { it != ComicFormat.UNKNOWN }.forEach { format ->
                        FilterChip(
                            selected = format in selectedFormats,
                            onClick = {
                                selectedFormats = if (format in selectedFormats) {
                                    selectedFormats - format
                                } else {
                                    selectedFormats + format
                                }
                            },
                            label = { Text(format.name) }
                        )
                    }
                }
            }
            
            // Статус чтения
            FilterSection(title = "Статус чтения") {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    ReadStatus.values().forEach { status ->
                        FilterChip(
                            selected = status == selectedReadStatus,
                            onClick = { selectedReadStatus = status },
                            label = {
                                Text(
                                    when (status) {
                                        ReadStatus.ALL -> "Все"
                                        ReadStatus.UNREAD -> "Непрочитанные"
                                        ReadStatus.READING -> "Читаю"
                                        ReadStatus.COMPLETED -> "Прочитанные"
                                    }
                                )
                            },
                            modifier = Modifier.fillMaxWidth()
                        )
                    }
                }
            }
            
            // Дата добавления
            FilterSection(title = "Дата добавления") {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    FilterChip(
                        selected = selectedDateRange == DateRange.lastWeek(),
                        onClick = { selectedDateRange = DateRange.lastWeek() },
                        label = { Text("Последние 7 дней") },
                        modifier = Modifier.fillMaxWidth()
                    )
                    FilterChip(
                        selected = selectedDateRange == DateRange.lastMonth(),
                        onClick = { selectedDateRange = DateRange.lastMonth() },
                        label = { Text("Последний месяц") },
                        modifier = Modifier.fillMaxWidth()
                    )
                    FilterChip(
                        selected = selectedDateRange == DateRange.lastYear(),
                        onClick = { selectedDateRange = DateRange.lastYear() },
                        label = { Text("Последний год") },
                        modifier = Modifier.fillMaxWidth()
                    )
                    if (selectedDateRange != null) {
                        TextButton(
                            onClick = { selectedDateRange = null },
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text("Сбросить")
                        }
                    }
                }
            }
            
            // Закладки
            FilterSection(title = "Закладки") {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text("Только с закладками")
                    Switch(
                        checked = bookmarkedOnly,
                        onCheckedChange = { bookmarkedOnly = it }
                    )
                }
            }
            
            // Кнопки действий
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                OutlinedButton(
                    onClick = {
                        selectedFormats = emptySet()
                        selectedReadStatus = ReadStatus.ALL
                        bookmarkedOnly = false
                        selectedDateRange = null
                        onFiltersChange(SearchFilters())
                    },
                    modifier = Modifier.weight(1f)
                ) {
                    Text("Сбросить")
                }
                
                Button(
                    onClick = {
                        onFiltersChange(
                            SearchFilters(
                                formats = selectedFormats,
                                readStatus = selectedReadStatus,
                                bookmarkedOnly = bookmarkedOnly,
                                dateRange = selectedDateRange
                            )
                        )
                        onDismiss()
                    },
                    modifier = Modifier.weight(1f)
                ) {
                    Text("Применить")
                }
            }
            
            Spacer(modifier = Modifier.height(16.dp))
        }
    }
}

/**
 * Секция фильтра
 */
@Composable
private fun FilterSection(
    title: String,
    content: @Composable ColumnScope.() -> Unit
) {
    Column(
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        Text(
            text = title,
            style = MaterialTheme.typography.titleMedium
        )
        content()
    }
}

/**
 * FlowRow для размещения чипов
 */
@Composable
private fun FlowRow(
    modifier: Modifier = Modifier,
    horizontalArrangement: Arrangement.Horizontal = Arrangement.Start,
    verticalArrangement: Arrangement.Vertical = Arrangement.Top,
    content: @Composable () -> Unit
) {
    // Упрощенная реализация FlowRow
    // В реальном проекте используйте androidx.compose.foundation.layout.FlowRow
    Column(
        modifier = modifier,
        verticalArrangement = verticalArrangement
    ) {
        content()
    }
}
