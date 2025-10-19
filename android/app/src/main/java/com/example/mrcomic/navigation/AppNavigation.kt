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
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import android.content.Context
import com.example.feature.library.LibraryScreen
import com.example.feature.onboarding.OnboardingScreen
// Temporarily disabled due to compilation errors
import com.example.feature.reader.ui.ReaderScreen
import com.example.feature.ocr.ui.SimpleTranslateScreen
import com.example.feature.settings.ui.SettingsScreen
import com.example.mrcomic.ui.MainDestination
import com.example.mrcomic.ui.MainScreen
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.navigation.NavType
import androidx.navigation.navArgument

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
    NavHost(navController = navController, startDestination = Screen.Library.route) {
        // Временно: простой экран библиотеки как стартовый
        composable(route = Screen.Library.route) {
            val context = LocalContext.current as Context
            val libraryViewModel: com.example.feature.library.LibraryViewModel = hiltViewModel()
            val coroutineScope = rememberCoroutineScope()
            
            // Состояние для отслеживания выбора пользователя (файл или папка)
            var showAddDialog by remember { mutableStateOf(false) }
            
            // File picker для выбора одного файла
            val filePicker = androidx.activity.compose.rememberLauncherForActivityResult(
                contract = androidx.activity.result.contract.ActivityResultContracts.OpenDocument(),
                onResult = { uri ->
                    if (uri != null) {
                        try {
                            context.contentResolver.takePersistableUriPermission(
                                uri,
                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                            )
                            libraryViewModel.addComicFromUri(uri)
                        } catch (e: Exception) {
                            android.util.Log.e("AppNavHost", "Error importing comic", e)
                        }
                    }
                }
            )
            
            // Folder picker для выбора папки
            val folderPicker = androidx.activity.compose.rememberLauncherForActivityResult(
                contract = androidx.activity.result.contract.ActivityResultContracts.OpenDocumentTree(),
                onResult = { treeUri ->
                    if (treeUri != null) {
                        try {
                            context.contentResolver.takePersistableUriPermission(
                                treeUri,
                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION or 
                                android.content.Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                            )
                            libraryViewModel.addComicsFromDirectory(treeUri)
                        } catch (e: Exception) {
                            android.util.Log.e("AppNavHost", "Error adding folder", e)
                        }
                    }
                }
            )
            
            LibraryScreen(
                onComicClick = { comicId ->
                    // Получаем комикс по ID и передаем его path в ридер
                    coroutineScope.launch {
                        try {
                            val comic = libraryViewModel.getComicById(comicId)
                            if (comic != null) {
                                val encoded = Uri.encode(comic.path)
                                navController.navigate(Screen.Reader.create(encoded))
                            } else {
                                android.util.Log.e("AppNavHost", "Comic not found: $comicId")
                            }
                        } catch (e: Exception) {
                            android.util.Log.e("AppNavHost", "Error opening comic", e)
                        }
                    }
                },
                onAddFileClick = {
                    // Запускаем file picker для выбора одного файла
                    filePicker.launch(arrayOf("application/zip", "application/x-cbz", "application/x-cbr", "application/pdf", "*/*"))
                },
                onAddFolderClick = {
                    // Запускаем folder picker для выбора папки
                    folderPicker.launch(null)
                }
            )
        }
        
        // Onboarding screen (теперь не используется как стартовый экран)
        composable(route = Screen.Onboarding.route) {
            OnboardingScreen(
                onOnboardingComplete = {
                    onOnboardingComplete()
                    navController.navigate(Screen.Library.route) {
                        popUpTo(Screen.Onboarding.route) { inclusive = true }
                    }
                }
            )
        }
        
        // Main screen with bottom navigation (временно отключен)
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
            ReaderScreen(
                onNavigateBack = {
                    navController.navigateUp()
                }
            )
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
                    val context = LocalContext.current as Context
                    // Получаем VM в @Composable-контексте
                    val libraryViewModel: com.example.feature.library.LibraryViewModel = hiltViewModel()
                    val filePicker = androidx.activity.compose.rememberLauncherForActivityResult(
                contract = androidx.activity.result.contract.ActivityResultContracts.OpenDocument(),
                        onResult = { uri ->
                    if (uri != null) {
                        try {
                            android.util.Log.d("AppNavHost", "📁 File picked: $uri")
                            context.contentResolver.takePersistableUriPermission(
                                uri,
                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                            )
                            android.util.Log.d("AppNavHost", "✅ Persistable permission granted")
                        } catch (e: Exception) {
                            android.util.Log.w("AppNavHost", "⚠️ Could not take persistable permission: ${e.message}")
                        }
                        // Добавляем комикс в библиотеку
                        libraryViewModel.addComicFromUri(uri)
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
                                // TODO: Implement addLibraryFolder
                                // libraryViewModel.addLibraryFolder(context, treeUri)
                            }
                        }
                    )

                    LibraryScreen(
                        onComicClick = { comicId ->
                            val encoded = Uri.encode(comicId)
                            onOpenReader(encoded)
                        },
                        onAddComicClick = {
                            // TODO: Implement add comic dialog
                        }
                    )
                }

        composable(route = MainDestination.Translation.route) {
            SimpleTranslateScreen()
        }

        composable(route = MainDestination.Settings.route) {
            SettingsScreen(
                onAppIconSettingsClick = {
                    navController.navigate("app_icon_settings")
                }
            )
        }
        
        composable(route = "app_icon_settings") {
            com.example.mrcomic.icons.AppIconSettingsScreen(
                onBackClick = { navController.popBackStack() }
            )
        }

        // Временное скрытие экрана смены иконки и редактора тем (нестабильно)
    }
}


