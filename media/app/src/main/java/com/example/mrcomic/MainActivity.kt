package com.example.mrcomic

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.example.mrcomic.ui.AddComicScreen
import com.example.mrcomic.ui.ComicDetailScreen
import com.example.mrcomic.ui.LibraryScreen
import com.example.mrcomic.ui.ReaderScreen
import com.example.mrcomic.ui.SettingsScreen
import com.example.mrcomic.ui.MainScreen
import com.example.mrcomic.ui.ThemesScreen
import com.example.mrcomic.ui.TranslateOcrScreen
import com.example.mrcomic.ui.OptimizationScreen
import com.example.mrcomic.ui.LoginScreen
import com.example.mrcomic.ui.PasswordResetScreen
import com.example.mrcomic.ui.LanguageSelectScreen
import com.example.mrcomic.ui.ReaderMenuScreen
import com.example.mrcomic.ui.ReaderSettingsScreen
import com.example.mrcomic.ui.AccountScreen
import com.example.mrcomic.ui.OcrCropScreen
import com.example.mrcomic.ui.theme.MrComicTheme
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MrComicTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    MrComicApp()
                }
            }
        }
    }
}

@Composable
fun MrComicApp() {
    val navController = rememberNavController()
    
    NavHost(
        navController = navController,
        startDestination = "main"
    ) {
        composable("main") {
            MainScreen()
        }
        composable("library") {
            LibraryScreen(
                onNavigateToReader = { comicId ->
                    navController.navigate("reader/$comicId")
                },
                onNavigateToDetail = { comicId ->
                    navController.navigate("detail/$comicId")
                },
                onNavigateToSettings = {
                    navController.navigate("settings")
                }
            )
        }
        
        composable(
            route = "reader/{comicId}",
            arguments = listOf(
                navArgument("comicId") { type = NavType.LongType }
            )
        ) { backStackEntry ->
            val comicId = backStackEntry.arguments?.getLong("comicId") ?: 0L
            ReaderScreen(
                comicId = comicId,
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        
        composable(
            route = "detail/{comicId}",
            arguments = listOf(
                navArgument("comicId") { type = NavType.LongType }
            )
        ) { backStackEntry ->
            val comicId = backStackEntry.arguments?.getLong("comicId") ?: 0L
            ComicDetailScreen(
                comicId = comicId,
                onNavigateBack = {
                    navController.popBackStack()
                },
                onNavigateToReader = { id ->
                    navController.navigate("reader/$id")
                }
            )
        }
        
        composable("settings") {
            SettingsScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        composable("addComic") {
            AddComicScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        composable("themes") {
            ThemesScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        composable("translateOcr") {
            TranslateOcrScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        composable("optimization") {
            OptimizationScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        composable("login") {
            LoginScreen(
                onNavigateBack = { navController.popBackStack() },
                onForgotPassword = { navController.navigate("passwordReset") }
            )
        }
        composable("passwordReset") {
            PasswordResetScreen(
                onNavigateBack = { navController.popBackStack() }
            )
        }
        composable("languageSelect") {
            LanguageSelectScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        composable("readerMenu") {
            ReaderMenuScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        composable("readerSettings") {
            ReaderSettingsScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        composable("account") {
            AccountScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
        composable("ocrCrop") {
            OcrCropScreen(
                onNavigateBack = {
                    navController.popBackStack()
                }
            )
        }
    }
}

