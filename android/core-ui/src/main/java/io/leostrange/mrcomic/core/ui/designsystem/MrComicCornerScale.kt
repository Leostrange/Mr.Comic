package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

/**
 * Corner scale for the Editorial Ink design system.
 *
 * Use this for new components. `MrComicRadiusTokens` is the legacy scale used by
 * existing screens; both scales coexist during migration.
 *
 *  xs  4 dp — micro containers, dense pills
 *  sm  6 dp — inline controls, small chips
 *  md 10 dp — inputs, small cards, icon containers
 *  lg 14 dp — cards, list items, default container
 *  xl 20 dp — panels, hero surfaces, sheets
 *  pill 999 dp — fully rounded
 */
object MrComicCornerScale {
    val xs: Dp = 4.dp
    val sm: Dp = 6.dp
    val md: Dp = 10.dp
    val lg: Dp = 14.dp
    val xl: Dp = 20.dp
    val pill: Dp = 999.dp
}
