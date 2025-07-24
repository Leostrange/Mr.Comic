package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccountCircle
import androidx.compose.material.icons.filled.Cloud
import androidx.compose.material.icons.filled.EditNote
import androidx.compose.material.icons.filled.Extension
import androidx.compose.material.icons.filled.MenuBook
import androidx.compose.material.icons.filled.Palette
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationRail
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import android.content.res.Configuration
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MainScreen(modifier: Modifier = Modifier) {
    val items = listOf(
        Icons.Default.MenuBook to "Библиотека",
        Icons.Default.Cloud to "Облако",
        Icons.Default.EditNote to "Аннотации",
        Icons.Default.Extension to "Плагины",
        Icons.Default.Palette to "Темы"
    )
    val configuration = LocalConfiguration.current
    val isTabletLandscape = configuration.screenWidthDp >= 600 &&
        configuration.orientation == Configuration.ORIENTATION_LANDSCAPE
    val (selected, setSelected) = remember { mutableStateOf(0) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Mr.Comic") },
                actions = {
                    IconButton(onClick = { /*TODO*/ }) {
                        Icon(Icons.Default.AccountCircle, null)
                    }
                }
            )
        },
        bottomBar = {
            if (!isTabletLandscape) {
                NavigationBar {
                    items.forEachIndexed { index, pair ->
                        NavigationBarItem(
                            selected = selected == index,
                            onClick = { setSelected(index) },
                            icon = { Icon(pair.first, null) },
                            label = { Text(pair.second) }
                        )
                    }
                }
            }
        }
    ) { paddingValues ->
        Row(modifier = modifier.fillMaxSize()) {
            if (isTabletLandscape) {
                NavigationRail {
                    items.forEachIndexed { index, pair ->
                        NavigationBarItem(
                            selected = selected == index,
                            onClick = { setSelected(index) },
                            icon = { Icon(pair.first, null) },
                            label = { Text(pair.second) }
                        )
                    }
                }
            }
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(16.dp)
            ) {
                Text("Welcome to Mr. Comic!", style = MaterialTheme.typography.headlineMedium)
                Spacer(modifier = Modifier.height(16.dp))
                Text("This is a placeholder for the main screen content.")
            }
        }
    }
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun MainScreenVerticalPreview() {
    MrComicTheme {
        MainScreen()
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun MainScreenHorizontalPreview() {
    MrComicTheme {
        MainScreen()
    }
}

@Preview(showBackground = true, widthDp = 1024, heightDp = 720)
@Composable
fun MainScreenTabletPreview() {
    MrComicTheme {
        MainScreen()
    }
}


