package com.example.mrcomic.ui

import android.content.Intent
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AddComicScreen(
    onNavigateBack: () -> Unit,
    viewModel: AddComicViewModel = hiltViewModel()
) {
    var title by remember { mutableStateOf("") }
    var author by remember { mutableStateOf("") }
    val filePath by viewModel.filePath.collectAsState()
    var totalPages by remember { mutableStateOf("") }
    var isFavorite by remember { mutableStateOf(false) }

    val isLoading by viewModel.isLoading.collectAsState()
    val isSuccess by viewModel.isSuccess.collectAsState()
    val context = LocalContext.current

    val filePickerLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri?.let {
            // Взятие постоянного разрешения на доступ к файлу
            val contentResolver = context.contentResolver
            val takeFlags: Int = Intent.FLAG_GRANT_READ_URI_PERMISSION or
                                 Intent.FLAG_GRANT_WRITE_URI_PERMISSION
            contentResolver.takePersistableUriPermission(uri, takeFlags)
            viewModel.setFilePath(it.toString())
        }
    }

    LaunchedEffect(isSuccess) {
        if (isSuccess) {
            onNavigateBack()
        }
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        // Заголовок
        Text(
            text = "Добавить комикс",
            style = MaterialTheme.typography.headlineMedium,
            modifier = Modifier.padding(bottom = 16.dp)
        )

        Column(
            modifier = Modifier
                .weight(1f)
                .verticalScroll(rememberScrollState())
        ) {
            // Название комикса
            OutlinedTextField(
                value = title,
                onValueChange = { title = it },
                label = { Text("Название комикса") },
                modifier = Modifier.fillMaxWidth(),
                placeholder = { Text("Например: One Piece") }
            )

            Spacer(modifier = Modifier.height(16.dp))

            // Автор
            OutlinedTextField(
                value = author,
                onValueChange = { author = it },
                label = { Text("Автор") },
                modifier = Modifier.fillMaxWidth(),
                placeholder = { Text("Например: Eiichiro Oda") }
            )

            Spacer(modifier = Modifier.height(16.dp))

            // Путь к файлу
            OutlinedTextField(
                value = filePath ?: "",
                onValueChange = { viewModel.setFilePath(it) },
                label = { Text("Путь к файлу") },
                modifier = Modifier.fillMaxWidth(),
                readOnly = true,
                placeholder = { Text("Выберите файл...") }
            )

            Spacer(modifier = Modifier.height(16.dp))

            // Кнопка выбора файла
            Button(
                onClick = {
                    filePickerLauncher.launch(
                        arrayOf(
                            "*/*",                           // Все файлы
                            "application/pdf",               // PDF
                            "application/zip",               // ZIP
                            "application/x-zip-compressed",  // ZIP
                            "application/x-rar-compressed",  // RAR
                            "application/vnd.rar",           // RAR
                            "application/octet-stream",      // Бинарные файлы
                            "application/x-cbz",             // CBZ
                            "application/x-cbr",             // CBR
                            "image/*"                        // Изображения
                        )
                    )
                },
                modifier = Modifier.fillMaxWidth()
            ) {
                Text("📁 Выбрать файл")
            }

            Spacer(modifier = Modifier.height(16.dp))

            // Количество страниц
            OutlinedTextField(
                value = totalPages,
                onValueChange = { totalPages = it },
                label = { Text("Количество страниц") },
                modifier = Modifier.fillMaxWidth(),
                placeholder = { Text("Например: 100") }
            )

            Spacer(modifier = Modifier.height(16.dp))

            // Избранное
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                Checkbox(
                    checked = isFavorite,
                    onCheckedChange = { isFavorite = it }
                )
                Text("Добавить в избранное")
            }

            Spacer(modifier = Modifier.height(24.dp))

            // Информация о поддерживаемых форматах
            Card(
                modifier = Modifier.fillMaxWidth()
            ) {
                Column(
                    modifier = Modifier.padding(16.dp)
                ) {
                    Text(
                        text = "Поддерживаемые форматы",
                        style = MaterialTheme.typography.titleMedium
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text("• CBZ (Comic Book ZIP)")
                    Text("• CBR (Comic Book RAR)")
                    Text("• PDF (Portable Document Format)")
                    Text("• ZIP архивы с изображениями")
                }
            }

            Spacer(modifier = Modifier.height(24.dp))

            // Кнопки действий
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                Button(
                    onClick = onNavigateBack,
                    modifier = Modifier.weight(1f),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = MaterialTheme.colorScheme.secondary
                    )
                ) {
                    Text("Отмена")
                }

                Spacer(modifier = Modifier.width(16.dp))

                Button(
                    onClick = {
                        filePath?.let { viewModel.importComic(it) }
                    },
                    modifier = Modifier.weight(1f),
                    enabled = !filePath.isNullOrEmpty() && !isLoading
                ) {
                    if (isLoading) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(16.dp),
                            color = MaterialTheme.colorScheme.onPrimary
                        )
                    } else {
                        Text("Добавить")
                    }
                }
            }
        }
    }
}


