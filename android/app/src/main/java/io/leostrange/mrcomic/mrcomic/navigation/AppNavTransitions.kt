package io.leostrange.mrcomic.navigation

import androidx.compose.animation.EnterTransition
import androidx.compose.animation.ExitTransition
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.scaleIn
import androidx.compose.animation.scaleOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.animation.slideOutVertically
import androidx.compose.ui.unit.dp

// ─────────────────────────────────────────────────────────────────────────────
// Navigation transition helpers extracted from AppNavigation.kt
// ─────────────────────────────────────────────────────────────────────────────

internal fun normalizeAppNavTransitionStyle(value: String?): String = when (value?.uppercase()) {
    "NONE", "FADE", "SLIDE", "LIFT" -> value.uppercase()
    else -> "FADE"
}

internal fun appNavTransitionDurationMillis(style: String): Int = when (style) {
    "NONE" -> 0
    "SLIDE" -> 280
    "LIFT" -> 240
    else -> 220
}

internal fun appRootChromeRevealDelayMillis(style: String): Long = when (style) {
    "NONE" -> 0L
    "SLIDE" -> 180L
    "LIFT" -> 150L
    else -> 120L
}

internal fun rootChromeOffsetDp(style: String) = when (style) {
    "SLIDE" -> 18.dp
    "LIFT" -> 12.dp
    else -> 8.dp
}

internal fun appNavRootEnterTransition(style: String): EnterTransition = when (style) {
    "NONE" -> EnterTransition.None
    "SLIDE" -> fadeIn(tween(180)) + slideInHorizontally(
        animationSpec = tween(240),
        initialOffsetX = { it / 8 }
    )
    "LIFT" -> fadeIn(tween(180)) + scaleIn(
        animationSpec = tween(220),
        initialScale = 0.985f
    )
    else -> fadeIn(tween(180))
}

internal fun appNavRootExitTransition(style: String): ExitTransition = when (style) {
    "NONE" -> ExitTransition.None
    "SLIDE" -> fadeOut(tween(160)) + slideOutHorizontally(
        animationSpec = tween(220),
        targetOffsetX = { -(it / 8) }
    )
    "LIFT" -> fadeOut(tween(170)) + scaleOut(
        animationSpec = tween(220),
        targetScale = 1.01f
    )
    else -> fadeOut(tween(180))
}

internal fun appNavRootPopEnterTransition(style: String): EnterTransition = when (style) {
    "NONE" -> EnterTransition.None
    "SLIDE" -> fadeIn(tween(180)) + slideInHorizontally(
        animationSpec = tween(240),
        initialOffsetX = { -(it / 8) }
    )
    "LIFT" -> fadeIn(tween(180)) + scaleIn(
        animationSpec = tween(220),
        initialScale = 1.01f
    )
    else -> fadeIn(tween(180))
}

internal fun appNavRootPopExitTransition(style: String): ExitTransition = when (style) {
    "NONE" -> ExitTransition.None
    "SLIDE" -> fadeOut(tween(160)) + slideOutHorizontally(
        animationSpec = tween(220),
        targetOffsetX = { it / 8 }
    )
    "LIFT" -> fadeOut(tween(170)) + scaleOut(
        animationSpec = tween(220),
        targetScale = 0.99f
    )
    else -> fadeOut(tween(180))
}

internal fun appNavEnterTransition(
    style: String,
    fromRoute: String?,
    toRoute: String?,
    rootRoutes: Set<String>
): EnterTransition = when (style) {
    "NONE" -> EnterTransition.None
    "SLIDE" -> fadeIn(tween(180)) + slideInVertically(
        animationSpec = tween(300),
        initialOffsetY = {
            if (fromRoute in rootRoutes && toRoute in rootRoutes) it / 8 else it / 6
        }
    )
    "LIFT" -> fadeIn(tween(180)) + slideInVertically(
        animationSpec = tween(240),
        initialOffsetY = { it / 18 }
    ) + scaleIn(
        animationSpec = tween(240),
        initialScale = 0.965f
    )
    else -> fadeIn(tween(220))
}

internal fun appNavExitTransition(
    style: String,
    fromRoute: String?,
    toRoute: String?,
    rootRoutes: Set<String>
): ExitTransition = when (style) {
    "NONE" -> ExitTransition.None
    "SLIDE" -> fadeOut(tween(160)) + slideOutVertically(
        animationSpec = tween(260),
        targetOffsetY = {
            if (fromRoute in rootRoutes && toRoute in rootRoutes) -(it / 10) else -(it / 12)
        }
    )
    "LIFT" -> fadeOut(tween(170)) + slideOutVertically(
        animationSpec = tween(220),
        targetOffsetY = { -(it / 24) }
    ) + scaleOut(
        animationSpec = tween(220),
        targetScale = 1.015f
    )
    else -> fadeOut(tween(180))
}

internal fun appNavPopEnterTransition(
    style: String,
    fromRoute: String?,
    toRoute: String?,
    rootRoutes: Set<String>
): EnterTransition = when (style) {
    "NONE" -> EnterTransition.None
    "SLIDE" -> fadeIn(tween(180)) + slideInVertically(
        animationSpec = tween(300),
        initialOffsetY = {
            if (fromRoute in rootRoutes && toRoute in rootRoutes) -(it / 10) else -(it / 8)
        }
    )
    "LIFT" -> fadeIn(tween(180)) + slideInVertically(
        animationSpec = tween(240),
        initialOffsetY = { -(it / 28) }
    ) + scaleIn(
        animationSpec = tween(240),
        initialScale = 1.015f
    )
    else -> fadeIn(tween(220))
}

internal fun appNavPopExitTransition(
    style: String,
    fromRoute: String?,
    toRoute: String?,
    rootRoutes: Set<String>
): ExitTransition = when (style) {
    "NONE" -> ExitTransition.None
    "SLIDE" -> fadeOut(tween(160)) + slideOutVertically(
        animationSpec = tween(260),
        targetOffsetY = {
            if (fromRoute in rootRoutes && toRoute in rootRoutes) it / 8 else it / 6
        }
    )
    "LIFT" -> fadeOut(tween(170)) + slideOutVertically(
        animationSpec = tween(220),
        targetOffsetY = { it / 20 }
    ) + scaleOut(
        animationSpec = tween(220),
        targetScale = 0.965f
    )
    else -> fadeOut(tween(180))
}
