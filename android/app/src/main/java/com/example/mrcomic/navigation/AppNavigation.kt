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

sealed class Screen(val route: String) {
    data object Library : Screen("library")
    data object Settings : Screen("settings")
    data object Onboarding : Screen("onboarding")
    data object Reader : Screen("reader/{uri}") {
        fun create(uri: String) = "reader/$uri"
    }
}

@Composable
fun AppNavHost(navController: NavHostController, onOnboardingComplete: () -> Unit) {
    NavHost(navController = navController, startDestination = Screen.Onboarding.route) {
        composable(route = Screen.Library.route) {
            LibraryScreen(
                onBookClick = { path -> navController.navigate(Screen.Reader.create(path)) },
                onSettingsClick = { navController.navigate(Screen.Settings.route) },
                onAddClick = { }
            )
        }

        composable(route = Screen.Settings.route) {
            SettingsScreen()
        }

        composable(route = Screen.Onboarding.route) {
            OnboardingScreen(onOnboardingComplete = onOnboardingComplete)
        }

        composable(route = Screen.Reader.route) { backStackEntry ->
            // URI parameter will be used when reader implementation is complete
            // val uri = backStackEntry.arguments?.getString("uri") ?: ""
            ReaderScreen()
        }
    }
}


