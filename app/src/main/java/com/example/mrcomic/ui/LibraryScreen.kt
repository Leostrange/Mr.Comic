package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.FilterList
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Sort
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryScreen(
    onBookClick: (filePath: String) -> Unit,
    onAddClick: () -> Unit,
    onSettingsClick: () -> Unit
) {
    Scaffold(
        floatingActionButton = {
            FloatingActionButton(onClick = onAddClick) {
                Icon(Icons.Filled.Add, "Добавить комикс")
            }
        }
    ) {\n        paddingValues ->
        Column(modifier = Modifier.padding(paddingValues)) {
            // Search Bar
            OutlinedTextField(
                value = "",
                onValueChange = { /* TODO: Implement search logic */ },
                label = { Text("Поиск") },
                leadingIcon = { Icon(Icons.Filled.Search, contentDescription = "Поиск") },
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(8.dp)
            )

            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 8.dp),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                // Filter Button
                Button(onClick = { /* TODO: Implement filter logic */ }) {
                    Icon(Icons.Filled.FilterList, contentDescription = "Фильтр")
                    Spacer(Modifier.width(4.dp))
                    Text("Фильтр")
                }

                // Sort Button
                Button(onClick = { /* TODO: Implement sort logic */ }) {
                    Icon(Icons.Filled.Sort, contentDescription = "Сортировка")
                    Spacer(Modifier.width(4.dp))
                    Text("Сортировка")
                }
            }

            // Comic List (Placeholder)
            LazyColumn(modifier = Modifier.fillMaxSize()) {
                item {
                    Text("Список комиксов (заглушка)", modifier = Modifier.padding(16.dp))
                }
            }
        }
    }
}


