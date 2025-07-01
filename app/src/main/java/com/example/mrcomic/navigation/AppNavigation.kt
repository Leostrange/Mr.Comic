package com.example.mrcomic.navigation

import android.net.Uri
import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.navArgument
import com.example.feature.library.ui.LibraryScreen
import com.example.mrcomic.ui.screens.add_comic.AddComicScreen
import com.example.feature.reader.ui.ReaderScreen
import com.example.feature.settings.ui.SettingsScreen

/**
 * Определяет навигационные маршруты в приложении.
 */
sealed class Screen(val route: String) {
    data object Library : Screen("library")
    data object Reader : Screen("reader/{uri}") {
        fun createRoute(uri: String): String {
            // Важно кодировать путь к файлу, чтобы безопасно передавать его как URL.
            val encodedUri = Uri.encode(uri)
            return "reader/$encodedUri"
        }
    }
    data object AddComic : Screen("add_comic")
    data object Settings : Screen("settings")

/**
 * Главный навигационный хост приложения.
 */
@Composable
fun AppNavHost(navController: NavHostController) {
    NavHost(navController = navController, startDestination = Screen.Library.route) {
        composable(route = Screen.Library.route) {
            LibraryScreen(
                onBookClick = { uriString -> navController.navigate(Screen.Reader.createRoute(uriString)) },
                onSettingsClick = { navController.navigate(Screen.Settings.route) },
                onAddClick = { navController.navigate(Screen.AddComic.route) }
            )
        }

        composable(
            route = Screen.Reader.route,
            arguments = listOf(navArgument("uri") { type = NavType.StringType })
        ) {
            // HiltViewModel автоматически получит аргумент "filePath"
            // через SavedStateHandle, поэтому передавать его вручную не нужно.
            ReaderScreen()
        }

        composable(Screen.AddComic.route) {
            AddComicScreen(onComicAdded = { navController.popBackStack() }, onNavigateUp = { navController.popBackStack() })
        }

        composable(route = Screen.Settings.route) {
            SettingsScreen()
        }
    }
}