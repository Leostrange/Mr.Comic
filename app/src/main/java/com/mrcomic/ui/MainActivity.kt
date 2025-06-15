package com.example.mrcomic.ui

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.remember
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.example.mrcomic.theme.ui.viewmodel.ComicLibraryViewModel
import com.example.mrcomic.viewmodel.SettingsViewModel
import com.example.mrcomic.ui.*
import com.google.accompanist.systemuicontroller.rememberSystemUiController
import com.google.accompanist.systemuicontroller.setSystemBarsColor
import com.google.accompanist.systemuicontroller.ui.SystemUiController
import com.google.accompanist.systemuicontroller.ui.rememberSystemUiController
import com.google.accompanist.systemuicontroller.ui.systemBarsColor
import com.google.accompanist.systemuicontroller.ui.systemBarsIconDark
import com.google.accompanist.systemuicontroller.ui.systemBarsIconLight
import com.google.accompanist.systemuicontroller.ui.systemBarsIconMode
import com.google.accompanist.systemuicontroller.ui.systemBarsMode
import com.google.accompanist.systemuicontroller.ui.systemBarsSystem
import com.google.accompanist.systemuicontroller.ui.systemBarsWindow
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowDark
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowLight
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowMode
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowSystem
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowWindow
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowWindowDark
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowWindowLight
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowWindowMode
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowWindowSystem
import com.google.accompanist.systemuicontroller.ui.systemBarsWindowWindowWindow
import androidx.room.Room
import com.example.mrcomic.theme.data.db.ThemeDatabase
import com.example.mrcomic.theme.data.repository.UserRepository
import com.example.mrcomic.theme.ui.viewmodel.ProfileSelectionViewModel
import com.example.mrcomic.data.ActiveProfileManager
import kotlinx.coroutines.runBlocking
import com.example.mrcomic.theme.data.repository.ReadingStatsRepository
import com.example.mrcomic.theme.ui.viewmodel.StatsViewModel

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            val navController = rememberNavController()
            val context = this
            val themeDb = remember {
                Room.databaseBuilder(
                    context,
                    ThemeDatabase::class.java,
                    "theme_database"
                ).build()
            }
            val userRepository = remember { UserRepository(themeDb.userDao()) }
            val profileSelectionViewModel = remember { ProfileSelectionViewModel(context, userRepository) }
            val viewModel = ViewModelProvider(this)[ComicLibraryViewModel::class.java]
            val settingsViewModel = ViewModelProvider(this)[SettingsViewModel::class.java]
            val readingStatsRepository = remember { ReadingStatsRepository(themeDb.readingStatsDao()) }
            val statsViewModel = remember { StatsViewModel(readingStatsRepository) }
            // Проверяем активный профиль (блокирующе для простоты)
            val activeProfileId = runBlocking { ActiveProfileManager.getActiveProfileId(context).first() }
            val startDestination = remember {
                if (activeProfileId.isNullOrBlank()) "profile_selection"
                else if (intent?.action == "open_comic") {
                    val comicId = intent.getStringExtra("comic_id") ?: intent.getIntExtra("comic_id", -1).toString()
                    if (comicId != "-1") "reader/$comicId/0" else "library"
                } else "library"
            }
            NavHost(navController = navController, startDestination = startDestination) {
                composable("profile_selection") {
                    ProfileSelectionScreen(
                        viewModel = profileSelectionViewModel,
                        onProfileSelected = { navController.navigate("library") { popUpTo("profile_selection") { inclusive = true } } }
                    )
                }
                composable("library") {
                    ComicLibraryScreen(
                        viewModel = viewModel,
                        onImportClick = { /* TODO: реализовать импорт */ },
                        onFolderSelect = { /* TODO: реализовать выбор папки */ },
                        onComicSelected = { comicId -> navController.navigate("reader/$comicId/0") },
                        onSettingsClick = { navController.navigate("settings") },
                        onThumbnailsClick = { comicId -> navController.navigate("thumbnails/$comicId") }
                    )
                }
                composable("settings") {
                    SettingsScreen(context = context, viewModel = settingsViewModel, navController = navController)
                }
                composable("language_settings") {
                    LanguageSettingsScreen()
                }
                composable("thumbnails/{comicId}") { backStackEntry ->
                    val comicId = backStackEntry.arguments?.getString("comicId") ?: return@composable
                    ThumbnailScreen(
                        comicId = comicId,
                        viewModel = viewModel,
                        onPageSelected = { page -> navController.navigate("reader/$comicId/$page") }
                    )
                }
                composable("reader/{comicId}/{page}") { backStackEntry ->
                    val comicId = backStackEntry.arguments?.getString("comicId") ?: return@composable
                    val page = backStackEntry.arguments?.getString("page")?.toIntOrNull() ?: 0
                    ComicReaderScreen(
                        comicId = comicId,
                        viewModel = viewModel,
                        initialPage = page
                    )
                }
                composable("gesture_settings") { GestureSettingsScreen(viewModel = settingsViewModel) }
                composable("stats") {
                    StatsScreen(viewModel = statsViewModel)
                }
            }
        }
    }
} 