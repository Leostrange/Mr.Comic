package com.example.mrcomic.ui

import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Book
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Translate
import androidx.compose.material.icons.outlined.Book
import androidx.compose.material.icons.outlined.Settings
import androidx.compose.material.icons.outlined.Translate
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.NavigationBar
import androidx.compose.material3.NavigationBarItem
import androidx.compose.material3.NavigationBarItemDefaults
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.res.stringResource
import androidx.navigation.NavController
import androidx.navigation.NavDestination.Companion.hierarchy
import androidx.navigation.NavGraph.Companion.findStartDestination
import androidx.navigation.compose.currentBackStackEntryAsState
import com.example.mrcomic.R

/**
 * Main screen destinations for bottom navigation
 */
sealed class MainDestination(
    val route: String,
    val selectedIcon: ImageVector,
    val unselectedIcon: ImageVector,
    val titleRes: Int
) {
    data object Library : MainDestination(
        route = "library",
        selectedIcon = Icons.Filled.Book,
        unselectedIcon = Icons.Outlined.Book,
        titleRes = R.string.library
    )
    
    data object Translation : MainDestination(
        route = "translation",
        selectedIcon = Icons.Filled.Translate,
        unselectedIcon = Icons.Outlined.Translate,
        titleRes = R.string.translation
    )
    
    data object Settings : MainDestination(
        route = "settings",
        selectedIcon = Icons.Filled.Settings,
        unselectedIcon = Icons.Outlined.Settings,
        titleRes = R.string.settings
    )
}

/**
 * List of main navigation destinations
 */
val mainDestinations = listOf(
    MainDestination.Library,
    MainDestination.Translation,
    MainDestination.Settings
)

/**
 * Main screen with bottom navigation
 * 
 * Features:
 * - Material Design 3 NavigationBar
 * - Proper window insets handling
 * - State management for navigation
 * - Consistent styling across destinations
 */
@Composable
fun MainScreen(
    navController: NavController,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit
) {
    val navBackStackEntry by navController.currentBackStackEntryAsState()
    val currentDestination = navBackStackEntry?.destination
    
    Scaffold(
        modifier = modifier,
        bottomBar = {
            NavigationBar(
                containerColor = MaterialTheme.colorScheme.surfaceContainer,
                contentColor = MaterialTheme.colorScheme.onSurface,
                windowInsets = WindowInsets(0) // Handle insets manually if needed
            ) {
                mainDestinations.forEach { destination ->
                    val isSelected = currentDestination?.hierarchy?.any { 
                        it.route == destination.route 
                    } == true
                    
                    NavigationBarItem(
                        icon = {
                            Icon(
                                imageVector = if (isSelected) {
                                    destination.selectedIcon
                                } else {
                                    destination.unselectedIcon
                                },
                                contentDescription = stringResource(destination.titleRes)
                            )
                        },
                        label = {
                            Text(
                                text = stringResource(destination.titleRes),
                                style = MaterialTheme.typography.labelMedium
                            )
                        },
                        selected = isSelected,
                        onClick = {
                            navController.navigate(destination.route) {
                                // Pop up to the start destination of the graph to
                                // avoid building up a large stack of destinations
                                // on the back stack as users select items
                                popUpTo(navController.graph.findStartDestination().id) {
                                    saveState = true
                                }
                                // Avoid multiple copies of the same destination when
                                // reselecting the same item
                                launchSingleTop = true
                                // Restore state when reselecting a previously selected item
                                restoreState = true
                            }
                        },
                        colors = NavigationBarItemDefaults.colors(
                            selectedIconColor = MaterialTheme.colorScheme.onSecondaryContainer,
                            selectedTextColor = MaterialTheme.colorScheme.onSurface,
                            indicatorColor = MaterialTheme.colorScheme.secondaryContainer,
                            unselectedIconColor = MaterialTheme.colorScheme.onSurfaceVariant,
                            unselectedTextColor = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    )
                }
            }
        },
        contentWindowInsets = WindowInsets(0)
    ) { paddingValues ->
        androidx.compose.foundation.layout.Box(
            modifier = Modifier.padding(paddingValues)
        ) {
            content()
        }
    }
}
