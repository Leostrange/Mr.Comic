package io.leostrange.mrcomic.navigation

import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import android.util.Log
import androidx.compose.animation.EnterTransition
import androidx.compose.animation.ExitTransition
import androidx.compose.animation.core.tween
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.consumeWindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.Bookmarks
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
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
import io.leostrange.mrcomic.core.data.preferences.PerformanceDefaults
import io.leostrange.mrcomic.core.data.preferences.PerformancePreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.model.ReaderFormatCatalog
import io.leostrange.mrcomic.core.model.storedReaderLocator
import io.leostrange.mrcomic.core.ui.designsystem.MrComicBottomNavigationBar
import io.leostrange.mrcomic.core.ui.designsystem.MrComicBottomNavigationItem
import io.leostrange.mrcomic.core.ui.eink.LocalEInkMode
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.feature.library.AudiobookPlayerScreen
import io.leostrange.mrcomic.feature.library.LibraryScreen
import io.leostrange.mrcomic.feature.library.LibraryViewModel
import io.leostrange.mrcomic.feature.library.MiniAudiobookPlayer
import io.leostrange.mrcomic.feature.library.MrComicProgressRoute
import io.leostrange.mrcomic.feature.library.addAudiobookFromFolder
import io.leostrange.mrcomic.feature.library.addAudiobookFromUri
import io.leostrange.mrcomic.feature.library.addComicFromUri
import io.leostrange.mrcomic.feature.library.addComicsFromDirectory
import io.leostrange.mrcomic.feature.library.getComicById
import io.leostrange.mrcomic.feature.ocr.ui.OcrScreen
import io.leostrange.mrcomic.feature.onboarding.OnboardingScreen
import io.leostrange.mrcomic.feature.reader.ui.OcrLaunchRequest
import io.leostrange.mrcomic.feature.reader.ui.ReaderScreen
import io.leostrange.mrcomic.feature.settings.ui.SettingsScreen
import io.leostrange.mrcomic.home.ContinueLibraryChrome
import io.leostrange.mrcomic.home.ContinueScreen
import io.leostrange.mrcomic.icons.AppIconSettingsScreen
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

// ─────────────────────────────────────────────────────────────────────────────
// Navigation graph and bottom bar.
// Screen definitions live in Screen.kt, transition helpers in AppNavTransitions.kt
// ─────────────────────────────────────────────────────────────────────────────

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
    val context = LocalContext.current
    val userPreferences = remember(context) { UserPreferences(context.dataStore) }
    val navTransitionStylePref by userPreferences
        .get(PreferencesKeys.APP_NAV_TRANSITION_STYLE, "FADE")
        .collectAsStateWithLifecycle(initialValue = "FADE")
    val reducedMotionPref by userPreferences
        .get(PreferencesKeys.UI_REDUCED_MOTION, false)
        .collectAsStateWithLifecycle(initialValue = false)
    val reducedAnimationsPref by userPreferences
        .get(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, PerformanceDefaults.REDUCED_ANIM)
        .collectAsStateWithLifecycle(initialValue = PerformanceDefaults.REDUCED_ANIM)
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
    val readerRouteBase = remember { Screen.Reader.route.substringBefore('?') }
    val effectiveTransitionStyle = remember(
        isEInk,
        reducedMotionPref,
        reducedAnimationsPref,
        navTransitionStylePref
    ) {
        if (isEInk || reducedMotionPref || reducedAnimationsPref) {
            "NONE"
        } else {
            normalizeAppNavTransitionStyle(navTransitionStylePref)
        }
    }
    var rootChromeVisible by remember { mutableStateOf(showBottomBar) }
    var previousRoute by remember { mutableStateOf(currentRoute) }
    val bottomChromeAlpha by androidx.compose.animation.core.animateFloatAsState(
        targetValue = if (rootChromeVisible) 1f else 0f,
        animationSpec = tween(appNavTransitionDurationMillis(effectiveTransitionStyle)),
        label = "rootBottomChromeAlpha"
    )
    val bottomChromeOffset by androidx.compose.animation.core.animateDpAsState(
        targetValue = if (rootChromeVisible) 0.dp else rootChromeOffsetDp(effectiveTransitionStyle),
        animationSpec = tween(appNavTransitionDurationMillis(effectiveTransitionStyle)),
        label = "rootBottomChromeOffset"
    )
    val keepBottomBarSlot = showBottomBar || bottomChromeAlpha > 0.01f

    LaunchedEffect(currentRoute, effectiveTransitionStyle) {
        val route = currentRoute
        val lastRoute = previousRoute
        previousRoute = route
        when {
            route !in rootRoutes -> rootChromeVisible = false
            lastRoute == null || lastRoute in rootRoutes || effectiveTransitionStyle == "NONE" -> {
                rootChromeVisible = true
            }
            else -> {
                rootChromeVisible = false
                delay(appRootChromeRevealDelayMillis(effectiveTransitionStyle))
                rootChromeVisible = true
            }
        }
    }

    fun navigateToFullscreen(route: String) {
        rootChromeVisible = false
        navController.navigate(route)
    }

    Scaffold(
        bottomBar = {
            if (keepBottomBarSlot) {
                Column(
                    modifier = Modifier
                        .graphicsLayer { alpha = bottomChromeAlpha }
                        .offset(y = bottomChromeOffset)
                ) {
                    MiniAudiobookPlayer(
                        onOpenPlayer = { audiobookId ->
                            navigateToFullscreen(Screen.AudiobookPlayer.create(audiobookId))
                        }
                    )
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
        },
        contentWindowInsets = WindowInsets(0, 0, 0, 0)
    ) { paddingValues ->
        val contentPadding =
            if (showBottomBar) paddingValues else androidx.compose.foundation.layout.PaddingValues()
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(contentPadding)
        ) {
            NavHost(
                navController = navController,
                startDestination = startDestination,
                modifier = Modifier.fillMaxSize().consumeWindowInsets(contentPadding),
                enterTransition = {
                    val fromRoute = initialState.destination.route?.substringBefore('?')
                    val toRoute = targetState.destination.route?.substringBefore('?')
                    val isRootTransition = fromRoute in rootRoutes && toRoute in rootRoutes
                    if (
                        isEInk ||
                        fromRoute == toRoute
                    ) {
                        EnterTransition.None
                    } else if (isRootTransition) {
                        appNavRootEnterTransition(effectiveTransitionStyle)
                    } else {
                        appNavEnterTransition(
                            style = effectiveTransitionStyle,
                            fromRoute = fromRoute,
                            toRoute = toRoute,
                            rootRoutes = rootRoutes
                        )
                    }
                },
                exitTransition = {
                    val fromRoute = initialState.destination.route?.substringBefore('?')
                    val toRoute = targetState.destination.route?.substringBefore('?')
                    val isRootTransition = fromRoute in rootRoutes && toRoute in rootRoutes
                    if (
                        isEInk ||
                        fromRoute == toRoute
                    ) {
                        ExitTransition.None
                    } else if (isRootTransition) {
                        appNavRootExitTransition(effectiveTransitionStyle)
                    } else {
                        appNavExitTransition(
                            style = effectiveTransitionStyle,
                            fromRoute = fromRoute,
                            toRoute = toRoute,
                            rootRoutes = rootRoutes
                        )
                    }
                },
                popEnterTransition = {
                    val fromRoute = initialState.destination.route?.substringBefore('?')
                    val toRoute = targetState.destination.route?.substringBefore('?')
                    val isRootTransition = fromRoute in rootRoutes && toRoute in rootRoutes
                    if (
                        isEInk ||
                        fromRoute == toRoute
                    ) {
                        EnterTransition.None
                    } else if (isRootTransition) {
                        appNavRootPopEnterTransition(effectiveTransitionStyle)
                    } else {
                        appNavPopEnterTransition(
                            style = effectiveTransitionStyle,
                            fromRoute = fromRoute,
                            toRoute = toRoute,
                            rootRoutes = rootRoutes
                        )
                    }
                },
                popExitTransition = {
                    val fromRoute = initialState.destination.route?.substringBefore('?')
                    val toRoute = targetState.destination.route?.substringBefore('?')
                    val isRootTransition = fromRoute in rootRoutes && toRoute in rootRoutes
                    if (
                        isEInk ||
                        fromRoute == toRoute
                    ) {
                        ExitTransition.None
                    } else if (isRootTransition) {
                        appNavRootPopExitTransition(effectiveTransitionStyle)
                    } else {
                        appNavPopExitTransition(
                            style = effectiveTransitionStyle,
                            fromRoute = fromRoute,
                            toRoute = toRoute,
                            rootRoutes = rootRoutes
                        )
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
                                    navigateToFullscreen(
                                        Screen.Reader.createForComic(
                                            comicId = comic.id,
                                            page = page,
                                            locator = if (page == null) comic.storedReaderLocator() else null
                                        )
                                    )
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
                        val mimeType = context.contentResolver.getType(uri)
                        if (isLikelyAudioDocument(context, uri, mimeType)) {
                            vm.addAudiobookFromUri(uri)
                        } else {
                            vm.addComicFromUri(uri)
                        }
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
                        vm.addAudiobookFromFolder(treeUri)
                    }

                    LibraryScreen(
                        onComicClick = { comicId ->
                            scope.launch {
                                vm.getComicById(comicId)?.let { comic ->
                                    navigateToFullscreen(
                                        Screen.Reader.createForComic(
                                            comicId = comic.id,
                                            locator = comic.storedReaderLocator()
                                        )
                                    )
                                }
                            }
                        },
                        onAudiobookClick = { audiobookId ->
                            navigateToFullscreen(Screen.AudiobookPlayer.create(audiobookId))
                        },
                        onQuoteClick = { comicId, page ->
                            navigateToFullscreen(
                                Screen.Reader.createForComic(
                                    comicId = comicId,
                                    page = page
                                )
                            )
                        },
                        onAddFileClick = {
                            filePicker.launch(
                                ReaderFormatCatalog.readerOpenDocumentMimeTypes +
                                    ReaderFormatCatalog.audioMimeTypes
                            )
                        },
                        onAddFolderClick = { folderPicker.launch(null) },
                        onSettingsClick = { navController.navigate(Screen.Settings.route) },
                        onProgressProfileClick = {
                            navController.navigate(Screen.ProgressProfile.route) {
                                launchSingleTop = true
                            }
                        },
                        onOpdsCatalogClick = {
                            navController.navigate(Screen.OpdsCatalog.route)
                        }
                    )
                }

                composable(Screen.Settings.route) {
                    SettingsScreen(
                        onAppIconSettingsClick = { navController.navigate(Screen.AppIconSettings.route) },
                        onProgressProfileClick = { navController.navigate(Screen.ProgressProfile.route) }
                    )
                }

                composable(Screen.OpdsCatalog.route) {
                    val libraryVm: LibraryViewModel = hiltViewModel()
                    io.leostrange.mrcomic.feature.library.opds.OpdsCatalogScreen(
                        onNavigateBack = { navController.popBackStack() },
                        onBookDownloaded = { file ->
                            libraryVm.addComicFromUri(android.net.Uri.fromFile(file))
                            navController.popBackStack()
                        }
                    )
                }

                composable(Screen.ProgressProfile.route) {
                    val vm: LibraryViewModel = hiltViewModel()
                    val scope = rememberCoroutineScope()
                    MrComicProgressRoute(
                        onBackClick = { navController.popBackStack() },
                        onComicClick = { comicId ->
                            scope.launch {
                                val comic = vm.getComicById(comicId)
                                navController.navigate(
                                    if (comic != null) {
                                        Screen.Reader.createForComic(
                                            comicId = comic.id,
                                            locator = comic.storedReaderLocator()
                                        )
                                    } else {
                                        Screen.Reader.createForComic(comicId)
                                    }
                                )
                            }
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
                        },
                        navArgument("locatorHref") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("locatorProgression") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("locatorPosition") {
                            type = NavType.IntType
                            defaultValue = -1
                        },
                        navArgument("locatorTitle") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("locatorFragment") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
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
                    route = Screen.AudiobookPlayer.route,
                    arguments = listOf(
                        navArgument("audiobookId") { type = NavType.StringType }
                    )
                ) {
                    AudiobookPlayerScreen(
                        audiobookId = it.arguments?.getString("audiobookId") ?: "",
                        onNavigateBack = { navController.navigateUp() }
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
                        },
                        navArgument("locatorHref") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("locatorProgression") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("locatorPosition") {
                            type = NavType.IntType
                            defaultValue = -1
                        },
                        navArgument("locatorTitle") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        },
                        navArgument("locatorFragment") {
                            type = NavType.StringType
                            nullable = true
                            defaultValue = null
                        }
                    )
                ) {
                    val readerContext = LocalContext.current
                    ReaderScreen(
                        onNavigateBack = {
                            navController.navigateUp()
                        },
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

private fun isLikelyAudioDocument(context: Context, uri: Uri, mimeType: String?): Boolean {
    if (mimeType?.startsWith("audio/", ignoreCase = true) == true) return true
    val name = documentDisplayName(context, uri)
        ?: uri.lastPathSegment
        ?: return false
    val extension = name.substringBefore('?')
        .substringBefore('#')
        .substringAfterLast('.', "")
        .lowercase()
    return extension in setOf(
        "mp3", "m4a", "m4b", "aac", "ogg", "oga", "opus",
        "wav", "wave", "flac", "alac", "aiff", "aif", "webm"
    )
}

private fun documentDisplayName(context: Context, uri: Uri): String? =
    runCatching {
        context.contentResolver.query(
            uri,
            arrayOf(OpenableColumns.DISPLAY_NAME),
            null,
            null,
            null
        )?.use { cursor ->
            val index = cursor.getColumnIndex(OpenableColumns.DISPLAY_NAME)
            if (index >= 0 && cursor.moveToFirst()) cursor.getString(index) else null
        }
    }.getOrNull()?.takeIf { it.isNotBlank() }

@Composable
private fun AppBottomBar(
    currentRoute: String?,
    menuItems: List<NavItem>,
    onNavigate: (String) -> Unit
) {
    MrComicBottomNavigationBar {
        menuItems.forEach { item ->
            MrComicBottomNavigationItem(
                icon = item.icon,
                label = item.label,
                selected = currentRoute == item.route,
                onClick = { onNavigate(item.destination) }
            )
        }
    }
}
