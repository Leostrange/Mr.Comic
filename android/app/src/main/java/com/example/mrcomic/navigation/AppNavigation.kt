package com.example.mrcomic.navigation

import android.util.Log
import androidx.compose.animation.EnterTransition
import androidx.compose.animation.ExitTransition
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.Bookmarks
import androidx.compose.material.icons.filled.EmojiEvents
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationBarItemDefaults
import androidx.compose.material3.OutlinedCard
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.PlatformTextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import androidx.navigation.NavGraph.Companion.findStartDestination
import androidx.navigation.NavHostController
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.navArgument
import com.example.core.ui.locale.AppStrings
import com.example.core.ui.eink.LocalEInkMode
import com.example.core.ui.locale.LocalStrings
import com.example.feature.library.LibraryScreen
import com.example.feature.library.MrComicProgressRoute
import com.example.feature.library.LibraryViewModel
import com.example.feature.library.components.AchievementStrings
import com.example.feature.library.components.LibraryAchievementsRow
import com.example.feature.library.components.computeAchievements
import com.example.feature.library.components.nextUnlockAchievement
import com.example.feature.ocr.ui.OcrScreen
import com.example.feature.onboarding.OnboardingScreen
import com.example.feature.reader.ui.OcrLaunchRequest
import com.example.feature.reader.ui.ReaderScreen
import com.example.feature.settings.ui.SettingsScreen
import com.example.feature.settings.ui.SettingsViewModel
import com.example.mrcomic.home.ContinueLibraryChrome
import com.example.mrcomic.home.ContinueScreen
import com.example.mrcomic.icons.AppIconSettingsScreen
import kotlinx.coroutines.launch
import java.net.URLEncoder
import java.nio.charset.StandardCharsets

sealed class Screen(val route: String) {
    data object Continue : Screen("continue")
    data object Library : Screen("library")
    data object Onboarding : Screen("onboarding")
    data object Settings : Screen("settings")
    data object ProgressProfile : Screen("progress_profile")
    data object AppIconSettings : Screen("app_icon_settings")
    data object Translation : Screen("translation?imagePath={imagePath}&comicId={comicId}&page={page}") {
        fun create(imagePath: String? = null, comicId: String? = null, page: Int? = null): String {
            val params = buildList {
                if (imagePath != null) add("imagePath=${encodeRouteComponent(imagePath)}")
                if (comicId != null) add("comicId=${encodeRouteComponent(comicId)}")
                if (page != null) add("page=$page")
            }
            return if (params.isEmpty()) "translation" else "translation?${params.joinToString("&")}"
        }
    }

    data object Reader : Screen("reader?comicId={comicId}&uri={uri}&page={page}") {
        fun createForComic(comicId: String, page: Int? = null): String {
            val params = buildList {
                add("comicId=${encodeRouteComponent(comicId)}")
                if (page != null) add("page=$page")
            }
            return "reader?${params.joinToString("&")}"
        }
        fun createForUri(encodedUri: String, page: Int? = null): String {
            val params = buildList {
                add("uri=$encodedUri")
                if (page != null) add("page=$page")
            }
            return "reader?${params.joinToString("&")}"
        }
    }
}

private fun encodeRouteComponent(value: String): String {
    return URLEncoder.encode(value, StandardCharsets.UTF_8.name()).replace("+", "%20")
}

private data class NavItem(
    val route: String,
    val destination: String,
    val label: String,
    val icon: ImageVector
)

@Composable
fun AppNavHost(
    navController: NavHostController,
    startDestination: String = Screen.Continue.route
) {
    val isEInk = LocalEInkMode.current
    val strings = LocalStrings.current
    val currentBackStackEntry by navController.currentBackStackEntryAsState()
    val currentRoute = currentBackStackEntry?.destination?.route?.substringBefore('?')
    val menuItems = remember(strings) {
        listOf(
            NavItem(
                route = Screen.Continue.route,
                destination = Screen.Continue.route,
                label = strings.navContinue,
                icon = Icons.Default.Bookmarks
            ),
            NavItem(
                route = Screen.Library.route,
                destination = Screen.Library.route,
                label = strings.navLibrary,
                icon = Icons.Default.AutoStories
            ),
            NavItem(
                route = Screen.Translation.route.substringBefore('?'),
                destination = Screen.Translation.create(),
                label = strings.navTranslation,
                icon = Icons.Default.Translate
            ),
            NavItem(
                route = Screen.Settings.route,
                destination = Screen.Settings.route,
                label = strings.navSettings,
                icon = Icons.Default.Settings
            )
        )
    }
    val showBottomBar = menuItems.any { it.route == currentRoute }
    val rootRoutes = remember(menuItems) { menuItems.map { it.route }.toSet() }

    Scaffold(
        bottomBar = {
            if (showBottomBar) {
                AppBottomBar(
                    currentRoute = currentRoute,
                    menuItems = menuItems,
                    onNavigate = { route ->
                        navController.navigate(route) {
                            popUpTo(navController.graph.findStartDestination().id) {
                                saveState = true
                            }
                            launchSingleTop = true
                            restoreState = true
                        }
                    }
                )
            }
        }
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(if (showBottomBar) innerPadding else androidx.compose.foundation.layout.PaddingValues())
        ) {
            NavHost(
                navController = navController,
                startDestination = startDestination,
                enterTransition = {
                    val fromRoute = initialState.destination.route?.substringBefore('?')
                    val toRoute = targetState.destination.route?.substringBefore('?')
                    if (isEInk || (fromRoute in rootRoutes && toRoute in rootRoutes)) {
                        EnterTransition.None
                    } else {
                        fadeIn(tween(300))
                    }
                },
                exitTransition = {
                    val fromRoute = initialState.destination.route?.substringBefore('?')
                    val toRoute = targetState.destination.route?.substringBefore('?')
                    if (isEInk || (fromRoute in rootRoutes && toRoute in rootRoutes)) {
                        ExitTransition.None
                    } else {
                        fadeOut(tween(300))
                    }
                },
                popEnterTransition = {
                    val fromRoute = initialState.destination.route?.substringBefore('?')
                    val toRoute = targetState.destination.route?.substringBefore('?')
                    if (isEInk || (fromRoute in rootRoutes && toRoute in rootRoutes)) {
                        EnterTransition.None
                    } else {
                        fadeIn(tween(300))
                    }
                },
                popExitTransition = {
                    val fromRoute = initialState.destination.route?.substringBefore('?')
                    val toRoute = targetState.destination.route?.substringBefore('?')
                    if (isEInk || (fromRoute in rootRoutes && toRoute in rootRoutes)) {
                        ExitTransition.None
                    } else {
                        fadeOut(tween(300))
                    }
                }
            ) {
                composable(Screen.Onboarding.route) {
                    OnboardingScreen(
                        onOnboardingComplete = {
                            navController.navigate(Screen.Continue.route) {
                                popUpTo(Screen.Onboarding.route) { inclusive = true }
                            }
                        }
                    )
                }

                composable(Screen.Continue.route) {
                    val vm: LibraryViewModel = hiltViewModel()
                    val scope = rememberCoroutineScope()
                    val libraryUiState by vm.uiState.collectAsStateWithLifecycle()
                    ContinueScreen(
                        onComicClick = { comicId, page ->
                            scope.launch {
                                vm.getComicById(comicId)?.let { comic ->
                                    navController.navigate(Screen.Reader.createForComic(comic.id, page))
                                }
                            }
                        },
                        onOpenLibrary = {
                            navController.navigate(Screen.Library.route) {
                                launchSingleTop = true
                                restoreState = true
                            }
                        },
                        onOpenProgressProfile = {
                            navController.navigate(Screen.ProgressProfile.route) {
                                launchSingleTop = true
                            }
                        },
                        libraryChrome = ContinueLibraryChrome(
                            backgroundStyle = libraryUiState.backgroundStyle,
                            backgroundImageUri = libraryUiState.backgroundImageUri,
                            backdropStrength = libraryUiState.backdropStrength,
                            backgroundBlur = libraryUiState.backgroundBlur,
                            backgroundVeil = libraryUiState.backgroundVeil
                        )
                    )
                }

                composable(Screen.Library.route) {
                    val context = LocalContext.current
                    val vm: LibraryViewModel = hiltViewModel()
                    val scope = rememberCoroutineScope()

                    val filePicker = androidx.activity.compose.rememberLauncherForActivityResult(
                        contract = androidx.activity.result.contract.ActivityResultContracts.OpenDocument()
                    ) { uri ->
                        uri ?: return@rememberLauncherForActivityResult
                        try {
                            context.contentResolver.takePersistableUriPermission(
                                uri,
                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                            )
                        } catch (_: Exception) {}
                        vm.addComicFromUri(uri)
                    }

                    val folderPicker = androidx.activity.compose.rememberLauncherForActivityResult(
                        contract = androidx.activity.result.contract.ActivityResultContracts.OpenDocumentTree()
                    ) { treeUri ->
                        treeUri ?: return@rememberLauncherForActivityResult
                        try {
                            context.contentResolver.takePersistableUriPermission(
                                treeUri,
                                android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION or android.content.Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                            )
                        } catch (e: Exception) {
                            Log.w("AppNavHost", "Persistable SAF failed: ${e.message}")
                        }
                        vm.addComicsFromDirectory(treeUri)
                    }

                    LibraryScreen(
                        onComicClick = { comicId ->
                            scope.launch {
                                vm.getComicById(comicId)?.let { comic ->
                                    navController.navigate(Screen.Reader.createForComic(comic.id))
                                }
                            }
                        },
                        onQuoteClick = { comicId, page ->
                            navController.navigate(Screen.Reader.createForComic(comicId, page))
                        },
                        onAddFileClick = {
                            filePicker.launch(
                                arrayOf(
                                    "application/zip",
                                    "application/x-cbz",
                                    "application/x-cbr",
                                    "application/vnd.comicbook-rar",
                                    "application/x-rar-compressed",
                                    "application/x-rar",
                                    "application/vnd.rar",
                                    "application/pdf",
                                    "application/epub+zip",
                                    "text/plain",
                                    "text/html",
                                    "text/markdown",
                                    "application/rtf",
                                    "application/x-mobipocket-ebook",
                                    "application/vnd.amazon.ebook",
                                    "application/vnd.amazon.mobi8-ebook",
                                    "image/vnd.djvu",
                                    "image/x-djvu",
                                    "image/vnd.djvu+multipage",
                                    "application/x-djvu",
                                    "application/xhtml+xml",
                                    "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
                                    "application/vnd.oasis.opendocument.text",
                                    "*/*"
                                )
                            )
                        },
                        onAddFolderClick = { folderPicker.launch(null) },
                        onSettingsClick = { navController.navigate(Screen.Settings.route) },
                        onProgressProfileClick = {
                            navController.navigate(Screen.ProgressProfile.route) {
                                launchSingleTop = true
                            }
                        }
                    )
                }

                composable(Screen.Settings.route) {
                    SettingsScreen(
                        onAppIconSettingsClick = { navController.navigate(Screen.AppIconSettings.route) },
                        onProgressProfileClick = { navController.navigate(Screen.ProgressProfile.route) }
                    )
                }

                composable(Screen.ProgressProfile.route) {
                    MrComicProgressRoute(
                        onBackClick = { navController.popBackStack() },
                        onComicClick = { comicId ->
                            navController.navigate(Screen.Reader.createForComic(comicId))
                        }
                    )
                }

                composable(Screen.AppIconSettings.route) {
                    AppIconSettingsScreen(onBackClick = { navController.popBackStack() })
                }

                composable(
                    route = Screen.Translation.route,
                    arguments = listOf(
                        navArgument("imagePath") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("comicId") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("page") {
                            type = NavType.IntType
                            defaultValue = -1
                        }
                    )
                ) {
                    val vm: LibraryViewModel = hiltViewModel()
                    val libraryUiState by vm.uiState.collectAsStateWithLifecycle()
                    val imagePath = it.arguments?.getString("imagePath")
                    val comicId = it.arguments?.getString("comicId")
                    val page = it.arguments?.getInt("page") ?: -1
                    OcrScreen(
                        imagePath = imagePath,
                        onNavigateBack = { navController.popBackStack() },
                        showBackButton = !imagePath.isNullOrBlank() || !comicId.isNullOrBlank() || page >= 0,
                        backgroundStyle = libraryUiState.backgroundStyle,
                        backgroundImageUri = libraryUiState.backgroundImageUri,
                        backdropStrength = libraryUiState.backdropStrength,
                        backgroundBlur = libraryUiState.backgroundBlur,
                        backgroundVeil = libraryUiState.backgroundVeil
                    )
                }

                composable(
                    route = Screen.Reader.route,
                    arguments = listOf(
                        navArgument("comicId") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("uri") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("page") {
                            type = NavType.IntType
                            defaultValue = -1
                        }
                    )
                ) {
                    ReaderScreen(
                        onNavigateBack = { navController.navigateUp() },
                        onNavigateToOcr = { request: OcrLaunchRequest ->
                            navController.navigate(
                                Screen.Translation.create(
                                    imagePath = request.imagePath,
                                    comicId = request.comicId,
                                    page = request.page
                                )
                            )
                        }
                    )
                }
            }
        }
    }
}

@Composable
private fun AppBottomBar(
    currentRoute: String?,
    menuItems: List<NavItem>,
    onNavigate: (String) -> Unit
) {
    NavigationBar(
        containerColor = MaterialTheme.colorScheme.surface,
        tonalElevation = 8.dp
    ) {
        menuItems.forEach { item ->
            UniversalNavigationBarItem(
                icon = item.icon,
                label = item.label,
                isSelected = currentRoute == item.route,
                onClick = { onNavigate(item.destination) }
            )
        }
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
private fun RowScope.UniversalNavigationBarItem(
    icon: ImageVector,
    label: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    NavigationBarItem(
        modifier = Modifier.weight(1f),
        selected = isSelected,
        onClick = onClick,
        alwaysShowLabel = true,
        colors = NavigationBarItemDefaults.colors(
            indicatorColor = Color.Transparent,
            selectedIconColor = MaterialTheme.colorScheme.primary,
            selectedTextColor = MaterialTheme.colorScheme.primary,
            unselectedIconColor = MaterialTheme.colorScheme.onSurfaceVariant,
            unselectedTextColor = MaterialTheme.colorScheme.onSurfaceVariant
        ),
        icon = {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(26.dp),
                contentAlignment = Alignment.Center
            ) {
                Icon(
                    imageVector = icon,
                    contentDescription = label,
                    modifier = Modifier.size(22.dp)
                )
            }
        },
        label = {
            Text(
                text = label,
                maxLines = 1,
                softWrap = false,
                overflow = TextOverflow.Clip,
                textAlign = TextAlign.Center,
                modifier = Modifier
                    .fillMaxWidth()
                    .basicMarquee(),
                style = MaterialTheme.typography.labelSmall.copy(
                    platformStyle = PlatformTextStyle(includeFontPadding = false)
                )
            )
        }
    )
}
