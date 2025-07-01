package com.example.core.model

import androidx.compose.ui.graphics.vector.ImageVector

/**
 * Represents an item in the bottom navigation bar.
 *
 * @param label The text label for the item.
 * @param icon The icon for the item.
 * @param route The navigation route associated with the item.
 */
data class BottomNavItem(
    val label: String,
    val icon: ImageVector,
    val route: String
)