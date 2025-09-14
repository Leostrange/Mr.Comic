package com.example.mrcomic.navigation

import android.net.Uri
import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import com.example.feature.library.ui.LibraryScreen
import com.example.feature.settings.ui.SettingsScreen
import com.example.feature.onboarding.OnboardingScreen
import com.example.feature.reader.ui.ReaderScreen
import com.example.feature.ocr.ui.TranslationScreen
import com.example.mrcomic.ui.MainScreen
import com.example.mrcomic.ui.MainDestination

sealed class Screen(val route: String) {
    data object Main : Screen("main")
    data object Library : Screen("library")
    data object Translation : Screen("translation")
    data object Settings : Screen("settings")
    data object Onboarding : Screen("onboarding")
    data object Reader : Screen("reader/{uri}") {
        fun create(uri: String) = "reader/$uri"
    }
}

@Composable
fun AppNavHost(navController: NavHostController, onOnboardingComplete: () -> Unit) {
    NavHost(navController = navController, startDestination = Screen.Onboarding.route) {
        // Onboarding screen
        composable(route = Screen.Onboarding.route) {
            OnboardingScreen(
                onOnboardingComplete = {
                    onOnboardingComplete()
                    navController.navigate(Screen.Main.route) {
                        popUpTo(Screen.Onboarding.route) { inclusive = true }
                    }
                }
            )
        }
        
        // Main screen with bottom navigation
        composable(route = Screen.Main.route) {
            MainScreen(navController = navController) {
                MainNavHost(navController = navController)
            }
        }

        // Reader screen (full screen, outside main navigation)
        composable(route = Screen.Reader.route) { backStackEntry ->
            // URI parameter will be used when reader implementation is complete
            // val uri = backStackEntry.arguments?.getString("uri") ?: ""
            ReaderScreen()
        }
    }
}

@Composable
fun MainNavHost(navController: NavHostController) {
    NavHost(
        navController = navController,
        startDestination = MainDestination.Library.route
    ) {
        composable(route = MainDestination.Library.route) {
            LibraryScreen(
                onBookClick = { path -> 
                    navController.navigate(Screen.Reader.create(path))
                },
                onSettingsClick = { 
                    navController.navigate(MainDestination.Settings.route)
                },
                onAddClick = { }
            )
        }

        composable(route = MainDestination.Translation.route) {
            TranslationScreen()
        }

        composable(route = MainDestination.Settings.route) {
            SettingsScreen()
        }
    }
}


