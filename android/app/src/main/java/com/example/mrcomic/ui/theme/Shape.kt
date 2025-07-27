package com.example.mrcomic.ui.theme

import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Shapes
import androidx.compose.ui.unit.dp

/**
 * Формы элементов для Mr.Comic следуя Material 3 рекомендациям
 */
val MrComicShapes = Shapes(
    // Extra Small - для маленьких элементов как chips, badges
    extraSmall = RoundedCornerShape(4.dp),
    
    // Small - для кнопок, text fields
    small = RoundedCornerShape(8.dp),
    
    // Medium - для карточек, модальных окон
    medium = RoundedCornerShape(12.dp),
    
    // Large - для больших карточек, sheets
    large = RoundedCornerShape(16.dp),
    
    // Extra Large - для очень больших элементов
    extraLarge = RoundedCornerShape(28.dp)
)