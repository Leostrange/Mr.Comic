package com.example.mrcomic

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.navigation.compose.rememberNavController
import com.example.feature.themes.ui.AppTheme
import com.example.feature.themes.ui.ThemesViewModel
import com.example.mrcomic.navigation.AppNavHost
import com.example.mrcomic.ui.theme.MrComicTheme
import dagger.hilt.android.AndroidEntryPoint
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.ui.platform.LocalContext
import androidx.datastore.preferences.preferencesDataStore
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.edit
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.runBlocking

val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "settings")

@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MrComicApp()
        }
    }
}

@Composable
fun MrComicApp() {
    val themesViewModel: ThemesViewModel = hiltViewModel()
    val selectedTheme by themesViewModel.selectedTheme.collectAsState()

    MrComicTheme(darkTheme = when (selectedTheme) {
        AppTheme.LIGHT -> false
        AppTheme.DARK -> true
        AppTheme.SYSTEM -> isSystemInDarkTheme()
    }) {
        val navController = rememberNavController()
        val context = LocalContext.current
        val ONBOARDING_COMPLETED_KEY = booleanPreferencesKey("onboarding_completed")

        val onOnboardingComplete: () -> Unit = {
            runBlocking { context.dataStore.edit { settings -> settings[ONBOARDING_COMPLETED_KEY] = true } }
            navController.navigate("library") {
                popUpTo(navController.graph.startDestinationId) {
                    inclusive = true
                }
            }
        }

        LaunchedEffect(Unit) {
            val onboardingCompleted = runBlocking { context.dataStore.data.map { preferences ->
                preferences[ONBOARDING_COMPLETED_KEY] ?: false
            }.first() }

            if (onboardingCompleted) {
                navController.navigate("library") {
                    popUpTo(navController.graph.startDestinationId) {
                        inclusive = true
                    }
                }
            } else {
                navController.navigate("onboarding") {
                    popUpTo(navController.graph.startDestinationId) {
                        inclusive = true
                    }
                }
            }
        }

        AppNavHost(navController = navController, onOnboardingComplete = onOnboardingComplete)
    }
}


