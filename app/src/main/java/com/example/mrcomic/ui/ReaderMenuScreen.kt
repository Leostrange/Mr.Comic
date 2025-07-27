
package com.example.mrcomic.ui

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
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.feature.reader.ui.ReaderViewModel
import com.example.feature.reader.ui.ReadingMode
import com.example.feature.reader.ui.ReadingDirection

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ReaderMenuScreen(
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier,
    viewModel: ReaderViewModel = hiltViewModel()
) {
    val uiState = viewModel.uiState.collectAsState().value
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Reader Menu") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        },
        content = { paddingValues ->
            Column(
                modifier = modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(16.dp)
            ) {
                Text("Reading mode", style = MaterialTheme.typography.titleMedium)
                Spacer(modifier = Modifier.height(8.dp))
                Row {
                    FilledTonalButton(
                        onClick = { viewModel.setReadingMode(ReadingMode.PAGE) },
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.filledTonalButtonColors(
                            containerColor = if (uiState.readingMode == ReadingMode.PAGE) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.surfaceVariant
                        )
                    ) { Text("Page") }
                    Spacer(Modifier.width(8.dp))
                    FilledTonalButton(
                        onClick = { viewModel.setReadingMode(ReadingMode.WEBTOON) },
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.filledTonalButtonColors(
                            containerColor = if (uiState.readingMode == ReadingMode.WEBTOON) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.surfaceVariant
                        )
                    ) { Text("Webtoon") }
                }

                Spacer(modifier = Modifier.height(16.dp))
                Text("Reading direction", style = MaterialTheme.typography.titleMedium)
                Spacer(modifier = Modifier.height(8.dp))
                Row {
                    FilledTonalButton(
                        onClick = { viewModel.setReadingDirection(ReadingDirection.LTR) },
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.filledTonalButtonColors(
                            containerColor = if (uiState.readingDirection == ReadingDirection.LTR) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.surfaceVariant
                        )
                    ) { Text("LTR") }
                    Spacer(Modifier.width(8.dp))
                    FilledTonalButton(
                        onClick = { viewModel.setReadingDirection(ReadingDirection.RTL) },
                        modifier = Modifier.weight(1f),
                        colors = ButtonDefaults.filledTonalButtonColors(
                            containerColor = if (uiState.readingDirection == ReadingDirection.RTL) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.surfaceVariant
                        )
                    ) { Text("RTL") }
                }

                Spacer(modifier = Modifier.height(16.dp))
                Button(onClick = { /* Navigate to reader settings */ onNavigateBack(); }, modifier = Modifier.fillMaxWidth()) {
                    Text("Close")
                }
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun ReaderMenuScreenVerticalPreview() {
    MrComicTheme {
        ReaderMenuScreen(onNavigateBack = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun ReaderMenuScreenHorizontalPreview() {
    MrComicTheme {
        ReaderMenuScreen(onNavigateBack = {})
    }
}


