package com.example.mrcomic.navigation

import android.net.Uri
import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import com.example.feature.library.ui.LibraryScreen
import com.example.feature.settings.ui.SettingsScreen
import com.example.feature.onboarding.OnboardingScreen
import com.example.mrcomic.ui.ReaderScreen

sealed class Screen(val route: String) {
    data object Library : Screen("library")
    data object Settings : Screen("settings")
    data object Onboarding : Screen("onboarding")
    data object Reader : Screen("reader/{path}") {
        fun create(encodedPath: String) = "reader/$encodedPath"
    }
}

@Composable
fun AppNavHost(navController: NavHostController, onOnboardingComplete: () -> Unit) {
    NavHost(navController = navController, startDestination = Screen.Onboarding.route) {
        composable(route = Screen.Library.route) {
            LibraryScreen(
                onBookClick = { path -> navController.navigate(Screen.Reader.create(Uri.encode(path))) },
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
            val arg = backStackEntry.arguments?.getString("path") ?: ""
            val decoded = Uri.decode(arg)
            ReaderScreen(uriString = decoded)
        }
    }
}


