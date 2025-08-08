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
import androidx.compose.material.icons.filled.AccountCircle
import androidx.compose.material.icons.filled.Cloud
import androidx.compose.material.icons.filled.EditNote
import androidx.compose.material.icons.filled.Extension
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.MenuBook
import androidx.compose.material.icons.filled.Palette
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme

import com.example.feature.library.ui.LibraryScreen
import com.example.feature.themes.ui.ThemesScreen

// Additional imports for navigation, paging and Material3 components
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.IconButton
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.navigation.NavController
import androidx.navigation.compose.rememberNavController
import kotlinx.coroutines.launch

@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
fun MainScreen(modifier: Modifier = Modifier, navController: NavController = rememberNavController()) {
    val coroutineScope = rememberCoroutineScope()
    val tabs = listOf("Библиотека", "Облако", "Аннотации", "Плагины", "Темы")
    var selectedTabIndex by remember { mutableStateOf(0) }
    val pagerState = rememberPagerState { tabs.size }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Mr. Comic") },
                actions = {
                    IconButton(onClick = { navController.navigate("account") }) {
                        Icon(Icons.Filled.AccountCircle, contentDescription = "Account")
                    }
                }
            )
        },
        bottomBar = {
            NavigationBar {
                NavigationBarItem(
                    icon = { Icon(Icons.Filled.MenuBook, contentDescription = "Библиотека") },
                    label = { Text("Библиотека") },
                    selected = selectedTabIndex == 0,
                    onClick = { selectedTabIndex = 0; coroutineScope.launch { pagerState.animateScrollToPage(0) } }
                )
                NavigationBarItem(
                    icon = { Icon(Icons.Filled.Cloud, contentDescription = "Облако") },
                    label = { Text("Облако") },
                    selected = selectedTabIndex == 1,
                    onClick = { selectedTabIndex = 1; coroutineScope.launch { pagerState.animateScrollToPage(1) } }
                )
                NavigationBarItem(
                    icon = { Icon(Icons.Filled.EditNote, contentDescription = "Аннотации") },
                    label = { Text("Аннотации") },
                    selected = selectedTabIndex == 2,
                    onClick = { selectedTabIndex = 2; coroutineScope.launch { pagerState.animateScrollToPage(2) } }
                )
                NavigationBarItem(
                    icon = { Icon(Icons.Filled.Extension, contentDescription = "Плагины") },
                    label = { Text("Плагины") },
                    selected = selectedTabIndex == 3,
                    onClick = { selectedTabIndex = 3; coroutineScope.launch { pagerState.animateScrollToPage(3) } }
                )
                NavigationBarItem(
                    icon = { Icon(Icons.Filled.Palette, contentDescription = "Темы") },
                    label = { Text("Темы") },
                    selected = selectedTabIndex == 4,
                    onClick = { selectedTabIndex = 4; coroutineScope.launch { pagerState.animateScrollToPage(4) } }
                )},
        content = { paddingValues ->
            Column(modifier = Modifier.padding(paddingValues)) {
                TabRow(selectedTabIndex = selectedTabIndex) {
                    tabs.forEachIndexed { index, title ->
                        Tab(
                            selected = selectedTabIndex == index,
                            onClick = { selectedTabIndex = index; coroutineScope.launch { pagerState.animateScrollToPage(index) } },
                            text = { Text(title) }
                        )
                    }
                }
                HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize()) {
                    when (it) {
                        0 -> LibraryScreen(
                            onBookClick = { uriString -> navController.navigate(Screen.Reader.createRoute(uriString)) },
                            onAddClick = { navController.navigate(Screen.AddComic.route) },
                            onSettingsClick = { navController.navigate(Screen.Settings.route) }
                        )
                        1 -> CloudScreen()
                        2 -> AnnotationsScreen()
                        3 -> PluginsScreen()
                        4 -> ThemesScreen(onNavigateBack = {}, onEditTheme = {})
                    }
                }
            }
        }
    )
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


