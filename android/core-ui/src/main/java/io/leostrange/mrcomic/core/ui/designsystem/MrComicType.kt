package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.em
import androidx.compose.ui.unit.sp

/**
 * Editorial Ink type roles.
 *
 * New components should use these `TextStyle` constants directly instead of
 * the Material 3 `MaterialTheme.typography.*` slots. The two systems coexist
 * during migration.
 *
 * Roles are named for their semantic purpose (display, h1..h3, body, meta,
 * micro) rather than visual size so that screen text and chrome text can
 * evolve independently of the underlying scale.
 */
object MrComicType {

    // ── Display & Headings ────────────────────────────────────────────────

    /** Hero / cover. 44 / 52, SemiBold 600, -0.015em. */
    val display: TextStyle = TextStyle(
        fontSize = 44.sp,
        lineHeight = 52.sp,
        fontWeight = FontWeight.SemiBold,
        letterSpacing = (-0.015).em,
    )

    /** Screen title (top app bar). 32 / 40, SemiBold 600, -0.01em. */
    val h1: TextStyle = TextStyle(
        fontSize = 32.sp,
        lineHeight = 40.sp,
        fontWeight = FontWeight.SemiBold,
        letterSpacing = (-0.01).em,
    )

    /** Section header. 24 / 32, SemiBold 600, -0.005em. */
    val h2: TextStyle = TextStyle(
        fontSize = 24.sp,
        lineHeight = 32.sp,
        fontWeight = FontWeight.SemiBold,
        letterSpacing = (-0.005).em,
    )

    /** Card / block title. 20 / 28, Medium 500, 0em. */
    val h3: TextStyle = TextStyle(
        fontSize = 20.sp,
        lineHeight = 28.sp,
        fontWeight = FontWeight.Medium,
    )

    // ── Body ──────────────────────────────────────────────────────────────

    /** Default body. 16 / 26, Normal 400, 0em. */
    val body: TextStyle = TextStyle(
        fontSize = 16.sp,
        lineHeight = 26.sp,
        fontWeight = FontWeight.Normal,
    )

    /** Compact body. 14 / 22, Normal 400, 0em. */
    val bodySm: TextStyle = TextStyle(
        fontSize = 14.sp,
        lineHeight = 22.sp,
        fontWeight = FontWeight.Normal,
    )

    // ── List item roles ───────────────────────────────────────────────────

    /** List item title. 16 / 24, Medium 500, 0em. */
    val listTitle: TextStyle = TextStyle(
        fontSize = 16.sp,
        lineHeight = 24.sp,
        fontWeight = FontWeight.Medium,
    )

    /** List item subtitle (alias of [bodySm] for discoverability). */
    val listSubtitle: TextStyle = bodySm

    // ── Meta / micro ──────────────────────────────────────────────────────

    /** Meta label. 12 / 18, Medium 500, 0.01em. */
    val meta: TextStyle = TextStyle(
        fontSize = 12.sp,
        lineHeight = 18.sp,
        fontWeight = FontWeight.Medium,
        letterSpacing = 0.01.em,
    )

    /** Micro / badge. 11 / 16, Medium 500, 0.02em. */
    val micro: TextStyle = TextStyle(
        fontSize = 11.sp,
        lineHeight = 16.sp,
        fontWeight = FontWeight.Medium,
        letterSpacing = 0.02.em,
    )

    // ── Button labels ─────────────────────────────────────────────────────

    /** Default button label. 14 / 20, Medium 500, 0.01em. */
    val button: TextStyle = TextStyle(
        fontSize = 14.sp,
        lineHeight = 20.sp,
        fontWeight = FontWeight.Medium,
        letterSpacing = 0.01.em,
    )

    /** Large / primary CTA label. 16 / 24, SemiBold 600, 0em. */
    val buttonLg: TextStyle = TextStyle(
        fontSize = 16.sp,
        lineHeight = 24.sp,
        fontWeight = FontWeight.SemiBold,
    )

    // ── Top bar / Bottom bar ──────────────────────────────────────────────

    /** Bottom navigation label. 11 / 16, Medium 500, 0.02em. */
    val navLabel: TextStyle = TextStyle(
        fontSize = 11.sp,
        lineHeight = 16.sp,
        fontWeight = FontWeight.Medium,
        letterSpacing = 0.02.em,
    )
}
