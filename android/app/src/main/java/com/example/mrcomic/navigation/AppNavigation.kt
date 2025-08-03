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
import com.example.feature.settings.SettingsScreen
import com.example.feature.onboarding.OnboardingScreen
import com.example.mrcomic.ui.DebugReaderScreen
import com.example.mrcomic.ui.ComicListScreen
import com.example.mrcomic.ui.ComicDetailScreen
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.mrcomic.navigation.Screen



/**
 * Главный навигационный хост приложения.
 */
@Composable
fun AppNavHost(navController: NavHostController, onOnboardingComplete: () -> Unit) {
    NavHost(navController = navController, startDestination = Screen.ComicListScreen.route) {
        
        // Список комиксов
        composable(route = Screen.ComicListScreen.route) {
            ComicListScreen(
                navController = navController,
                viewModel = hiltViewModel()
            )
        }

        // Детали комикса с параметром
        composable(
            route = Screen.ComicDetailScreen.route,
            arguments = listOf(navArgument("comicId") { type = NavType.IntType })
        ) { backStackEntry ->
            val comicId = backStackEntry.arguments?.getInt("comicId") ?: 0
            ComicDetailScreen(
                navController = navController,
                comicId = comicId,
                viewModel = hiltViewModel()
            )
        }

        // Читалка комиксов
        composable(
            route = Screen.Reader.route,
            arguments = listOf(navArgument("uri") { type = NavType.StringType })
        ) {
            ReaderScreen()
        }

        // Добавление комикса
        composable(Screen.AddComic.route) {
            AddComicScreen(
                onComicAdded = { navController.popBackStack() }, 
                onNavigateUp = { navController.popBackStack() }
            )
        }

        // Настройки
        composable(route = Screen.Settings.route) {
            SettingsScreen()
        }

        // Онбординг
        composable(route = Screen.Onboarding.route) {
            OnboardingScreen(onOnboardingComplete = onOnboardingComplete)
        }

        // Отладочный экран
        composable(route = Screen.Debug.route) {
            DebugReaderScreen()
        }
    }
}


