package com.example.mrcomic.navigation

import androidx.compose.animation.AnimatedContentTransitionScope
import androidx.compose.animation.EnterTransition
import androidx.compose.animation.ExitTransition
import androidx.compose.animation.core.EaseInOut
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.MenuBook
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Speed
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.compose.rememberNavController
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceProfiler
import com.example.mrcomic.ui.analytics.TrackScreenView
import com.example.mrcomic.ui.performance.PerformanceDashboard
import com.example.mrcomic.BuildConfig
import com.example.mrcomic.ui.screens.LibraryScreen
import com.example.mrcomic.ui.screens.ReaderScreen
import com.example.mrcomic.ui.screens.SettingsScreen
import kotlinx.coroutines.launch

/**
 * Главная система навигации Mr.Comic
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun MrComicNavigation(
    modifier: Modifier = Modifier,
    analyticsHelper: AnalyticsHelper = hiltViewModel(),
    performanceProfiler: PerformanceProfiler = hiltViewModel()
) {
    val navController = rememberNavController()
    val scope = rememberCoroutineScope()
    
    // Отслеживание навигации
    TrackScreenView("Navigation", analyticsHelper, scope)
    
    val currentBackStackEntry by navController.currentBackStackEntryAsState()
    val currentDestination = currentBackStackEntry?.destination
    
    // Определяем, показывать ли bottom bar
    val showBottomBar = when (currentDestination?.route) {
        Screen.Library.route,
        Screen.Settings.route -> true
        else -> false
    }
    
    Scaffold(
        modifier = modifier.testTag("mr_comic_navigation"),
        bottomBar = {
            if (showBottomBar) {
                MrComicBottomBar(
                    navController = navController,
                    currentDestination = currentDestination,
                    analyticsHelper = analyticsHelper,
                    scope = scope
                )
            }
        }
    ) { paddingValues ->
        NavHost(
            navController = navController,
            startDestination = Screen.Library.route,
            modifier = Modifier.padding(paddingValues),
            enterTransition = {
                slideInHorizontally(
                    initialOffsetX = { it },
                    animationSpec = tween(300)
                ) + fadeIn(animationSpec = tween(300))
            },
            exitTransition = {
                slideOutHorizontally(
                    targetOffsetX = { -it },
                    animationSpec = tween(300)
                ) + fadeOut(animationSpec = tween(300))
            },
            popEnterTransition = {
                slideInHorizontally(
                    initialOffsetX = { -it },
                    animationSpec = tween(300)
                ) + fadeIn(animationSpec = tween(300))
            },
            popExitTransition = {
                slideOutHorizontally(
                    targetOffsetX = { it },
                    animationSpec = tween(300)
                ) + fadeOut(animationSpec = tween(300))
            }
        ) {
            // Library Screen
            composable(
                route = Screen.Library.route,
                enterTransition = {
                    when (initialState.destination.route) {
                        Screen.Reader.route -> {
                            slideInVertically(
                                initialOffsetY = { it },
                                animationSpec = tween(400)
                            ) + fadeIn(animationSpec = tween(400))
                        }
                        else -> null
                    }
                }
            ) {
                LibraryScreen(
                    onComicClick = { comicId ->
                        navController.navigate(Screen.Reader.createRoute(comicId)) {
                            launchSingleTop = true
                        }
                        
                        analyticsHelper.track(
                            com.example.core.analytics.AnalyticsEvent.ComicOpened(
                                format = "unknown", // TODO: получить реальный формат
                                totalPages = 0 // TODO: получить реальное количество страниц
                            ),
                            scope
                        )
                    },
                    onSettingsClick = {
                        navController.navigate(Screen.Settings.route) {
                            launchSingleTop = true
                        }
                    },
                    analyticsHelper = analyticsHelper,
                    performanceProfiler = performanceProfiler
                )
            }
            
            // Reader Screen
            composable(
                route = Screen.Reader.route,
                arguments = listOf(
                    navArgument(Screen.Reader.COMIC_ID_ARG) {
                        type = NavType.StringType
                    }
                ),
                enterTransition = {
                    slideInVertically(
                        initialOffsetY = { it },
                        animationSpec = tween(400)
                    ) + fadeIn(animationSpec = tween(400))
                },
                exitTransition = {
                    slideOutVertically(
                        targetOffsetY = { it },
                        animationSpec = tween(400)
                    ) + fadeOut(animationSpec = tween(400))
                }
            ) { backStackEntry ->
                val comicId = backStackEntry.arguments?.getString(Screen.Reader.COMIC_ID_ARG) ?: ""
                
                ReaderScreen(
                    comicId = comicId,
                    onBackClick = {
                        navController.popBackStack()
                        
                        analyticsHelper.track(
                            com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                metricName = "reader_back_navigation",
                                value = 1.0,
                                unit = "action"
                            ),
                            scope
                        )
                    },
                    analyticsHelper = analyticsHelper,
                    performanceProfiler = performanceProfiler
                )
            }
            
            // Settings Screen
            composable(
                route = Screen.Settings.route
            ) {
                SettingsScreen(
                    onBackClick = {
                        navController.popBackStack()
                    },
                    analyticsHelper = analyticsHelper,
                    performanceProfiler = performanceProfiler
                )
            }
            
            // Performance Dashboard
            composable(
                route = Screen.Performance.route,
                enterTransition = {
                    slideInHorizontally(
                        initialOffsetX = { it },
                        animationSpec = tween(300)
                    ) + fadeIn(animationSpec = tween(300))
                },
                exitTransition = {
                    slideOutHorizontally(
                        targetOffsetX = { it },
                        animationSpec = tween(300)
                    ) + fadeOut(animationSpec = tween(300))
                }
            ) {
                PerformanceDashboard(
                    onBackClick = {
                        navController.popBackStack()
                    },
                    performanceProfiler = performanceProfiler,
                    analyticsHelper = analyticsHelper
                )
            }
        }
    }
    
    // Отслеживание навигационных изменений
    LaunchedEffect(currentDestination?.route) {
        currentDestination?.route?.let { route ->
            analyticsHelper.track(
                com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                    metricName = "screen_navigated",
                    value = 1.0,
                    unit = "navigation"
                ),
                scope
            )
        }
    }
}

@Composable
private fun MrComicBottomBar(
    navController: NavController,
    currentDestination: NavDestination?,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    NavigationBar(
        modifier = Modifier.testTag("bottom_navigation"),
        containerColor = MaterialTheme.colorScheme.surface,
        tonalElevation = 8.dp
    ) {
        bottomNavItems.forEach { item ->
            val isSelected = currentDestination?.hierarchy?.any { it.route == item.route } == true
            
            NavigationBarItem(
                icon = {
                    Icon(
                        imageVector = if (isSelected) item.selectedIcon else item.unselectedIcon,
                        contentDescription = item.title,
                        modifier = Modifier.testTag("nav_${item.route}")
                    )
                },
                label = {
                    Text(
                        text = item.title,
                        style = MaterialTheme.typography.labelSmall
                    )
                },
                selected = isSelected,
                onClick = {
                    if (!isSelected) {
                        navController.navigate(item.route) {
                            popUpTo(navController.graph.findStartDestination().id) {
                                saveState = true
                            }
                            launchSingleTop = true
                            restoreState = true
                        }
                        
                        analyticsHelper.track(
                            com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                metricName = "bottom_nav_clicked",
                                value = bottomNavItems.indexOf(item).toDouble(),
                                unit = "tab"
                            ),
                            scope
                        )
                    }
                },
                colors = NavigationBarItemDefaults.colors(
                    selectedIconColor = MaterialTheme.colorScheme.primary,
                    selectedTextColor = MaterialTheme.colorScheme.primary,
                    unselectedIconColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    unselectedTextColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    indicatorColor = MaterialTheme.colorScheme.primaryContainer
                ),
                modifier = Modifier.testTag("bottom_nav_item_${item.route}")
            )
        }
        
                            // Debug Performance Button (только в debug режиме)
                    if (BuildConfig.DEBUG) {
            NavigationBarItem(
                icon = {
                    Icon(
                        imageVector = Icons.Default.Analytics,
                        contentDescription = "Performance",
                        modifier = Modifier.testTag("nav_performance")
                    )
                },
                label = {
                    Text(
                        text = "Debug",
                        style = MaterialTheme.typography.labelSmall
                    )
                },
                selected = currentDestination?.route == Screen.Performance.route,
                onClick = {
                    navController.navigate(Screen.Performance.route) {
                        launchSingleTop = true
                    }
                    
                    analyticsHelper.track(
                        com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                            metricName = "performance_dashboard_opened",
                            value = 1.0,
                            unit = "debug"
                        ),
                        scope
                    )
                },
                colors = NavigationBarItemDefaults.colors(
                    selectedIconColor = MaterialTheme.colorScheme.tertiary,
                    selectedTextColor = MaterialTheme.colorScheme.tertiary,
                    unselectedIconColor = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f),
                    unselectedTextColor = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
                )
            )
        }
    }
}

// Navigation Items
private val bottomNavItems = listOf(
    BottomNavItem(
        route = Screen.Library.route,
        title = "Библиотека",
        selectedIcon = Icons.Filled.LibraryBooks,
        unselectedIcon = Icons.Default.LibraryBooks
    ),
    BottomNavItem(
        route = Screen.Settings.route,
        title = "Настройки",
        selectedIcon = Icons.Filled.Settings,
        unselectedIcon = Icons.Default.Settings
    )
)

data class BottomNavItem(
    val route: String,
    val title: String,
    val selectedIcon: androidx.compose.ui.graphics.vector.ImageVector,
    val unselectedIcon: androidx.compose.ui.graphics.vector.ImageVector
)

// Screen definitions
sealed class Screen(val route: String) {
    object Library : Screen("library")
    
    object Reader : Screen("reader/{$COMIC_ID_ARG}") {
        const val COMIC_ID_ARG = "comicId"
        fun createRoute(comicId: String) = "reader/$comicId"
    }
    
    object Settings : Screen("settings")
    
    object Performance : Screen("performance")
}

// BuildConfig будет автоматически генерироваться при сборке Android проекта