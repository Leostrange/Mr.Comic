package com.example.mrcomic.ui

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.FilterList
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Sort
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryScreen(
    onBookClick: (filePath: String) -> Unit,
    onAddClick: () -> Unit,
    onSettingsClick: () -> Unit,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    Scaffold(
        floatingActionButton = {
            FloatingActionButton(onClick = onAddClick) {
                Icon(Icons.Filled.Add, "Добавить комикс")
            }
        }
    ) {
        paddingValues ->
        Column(modifier = Modifier.padding(paddingValues)) {
            // Search Bar
            val searchQuery by viewModel.searchQuery.collectAsState()
            OutlinedTextField(
                value = searchQuery,
                onValueChange = { viewModel.onSearchQueryChanged(it) },
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
                var expanded by remember { mutableStateOf(false) }
                val filter by viewModel.filter.collectAsState()

                ExposedDropdownMenuBox(
                    expanded = expanded,
                    onExpandedChange = {
                        expanded = !expanded
                    }
                ) {
                    Button(onClick = { expanded = true }, modifier = Modifier.menuAnchor()) {
                        Icon(Icons.Filled.FilterList, contentDescription = "Фильтр")
                        Spacer(Modifier.width(4.dp))
                        Text("Фильтр: $filter")
                    }

                    ExposedDropdownMenu(
                        expanded = expanded,
                        onDismissRequest = { expanded = false }
                    ) {
                        DropdownMenuItem(text = { Text("Все") }, onClick = { viewModel.onFilterChanged("All"); expanded = false })
                        DropdownMenuItem(text = { Text("Избранное") }, onClick = { viewModel.onFilterChanged("Favorites"); expanded = false })
                        DropdownMenuItem(text = { Text("Прочитанные") }, onClick = { viewModel.onFilterChanged("Read"); expanded = false })
                        DropdownMenuItem(text = { Text("Непрочитанные") }, onClick = { viewModel.onFilterChanged("Unread"); expanded = false })
                    }
                }

                // Sort Button
                var sortExpanded by remember { mutableStateOf(false) }
                val sortOrder by viewModel.sortOrder.collectAsState()

                ExposedDropdownMenuBox(
                    expanded = sortExpanded,
                    onExpandedChange = {
                        sortExpanded = !sortExpanded
                    }
                ) {
                    Button(onClick = { sortExpanded = true }, modifier = Modifier.menuAnchor()) {
                        Icon(Icons.Filled.Sort, contentDescription = "Сортировка")
                        Spacer(Modifier.width(4.dp))
                        Text("Сортировка: $sortOrder")
                    }

                    ExposedDropdownMenu(
                        expanded = sortExpanded,
                        onDismissRequest = { sortExpanded = false }
                    ) {
                        DropdownMenuItem(text = { Text("По названию") }, onClick = { viewModel.onSortOrderChanged("Title"); sortExpanded = false })
                        DropdownMenuItem(text = { Text("По автору") }, onClick = { viewModel.onSortOrderChanged("Author"); sortExpanded = false })
                        DropdownMenuItem(text = { Text("По последнему чтению") }, onClick = { viewModel.onSortOrderChanged("Last Read"); sortExpanded = false })
                    }
                }
            }

            // Comic List
            val comics by viewModel.comics.collectAsState()

            LazyColumn(modifier = Modifier.fillMaxSize()) {
                items(comics) { comic ->
                    Card(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(8.dp),
                        onClick = { onBookClick(comic.filePath) }
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            AsyncImage(
                                model = comic.coverPath,
                                contentDescription = "Обложка комикса ${comic.title}",
                                modifier = Modifier.size(100.dp),
                                contentScale = ContentScale.Crop
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Text(comic.title, modifier = Modifier.padding(16.dp))
                        }
                    }
                }
            }
        }
    }
}


