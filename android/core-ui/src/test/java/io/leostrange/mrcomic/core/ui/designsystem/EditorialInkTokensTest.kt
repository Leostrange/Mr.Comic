package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Token contract tests for the Editorial Ink design system.
 *
 * These tests pin the values of new tokens so accidental refactors are caught
 * by the build. They run on the JVM (no Compose runtime needed) because
 * `TextUnit` and `Dp` are plain data classes.
 */
class EditorialInkTokensTest {

    // ── Alpha ─────────────────────────────────────────────────────────────

    @Test
    fun alphaTokensAreOrderedByOpacity() {
        assertTrue(
            "Subtle must be more transparent than Soft",
            MrComicAlphaTokens.Subtle < MrComicAlphaTokens.Soft,
        )
        assertTrue(
            "Soft must be more transparent than Solid",
            MrComicAlphaTokens.Soft < MrComicAlphaTokens.Solid,
        )
        assertTrue(
            "Hairline must be the most transparent",
            MrComicAlphaTokens.Hairline < MrComicAlphaTokens.Subtle,
        )
        assertEquals(1.0f, MrComicAlphaTokens.Solid, 0.0f)
    }

    // ── Corner scale ──────────────────────────────────────────────────────

    @Test
    fun cornerScaleIsMonotonic() {
        val radii = listOf(
            MrComicCornerScale.xs,
            MrComicCornerScale.sm,
            MrComicCornerScale.md,
            MrComicCornerScale.lg,
            MrComicCornerScale.xl,
        )
        for (i in 1 until radii.size) {
            assertTrue(
                "Corner scale must be strictly increasing: ${radii[i - 1]} < ${radii[i]}",
                radii[i - 1] < radii[i],
            )
        }
    }

    @Test
    fun cornerScaleHasExpectedStepValues() {
        assertEquals(4.dp, MrComicCornerScale.xs)
        assertEquals(6.dp, MrComicCornerScale.sm)
        assertEquals(10.dp, MrComicCornerScale.md)
        assertEquals(14.dp, MrComicCornerScale.lg)
        assertEquals(20.dp, MrComicCornerScale.xl)
        assertEquals(999.dp, MrComicCornerScale.pill)
    }

    // ── Type scale ────────────────────────────────────────────────────────

    @Test
    fun typeRolesHaveNonEmptyStyles() {
        // Sanity: each role exists and has a positive font size and line height.
        val roles = mapOf(
            "display" to MrComicType.display,
            "h1" to MrComicType.h1,
            "h2" to MrComicType.h2,
            "h3" to MrComicType.h3,
            "body" to MrComicType.body,
            "bodySm" to MrComicType.bodySm,
            "listTitle" to MrComicType.listTitle,
            "listSubtitle" to MrComicType.listSubtitle,
            "meta" to MrComicType.meta,
            "micro" to MrComicType.micro,
            "button" to MrComicType.button,
            "buttonLg" to MrComicType.buttonLg,
            "navLabel" to MrComicType.navLabel,
        )
        roles.forEach { (name, style) ->
            assertNotNull("$name style must not be null", style)
            val fontSize: TextUnit = style.fontSize
            val lineHeight: TextUnit = style.lineHeight
            assertTrue(
                "$name font size must be > 0 (got $fontSize)",
                fontSize.value > 0f,
            )
            assertTrue(
                "$name line height must be >= font size (got lineHeight=$lineHeight, fontSize=$fontSize)",
                lineHeight.value >= fontSize.value,
            )
        }
    }

    @Test
    fun typeScaleIsMonotonicByFontSize() {
        // The display…bodySm cascade is strictly increasing in size.
        val sizes = listOf(
            MrComicType.micro.fontSize,
            MrComicType.meta.fontSize,
            MrComicType.bodySm.fontSize,
            MrComicType.body.fontSize,
            MrComicType.h3.fontSize,
            MrComicType.h2.fontSize,
            MrComicType.h1.fontSize,
            MrComicType.display.fontSize,
        )
        for (i in 1 until sizes.size) {
            assertTrue(
                "Type scale must be strictly increasing: ${sizes[i - 1]} < ${sizes[i]}",
                sizes[i - 1] < sizes[i],
            )
        }
    }

    @Test
    fun badgeMicroMeetsMinimumReadableSize() {
        // Micro replaces the legacy 9 sp badge token — must be at least 11 sp.
        assertTrue(
            "Micro font size must be >= 11 sp (got ${MrComicType.micro.fontSize})",
            MrComicType.micro.fontSize.value >= 11f,
        )
    }

    @Test
    fun listItemTitleUsesSixteenSp() {
        // List item title is 16 sp Medium — verify it stayed at body size for density.
        assertEquals(16.sp, MrComicType.listTitle.fontSize)
    }
}

private fun Dp.assertEqualDp(other: Dp) {
    assertEquals(this.value, other.value, 0.0f)
}
