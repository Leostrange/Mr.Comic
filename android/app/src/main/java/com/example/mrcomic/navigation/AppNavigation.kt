package com.example.mrcomic.navigation

import android.net.Uri
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import com.example.feature.library.ui.LibraryScreen
import com.example.feature.library.ui.SimpleLibraryScreen
import com.example.mrcomic.feature.settings.SettingsScreen
import com.example.mrcomic.feature.settings.AppIconSettingsScreen
import com.example.feature.onboarding.OnboardingScreen
import com.example.feature.reader.ui.ReaderScreen
import androidx.navigation.NavType
import androidx.navigation.navArgument
import com.example.feature.ocr.ui.SimpleTranslateScreen
import com.example.mrcomic.ui.MainScreen
import com.example.mrcomic.ui.MainDestination

sealed class Screen(val route: String) {
    data object Main : Screen("main")
    data object Library : Screen("library")
    data object Translation : Screen("translation")
    data object Settings : Screen("settings")
    data object AppIconSettings : Screen("app_icon_settings")
    data object Onboarding : Screen("onboarding")
    data object Reader : Screen("reader/{uri}") {
        fun create(uri: String) = "reader/$uri"
    }
}

@Composable
fun AppNavHost(navController: NavHostController, onOnboardingComplete: () -> Unit) {
    NavHost(navController = navController, startDestination = Screen.Main.route) {
        // Onboarding screen (теперь не используется как стартовый экран)
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
            // Важно: используем внутренний контроллер для вложенной навигации,
            // чтобы не конфликтовать с корневым NavHost
            val innerNavController = androidx.navigation.compose.rememberNavController()
            MainScreen(navController = innerNavController) {
                MainNavHost(
                    navController = innerNavController,
                    onOpenReader = { encodedPath ->
                        navController.navigate(Screen.Reader.create(encodedPath))
                    }
                )
            }
        }

        // Reader screen (full screen, outside main navigation)
        composable(
            route = Screen.Reader.route,
            arguments = listOf(navArgument("uri") { type = NavType.StringType })
        ) { _ ->
            ReaderScreen()
        }
    }
}

@Composable
fun MainNavHost(navController: NavHostController, onOpenReader: (String) -> Unit) {
    NavHost(
        navController = navController,
        startDestination = MainDestination.Library.route
    ) {
                composable(route = MainDestination.Library.route) {
                    val context = androidx.compose.ui.platform.LocalContext.current
                    // Получаем VM в @Composable-контексте
                    val libraryViewModel: com.example.feature.library.ui.LibraryViewModel = androidx.hilt.navigation.compose.hiltViewModel()
                    val filePicker = androidx.activity.compose.rememberLauncherForActivityResult(
                contract = androidx.activity.result.contract.ActivityResultContracts.OpenDocument(),
                        onResult = { uri ->
                    if (uri != null) {
                        try {
                            context.contentResolver.takePersistableUriPermission(
                                uri,
                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                            )
                        } catch (_: Exception) {}
                                // Добавляем файл в библиотеку, не открывая ридер
                                libraryViewModel.importComicUri(context, uri)
                    }
                }
            )
                    val folderPicker = androidx.activity.compose.rememberLauncherForActivityResult(
                        contract = androidx.activity.result.contract.ActivityResultContracts.OpenDocumentTree(),
                        onResult = { treeUri ->
                            if (treeUri != null) {
                                try {
                                    context.contentResolver.takePersistableUriPermission(
                                        treeUri,
                                        android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION or android.content.Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION
                                    )
                                } catch (_: Exception) {}
                                // Используем заранее полученный VM
                                libraryViewModel.addLibraryFolder(context, treeUri)
                            }
                        }
                    )

                    SimpleLibraryScreen(
                        onBookClick = { path ->
                            val encoded = Uri.encode(path)
                            onOpenReader(encoded)
                        },
                        onAddFile = {
                            filePicker.launch(
                                arrayOf(
                                    "application/pdf",
                                    "application/x-cbz",
                                    "application/vnd.comicbook+zip",
                                    "application/x-rar-compressed",
                                    "application/vnd.comicbook-rar",
                                    "application/zip",
                                    "*/*"
                                )
                            )
                        },
                        onAddFolder = {
                            folderPicker.launch(null)
                        },
                        onSettingsClick = {
                            navController.navigate(MainDestination.Settings.route)
                        },
                    )
                }

        composable(route = MainDestination.Translation.route) {
            SimpleTranslateScreen()
        }

        composable(route = MainDestination.Settings.route) {
            com.example.mrcomic.feature.settings.SettingsScreen(
                onNavigateBack = { navController.popBackStack() },
                onNavigateToThemeEditor = { navController.navigate("theme_editor") }
            )
        }

        composable(route = "theme_editor") {
            com.example.mrcomic.feature.settings.ThemeEditorScreen(
                onNavigateBack = { navController.popBackStack() }
            )
        }
        
        // Временное скрытие экрана смены иконки (нестабильно)
    }
}


