package com.example.mrcomic.navigation

import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import com.example.feature.library.ui.LibraryScreen
import com.example.feature.settings.ui.SettingsScreen
import com.example.feature.onboarding.OnboardingScreen

sealed class Screen(val route: String) {
    data object Library : Screen("library")
    data object Settings : Screen("settings")
    data object Onboarding : Screen("onboarding")
}

@Composable
fun AppNavHost(navController: NavHostController, onOnboardingComplete: () -> Unit) {
    NavHost(navController = navController, startDestination = Screen.Onboarding.route) {
        composable(route = Screen.Library.route) {
            LibraryScreen(
                onBookClick = { /* no-op reader for now */ },
                onSettingsClick = { navController.navigate(Screen.Settings.route) },
                onAddClick = { /* no-op add */ }
            )
        }

        composable(route = Screen.Settings.route) {
            SettingsScreen()
        }

        composable(route = Screen.Onboarding.route) {
            OnboardingScreen(onOnboardingComplete = onOnboardingComplete)
        }
    }
}


