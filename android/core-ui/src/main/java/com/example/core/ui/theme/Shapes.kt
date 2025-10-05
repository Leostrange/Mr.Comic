package com.example.core.ui.theme

import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Shapes
import androidx.compose.ui.unit.dp

/**
 * Material Design 3 shape system for MrComic
 * 
 * Provides consistent corner radius values across the app:
 * - Extra Small: 4dp - for chips and small elements
 * - Small: 8dp - for buttons and cards
 * - Medium: 12dp - for larger cards and dialogs
 * - Large: 16dp - for bottom sheets and large surfaces
 * - Extra Large: 28dp - for prominent surfaces
 */
val Shapes = Shapes(
    // Extra Small - 4dp corners
    // Used for: Small chips, badges, small buttons
    extraSmall = RoundedCornerShape(4.dp),
    
    // Small - 8dp corners  
    // Used for: Regular buttons, small cards, text fields
    small = RoundedCornerShape(8.dp),
    
    // Medium - 12dp corners
    // Used for: Cards, dialogs, medium surfaces
    medium = RoundedCornerShape(12.dp),
    
    // Large - 16dp corners
    // Used for: Large cards, bottom sheets, navigation drawers
    large = RoundedCornerShape(16.dp),
    
    // Extra Large - 28dp corners
    // Used for: Prominent surfaces, large dialogs, full-screen modals
    extraLarge = RoundedCornerShape(28.dp)
)

/**
 * Custom shapes for comic-specific UI elements
 */
object ComicShapes {
    // Comic book inspired shapes with varied corners
    val comicCard = RoundedCornerShape(
        topStart = 12.dp,
        topEnd = 16.dp,
        bottomStart = 8.dp,
        bottomEnd = 20.dp
    )
    
    // Reader panel shapes
    val readerPanel = RoundedCornerShape(
        topStart = 16.dp,
        topEnd = 16.dp,
        bottomStart = 0.dp,
        bottomEnd = 0.dp
    )
    
    // Settings card shape
    val settingsCard = RoundedCornerShape(12.dp)
    
    // Floating action button shape
    val fab = RoundedCornerShape(16.dp)
    
    // Bottom sheet shape
    val bottomSheet = RoundedCornerShape(
        topStart = 28.dp,
        topEnd = 28.dp,
        bottomStart = 0.dp,
        bottomEnd = 0.dp
    )
    
    // Dialog shape
    val dialog = RoundedCornerShape(24.dp)
    
    // Search bar shape
    val searchBar = RoundedCornerShape(24.dp)
    
    // Chip shape
    val chip = RoundedCornerShape(16.dp)
    
    // Progress indicator background
    val progressBackground = RoundedCornerShape(8.dp)
}
